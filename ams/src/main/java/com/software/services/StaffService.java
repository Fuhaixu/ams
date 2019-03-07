package com.software.services;

import com.software.entity.Staff;
import com.software.mapper.StaffMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffService {
    @Autowired
    private StaffMapper staffMapper;
    public boolean isValid(Staff s){
        Staff staff=staffMapper.findStaffBySid(s.getSta_ID());
        if(staff.getPwd().equals(s.getPwd()))return true;
        else return false;
    }
}
