package com.software.mapper;


import com.software.mapper.po.TestPo;
import org.apache.ibatis.annotations.Param;


public interface TestMapper {
    TestPo queryTestById(@Param("uid") String uid);

    int insertTest(@Param("uid") String uid, @Param("feer") int feer,
                   @Param("greed") int greed, @Param("exp") int exp,
                   @Param("type") int type);
    int countTestById(@Param("uid") String uid);
}
