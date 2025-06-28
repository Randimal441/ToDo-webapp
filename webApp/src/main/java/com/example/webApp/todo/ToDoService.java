package com.example.webApp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import com.example.webApp.controller.newLoginController;

@Service
public class ToDoService {

	private static List<ToDo> todos = new ArrayList<>();
	
	private static int todosCount = 0;
	static {
		todos.add(new ToDo(++todosCount, "in28min", "Learn Was", LocalDate.now().plusYears(1), false));
		todos.add(new ToDo(++todosCount, "in28min", "Learn ABC", LocalDate.now().plusYears(2), false));
		todos.add(new ToDo(++todosCount, "in28min", "Learn DEF", LocalDate.now().plusYears(3), false));
	}
	
	public List<ToDo> findByUsername(String username){
		return todos;
	}
	public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
		ToDo todo = new ToDo (++todosCount, username,description,targetDate,done);
		todos.add(todo);
	}
	
	public static void deleteById(int id) {
		//todo.getId() == id
		//toDo -> todo.getId() == id
		Predicate<? super ToDo> predicate = ToDo -> ToDo.getId() == id;
		todos.removeIf(predicate);
	}
	
	
	
}
