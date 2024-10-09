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
<form action="employee?action=add" method="post">
  <label for="name">Name:</label>
  <input type="text" name="name" id="name" required>

  <label for="email">Email:</label>
  <input type="email" name="email" id="email" required>

  <label for="password">Password:</label>
  <input type="password" name="password" id="password" required>

  <input type="hidden" value="employee" name="role">

  <label for="cnss">CNSS:</label>
  <input type="text" name="cnss" id="cnss">

  <label for="salaire">Salaire:</label>
  <input type="number" name="salaire" id="salaire" step="0.01" required>

  <label for="numChilds">Number of Children:</label>
  <input type="number" name="numChilds" id="numChilds">

  <label for="soldeConge">Solde Congé:</label>
  <input type="number" name="soldeConge" id="soldeConge">

  <label for="departement">Departement:</label>
  <input type="text" name="departement" id="departement">

  <label for="poste">Poste:</label>
  <input type="text" name="poste" id="poste">

  <label for="birthday">Birthday:</label>
  <input type="date" name="birthday" id="birthday" required>

  <label for="dateEmbauche">Date Embauche:</label>
  <input type="date" name="dateEmbauche" id="dateEmbauche" required>

  <button type="submit">Add Employee</button>
</form>

</body>
</html>