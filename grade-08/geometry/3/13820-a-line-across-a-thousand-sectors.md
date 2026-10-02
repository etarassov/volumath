---
id: "13820"
title: "Une droite à travers mille secteurs"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [disque, secteurs, corde, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 3 ; corrigé dans le même fichier, solution 3 (inspirée des Olympiades mathématiques belges, éliminatoire miNi 2000, Q27)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Un disque de centre $O$ est partagé en $1000$ secteurs égaux par $1000$ rayons, comme une
pizza coupée en $1000$ parts identiques.

On trace une droite qui **ne passe pas** par le centre $O$. Combien de secteurs cette droite
peut-elle traverser, au maximum ?

## Hints

1. Commence avec une pizza en $4$ parts, puis en $6$ parts. Combien de parts une droite qui
   évite le centre peut-elle traverser ?
2. La partie de la droite qui est dans le disque est une corde $[PQ]$. En allant de $P$ à $Q$,
   on change de secteur chaque fois qu'on traverse un rayon. Quels rayons la corde
   traverse-t-elle ?
3. Le centre $O$ est d'un côté de la droite. Un rayon $[OR]$ traverse la droite exactement
   quand son extrémité $R$ est de l'autre côté. Sur quelle partie du cercle se trouve alors
   $R$, et quelle est sa taille ?

## Solution

Numérotons $R_0, R_1, \ldots, R_{999}$ les extrémités des rayons sur le cercle, dans l'ordre.
Deux extrémités voisines sont séparées par un millième du cercle, et un demi-cercle contient
donc exactement $500$ de ces écarts.

**Ce que traverse la droite.** Si la droite ne coupe pas le disque, elle ne traverse aucun
secteur. Sinon, elle coupe le cercle en deux points $P$ et $Q$, et la partie de la droite qui
est dans le disque est la corde $[PQ]$. En allant de $P$ à $Q$ le long de la corde, on change
de secteur chaque fois qu'on traverse un rayon. Le nombre de secteurs traversés vaut donc
$1$ plus le nombre de rayons traversés.

**Quels rayons sont traversés.** La droite ne passe pas par $O$, donc $O$ est d'un côté de la
droite. Un rayon $[OR_k]$ traverse la droite exactement quand son extrémité $R_k$ est de
l'autre côté, et il la traverse alors en un point du disque, donc sur la corde. Les rayons
traversés sont donc ceux dont l'extrémité est sur l'arc de cercle situé de l'autre côté de la
droite que $O$. Cet arc, d'extrémités $P$ et $Q$, est **plus petit qu'un demi-cercle**. En
effet, le diamètre parallèle à la droite passe par $O$, il est donc entièrement du côté de $O$.
L'arc situé de l'autre côté de la droite est alors contenu dans un des deux demi-cercles
délimités par ce diamètre, sans en atteindre les extrémités.

**Au plus $501$ secteurs.** Si cet arc contenait $501$ extrémités de rayons consécutives, il
contiendrait les $500$ écarts entre elles, donc un demi-cercle entier. C'est impossible. L'arc
contient donc au plus $500$ extrémités, la corde traverse au plus $500$ rayons, et la droite
traverse au plus $500 + 1 = 501$ secteurs.

**On peut atteindre $501$.** Mesurons les positions sur le cercle en écarts, à partir de
$R_0$ : l'extrémité $R_k$ est à la position $k$. Plaçons $P$ à la position $\text{0,6}$, entre
$R_0$ et $R_1$, et $Q$ à la position $\text{500,4}$, entre $R_{500}$ et $R_{501}$. L'arc qui va
de $P$ à $Q$ en passant par $R_1, R_2, \ldots, R_{500}$ mesure $\text{499,8}$ écarts, un peu
moins d'un demi-cercle. La droite $(PQ)$ ne passe donc pas par $O$, et $O$ est du côté du plus
grand arc. Les $500$ rayons $[OR_1], \ldots, [OR_{500}]$ traversent la corde, qui passe ainsi
par $501$ secteurs : celui qui va de $R_0$ à $R_1$, puis celui de $R_1$ à $R_2$, et ainsi de
suite jusqu'à celui de $R_{500}$ à $R_{501}$.

**Une droite qui ne passe pas par le centre traverse au plus $501$ secteurs, et ce maximum est
atteint.**
