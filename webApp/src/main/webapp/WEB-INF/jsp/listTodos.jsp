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
            margin-bottom: 20px;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.3);
        }

        .add-button {
            background-color: #d0e7ff;
            color: #1e3c72;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            margin-bottom: 30px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .add-button:hover {
            background-color: #a6cdfc;
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
            background-color: #d0e7ff;
            color: #1e3c72;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        tbody tr:last-child td {
            border-bottom: none;
        }
		.btn-delete {
		       display: inline-block;
		       padding: 10px 20px;
		       background-color: #e74c3c; /* Red */
		       color: #fff;
		       font-size: 14px;
		       font-weight: 600;
		       text-decoration: none;
		       border-radius: 6px;
		       transition: background-color 0.3s ease;
		       box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	    }

		.btn-delete:hover {
		       background-color: #c0392b; /* Darker red on hover */
		   }
		   
	
		       .btn-update {
		           display: inline-block;
		           padding: 10px 20px;
		           background-color: #27ae60; /* Green */
		           color: #fff;
		           font-size: 14px;
		           font-weight: 600;
		           text-decoration: none;
		           border-radius: 6px;
		           transition: background-color 0.3s ease;
		           box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
		       }

		       .btn-update:hover {
		           background-color: #1e8449; /* Darker green on hover */
		       }
	
			   .btn-update {
			           display: inline-block;
			           padding: 10px 20px;
			           background-color: #27ae60; /* Green */
			           color: #fff;
			           font-size: 14px;
			           font-weight: 600;
			           text-decoration: none;
			           border-radius: 6px;
			           transition: background-color 0.3s ease;
			           box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
			       }

			       .btn-update:hover {
			           background-color: #1e8449; /* Darker green on hover */
			       }
		   
    </style>
</head>
<body>
    <h1>To-Do List</h1>

    <!-- Add ToDo Button -->
    <a href="add-todo" class="add-button">Add ToDo</a>

    <table>
        <thead>
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
					<td><a href="delete-todo?id=${todo.id}" class="btn-delete">Delete</a></td>
					<td><a href="update-todo?id=${todo.id}" class="btn-update">Update</a></td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
