package com.example.webApp.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		String username = (String)model.get("name");
		ToDo todo = new ToDo(0, username, " ", LocalDate.now().plusYears(1), false);
		model.addAttribute("todo", todo);
		return "todo";
	}
	
	@RequestMapping(value ="add-todo", method = RequestMethod.POST)
	public String addNewTodo(@ModelAttribute("todo") ToDo todo, ModelMap model) {
	    // Set username if needed
	    todo.setUsername("in28min"); // or get from session/model
	    toDoService.addTodo(todo.getUsername(), todo.getDescription(), todo.getTargetDate(), todo.isDone());
	    return "redirect:list-todos";
	}
	
	@RequestMapping("delete-todo")
	public String deleteTodo(@RequestParam int id) {
		//delete toDo
		ToDoService.deleteById(id);
		return "redirect:list-todos";
	}

	
	@RequestMapping("update-todo")
	public String showUpdateTodoPage(@RequestParam int id, ModelMap model) {
		ToDo todo =toDoService.findById(id);
		model.addAttribute("todo", todo);
		return "todo";
	}
	
	@RequestMapping(value = "update-todo", method = RequestMethod.POST)
	public String updateTodo(@ModelAttribute("todo") ToDo todo) {
	    ToDo existingTodo = toDoService.findById(todo.getId());
	    existingTodo.setDescription(todo.getDescription());
	    existingTodo.setTargetDate(todo.getTargetDate());
	    existingTodo.setDone(todo.isDone());
	    // Optionally update username if needed
	    return "redirect:list-todos";
	}
}
