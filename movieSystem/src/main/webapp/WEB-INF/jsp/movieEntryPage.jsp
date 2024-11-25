<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Entry Page</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #ff66b2; /* Mild pink background */
    margin: 0;
    padding: 0;
}

h2 {
    color: #333;
    text-align: center;
    margin-top: 20px;
}

.container {
    max-width: 100%;
    margin: 0;
    padding: 20px;
    background-color: #fff4fa;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.form-group {
    margin-bottom: 15px;
    width: 32%; /* Adjust width to fit 3 columns in a row */
    display: inline-block;
    margin-right: 10px;
    vertical-align: top;
}

.form-group label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
    color: #333;
}

.form-group input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    box-sizing: border-box;
}

.table-container {
    width: 100%;
    margin-top: 20px;
    background-color: #f9f9f9;
    padding: 15px;
    border-radius: 8px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

th, td {
    padding: 12px;
    text-align: left;
    border: 1px solid #ddd;
    font-size: 16px;
}

th {
    background-color: #FF99CC; /* Soft pink background */
    color: #fff;
}

td input {
    width: 100%;
    padding: 8px;
    font-size: 16px;
}

.button-group {
    text-align: center;
    margin-top: 20px;
}

.button-group button {
    padding: 12px 20px;
    font-size: 16px;
    margin: 0 15px;
    color: #fff;
    background-color: #FF99CC;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.button-group button[type="reset"] {
    background-color: #6c757d;
}

.button-group button:hover {
    opacity: 0.9;
}

.form-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 15px;
}
        
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Entry Page</h2>
    <form:form id="movieForm" action="/addMovie" method="post" modelAttribute="movieRecord">

        <!-- Movie Details -->
        <div class="form-group">
            <label for="movieId">Enter Movie Id</label>
            <form:input path="movieId" id="movieId"/>
        </div>

        <div class="form-group">
            <label for="movieName">Enter Movie Name</label>
            <form:input path="movieName" id="movieName"/>
        </div>

        <div class="form-group">
            <label for="language">Enter Movie Language</label>
            <form:input path="language" id="language"/>
        </div>

        <div class="form-group">
            <label for="genre">Enter Genre</label>
            <form:input path="genre" id="genre"/>
        </div>

        <div class="form-group">
            <label for="duration">Enter Duration</label>
            <form:input path="duration" id="duration"/>
        </div>

        <div class="form-group">
            <label for="rating">Enter Ratings</label>
            <form:input path="rating" id="rating"/>
        </div>
		
		<!-- Showtime Details -->
        <h2>Showtime Entry</h2>
        <table>
            <tr>
                <th>Show Time</th>
                <th>Premier Seats</th>
                <th>Royal Seats</th>
            </tr>

            <!-- Loop to create 6 entries -->
            <c:forEach var="index" begin="1" end="6">
                <tr>
                    <!-- Showtime Input -->
                    <td>
                        <input list="shows" name="show${index}" placeholder="Select or enter time"/>
                    </td>

                    <!-- Premier Seats -->
                    <td>
                        <input type="text" name="premier${index}" value="---"/>
                    </td>

                    <!-- Royal Seats -->
                    <td>
                        <input type="text" name="royal${index}" value="---"/>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <!-- Showtimes Datalist (one list for all rows) -->
        <datalist id="shows">
            <c:forEach items="${showTimeList}" var="sid">
                <option value="${sid}"></option>
            </c:forEach>
        </datalist>

        <!-- Submit and Reset Buttons -->
        <div class="button-group">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </div>

    </form:form>
</div>

</body>
</html>
		
