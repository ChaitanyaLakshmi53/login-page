<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .login-container {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-control {
            margin-bottom: 15px;
            display: flex;
            flex-direction: column;
        }
        .form-control label {
            margin-bottom: 5px;
        }
        .form-control input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #5cb85c;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .login-btn:hover {
            background-color: #4cae4c;
        }
        .error {
            color: red;
            font-size: 0.9em;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <div id="error-message" class="error"></div>
        <div class="form-control">
            <label for="username">Username:</label>
            <input type="text" id="username" placeholder="Enter your username">
        </div>
        <div class="form-control">
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Enter your password">
        </div>
        <button class="login-btn" onclick="validateLogin()">Login</button>
    </div>

    <script>
        function validateLogin() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const errorMessage = document.getElementById('error-message');

            if (username === "" || password === "") {
                errorMessage.textContent = "Both fields are required.";
                return;
            }

            // Example validation (simple check for demonstration)
            if (username === "user" && password === "password") {
                alert("Login successfull");
                errorMessage.textContent = "";
            } else {
                errorMessage.textContent = "Invalid username or password.";
            }
        }
    </script>
</body>
</html>
