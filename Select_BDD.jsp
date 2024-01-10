<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
    String url = "jdbc:mariadb://localhost:3306/films";
    String user = "mysql";
    String password = "mysql";

        // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("année");
            // Faites ce que vous voulez avec les données...
            //Exemple d'affichage de 2 colonnes
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
        }

        // Fermer les ressources 
        rs.close();
        pstmt.close();
        conn.close();
    %>

<!-- Exercice 1 : Les films entre 2000 et 2015 -->
<h2>Exercice 1 : Les films entre 2000 et 2015</h2>
<form action="#" method="post">
    <input type="submit" value="Afficher les films entre 2000 et 2015">
</form>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        // Réaliser la connexion à la base de données et exécuter la requête
        // Afficher les résultats (à adapter selon vos besoins)
    }
%>


<!-- Exercice 2 : Année de recherche -->
<h2>Exercice 2 : Année de recherche</h2>
<form action="#" method="post">
    <label for="annee">Saisir une année :</label>
    <input type="text" id="annee" name="annee">
    <input type="submit" value="Rechercher">
</form>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String anneeRecherche = request.getParameter("annee");
        // Réaliser la connexion à la base de données et exécuter la requête avec l'annéeRecherche
        // Afficher les résultats (à adapter selon vos besoins)
    }
%>


<!-- Exercice 3 : Modification du titre du film -->
<h2>Exercice 3 : Modification du titre du film</h2>
<form action="#" method="post">
    <label for="idFilm">ID du film à modifier :</label>
    <input type="text" id="idFilm" name="idFilm">
    <label for="nouveauTitre">Nouveau titre :</label>
    <input type="text" id="nouveauTitre" name="nouveauTitre">
    <input type="submit" value="Modifier">
</form>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String idFilm = request.getParameter("idFilm");
        String nouveauTitre = request.getParameter("nouveauTitre");
        // Réaliser la connexion à la base de données et exécuter la requête de modification
        // Afficher un message de confirmation
    }
%>


<!-- Exercice 4 : La valeur maximum -->
<h2>Exercice 4 : La valeur maximum</h2>
<form action="#" method="post">
    <label for="nouveauFilm">Nouveau film :</label>
    <!-- Ajoutez ici les champs nécessaires pour saisir les détails du nouveau film -->
    <input type="submit" value="Ajouter">
</form>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        // Réaliser la connexion à la base de données et exécuter la requête d'insertion du nouveau film
        // Afficher un message de confirmation
    }
%>


</body>
</html>
