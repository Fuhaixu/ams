package com.software.services;

import com.software.entity.Project;
import com.software.mapper.ProjectMapper;
import com.software.vo.OrderProject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService {
    @Autowired
    private ProjectMapper projectMapper;

    public List<Project> queryProjects(){
        return projectMapper.queryProjectForList();
    }

    public List<Project> queryProjects(int type){
        return projectMapper.queryProjectsByPtype(type);
    }

    public Project queryProjectByPid(int pid){
        return projectMapper.queryProjectByPid(pid);
    }

    public List<OrderProject> queryOrderProjectsByUid(String uid){
        return projectMapper.queryOrderProjectsByUid(uid);
    }
}
