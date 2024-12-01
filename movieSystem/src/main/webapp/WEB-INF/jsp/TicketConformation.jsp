<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Confirmation</title>
    <style>
        /* Basic styling - you can enhance this */
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { 
            max-width: 500px; 
            margin: 50px auto; 
            padding: 20px; 
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Ticket Booking Confirmed!</h1>
        <table>
            <tr>
                <td><b>Movie:</b></td>
                <td>${movieName}</td>
            </tr>
            <tr>
                <td><b>Show Time:</b></td>
                <td>${showTimeName}</td>
            </tr>
            <tr>
                <td><b>Seat Type:</b></td>
                <td>${seatType}</td>
            </tr>
            <tr>
                <td><b>Number of Seats:</b></td>
                <td>${numberOfSeats}</td>
            </tr>
            <tr>
                <td><b>Transaction ID:</b></td>
                <td>${transactionId}</td>
            </tr>
            <tr>
                <td><b>Total Amount:</b></td>
                <td>₹ ${totalAmount}</td>
            </tr>
        </table>
    </div>
</body>
</html>