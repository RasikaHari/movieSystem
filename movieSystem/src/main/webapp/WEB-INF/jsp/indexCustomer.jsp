<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Movie Booking System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #fce4ec; /* Light pink background */
            
        }

        h1 {
            font-family: "Monotype Corsiva", cursive;
            text-align: center;
            margin-top: 50px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
            color: #e91e63; /* Pink color for heading */
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #f48fb1; /* Soft pink background */
            border-radius: 5px;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .navbar a, .dropdown .dropbtn {
            font-size: 18px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            background: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar a:hover, .dropdown .dropbtn:hover {
            background-color: #ec407a; /* Darker pink hover effect */
            transform: scale(1.05);
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f8bbd0; /* Lighter pink for dropdown */
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #f06292; /* Pink hover effect in dropdown */
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
        }

        @media screen and (max-width: 600px) {
            .navbar a, .dropdown .dropbtn {
                font-size: 16px;
                padding: 10px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div align="center">
        <h1>Welcome To Online Movie Booking System</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Movie Management</button>
                <div class="dropdown-content">
                    <a href="/movieReport">Movie List</a>
                    <a href="/showTimeReport">Showtime List</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">Booking Management</button>
                <div class="dropdown-content">
                    <a href="/movieReportLanguage">New Booking</a>
                    <!--<a href="/cancelTicket">Cancellation</a>-->
                    <a href="${pageContext.request.contextPath}/movieBookingCancellationPage">Cancellation</a>
                    
                </div>
            </div>
            
            <a href="/logout">Logout</a>
        </div>
    </div>
</body>
</html>