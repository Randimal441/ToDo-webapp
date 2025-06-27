package com.example.webApp.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	//all Get & Post
	@RequestMapping(value ="add-todo", method = RequestMethod.GET)
	public String showTodoPage(ModelMap model) {
		
		return "todo";
	}
	
	@RequestMapping(value ="add-todo", method = RequestMethod.POST)
	public String addNewTodo(@RequestParam String description) {
		
		return "redirect:list-todos";
	}
	
	

}
