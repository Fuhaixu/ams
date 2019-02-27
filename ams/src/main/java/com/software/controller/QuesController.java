package com.software.controller;
import com.software.entity.Question;
import com.software.entity.User;
import com.software.mapper.po.TestPo;
import com.software.services.QuesService;
import com.software.services.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/question")
public class QuesController {
    @Autowired
    private QuesService quesService;

    @Autowired
    private TestService testService;

    @RequestMapping("/answer")
    public ModelAndView answer_ques(){
        ModelAndView mv=new ModelAndView("questions");
        List<Question> questions=quesService.queryAllQues();
        mv.addObject("questions",quesService.queryAllQues());
        return mv;
    }

    @RequestMapping("/check")
    public ModelAndView check_ans(HttpServletRequest request){
        ModelAndView mv=new ModelAndView("redirect:/score");
        List<Question> questions=quesService.queryAllQues();
        int feer,greed,exp;
        feer=greed=exp=0;
        int feerCt,greedCt,expCt;
        feerCt=greedCt=expCt=0;
        for(Question question:questions){
            String ch=request.getParameter("choice_"+question.getQ_no());
            //恐惧贪婪指数A对应5分，B对应3分，C对应1分
            if(question.getQ_type()==Question.Feer){
                if(ch.equals("A"))feer+=5;
                else if(ch.equals("B"))feer+=3;
                else if(ch.equals("C"))feer+=1;
                feerCt++;
            }else if(question.getQ_type()==Question.Greed){
                if(ch.equals("A"))greed+=5;
                else if(ch.equals("B"))greed+=3;
                else if(ch.equals("C"))greed+=1;
                greedCt++;
            }else if(question.getQ_type()>=2){//最后20题答对一题得5分
                if(question.getAns().equals(ch))exp+=5;
                expCt++;
            }
        }
        feer=(int)(feer/(feerCt*5.0)*100);
        greed=(int)(greed/(greedCt*5.0)*100);
        exp=(int)(exp/(expCt*5.0)*100);
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");
        TestPo testPo=new TestPo(feer,greed,exp);
        //将测试成绩传给前端
        mv.addObject("test",testPo);
        int us_type=getTestType(feer,greed);
        testService.addTestById(user.getUid(),feer,greed,exp,us_type);
        return mv;
    }

    //根据分数算出类型
    int getTestType(int feer,int greed){
        if(feer>75&&greed<25)return -1;
        else if(feer<25&&greed>75)return 1;
        else return 0;
    }
}
