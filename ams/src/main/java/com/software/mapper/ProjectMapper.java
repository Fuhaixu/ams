package com.software.mapper;


import java.util.List;
import com.software.entity.Project;
public interface ProjectMapper {

    List<Project> queryProjectForList();
    List<Project> queryProjectsByPtype(int type);
}
