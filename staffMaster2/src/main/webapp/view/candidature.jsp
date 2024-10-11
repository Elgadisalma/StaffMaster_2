<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Postuler à l'Offre : ${offre.title}</h2>

<form action="condidature" method="post">
    <input type="hidden" name="offreId" value="${offre.offre_id}">
    <label for="email">Email :</label>
    <input type="email" id="email" name="email" required><br/>

    <label for="competance">Compétence (Mot clé) :</label>
    <input type="text" id="competance" name="competance" required><br/>

    <button type="submit">Soumettre la candidature</button>
</form>

</body>
</html>
