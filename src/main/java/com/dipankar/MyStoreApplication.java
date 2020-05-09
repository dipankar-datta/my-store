package com.dipankar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.Collections;

@SpringBootApplication
@EnableSwagger2
public class MyStoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyStoreApplication.class, args);
	}

	@Bean
	public Docket swaggerConfiguration() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.paths(PathSelectors.ant("/api/**"))
				.apis(RequestHandlerSelectors.basePackage("com.dipankar.rest"))
				.build()
				.apiInfo(apiDetails());
	}


	private ApiInfo apiDetails() {
		return new ApiInfo(
				"My-Store",
				"Sample API for My-Store application",
				"1.0",
				"Free to use",
				new Contact("Dipankar Datta", "https://github.com/dipankar-datta", "dipankar@email.com"),
				"API License",
				"https://github.com/dipankar-datta",
				Collections.emptyList());
	}

}
