<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Ajouter un Offre</h2>
<form action="offre?action=add" method="post">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required>

    <label for="description">Description:</label>
    <input type="text" name="description" id="description" required>

    <label for="dateValidite">date de validite:</label>
    <input type="date" name="dateValidite" id="dateValidite" required>

    <label for="dateFin">Date de fin:</label>
    <input type="date" name="dateFin" id="dateFin" required>

    <button type="submit">Add Offre</button>
</form>
</body>
</html>
