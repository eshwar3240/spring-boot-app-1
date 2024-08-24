package com.example.springbootapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class SpringBootAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootAppApplication.class, args);
    }
}

@RestController
class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, welcome to the simple microservice!";
    }
}
