package com.Project.PiTutionCenter;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class PiTutionCenterApplication {

	public static void main(String[] args) throws MalformedURLException {  
		SpringApplication.run(PiTutionCenterApplication.class , args);
	}

}
