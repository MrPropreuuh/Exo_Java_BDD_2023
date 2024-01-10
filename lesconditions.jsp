<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeur1" name="valeur1"></p>
    <p>Saisir la valeur B : <input type="text" id="inputValeur2" name="valeur2"></p>
    <p>Saisir la valeur C : <input type="text" id="inputValeur3" name="valeur3"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<%
    String valeur1 = request.getParameter("valeur1");
    String valeur2 = request.getParameter("valeur2");
    String valeur3 = request.getParameter("valeur3");

    // Vérification de la condition entre les deux valeurs
    if (valeur1 != null && valeur2 != null && valeur3 != null) {
        // Conversion des valeurs en entiers pour la comparaison
        int intValeur1 = Integer.parseInt(valeur1);
        int intValeur2 = Integer.parseInt(valeur2);
        int intValeur3 = Integer.parseInt(valeur3);

        // Exercice 1 : Comparaison
        if (intValeur3 > intValeur1 && intValeur3 < intValeur2) {
%>
            <p>Oui, C est compris entre A et B.</p>
<%
        } else {
%>
            <p>Non, C n'est pas compris entre A et B.</p>
<%
        }

        // Exercice 2 : Pair ou Impair
        if (intValeur3 % 2 == 0) {
%>
            <p>La valeur C est paire.</p>
<%
        } else {
%>
            <p>La valeur C est impaire.</p>
<%
        }
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
