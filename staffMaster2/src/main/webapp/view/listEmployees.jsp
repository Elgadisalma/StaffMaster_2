<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>staffMaster</title>
</head>
<body>
<h2>Liste des Employes</h2>

<table class="employee-table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Email</th>
        <th>CNSS</th>
        <th>Date d'embauche</th>
        <th>Salaire</th>
        <th>Nombre d'enfants</th>
        <th>Solde de congés</th>
        <th>Département</th>
        <th>Poste</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${employees}">

        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.email}</td>
            <td>${employee.cnss}</td>
            <td>${employee.dateEmbauche}</td>
            <td>${employee.salaire}</td>
            <td>${employee.numChilds}</td>
            <td>${employee.soldeConge}</td>
            <td>${employee.departement}</td>
            <td>${employee.poste}</td>
            <td>
                <div class="df">
                    <a href="employee?action=edit&id=${employee.id}" class="btn-edit">Modifier</a>
                    <a href="employee?action=delete&id=${employee.id}" class="btn-delete" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet employé ?');">Supprimer</a>
                </div>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
