<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les nombres</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les nombres</h1>
<form action="#" method="post">
    <p>Saisir trois valeurs (séparées par des espaces) : <input type="text" id="inputValeurs" name="valeurs"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<%
    String valeurs = request.getParameter("valeurs");

    if (valeurs != null) {
        // Exercice 1 : Carré de la première valeur
        String[] tableauValeurs = valeurs.split(" ");
        if (tableauValeurs.length >= 1) {
            int premiereValeur = Integer.parseInt(tableauValeurs[0]);
        %>
            <p>Le carré de la première valeur est : <%= Math.pow(premiereValeur, 2) %></p>
        <%
        }

        // Exercice 2 : Somme des deux premières valeurs
        if (tableauValeurs.length >= 2) {
            int premiereValeur = Integer.parseInt(tableauValeurs[0]);
            int deuxiemeValeur = Integer.parseInt(tableauValeurs[1]);
        %>
            <p>La somme des deux premières valeurs est : <%= premiereValeur + deuxiemeValeur %></p>
        <%
        }

        // Exercice 3 : Somme de toutes les valeurs
        int sommeTotale = 0;
        for (String valeur : tableauValeurs) {
            sommeTotale += Integer.parseInt(valeur);
        }
        %>
        <p>La somme de toutes les valeurs est : <%= sommeTotale %></p>

        <!-- Exercice 4 : Valeur maximale -->
        <%
        int valeurMaximale = Integer.MIN_VALUE;
        for (String valeur : tableauValeurs) {
            int valeurActuelle = Integer.parseInt(valeur);
            if (valeurActuelle > valeurMaximale) {
                valeurMaximale = valeurActuelle;
            }
        }
        %>
        <p>La valeur maximale saisie est : <%= valeurMaximale %></p>

        <!-- Exercice 5 : Valeur minimale -->
        <%
        int valeurMinimale = Integer.MAX_VALUE;
        for (String valeur : tableauValeurs) {
            int valeurActuelle = Integer.parseInt(valeur);
            if (valeurActuelle < valeurMinimale) {
                valeurMinimale = valeurActuelle;
            }
        }
        %>
        <p>La valeur minimale saisie est : <%= valeurMinimale %></p>

        <!-- Exercice 6 : Valeur la plus proche de 0 -->
        <%
        int valeurPlusProcheDeZero = Integer.parseInt(tableauValeurs[0]);
        for (String valeur : tableauValeurs) {
            int valeurActuelle = Integer.parseInt(valeur);
            if (Math.abs(valeurActuelle) < Math.abs(valeurPlusProcheDeZero)) {
                valeurPlusProcheDeZero = valeurActuelle;
            }
        }
        %>
        <p>La valeur la plus proche de 0 est : <%= valeurPlusProcheDeZero %></p>

        <!-- Exercice 7 : Valeur la plus proche de 0 (2° version) -->
        <%
        int valeurPlusProcheDeZero2 = Integer.parseInt(tableauValeurs[0]);
        for (String valeur : tableauValeurs) {
            int valeurActuelle = Integer.parseInt(valeur);
            if (Math.abs(valeurActuelle) < Math.abs(valeurPlusProcheDeZero2)
                    || (Math.abs(valeurActuelle) == Math.abs(valeurPlusProcheDeZero2) && valeurActuelle > 0)) {
                valeurPlusProcheDeZero2 = valeurActuelle;
            }
        }
        %>
        <p>La valeur la plus proche de 0 (2° version) est : <%= valeurPlusProcheDeZero2 %></p>
<%
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
