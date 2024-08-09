package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.LocalDAO;
import com.example.domain.LocalVO;

@Service
public class LocalServiceImpl implements LocalService { 

   @Autowired
   private LocalDAO localDAO;

   @Override
   public LocalVO findLocalById(int local_id) {
      return localDAO.getLocalById(local_id);
   } 

   @Override
   public List<LocalVO> getAllLocals(LocalVO localVO) {
	   return localDAO.getAllLocals(localVO);
   }

} 
 