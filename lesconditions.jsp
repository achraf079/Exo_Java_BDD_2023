<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p><%= intValeur1 %> est supérieure à <%= intValeur2 %>.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p><%= intValeur1 %> est inférieure à <%= intValeur1 %>.</p>
        <% } else { %>
            <p> <%= intValeur1 %>  est égale à <%= intValeur2 %>.</p>
        <% } %>
   
    <% } %>   
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
</br>

<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="valeurA" name="valeurA">
    <p>Saisir la valeur B : <input type="text" id="valeurB" name="valeurB">
    <p>Saisir la valeur C : <input type="text" id="valeurC" name="valeurC">
    <p><input type="submit" value="Afficher">
</form>

<%

String valeurA = request.getParameter("valeurA"); 
String valeurB = request.getParameter("valeurB");
String valeurC = request.getParameter("valeurC");


if (valeurA != null && valeurB != null && valeurC != null) { 

    int IntvaleurA = Integer.parseInt(valeurA);
    int IntvaleurB = Integer.parseInt(valeurB);
    int IntvaleurC = Integer.parseInt(valeurC);

    if ((valeurC >= valeurA && valeurC <= valeurB) || (valeurC >= valeurB && valeurC <= valeurA)) {
        out.print("La valeur de C est comprise entre A et B.");
    } else {
        out.print("La valeur de C n'est pas comprise entre A et B.");
    }
}

%>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<form action="#" method="post">
    <p>Saisir un nombre : <input type="text" id="valeur" name="valeur">
    <p><input type="submit" value="Afficher">
<%

String valeur = request.getParameter("valeur1");
if (valeur1 != null) {

        int Intvaleur1 = Integer.parseInt(valeur1);

        if (valeur1 % 2 == 0) {
            out.print("<p>Le nombre " + valeur1 + " est pair.</p>");
        } else {
            out.print("<p>Le nombre " + valeur1 + " est impair.</p>");
        }
}
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
