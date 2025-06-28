<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enter To-Do</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            color: #fff;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 36px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
        }

        form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            color: #333;
            width: 100%;
            max-width: 400px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            margin-bottom: 20px;
        }

        .btn {
            background-color: #1e3c72;
            color: #fff;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #16305a;
        }
    </style>
</head>
<body>
    <div>
        <h1>Enter To-Do Details</h1>
    </div>

    <form method="post">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" required />

        <input type="submit" class="btn" />
    </form>
</body>
</html>

