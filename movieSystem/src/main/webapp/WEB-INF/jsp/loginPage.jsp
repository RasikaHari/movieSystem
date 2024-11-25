<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        /* Full-page background set to white */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: white; /* General background set to white */
        }

        /* Wrapper for the image and form sections */
        .login-wrapper {
            display: flex;
            width: 60%;
            height: 80vh;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Left side with the image */
        .login-image {
    flex: 1;
    background: url('https://i.pinimg.com/736x/67/13/81/6713813ffa60c09afb28013bea53020a.jpg') no-repeat center center;
    background-size: 400px 400px;
}
        

        /* Right side with login form */
        .login-form {
            flex: 1;
            background-color: #fff4fa; /* Login container theme color set to #fff4fa */
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        /* Form title */
        h3 {
            color: #800000; /* Deep red for headings */
            font-size: 24px;
            margin-bottom: 20px;
        }

        h2 a {
            color:  #ff66b2; /* Link color for registration */
            font-size: 16px;
            text-decoration: none;
        }

        h2 a:hover {
        	color: #ff3385;
            text-decoration: underline;
        }

        /* Styling for input fields */
        input[type="text"], 
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            
            background-color: #f4f4f9;
            font-size: 16px;
            color: #333;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, 
        input[type="password"]:focus {
            border-color: #f95a37; /* Highlight border on focus */
        }

        /* Styling for the submit button */
        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background-color: #ff66b2; /* Primary color */
            border: none;
            border-radius:20px;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
            box-sizing: border-box;
        }

        input[type="submit"]:hover {
            background-color: #ff3385; /* Darker orange on hover */
            transform: translateY(-2px); /* Slight lift effect */
        }

        input[type="submit"]:active {
            background-color: #ff1a6d; /* Even darker on active */
            transform: translateY(0); /* Return to normal position */
        }

        /* Mobile responsiveness */
        @media (max-width: 768px) {
            .login-wrapper {
                flex-direction: column;
                height: auto;
            }

            .login-image {
                height: 200px;
                background-size: cover;
            }

            .login-form {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <!-- Left Side with Image -->
        <div class="login-image"></div>

        <!-- Right Side with Login Form -->
        <div class="login-form">
            <h3>User Login</h3>
            <form action="/login" method="post">
                <label for="username">Enter User ID:</label>
                <input type="text" id="username" name="username" />
                <br/>
                <label for="password">Enter Password:</label>
                <input type="password" id="password" name="password" />
                <br/>
                <input type="submit" value="Submit" />
            </form>
            <h2>
                <a href="/register">Register for New User</a>
            </h2>
        </div>
    </div>
</body>
</html>
