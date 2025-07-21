<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FoodExpress - Sign Up</title>
<style>	
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
        display: flex;
        height: 100vh;
        align-items: center;
        justify-content: center;
        margin: 0;
    }

    .signup-box {
        background: #fff;
        padding: 2rem 2.5rem;
        border-radius: 6px;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    .signup-box h2 {
        margin: 0 0 1.2rem;
        text-align: center;
        color: #333;
    }

    .signup-box label {
        display: block;
        margin-bottom: 0.3rem;
        font-weight: bold;
        color: #555;
    }

    .signup-box input[type="text"],
    .signup-box input[type="email"],
    .signup-box input[type="password"] {
        width: 100%;
        padding: 0.6rem;
        margin-bottom: 1rem;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 1rem;
    }

    .signup-box input:focus {
        outline: none;
        border-color: #28a745;
        box-shadow: 0 0 0 2px rgba(40, 167, 69, 0.2);
    }

    .signup-box button {
        width: 100%;
        padding: 0.7rem;
        background: #28a745;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 1.1rem;
        transition: background 0.3s ease;
    }

    .signup-box button:hover {
        background: #218838;
    }

    .signup-box p {
        margin-top: 1rem;
        text-align: center;
        font-size: 0.9rem;
        color: #666;
    }

    .signup-box a {
        color: #007bff;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .signup-box a:hover {
        text-decoration: underline;
        color: #0056b3;
    }

    .error {
        color: red;
        font-size: 0.85rem;
        text-align: center;
        margin-bottom: 1rem;
    }
</style>
</head>
<body>
    <div class="signup-box">
        <h2>Create Account</h2>

        <%-- Display error message if present --%>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/users/register" method="post">

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />

            <label for="password">Password</label>
            <input type="password" id="password" name="password" minlength="6" required />

            <button type="submit">Sign Up</button>
        </form>

        <p>Already have an account? <a href="login">Log in</a></p>
    </div>
</body>
</html>
