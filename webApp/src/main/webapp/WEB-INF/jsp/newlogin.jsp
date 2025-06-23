<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login Page</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
    }

    body {
      background: linear-gradient(135deg, #1e3c72, #2a5298);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background: #fff;
      padding: 40px 30px;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
      width: 100%;
      max-width: 400px;
    }

    .login-container h2 {
      text-align: center;
      margin-bottom: 24px;
      color: #2a5298;
    }

    .login-container label {
      display: block;
      margin-bottom: 6px;
      color: #333;
      font-weight: 600;
    }

    .login-container input {
      width: 100%;
      padding: 10px;
      margin-bottom: 18px;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    .login-container button {
      width: 100%;
      padding: 10px;
      background: #2a5298;
      border: none;
      border-radius: 6px;
      color: #fff;
      font-size: 16px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .login-container button:hover {
      background: #1e3c72;
    }

    .login-container .extra-links {
      text-align: center;
      margin-top: 12px;
    }

    .login-container .extra-links a {
      color: #2a5298;
      text-decoration: none;
      font-size: 14px;
    }

    .login-container .extra-links a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    <form action="/login" method="POST">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" required />

      <label for="password">Password</label>
      <input type="password" id="password" name="password" required />

      <button type="submit">Login</button>

      <div class="extra-links">
        <p><a href="#">Forgot Password?</a> | <a href="#">Sign Up</a></p>
      </div>
    </form>
  </div>
</body>
</html>
