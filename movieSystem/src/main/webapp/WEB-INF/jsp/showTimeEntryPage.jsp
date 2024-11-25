<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Time Entry Page</title>

<style>
    /* General page styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f9e0e6; /* Bright pink background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    div {
        width: 400px;
        background-color: #fff; /* White form background */
        padding: 40px;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        
    }
    h1 {
        color: black;
        text-align: center;
    }
    h2 {
        color: #555;
        text-align: center;
        margin-bottom: 20px;
    }
    
    /* Form styling */
    label {
        display: block;
        margin: 12px 0 4px;
        font-weight: bold;
        color: #d14787; /* Dark pink for labels */
    }
    form input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 4px;
        font-size: 1em;
        
    }
    
    /* Button styling */
    .button-group {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    button[type="submit"], button[type="reset"] {
        padding: 12px 25px; /* Slightly increased button height */
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 1em;
    }
    button[type="submit"] {
        background-color: #d14787; /* Dark pink for submit */
        color: #fff;
    }
    button[type="submit"]:hover {
        background-color: #ba3d73; /* Slightly darker pink for hover */
    }
    button[type="reset"] {
        background-color: #ffcce0; /* Soft pink for reset */
        color: #fff;
    }
    button[type="reset"]:hover {
        background-color: #e68aa9; /* Slightly darker pink for hover */
    }
</style>

</head>
<body>
    <div>
        <h1>Show Time Entry</h1>
        <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
            <form:hidden path="showTimeId"/>
            <form:hidden path="showTimeRoyalPrice"/>
            <h2>Enter Show Time Details Below:</h2>
            
            <label>Show Time Name:</label>
            <form:input path="showTimeName" />
            
            <label>Premier Price:</label>
            <form:input path="showTimePremierPrice" />
            
            <div class="button-group">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>
