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
		    margin-bottom: 20px;
		    font-size: 36px;
		    
		    text-shadow: 1px 1px 4px rgba(0, 0, 0, 4); /* Softer black shadow */
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
				   
				   nav.navbar {
				          display: flex;
				          justify-content: space-between;
				          align-items: center;
				          background: linear-gradient(90deg, #1e3c72, #2a5298); /* blue gradient */
				          padding: 12px 24px;
				          color: white;
				          box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
				          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
				      }

				      /* Left and right nav groups */
				      .navbar-nav {
				          display: flex;
				          list-style: none;
				          padding: 0;
				          margin: 0;
				      }

				      .nav-item {
				          margin-left: 20px;
				      }

				      .nav-link {
				          color: #ffffff;
				          text-decoration: none;
				          font-weight: 500;
				          transition: color 0.3s ease;
				          padding: 8px 12px;
				          border-radius: 4px;
				      }

				      .nav-link:hover {
				          background-color: rgba(255, 255, 255, 0.15);
				          color: #f0f0f0;
				      }

				      /* Branding */
				      .navbar-brand {
				          font-size: 22px;
				          font-weight: bold;
				          color: #ffffff;
				          text-decoration: none;
				          margin-right: 30px;
				      }

				      .navbar-brand:hover {
				          color: #f5f5f5;
				      }

				      /* Responsive collapse simulation (optional JS needed for real collapse) */
				      @media (max-width: 768px) {
				          nav.navbar {
				              flex-direction: column;
				              align-items: flex-start;
				          }

				          .navbar-nav {
				              flex-direction: column;
				              width: 100%;
				          }

				          .nav-item {
				              margin-left: 0;
				              width: 100%;
				          }

				          .nav-link {
				              display: block;
				              width: 100%;
				          }
				      }		   
		
		   
    </style>
</head>
<body>
	
	
	<nav class="navbar navbar-expand-md navbar-light bg-light mb-3 p-1">
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/list-todos">Todos</a></li>
			</ul>
		</div>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
		</ul>	
	</nav>
	
	
	
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
