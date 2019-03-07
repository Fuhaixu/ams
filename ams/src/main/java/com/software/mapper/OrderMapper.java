package com.software.mapper;


import com.software.entity.Order;
import com.software.entity.Project;
import com.software.vo.ManagerPro;
import org.apache.ibatis.annotations.Param;
import org.w3c.dom.ls.LSInput;

import java.util.List;

public interface OrderMapper {
    List<Order> queryOrdersByUid(String uid);
    void insertOrder(Order order);
    List<ManagerPro> queryManproByRes(int res);
    void updateManpro(@Param("mp") ManagerPro mp);
    List<ManagerPro> queryAllManpro();
    ManagerPro queryManproByOid(String oID);
    List<ManagerPro> queryManproByPname(@Param("pname") String pname);
    List<ManagerPro> queryManproByUserName(@Param("name") String name);
}
