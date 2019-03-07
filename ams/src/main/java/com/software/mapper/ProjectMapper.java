package com.software.mapper;


import java.util.List;
import com.software.entity.Project;
import com.software.vo.OrderProject;

public interface ProjectMapper {

    List<Project> queryProjectForList();
    List<Project> queryProjectsByPtype(int type);
    Project queryProjectByPid(int pid);
    List<OrderProject> queryOrderProjectsByUid(String uid);
}
