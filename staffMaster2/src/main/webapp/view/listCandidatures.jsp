<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Liste des Candidatures</title>
</head>
<body>
<h2>Liste des Candidatures</h2>

<form method="get" action="condidature">
    <input type="text" name="competance" placeholder="Rechercher par compétence" value="${param.competance}">
    <button type="submit">Rechercher</button>
</form>

<table class="candidature-table">
    <thead>
    <tr>
        <th>Email</th>
        <th>Compétence</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="candidature" items="${candidatures}">
        <tr>
            <td>${candidature.email}</td>
            <td>${candidature.competance}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
