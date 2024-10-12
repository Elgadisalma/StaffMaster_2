<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Employee </h2>
<form action="employee" method="get">
    <select name="action">
        <option value="listEmployees">Afficher les employés</option>
        <option value="ajoutEmployee">Ajouter un employé</option>
    </select>
    <button type="submit">Exécuter</button>
</form>

<h2>Offre </h2>
<form action="offre" method="get">
    <select name="action">
        <option value="ajoutOffre">Ajouter une offre</option>
        <option value="listOffres">Afficher les offres</option>
    </select>
    <button type="submit">Exécuter</button>
</form>


<h2>Candidature</h2>
<form action="condidature" method="get">
    <input type="hidden" name="action" value="listCandidature">
    <button type="submit">Voir les condidatures</button>
</form>

<%--<form method="get" action="testEmail">--%>
<%--    <button type="submit">test email</button>--%>
<%--</form>--%>


</body>
</html>