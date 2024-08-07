package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.example.domain.*;

@Mapper
public interface LocalDAO {
   void insertFile(LocalVO vo);
   LocalVO getLocalById(int local_id); 
   List<LocalVO>getAllLocals(LocalVO vo);
   List<LocalVO>getLocalList(LocalVO vo); 
}
