package com.zjl.mapper;

import com.zjl.bean.TMemberProjectFollow;
import java.util.List;

public interface TMemberProjectFollowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TMemberProjectFollow record);

    TMemberProjectFollow selectByPrimaryKey(Integer id);

    List<TMemberProjectFollow> selectAll();

    int updateByPrimaryKey(TMemberProjectFollow record);
}