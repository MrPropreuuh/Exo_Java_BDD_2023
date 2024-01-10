<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%
    String chaine = request.getParameter("chaine");

    if (chaine != null) {
        String[] tableauDeChiffres = chaine.split("\\s+");

        // Exercice 1 : Carré de la première valeur
        int carrePremiereValeur = Integer.parseInt(tableauDeChiffres[0]) * Integer.parseInt(tableauDeChiffres[0]);

        // Exercice 2 : Somme des deux premières valeurs
        int sommeDeuxPremieresValeurs = Integer.parseInt(tableauDeChiffres[0]) + Integer.parseInt(tableauDeChiffres[1]);

        // Exercice 3 : Somme de toutes les valeurs
        int sommeToutesValeurs = 0;
        for (String valeur : tableauDeChiffres) {
            sommeToutesValeurs += Integer.parseInt(valeur);
        }

        // Exercice 4 : Valeur maximale
        int valeurMaximale = Integer.MIN_VALUE;
        for (String valeur : tableauDeChiffres) {
            int intValue = Integer.parseInt(valeur);
            if (intValue > valeurMaximale) {
                valeurMaximale = intValue;
            }
        }

        // Exercice 5 : Valeur minimale
        int valeurMinimale = Integer.MAX_VALUE;
        for (String valeur : tableauDeChiffres) {
            int intValue = Integer.parseInt(valeur);
            if (intValue < valeurMinimale) {
                valeurMinimale = intValue;
            }
        }

        // Exercice 6 : Valeur la plus proche de 0
        int valeurPlusProcheZero = Integer.parseInt(tableauDeChiffres[0]);
        for (String valeur : tableauDeChiffres) {
            int intValue = Integer.parseInt(valeur);
            if (Math.abs(intValue) < Math.abs(valeurPlusProcheZero)) {
                valeurPlusProcheZero = intValue;
            }
        }

        // Exercice 7 : Valeur la plus proche de 0 (2° version)
        int valeurPlusProcheZeroV2 = Integer.parseInt(tableauDeChiffres[0]);
        for (String valeur : tableauDeChiffres) {
            int intValue = Integer.parseInt(valeur);
            if (Math.abs(intValue) < Math.abs(valeurPlusProcheZeroV2) || (Math.abs(intValue) == Math.abs(valeurPlusProcheZeroV2) && intValue > 0)) {
                valeurPlusProcheZeroV2 = intValue;
            }
        }
%>

<h2>Exercice 1 : Carré de la première valeur</h2>
<p>Le carré de la première valeur est : <%= carrePremiereValeur %></p>

<h2>Exercice 2 : Somme des deux premières valeurs</h2>
<p>La somme des deux premières valeurs est : <%= sommeDeuxPremieresValeurs %></p>

<h2>Exercice 3 : Somme de toutes les valeurs</h2>
<p>La somme de toutes les valeurs est : <%= sommeToutesValeurs %></p>

<h2>Exercice 4 : Valeur maximale</h2>
<p>La valeur maximale saisie par l'utilisateur est : <%= valeurMaximale %></p>

<h2>Exercice 5 : Valeur minimale</h2>
<p>La valeur minimale saisie par l'utilisateur est : <%= valeurMinimale %></p>

<h2>Exercice 6 : Valeur la plus proche de 0</h2>
<p>La valeur la plus proche de 0 est : <%= valeurPlusProcheZero %></p>

<h2>Exercice 7 : Valeur la plus proche de 0 (2° version)</h2>
<p>La valeur la plus proche de 0 (2° version) est : <%= valeurPlusProcheZeroV2 %></p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
``
