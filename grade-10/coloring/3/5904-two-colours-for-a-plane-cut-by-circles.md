---
id: "5904"
title: "Deux couleurs pour un plan découpé par des cercles"
grade: 10
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, cercles, regions, parite, demonstration]
adapted_from: null
see_also: ["4805"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Coloring (Tom Davis)"
  reference: "Coloring_Tom_Davis_Facilitator_Guide.pdf, « Problems », problème 6"
  url: "https://mathcircles.org/activity/coloring/"
  original_language: "en"
  local_copy: "sources/originals/namc/Coloring_Tom_Davis_Facilitator_Guide.pdf"
---

## Statement

Le **théorème des quatre couleurs** dit qu'on peut toujours colorier les pays d'une carte avec quatre couleurs, sans que deux pays qui se touchent le long d'une frontière reçoivent la même couleur. Il a résisté plus d'un siècle et n'a été démontré qu'en 1976, avec l'aide d'un ordinateur.

Voici une version beaucoup plus modeste, que l'on peut démontrer en une page.

On trace dans le plan un nombre fini de cercles. Ils peuvent avoir des rayons différents et se couper. Ils découpent le plan en régions, et on regarde chaque région comme un « pays ».

Deux régions sont dites *voisines* lorsque leurs frontières se touchent le long d'un arc de cercle. Se toucher en un seul point ne suffit pas.

Combien de couleurs faut-il, au minimum, pour colorier toutes les régions de façon que deux régions voisines n'aient jamais la même couleur ? Démontrer la réponse.

## Hints

1. Fais le dessin avec $1$ cercle, puis $2$ cercles qui se coupent, puis $3$. Combien de couleurs t'ont suffi ?
2. Une couleur ne peut évidemment pas suffire dès qu'il y a au moins un cercle. La vraie question est : deux couleurs suffisent-elles toujours ?
3. Prends un point quelconque du plan, hors des cercles. Il y a un nombre bien défini de cercles qui le contiennent à l'intérieur. Ce nombre change-t-il quand le point se déplace à l'intérieur d'une même région ?
4. Que devient ce nombre quand on traverse un arc de cercle pour passer d'une région à une région voisine ?
5. Colorie une région selon que ce nombre est pair ou impair.

## Solution

**Réponse : deux couleurs suffisent toujours, et une ne suffit pas dès qu'il y a au moins un cercle. Le minimum est donc $2$.**

### Une couleur ne suffit pas

Dès qu'on trace un cercle, il y a une région à l'intérieur et une région à l'extérieur, et elles se touchent le long de tout le cercle : elles sont voisines. Il faut donc au moins deux couleurs.

### Deux couleurs suffisent : la règle

Pour un point $P$ du plan qui n'est sur aucun des cercles, notons $n(P)$ le **nombre de cercles qui contiennent $P$ à l'intérieur**.

Si $P$ et $Q$ sont dans la même région, on peut aller de $P$ à $Q$ sans traverser aucun cercle. Alors, pour chaque cercle, $P$ et $Q$ sont du même côté, donc $n(P) = n(Q)$. Le nombre $n(P)$ ne dépend donc que de la région : notons-le $n(R)$ pour la région $R$.

**Règle de coloriage.** On colorie la région $R$

- en gris si $n(R)$ est pair ;
- en blanc si $n(R)$ est impair.

### Pourquoi cela marche

Soient $R$ et $R'$ deux régions voisines. Elles se touchent le long d'un arc, et cet arc appartient à un des cercles, disons $C$.

Prenons un point de cet arc et traversons-le, de $R$ vers $R'$, par un petit segment.

- Pour le cercle $C$, on passe de l'intérieur à l'extérieur, ou l'inverse : la contribution de $C$ au compte change de $1$.
- Pour tous les autres cercles, le segment est assez court pour ne pas les rencontrer : leur contribution ne change pas.

Donc $n(R')$ et $n(R)$ diffèrent exactement de $1$. L'un est pair, l'autre est impair : les deux régions reçoivent bien des couleurs différentes.

**Conclusion.** Deux couleurs suffisent toujours, quel que soit le nombre de cercles et leur disposition, et deux couleurs sont nécessaires. Le minimum cherché est $2$.

### Une autre façon de voir : on ajoute les cercles un par un

Voici la même idée racontée autrement. Sans aucun cercle, le plan entier est une seule région, coloriée en gris. Ajoutons les cercles un par un, et à chaque nouveau cercle, **échangeons les deux couleurs à l'intérieur de ce cercle**, en laissant tout l'extérieur tel quel.

Après cet échange, le coloriage reste correct. En effet, prenons deux régions voisines après l'ajout du cercle $C$ :

- si leur arc commun est sur $C$, elles viennent de la même ancienne région, donc elles avaient la même couleur, et on vient d'en changer une seule : elles diffèrent maintenant ;
- si leur arc commun est sur un cercle plus ancien, elles sont toutes les deux à l'intérieur de $C$ ou toutes les deux à l'extérieur. Elles viennent de deux anciennes régions voisines, donc de couleurs différentes, et on leur a fait subir le même traitement : elles diffèrent encore.

Cette construction donne exactement le même coloriage que la règle « pair ou impair ».

## Going further

1. Le même énoncé avec des **droites** au lieu de cercles : deux couleurs suffisent-elles encore ? (Voir l'exercice sur le plan découpé par des droites.)
2. Et si on mélange droites et cercles ?
3. Et avec des triangles, ou des courbes fermées quelconques tracées dans le plan, deux à deux sécantes ?
4. Sur une carte de vrais pays, deux couleurs ne suffisent plus : dessine une carte de quatre pays qui en réclame trois, puis une carte qui en réclame quatre.
