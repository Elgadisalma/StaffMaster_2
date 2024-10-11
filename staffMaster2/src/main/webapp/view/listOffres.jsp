<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Liste des Offres</h2>

<table class="offre-table">
    <thead>
    <tr>
        <th>Titre</th>
        <th>Description</th>
        <th>Date de validite</th>
        <th>Date de fin</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="offre" items="${offres}">

        <tr>
            <td>${offre.title}</td>
            <td>${offre.description}</td>
            <td>${offre.dateValidite}</td>
            <td>${offre.dateFin}</td>
            <td>
                <a href="offre?action=postule&id=${offre.offre_id}" class="btn-edit">Postuler</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
