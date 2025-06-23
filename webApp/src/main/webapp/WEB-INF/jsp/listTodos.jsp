<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>To-Do List</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
            min-height: 100vh;
        }

        h1 {
            font-size: 42px;
            margin-bottom: 40px;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.3);
        }

        table {
            width: 90%;
            max-width: 1000px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.95);
            color: #333;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
        }

        th, td {
            padding: 16px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #d0e7ff; /* Light blue */
            color: #1e3c72;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        tbody tr:last-child td {
            border-bottom: none;
        }
    </style>
</head>
<body>
    <h1>To-Do List</h1>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
