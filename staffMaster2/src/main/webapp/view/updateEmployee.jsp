<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Update Employee</h2>
<form action="employee?action=update" method="post">
  <input type="hidden" name="id" value="${employee.id}">

  <label for="name">Name:</label>
  <input type="text" name="name" id="name" value="${employee.name}" required>

  <label for="email">Email:</label>
  <input type="email" name="email" id="email" value="${employee.email}" required>

  <label for="password">Password:</label>
  <input type="password" name="password" id="password" value="${employee.password}" required>

  <input type="hidden" name="role" value="employee">

  <label for="cnss">CNSS:</label>
  <input type="text" name="cnss" id="cnss" value="${employee.cnss}">

  <label for="salaire">Salaire:</label>
  <input type="number" name="salaire" id="salaire" step="0.01" value="${employee.salaire}" required>

  <label for="numChilds">Number of Children:</label>
  <input type="number" name="numChilds" id="numChilds" value="${employee.numChilds}">

  <label for="soldeConge">Solde Congé:</label>
  <input type="number" name="soldeConge" id="soldeConge" value="${employee.soldeConge}">

  <label for="departement">Departement:</label>
  <input type="text" name="departement" id="departement" value="${employee.departement}">

  <label for="poste">Poste:</label>
  <input type="text" name="poste" id="poste" value="${employee.poste}">

  <label for="birthday">Birthday:</label>
  <input type="date" name="birthday" id="birthday" value="${employee.birthday}" required>

  <label for="dateEmbauche">Date Embauche:</label>
  <input type="date" name="dateEmbauche" id="dateEmbauche" value="${employee.dateEmbauche}" required>

  <button type="submit">Update Employee</button>
</form>


</body>
</html>
