package com.software.dao;

import com.software.entity.Choice;
import com.software.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class QuesDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Question> queryAllQues(){
        String sql="SELECT * FROM ques_text";
        List<Question> questions=jdbcTemplate.query(sql, new RowMapper<Question>() {
            @Override
            public Question mapRow(ResultSet rs, int i) throws SQLException {
                Question question=new Question();
                question.setAns(rs.getString("q_ans"));
                question.setTitle(rs.getString("q_text"));
                question.setQ_no(rs.getInt("q_no"));
                question.setQ_type(rs.getInt("q_type"));
                return question;
            }
        });
        String sql2="SELECT * FROM ques_choices where q_no=?";
        for(Question question:questions){
           List<Choice> choices=new ArrayList<>();
            choices=jdbcTemplate.query(sql2,new Object[]{question.getQ_no()}, new RowMapper<Choice>() {
                public Choice mapRow(ResultSet rs, int i) throws SQLException {
                    Choice c=new Choice();
                    c.setCh(rs.getString("q_choice"));
                    c.setCtext(rs.getString("q_ctext"));
                    return c;
                }
            });
            question.setChoices(choices);
        }
        return questions;
    }
}
