<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FoodExpress - Sign Up</title> <%-- Changed title for clarity --%>
<style>	
	        body {
	            font-family: Arial, sans-serif;
	            background: #f2f2f2;
	            display: flex;
	            height: 100vh;
	            align-items: center;
	            justify-content: center;
	            margin: 0; /* Ensure no default body margin */
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
	            color: #333; /* Added color for consistency */
	        }

	        .signup-box label {
	            display: block;
	            margin-bottom: 0.3rem;
	            font-weight: bold; /* Made labels bold */
	            color: #555; /* Added color for consistency */
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
	            font-size: 1rem; /* Ensured consistent font size */
	        }

	        .signup-box input[type="text"]:focus,
	        .signup-box input[type="email"]:focus,
	        .signup-box input[type="password"]:focus {
	            outline: none;
	            border-color: #28a745; /* Highlight on focus */
	            box-shadow: 0 0 0 2px rgba(40, 167, 69, 0.2); /* Soft shadow on focus */
	        }

	        .signup-box button {
	            width: 100%;
	            padding: 0.7rem;
	            background: #28a745; /* Green button */
	            color: #fff;
	            border: none;
	            border-radius: 4px;
	            cursor: pointer;
	            font-size: 1.1rem; /* Larger font for button */
	            transition: background 0.3s ease; /* Smooth transition */
	        }

	        .signup-box button:hover {
	            background: #218838; /* Darker green on hover */
	        }

	        .signup-box p {
	            margin-top: 1rem;
	            text-align: center;
	            font-size: 0.9rem;
	            color: #666; /* Added color for consistency */
	        }

	        .signup-box a {
	            color: #007bff; /* Blue link */
	            text-decoration: none;
	            transition: color 0.3s ease; /* Smooth transition */
	        }

	        .signup-box a:hover {
	            text-decoration: underline;
	            color: #0056b3; /* Darker blue on hover */
	        }
</style>
</head>
<body>
	<div class="signup-box">
	        <h2>Create Account</h2>
	        <%-- The form action should typically point to a Servlet for processing --%>
	        <form action="RegisterServlet" method="post"> <%-- Changed action to a hypothetical Servlet --%>
	            <label for="fullname">Full Name</label>
	            <input type="text" id="fullname" name="fullname" required />

	            <label for="email">Email</label>
	            <input type="email" id="email" name="email" required />

	            <label for="new-username">Username</label>
	            <input type="text" id="new-username" name="username" required />

	            <label for="new-password">Password</label>
	            <input type="password" id="new-password" name="password" minlength="6" required />

	            <button type="submit">Sign Up</button>
	        </form>
	        <p>Already have an account? <a href="login.jsp">Log in</a></p> <%-- Changed link to login.jsp --%>
	    </div>
</body>
</html>
