package com.example.service;

import java.util.List;

import com.example.domain.LocalVO;

public interface LocalService {
   LocalVO findLocalById(int local_id);
   List<LocalVO>getAllLocals(LocalVO localVO);
 
}  