---
id: "7229"
title: "Cinq points dans un triangle équilatéral"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tiroirs, decoupage, distance, triangle-equilateral, optimalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Dernier jour : test final », Débutants, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On se donne un triangle équilatéral de côté $1$ et cinq points situés à l'intérieur de ce
triangle ou sur son bord.

1. Montrer qu'il existe toujours deux de ces points distants d'au plus $\dfrac{1}{2}$.
2. Aurait-on le même résultat avec la distance $0{,}49$ à la place de $\dfrac{1}{2}$ ?

## Hints

1. Cinq points, et on veut en trouver deux dans une même région : combien de régions faut-il ?
2. Un triangle équilatéral se découpe joliment en quatre morceaux tous identiques. Lesquels ?
3. Quelle est la plus grande distance entre deux points d'un triangle équilatéral de côté $c$ ?
4. Pour la deuxième question, il ne s'agit plus de démontrer mais de **trouver un contre-exemple**
   : cinq points deux à deux éloignés d'au moins $\dfrac{1}{2}$.

## Solution

**1. Deux points à distance au plus $\dfrac{1}{2}$.**

*Le découpage.* Marquons les milieux des trois côtés du triangle et relions-les. On obtient quatre
triangles équilatéraux de côté $\dfrac{1}{2}$ : trois « aux coins », à l'endroit, et un au milieu,
à l'envers. Ces quatre triangles recouvrent tout le grand triangle.

*Le principe des tiroirs.* On a cinq points et quatre triangles. Comme $5 > 4$, deux au moins des
cinq points sont dans un même petit triangle. (Un point posé sur une frontière appartient à
plusieurs petits triangles : on lui en attribue un, au choix.)

*La distance dans un petit triangle.* Dans un triangle, la plus grande distance entre deux points
est atteinte par deux sommets, et c'est donc la longueur du plus grand côté. Ici le triangle est
équilatéral de côté $\dfrac{1}{2}$, donc deux points quelconques de ce triangle sont distants d'au
plus $\dfrac{1}{2}$.

**Il existe donc bien deux points parmi les cinq distants d'au plus $\dfrac{1}{2}$.**

**2. Avec $0{,}49$, la réponse est non.**

Donnons un contre-exemple : cinq points du triangle deux à deux distants d'au moins
$\dfrac{1}{2}$.

Appelons $A$, $B$, $C$ les trois sommets du triangle, et prenons :

- les trois sommets $A$, $B$, $C$ ;
- le milieu $M$ de $[AB]$ ;
- le milieu $N$ de $[BC]$.

Calculons toutes les distances :

- $AB = BC = CA = 1$ ;
- $AM = MB = BN = NC = \dfrac{1}{2}$ ;
- $CM$ est une hauteur du triangle équilatéral, donc $CM = \dfrac{\sqrt{3}}{2} \approx 0{,}87$ ;
- $AN$ est aussi une hauteur, donc $AN = \dfrac{\sqrt{3}}{2}$ ;
- $MN$ est un segment des milieux dans le triangle $ABC$ : il est parallèle à $(AC)$ et vaut la
  moitié, donc $MN = \dfrac{1}{2}$.

Toutes ces distances valent au moins $\dfrac{1}{2}$, donc elles sont toutes strictement supérieures
à $0{,}49$.

**Avec $0{,}49$ le résultat est donc faux : ces cinq points sont deux à deux distants de plus de
$0{,}49$.**

## Going further

La réponse à la deuxième question montre que $\dfrac{1}{2}$ est la meilleure constante possible :
on ne peut pas la remplacer par un nombre plus petit.

C'est une situation fréquente en combinatoire : le principe des tiroirs donne une borne, et un
exemple bien choisi montre que cette borne est optimale. Les deux moitiés sont également
nécessaires pour que la réponse soit complète.
