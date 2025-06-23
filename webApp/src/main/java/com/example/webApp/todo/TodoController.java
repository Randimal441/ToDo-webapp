package com.example.webApp.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TodoController {

	public TodoController(ToDoService toDoService) {
		super();
		this.toDoService = toDoService;
	}

	private ToDoService toDoService;
	
	@RequestMapping("list-todos")
	public String listAllTodos(ModelMap model) {
		List<ToDo> todos = toDoService.findByUsername("in28min");
		model.addAttribute("todos",todos);
		return "listTodos";
	}
	
	
	

}
