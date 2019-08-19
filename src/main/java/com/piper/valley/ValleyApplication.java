package com.piper.valley;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.WebApplicationInitializer;

import java.io.IOException;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;


@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.piper.valley.models.repository")
@EnableJpaAuditing
public class ValleyApplication extends SpringBootServletInitializer {

	private WebApplicationContext webApplicationContext;
	private static Stage primaryStage;

	public static void main(String[] args) {
		//startApplication();
		SpringApplication.run(ValleyApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ValleyApplication.class);
	}
/*
	@Override
    public void onStartup(ServletContext servletContext) {
		primaryStage = new Stage();
		
    }


	private static void startApplication() throws Exception {

		StackPane root = new StackPane();

        WebView view = new WebView();
        WebEngine engine = view.getEngine();
        engine.load("http://localhost:8080/");
		root.getChildren().add(view);
		
		Scene scene = new Scene(root, 800, 600);
        primaryStage.setScene(scene);
        primaryStage = primaryStage;
		primaryStage.show();

	}*/
}