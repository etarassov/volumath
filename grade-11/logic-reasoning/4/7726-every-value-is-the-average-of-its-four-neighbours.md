---
id: "7726"
title: "Chaque nombre est la moyenne de ses quatre voisins"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [principe de l extremum, minimum, moyenne, quadrillage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

À chaque point du plan dont les deux coordonnées sont des entiers, on associe un **entier positif ou nul**. Les voisins d'un point sont les quatre points obtenus en avançant d'un pas vers la droite, vers la gauche, vers le haut ou vers le bas.

On suppose que, pour chaque point, le nombre qui lui est associé est exactement la **moyenne** des quatre nombres associés à ses voisins.

Montrer que tous les nombres sont égaux.

## Hints

1. Il y a une infinité de points, donc pas de « plus grand nombre » garanti. Mais les nombres sont des entiers positifs ou nuls : que peut-on dire de l'ensemble de toutes les valeurs utilisées ?
2. Toute partie non vide de $\mathbb{N}$ possède un plus petit élément. Appelle $m$ la plus petite valeur utilisée, et place-toi en un point où elle est atteinte.
3. Note $a$, $b$, $c$, $d$ les valeurs des quatre voisins de ce point. Que sais-tu de chacune par rapport à $m$ ? Et que dit l'hypothèse ?
4. Suppose qu'un seul des quatre dépasse strictement $m$ et calcule la moyenne. Que se passe-t-il ?
5. Une fois que tu sais que les quatre voisins valent aussi $m$, comment atteindre un point quelconque du plan ?

## Solution

**L'idée : partir de la plus petite valeur, et montrer qu'elle se propage de proche en proche à tout le plan.**

**Il existe une plus petite valeur.** L'ensemble des valeurs utilisées est une partie non vide de $\mathbb{N}$, l'ensemble des entiers positifs ou nuls. Toute partie non vide de $\mathbb{N}$ possède un plus petit élément : notons $m$ cette plus petite valeur, et choisissons un point $Q$ où elle est atteinte.

**Les quatre voisins de $Q$ valent aussi $m$.** Notons $a$, $b$, $c$, $d$ les valeurs associées aux quatre voisins de $Q$. Comme $m$ est la plus petite valeur utilisée :

$$a \geqslant m, \qquad b \geqslant m, \qquad c \geqslant m, \qquad d \geqslant m .$$

L'hypothèse de l'énoncé donne

$$m = \frac{a+b+c+d}{4} .$$

Supposons qu'au moins l'une des quatre valeurs, disons $a$, soit strictement supérieure à $m$. Alors

$$\frac{a+b+c+d}{4} > \frac{m+b+c+d}{4} \geqslant \frac{m+m+m+m}{4} = m ,$$

la première inégalité étant stricte parce que $a > m$, et la seconde venant de $b, c, d \geqslant m$. On obtiendrait donc $m > m$, ce qui est absurde.

Aucune des quatre valeurs ne dépasse donc strictement $m$, et comme elles sont toutes $\geqslant m$ :

$$a = b = c = d = m .$$

**La valeur $m$ se propage partout.** Nous venons de montrer ceci :

> si un point porte la valeur $m$, alors ses quatre voisins portent aussi la valeur $m$.

En effet, le raisonnement ci-dessus n'a utilisé sur $Q$ que le fait qu'il porte la valeur minimale $m$ ; il s'applique donc à tout point portant $m$.

Soit maintenant $R$ un point quelconque à coordonnées entières. On peut aller de $Q$ à $R$ par une suite finie de pas horizontaux et verticaux : il suffit de corriger d'abord la première coordonnée, puis la seconde. Chaque pas mène d'un point à l'un de ses voisins. En appliquant le résultat encadré à chaque pas, la valeur $m$ passe de $Q$ au premier point, puis au deuxième, et ainsi de suite jusqu'à $R$. Donc $R$ porte la valeur $m$.

**Conclusion : tous les points portent la même valeur $m$. Les nombres sont donc tous égaux.**

## Going further

L'hypothèse « entiers positifs ou nuls » est essentielle, et pas pour la raison qu'on croit. Ce qui compte, c'est que l'ensemble des valeurs possède un plus petit élément. Avec des réels positifs, l'ensemble des valeurs pourrait ne pas avoir de minimum, et il faudrait un argument plus fin.

Et sans hypothèse de positivité, le résultat est carrément faux : associe à chaque point $(x, y)$ le nombre $x$. La moyenne des quatre voisins de $(x,y)$ vaut

$$\frac{(x-1) + (x+1) + x + x}{4} = x ,$$

et pourtant les valeurs ne sont pas toutes égales.
