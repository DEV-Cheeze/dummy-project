package jpabasic.springdocker.controller;

import java.util.Map;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class MainController {

  private final RedisTemplate<String, String> redisTemplate;

  @GetMapping("/")
  public Map<String, String> hello(){
    redisTemplate.opsForValue().set("key", "value");
    return Map.of("a", "hello,world!");
  }
}
