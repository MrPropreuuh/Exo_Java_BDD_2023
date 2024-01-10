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
        // Exemple d'affichage de 2 colonnes
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
        Connection connEx1 = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connEx1 = DriverManager.getConnection(url, user, password);

            String sqlEx1 = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000 AND année <= 2015";
            PreparedStatement pstmtEx1 = connEx1.prepareStatement(sqlEx1);
            ResultSet rsEx1 = pstmtEx1.executeQuery();

            while (rsEx1.next()) {
                String colonne1 = rsEx1.getString("idFilm");
                String colonne2 = rsEx1.getString("titre");
                String colonne3 = rsEx1.getString("année");
                out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Gérez les erreurs de connexion ou d'exécution de la requête
        } finally {
            try {
                if (connEx1 != null) {
                    connEx1.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
        Connection connEx2 = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connEx2 = DriverManager.getConnection(url, user, password);

            String anneeRecherche = request.getParameter("annee");
            String sqlEx2 = "SELECT idFilm, titre, année FROM Film WHERE année = ?";
            PreparedStatement pstmtEx2 = connEx2.prepareStatement(sqlEx2);
            pstmtEx2.setString(1, anneeRecherche);

            ResultSet rsEx2 = pstmtEx2.executeQuery();

            while (rsEx2.next()) {
                String colonne1 = rsEx2.getString("idFilm");
                String colonne2 = rsEx2.getString("titre");
                String colonne3 = rsEx2.getString("année");
                out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Gérez les erreurs de connexion ou d'exécution de la requête
        } finally {
            try {
                if (connEx2 != null) {
                    connEx2.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
        Connection connEx3 = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connEx3 = DriverManager.getConnection(url, user, password);

            String idFilm = request.getParameter("idFilm");
            String nouveauTitre = request.getParameter("nouveauTitre");

            String sqlEx3 = "UPDATE Film SET titre = ? WHERE idFilm = ?";
            PreparedStatement pstmtEx3 = connEx3.prepareStatement(sqlEx3);
            pstmtEx3.setString(1, nouveauTitre);
            pstmtEx3.setString(2, idFilm);

            int rowsAffectedEx3 = pstmtEx3.executeUpdate();
            out.println("Nombre de lignes modifiées : " + rowsAffectedEx3);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Gérez les erreurs de connexion ou d'exécution de la requête
        } finally {
            try {
                if (connEx3 != null) {
                    connEx3.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
        Connection connEx4 = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connEx4 = DriverManager.getConnection(url, user, password);

            // Récupérez les détails du nouveau film depuis le formulaire
            // ...
            
            String sqlEx4 = "INSERT INTO Film (titre, année) VALUES (?, ?)";
            PreparedStatement pstmtEx4 = connEx4.prepareStatement(sqlEx4);
            // Définissez les paramètres pour le nouveau film
            // pstmtEx4.setString(1, ...);
            // pstmtEx4.setString(2, ...);

            int rowsAffectedEx4 = pstmtEx4.executeUpdate();
            out.println("Nouveau film ajouté. Nombre de lignes ajoutées : " + rowsAffectedEx4);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Gérez les erreurs de connexion ou d'exécution de la requête
        } finally {
            try {
                if (connEx4 != null) {
                    connEx4.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    %>

</body>
</html>
