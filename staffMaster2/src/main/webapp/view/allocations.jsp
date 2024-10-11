<%@ page import="org.example.staffmaster2.entity.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Resume des Allocations Familiales</h2>

<p><strong>Nom de l'employe :</strong> <%= ((Employee) request.getAttribute("employee")).getName() %></p>
<p><strong>Salaire :</strong> <%= ((Employee) request.getAttribute("employee")).getSalaire() %> DH</p>
<p><strong>Nombre d'enfants à charge :</strong> <%= ((Employee) request.getAttribute("employee")).getNumChilds() %></p>

<h3>Allocations familiales :</h3>
<p><strong>Montant total des allocations :</strong> <%= request.getAttribute("allocations") %> DH</p>

</body>
</html>
