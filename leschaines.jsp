<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

    <h2>Exercice 1 : Combien de 'e' dans notre chaine de caractères ?</h2>
    <p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de caractères</p>

<%
    // Exercice 1 : Combien de 'e' dans la chaîne
    int nombreDeE = 0;
    for (int i = 0; i < chaine.length(); i++) {
        if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
            nombreDeE++;
        }
    }
%>
<p>Le nombre de 'e' dans votre chaîne est : <%= nombreDeE %></p>


        // Exercice 2 : Affichage vertical
        %>
        <h2>Exercice 2 : Affichage vertical</h2>
        <p>Ecrire le programme pour afficher le texte en vertical</p>
        <%
        for (int i = 0; i < chaine.length(); i++) {
        %>
            <p><%= chaine.charAt(i) %></p>
        <%
        }

        // Exercice 3 : Retour à la ligne
        %>
        <h2>Exercice 3 : Retour à la ligne</h2>
        <p>La présence d'un espace provoque un retour à la ligne</p>
        <%
        String[] mots = chaine.split(" ");
        for (String mot : mots) {
        %>
            <p><%= mot %></p>
        <%
        }

        // Exercice 4 : Afficher une lettre sur deux
        %>
        <h2>Exercice 4 : Afficher une lettre sur deux</h2>
        <p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte</p>
        <%
        for (int i = 0; i < chaine.length(); i += 2) {
        %>
            <p><%= chaine.charAt(i) %></p>
        <%
        }

        // Exercice 5 : La phrase en verlan
        %>
        <h2>Exercice 5 : La phrase en verlan</h2>
        <p>Ecrire le programme afin d'afficher le texte en verlan</p>
        <%
        for (int i = chaine.length() - 1; i >= 0; i--) {
        %>
            <p><%= chaine.charAt(i) %></p>
        <%
        }

        // Exercice 6 : Consonnes et voyelles
        %>
        <h2>Exercice 6 : Consonnes et voyelles</h2>
        <p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>
        <%
        int nombreConsonnes = 0;
        int nombreVoyelles = 0;

        for (int i = 0; i < chaine.length(); i++) {
            char caractere = Character.toLowerCase(chaine.charAt(i));
            if (caractere >= 'a' && caractere <= 'z') {
                if (caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u') {
                    nombreVoyelles++;
                } else {
                    nombreConsonnes++;
                }
            }
        }
        %>
        <p>Le nombre de consonnes dans votre chaine est : <%= nombreConsonnes %></p>
        <p>Le nombre de voyelles dans votre chaine est : <%= nombreVoyelles %></p>
        <%
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
