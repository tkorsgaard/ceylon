package com.demo.now;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Runner {
	
	public static void main(String... args) {
		List<Stuff> stuffList = new ArrayList<>();
		stuffList.add(new Stuff("demo1"));
		stuffList.add(new Stuff("demo2"));
		stuffList.add(new Stuff("demo1"));
		stuffList.add(new Stuff("demo4"));
		
		List<String> myList = stuffList	.stream()
										.filter(s -> s.name.equals("demo1"))
										.map(s -> s.getName())
										.peek(s -> System.out.println(s))
										.collect(Collectors.toList());
		
		myList.stream().filter(s -> )
		

	}

}
