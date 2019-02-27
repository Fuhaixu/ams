package com.software.services;

import com.github.pagehelper.Page;
import com.software.dao.QuesDao;
import com.software.entity.PageBean;
import com.software.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuesService {
    @Autowired
    private QuesDao quesDao;

    public List<Question> queryAllQues(){
        return quesDao.queryAllQues();
    }
}
