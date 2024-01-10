<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoiles</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurCarre = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurCarre != null && !valeurCarre.isEmpty()) { %>

<%-- Boucle for pour afficher le carré d'étoiles --%>
    <% int tailleCarre = Integer.parseInt(valeurCarre); %>
    <% for (int i = 1; i <= tailleCarre; i++) { %>
        <p>
        <% for (int j = 1; j <= tailleCarre; j++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangle = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangle != null && !valeurTriangle.isEmpty()) { %>

<%-- Boucle for pour afficher le triangle rectangle gauche --%>
    <% int tailleTriangle = Integer.parseInt(valeurTriangle); %>
    <% for (int i = 1; i <= tailleTriangle; i++) { %>
        <p>
        <% for (int j = 1; j <= i; j++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle inversé aligné sur la gauche</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleInverse = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleInverse != null && !valeurTriangleInverse.isEmpty()) { %>

<%-- Boucle for pour afficher le triangle rectangle inversé --%>
    <% int tailleTriangleInverse = Integer.parseInt(valeurTriangleInverse); %>
    <% for (int i = tailleTriangleInverse; i >= 1; i--) { %>
        <p>
        <% for (int j = 1; j <= i; j++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleDroite = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleDroite != null && !valeurTriangleDroite.isEmpty()) { %>

<%-- Boucle for pour afficher le triangle rectangle aligné sur la droite --%>
    <% int tailleTriangleDroite = Integer.parseInt(valeurTriangleDroite); %>
    <% for (int i = 1; i <= tailleTriangleDroite; i++) { %>
        <p>
        <%-- Boucle for pour afficher les espaces à gauche --%>
        <% for (int j = tailleTriangleDroite - i; j > 0; j--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <%-- Boucle for pour afficher les étoiles --%>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 5 : Triangle isocèle</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné au milieu</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleCentre = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleCentre != null && !valeurTriangleCentre.isEmpty()) { %>

<%-- Boucle for pour afficher le triangle rectangle aligné au milieu --%>
    <% int tailleTriangleCentre = Integer.parseInt(valeurTriangleCentre); %>
    <% for (int i = 1; i <= tailleTriangleCentre; i++) { %>
        <p>
        <%-- Boucle for pour afficher les espaces à gauche --%>
        <% for (int j = tailleTriangleCentre - i; j > 0; j--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <%-- Boucle for pour afficher les étoiles --%>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 6 : Le demi-losange</h2>
<p>Ecrire le code afin de produire un demi-losange avec les triangles des exercices 4 et 3</p>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurLosange = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurLosange != null && !valeurLosange.isEmpty()) { %>

<%-- Boucle for pour afficher le triangle rectangle aligné sur la droite --%>
    <% int tailleLosange = Integer.parseInt(valeurLosange); %>
    <% for (int i = 1; i <= tailleLosange; i++) { %>
        <p>
        <%-- Boucle for pour afficher les espaces à gauche --%>
        <% for (int j = tailleLosange - i; j > 0; j--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <%-- Boucle for pour afficher les étoiles --%>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<%-- Boucle for pour afficher le triangle rectangle inversé --%>
    <% for (int i = tailleLosange; i >= 1; i--) { %>
        <p>
        <%-- Boucle for pour afficher les espaces à gauche --%>
        <% for (int j = tailleLosange - i; j > 0; j--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <%-- Boucle for pour afficher les étoiles --%>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        </p>
    <% } %>

<% } %>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
