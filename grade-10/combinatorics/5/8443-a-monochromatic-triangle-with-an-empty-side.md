---
id: "8443"
title: "Un triangle de même couleur, avec un côté vide"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [principe-des-tiroirs, principe-extremal, inegalite-triangulaire, perimetre, points-du-plan]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Entraînement de fin de parcours », exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On se donne un ensemble $S$ de $n \geqslant 5$ points du plan. Chaque point est colorié en rouge ou en noir. On suppose que **trois points d'une même couleur ne sont jamais alignés**.

Montrer qu'il existe trois points de $S$, tous de la même couleur, formant un triangle dont au moins un côté ne contient aucun autre point de $S$.

## Hints

1. Commence par le plus facile : pourquoi existe-t-il au moins un triangle dont les trois sommets sont de la même couleur ?
2. Il y a un nombre fini de tels triangles. On peut donc en choisir un qui soit « le plus petit » pour une certaine mesure. Laquelle choisir ?
3. Raisonne par l'absurde sur un triangle monochrome de **périmètre minimal** : suppose que chacun de ses trois côtés contient un point de $S$.
4. Quelle est la couleur de ces trois points ? Sers-toi de l'hypothèse sur les alignements.
5. Ces trois points forment un nouveau triangle monochrome. Compare son périmètre à celui du premier, en appliquant trois fois l'inégalité triangulaire.

## Solution

### Étape 1. Il existe au moins un triangle monochrome

Il y a $n \geqslant 5$ points et deux couleurs. Si chaque couleur concernait au plus deux points, il y aurait au plus $4$ points : c'est faux. Donc l'une des couleurs concerne au moins trois points.

Trois points de la même couleur ne sont jamais alignés, par hypothèse : ces trois points forment donc un vrai triangle. Appelons **triangle monochrome** un triangle dont les trois sommets sont des points de $S$ de la même couleur.

Il existe donc au moins un triangle monochrome. Comme $S$ est fini, il n'y en a qu'un nombre fini.

### Étape 2. On choisit le plus petit

Parmi tous les triangles monochromes, on peut donc en choisir un dont le périmètre est **minimal**. Notons-le $ABC$, et disons que ses trois sommets sont rouges (le cas noir est identique).

### Étape 3. On suppose le contraire de ce qu'on veut

Supposons, par l'absurde, que chacun des trois côtés de $ABC$ contienne un point de $S$ autre que ses extrémités. Notons

$$P \in [AB], \qquad Q \in [BC], \qquad R \in [CA]$$

trois tels points.

**Ces trois points sont noirs.** En effet, le point $P$ est aligné avec $A$ et $B$, qui sont rouges. Si $P$ était rouge, on aurait trois points rouges alignés, ce qui est interdit. Donc $P$ est noir, et de même pour $Q$ et $R$.

**Ils forment un triangle.** Trois points noirs ne sont jamais alignés, donc $P$, $Q$, $R$ forment un vrai triangle, et il est monochrome.

### Étape 4. Ce nouveau triangle est plus petit

Appliquons l'inégalité triangulaire trois fois, en passant à chaque fois par un sommet de $ABC$ :

$$PQ \leqslant PB + BQ, \qquad QR \leqslant QC + CR, \qquad RP \leqslant RA + AP.$$

En additionnant, et en regroupant les longueurs le long de chaque côté :

$$PQ + QR + RP \;\leqslant\; \underbrace{(AP + PB)}_{= AB} + \underbrace{(BQ + QC)}_{= BC} + \underbrace{(CR + RA)}_{= CA},$$

car $P$ est sur $[AB]$, $Q$ sur $[BC]$ et $R$ sur $[CA]$.

De plus, l'inégalité est **stricte**. Prenons par exemple la première : $PQ \leqslant PB + BQ$ est une égalité seulement si $B$ appartient au segment $[PQ]$. Or $P$ est sur $[AB]$ et $Q$ sur $[BC]$, tous deux distincts de $B$ ; si $B$ était sur $[PQ]$, les points $P$, $B$, $Q$ seraient alignés, donc $Q$ serait sur la droite $(AB)$, ce qui est impossible puisque $Q$ est sur $[BC]$ et distinct de $B$, et que $(BC)$ n'est pas $(AB)$.

Donc

$$PQ + QR + RP \;<\; AB + BC + CA.$$

### Étape 5. La contradiction

Le triangle $PQR$ est monochrome et son périmètre est strictement plus petit que celui de $ABC$, que nous avions choisi de périmètre minimal. C'est impossible.

Notre supposition est donc fausse : **l'un au moins des trois côtés de $ABC$ ne contient aucun autre point de $S$.** C'est exactement ce qu'il fallait démontrer.

## Going further

Cet exercice est un exemple typique du **principe extrémal** : plutôt que de construire l'objet demandé, on prend un objet qui rend une quantité minimale (ou maximale), et on montre que s'il n'avait pas la propriété voulue, on pourrait faire encore mieux.

Le choix de la quantité à minimiser est tout l'art de la méthode. Ici, le périmètre marche parce qu'un triangle inscrit dans un autre a toujours un périmètre plus petit, ce que l'on démontre en trois inégalités triangulaires. L'aire, en revanche, ne conviendrait pas aussi bien : un triangle d'aire plus petite n'est pas forcément « à l'intérieur ».

Remarquons aussi que la condition « trois points de la même couleur ne sont jamais alignés » sert deux fois, et pour deux raisons différentes : à l'étape 1 pour garantir qu'un triangle monochrome existe vraiment, et à l'étape 3 pour forcer la couleur des points intermédiaires.
