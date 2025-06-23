package com.example.webApp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.webApp.controller.newLoginController;

@Service
public class ToDoService {

	private static List<ToDo> todos = new ArrayList<>();
	static {
		todos.add(new ToDo(1, "in28min", "Learn Was", LocalDate.now().plusYears(1), false));
		todos.add(new ToDo(1, "in28min", "Learn ABC", LocalDate.now().plusYears(2), false));
		todos.add(new ToDo(1, "in28min", "Learn DEF", LocalDate.now().plusYears(3), false));
	}
	
	public List<ToDo> findByUsername(String username){
		return todos;
	}
	
}
