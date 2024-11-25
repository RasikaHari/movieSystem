<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    /* Ensure the body takes up the full viewport */
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        background: linear-gradient(to right, #ff66b2, #ff99cc); /* Gradient pink background */
        display: flex;
        justify-content: center;
        align-items: center; /* Center vertically */
        color: white;
        position: relative;
        overflow: hidden; /* Prevent scrollbars */
    }

    /* Darkened overlay behind the popup */
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.3); /* Slightly darkened background */
        z-index: 1;
    }

    /* Popup error message with light pink background */
    .error-container {
        background: rgba(255, 182, 193, 0.9); /* Light pink background */
        padding: 20px 40px; /* Reduced padding */
        border-radius: 8px; /* Slightly smaller border-radius */
        width: 100%;
        max-width: 500px; /* Increased max-width */
        text-align: center;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
        position: absolute;
        top: 20px; /* 20px from the top */
        left: 50%;
        transform: translateX(-50%); /* Center horizontally */
        z-index: 2; /* Ensure it's above the overlay */
        opacity: 0;
        animation: popup 0.6s forwards ease-out; /* Popup animation */
    }

    /* Header styling with smaller font size and mild white color */
    h1 {
        margin-bottom: 10px; /* Reduced margin */
        color: rgba(255, 255, 255, 0.8); /* Mild white color */
        font-size: 1.8em; /* Smaller font size */
        font-weight: 600;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
    }

    /* Message styling with smaller font size and mild white color */
    .message {
        font-size: 1em; /* Smaller font size */
        color: rgba(255, 255, 255, 0.8); /* Mild white color */
        margin-bottom: 15px; /* Reduced margin */
    }

    /* Retry link styling as a text link */
    .retry-link {
        font-size: 1em; /* Font size for the link */
        color: rgba(255, 255, 255, 0.8); /* Mild white color */
        text-decoration: none; /* Remove underline for a cleaner look */
        font-weight: bold;
        display: inline-block;
        margin-top: 15px;
        padding: 8px 16px;
        border: 2px solid rgba(255, 255, 255, 0.8);
        transition: all 0.3s ease;
    }

    /* Retry link hover effect */
    .retry-link:hover {
        color: #ff66b2;
        background-color: #ffe6f2; /* Mild white background on hover */
        transform: translateY(-2px);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    /* Popup animation for smooth appearance */
    @keyframes popup {
        0% {
            opacity: 0;
            transform: translateY(-20px); /* Start slightly above */
        }
        100% {
            opacity: 1;
            transform: translateY(0); /* End at its normal position */
        }
    }
</style>
</head>
<body>

<!-- Popup Error Message -->
<div class="error-container">
    <h1>Oops! Wrong Credentials...</h1>
    <p class="message">Please check your username and password and try again.</p>
    <a href="/login" class="retry-link">Re-enter Credentials</a>
</div>

<!-- Include the login page below the popup -->
<jsp:include page="loginPage.jsp" flush="true"/>

</body>
</html>
