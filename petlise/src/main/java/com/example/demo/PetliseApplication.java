package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
@ComponentScan(basePackages = {"mypage", "shop", "user", "recipe", "admin", "upload", "board", "home"})
@MapperScan(basePackages = {"mypage", "shop", "user", "recipe", "admin","board", "home"})

public class PetliseApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetliseApplication.class, args);
	}

}
