# 📝 ToDo WebApp

A simple, robust Spring Boot web application to manage your to-do items with secure user authentication, a clean JSP-based UI, and an in-memory H2 database for quick setup and testing.

---

## 🚀 Features

- 🔐 **User Authentication** — Powered by Spring Security  
- ✅ **To-Do Management** — Add, list, update, and delete tasks  
- 🖥️ **JSP-Based Web UI** — Responsive and straightforward interface  
- 🧠 **H2 In-Memory Database** — Auto-initialized with customizable `data.sql`  
- 📦 **RESTful Controllers & Service Layer** — Clean MVC separation  
- 🧱 **Example MVC Project Structure** — Scalable and maintainable  

---

## 📁 Project Structure

src/
  main/
    java/com.example.webApp/
      controller/       # Handles web requests (Login, Welcome, Todo)
      security/         # Spring Security configuration
      service/          # Business logic layer (LoginService, ToDoService)
      todo/             # ToDo entity and related logic
      WebAppApplication.java
    resources/
      application.properties
      static/
      templates/
      webapp/WEB-INF/jsp/ # JSP views (login, todo, welcome, etc.)
  test/
    java/com.example.webApp/
      WebAppApplicationTests.java



---

## 🛠️ Getting Started

### ✅ Prerequisites

- Java 17 or higher  
- Maven 3.6+  

### ▶️ Running the Application

1. **Clone the repository**
2. **Build the project**  
   ```bash
   mvn clean install
Run the Spring Boot app

bash
mvn spring-boot:run
Access the app:

🔐 Login: http://localhost:8080/login

👋 Welcome: http://localhost:8080/welcome

📋 To-Do List: http://localhost:8080/list-todos

⚙️ Configuration
Modify src/main/resources/application.properties to change database settings, server port, etc.

Use src/main/resources/data.sql to preload your to-do items.

Update security rules in security/SpringSecurityConfiguration.java.

Customize the UI by editing JSPs under src/main/webapp/WEB-INF/jsp/.

📦 Dependencies
spring-boot-starter-web

spring-boot-starter-security

spring-boot-starter-data-jpa

h2 (In-memory database)

jstl and JSP support

Bootstrap Datepicker (via WebJars)

📄 License
This project is intended for educational and demonstration purposes.
