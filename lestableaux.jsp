<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
<%
int valeur1 = Integer.parseInt(tableauDeChiffres[0]);
int valeur2 = Integer.parseInt(tableauDeChiffres[1]);
int valeur3 = Integer.parseInt(tableauDeChiffres[2]);

double carre = Math.pow(valeur1, 2);
out.println("Le carré de la première valeur est : " + carre);

%>



<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>
<%

out.println("La somme des deux premières valeurs est : " + (valeur1 + valeur2));

%>


<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>

<%

out.println("La somme de toutes les valeurs est : " + (valeur1 + valeur2 + valeur3));

%>



<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>
<%
out.println("La valeur maximale est : " + Math.max(valeur1, Math.max(valeur2, valeur3)));
%>


<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>
<%

out.println("La valeur minimale est : " + Math.min(valeur1, Math.min(valeur2, valeur3)));

%>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>

<%
int valeurPlusProcheDeZero = 0;
int distance = Math.abs(valeur1);
int distance2 = Math.abs(valeur2);
int distance3 = Math.abs(valeur3); 
out.println("La valeur la plus proche de 0 est : " + Math.min(distance, Math.min(distance2, distance3)));
%>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>

<%

String[] valeurs = valeursStr.split(",");
double valeurPlusProcheDeZero = Double.MAX_VALUE;
for (String valeur : valeurs) {
    double val = Double.parseDouble(valeur.trim());
    if (Math.abs(val) < Math.abs(valeurPlusProcheDeZero)) {
        valeurPlusProcheDeZero = val;
    } else if (Math.abs(val) == Math.abs(valeurPlusProcheDeZero) && val > 0) {
        valeurPlusProcheDeZero = val;
    }
}
out.println("La valeur la plus proche de 0 est : " + valeurPlusProcheDeZero);


%>


<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
