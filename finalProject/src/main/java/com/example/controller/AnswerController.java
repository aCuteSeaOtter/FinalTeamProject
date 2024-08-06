package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.example.domain.AnswerVO;
import com.example.service.AnswerService;

@Controller
public class AnswerController {

    @Autowired
    private AnswerService answerService;

    public String selectAnswer(Model model, AnswerVO vo) {
        AnswerVO answer = answerService.selectAnswer(vo);
        System.out.println("answer:" + answer);
        model.addAttribute("answer", answer);
        return "question/selectQuestion";
    }
}
