<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Details</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }
        .container { width: 80%; margin: auto; padding: 20px; background: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); border-radius: 5px; }
        h1 { text-align: center; color: #333; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; text-align: center; border: 1px solid #ddd; }
        th { background-color: #f4f4f4; }
        button { padding: 10px 20px; background: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; }
        button:hover { background: #45a049; }
        .movie-info { margin-bottom: 20px; }
    </style>
</head>
<body>
<div align="center">
    <h1><u>Movie Details</u></h1>
    <h2>
        <form action="/bookMovie/${movie.movieId}" method="post">
            <table>
                <tr>
                    <td>The Movie Id:</td>
                    <td>${movie.movieId}</td>
                </tr>
                <tr>
                    <td>Movie Name:</td>
                    <td>${movie.movieName}</td>
                </tr>
                <tr>
                    <td>Movie Language:</td>
                    <td>${movie.language}</td>
                </tr>
                <tr>
                    <td>Movie Genre:</td>
                    <td>${movie.genre}</td>
                </tr>
                <tr>
                    <td>Movie Duration:</td>
                    <td>${movie.duration} minutes</td>
                </tr>
                <tr>
                    <td>Movie Rating:</td>
                    <td>${movie.rating} / 10</td>
                </tr>
            </table>
    </h2>
</div>
<br/>
<div align="center">
    <h2><u>ShowTimes</u></h2>
    <h3>
        <table border="2">
            <tr>
                <th>Show Time Name</th>
                <th>Royal Seat Number</th>
                <th>Premier Seat Number</th>
                <th>Royal Seat Available</th>
                <th>Premier Seat Available</th>
                <th>Select</th>
            </tr>
            <c:forEach items="${movieShowList}" var="movieShow">
                <tr>
                    <td>${movieShow.showTimeName}</td>
                    <td>${movieShow.royalSeatNumber}</td>
                    <td>${movieShow.premierSeatNumber}</td>
                    <td>${movieShow.royalSeatNumber - movieShow.royalBooked}</td>
                    <td>${movieShow.premierSeatNumber- movieShow.premierBooked}</td>
                    <td><input type="radio" name="selection" value="${movieShow.showTimeName}" required/></td>
                    </tr>
            </c:forEach>
        </table>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
        </form>
    </h3>
</div>
</body>
</html>
