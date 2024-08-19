package com.example.controller;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.ChatRepository;
import com.example.domain.Chat;
import com.example.domain.LoginVO;
import com.example.service.LoginService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.core.scheduler.Schedulers;

@RequiredArgsConstructor
@RestController	// 데이터 리턴 서버
public class ChatController {	
	
	private final ChatRepository chatRepository;
	
	// 메세지를 받을 때 url
	// 귓속말 할 때 사용
	@CrossOrigin
	@GetMapping(value="/sender/{sender}/receiver/{receiver}", produces=MediaType.TEXT_EVENT_STREAM_VALUE)
	public Flux<Chat> getMsg(@PathVariable String sender, @PathVariable String receiver) {
		return chatRepository.mFindBySender(sender, receiver).subscribeOn(Schedulers.boundedElastic());
	}
	
	
	@CrossOrigin
	@GetMapping(value="/chat/roomNum/{roomNum}", produces=MediaType.TEXT_EVENT_STREAM_VALUE)
	public Flux<Chat> findByRoomNum(@PathVariable Integer roomNum) {
		return chatRepository.mFindByRoomNum(roomNum).subscribeOn(Schedulers.boundedElastic());
	}
	
	
	// 메세지를 전송할 때 url
	@CrossOrigin
	@PostMapping("/chat")		
	public Mono<Chat> setMsg(@RequestBody Chat chat) {
		chat.setCreatedAt(LocalDateTime.now());
		return chatRepository.save(chat);	// Object를 리턴하면 자동으로 JSON 변환(MessageConverter)
	}
}
