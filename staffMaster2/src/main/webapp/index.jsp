<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<h2>Ajouter un Employe</h2>
<form action="employee" method="get">
    <input type="hidden" name="action" value="list">
    <button type="submit">Afficher les employés</button>
</form>

<form action="employee" method="get">
    <input type="hidden" name="action" value="ajout">
    <button type="submit">Ajouter un employé</button>
</form>



</body>
</html>