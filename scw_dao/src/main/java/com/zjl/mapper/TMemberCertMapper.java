package com.zjl.mapper;

import com.zjl.bean.TMemberCert;
import java.util.List;

public interface TMemberCertMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TMemberCert record);

    TMemberCert selectByPrimaryKey(Integer id);

    List<TMemberCert> selectAll();

    int updateByPrimaryKey(TMemberCert record);
}