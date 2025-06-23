<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to To-Do Web App</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298); /* Blue gradient */
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }

        h1 {
            font-size: 48px;
            font-weight: 600;
            margin-bottom: 30px;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.2);
        }

        .start-button {
            padding: 14px 30px;
            font-size: 18px;
            font-weight: 500;
            background-color: #ffffff;
            color: #1e3c72;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .start-button:hover {
            background-color: #e6e6e6;
            box-shadow: 0 6px 16px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <h1>Welcome to To-Do Web App</h1>
    <a href="list-todos" class="start-button">Let's Start</a>
</body>
</html>
