package com.software.services;

import com.software.entity.Order;
import com.software.mapper.OrderMapper;
import com.software.vo.ManagerPro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderMapper orderMapper;

    public void insertOrder(Order order){
        orderMapper.insertOrder(order);
    }
    public  List<Order> queryOrdersByUid(String uid){
        return orderMapper.queryOrdersByUid(uid);
    }
    public List<ManagerPro> queryManproByRes(int res){
        return orderMapper.queryManproByRes(res);
    }
    public void updateManpro(ManagerPro mp){
        orderMapper.updateManpro(mp);
    }
    public List<ManagerPro> queryAllManagerpro(){
        return orderMapper.queryAllManpro();
    }
    public ManagerPro queryManproByOid(String oID){
        return orderMapper.queryManproByOid(oID);
    }
    public List<ManagerPro> queryManproByPname(String pname){
        return orderMapper.queryManproByPname(pname);
    }
    public List<ManagerPro> queryManproByUserName(String name){
        return orderMapper.queryManproByUserName(name);
    }
}
