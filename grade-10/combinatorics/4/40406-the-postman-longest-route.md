---
id: "40406"
title: "Le facteur : le trajet le plus long"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [maximum, majoration, construction, double-comptage, permutations, distance, parite, somme-des-entiers]
adapted_from: null
see_also: ["40405", "40407", "12634"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 3 « Le facteur sonne toujours une fois (et une seule) », question 3 (a, b). L'exemple de trajet de l'énoncé est remplacé : celui du sujet, 1, 5, 2, 4, 3, 1, est de longueur maximale et donnerait la réponse."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Un facteur doit distribuer le courrier dans une rue. Elle ne comporte qu'une seule rangée de
maisons, régulièrement espacées et numérotées $1, 2, \ldots, n$, où $n \geq 2$. La distance entre
deux maisons voisines vaut $1$, donc la distance entre les maisons $a$ et $b$ vaut $|a - b|$.

Le facteur doit déposer une lettre dans chaque maison. Il laisse son vélo à la maison $1$, y dépose
le courrier, puis distribue les autres lettres dans un ordre quelconque, en passant une seule fois
par chaque maison, et revient enfin à la maison $1$ chercher son vélo. Son **trajet** est la liste
des numéros des maisons, dans l'ordre où il les visite. La distance totale parcourue s'appelle la
**longueur** du trajet.

Par exemple, pour $n = 5$, un trajet possible est $1, 3, 5, 4, 2, 1$. Sa longueur est
$$|3 - 1| + |5 - 3| + |4 - 5| + |2 - 4| + |1 - 2| = 2 + 2 + 1 + 2 + 1 = 8 .$$

1. Pour $n = 5$ et pour $n = 6$, déterminer la plus grande longueur possible d'un trajet, et
   donner un exemple de trajet de cette longueur.

2. Pour $n$ quelconque, déterminer la plus grande longueur possible d'un trajet.

## Hints

1. **Question 1.** Pour faire de longs déplacements, alterner les maisons proches du début de la
   rue et les maisons proches de la fin.
2. **Question 1.** Pour montrer qu'on ne peut pas faire mieux, découper la rue en tronçons de
   longueur $1$ : le tronçon $j$ va de la maison $j$ à la maison $j + 1$. Un déplacement de la
   maison $a$ à la maison $b$ passe sur $|a - b|$ tronçons, donc la longueur du trajet est le
   nombre total de passages sur les tronçons.
3. **Question 1.** Un déplacement qui passe sur le tronçon $j$ relie une maison de
   $\{1, \ldots, j\}$ à une maison de $\{j + 1, \ldots, n\}$. De combien de déplacements chaque
   maison est-elle l'une des deux extrémités ?
4. **Question 1.** Le tronçon $j$ est parcouru au plus $2j$ fois, et au plus $2(n - j)$ fois.
5. **Question 2.** Calculer la somme des $2 \times \min(j, n - j)$ pour $j$ de $1$ à $n - 1$, en
   séparant le cas $n$ pair et le cas $n$ impair. Pour l'exemple, généraliser ceux de la
   question 1.

## Solution

*Compter par tronçons.* Pour $1 \leq j \leq n - 1$, le tronçon $j$ est la portion de rue entre les
maisons $j$ et $j + 1$. Un déplacement de la maison $a$ à la maison $b$ passe sur exactement
$|a - b|$ tronçons. Si l'on note $N_j$ le nombre de déplacements du trajet qui passent sur le
tronçon $j$, la longueur du trajet vaut donc
$$N_1 + N_2 + \cdots + N_{n-1} .$$

*Une majoration de chaque $N_j$.* Le trajet comporte $n$ déplacements, et chaque maison est le
point d'arrivée d'exactement un déplacement et le point de départ d'exactement un déplacement :
elle est l'extrémité de deux déplacements (pour la maison $1$, le premier et le dernier). Un
déplacement qui passe sur le tronçon $j$ a une extrémité à gauche, parmi les maisons
$1, \ldots, j$, et l'autre à droite, parmi les maisons $j + 1, \ldots, n$. Les $j$ maisons de
gauche sont les extrémités de $2j$ déplacements en tout, donc $N_j \leq 2j$. De même, avec les
$n - j$ maisons de droite, $N_j \leq 2(n - j)$. Ainsi
$$N_j \leq 2 \min(j, n - j), \qquad \text{et} \qquad \text{longueur} \leq \sum_{j=1}^{n-1} 2\min(j, n - j) .$$

**1.** *Pour $n = 5$.* Les valeurs de $\min(j, 5 - j)$ pour $j = 1, 2, 3, 4$ sont $1, 2, 2, 1$.
La longueur est donc au plus $2 \times (1 + 2 + 2 + 1) = 12$. Le trajet $1, 4, 2, 5, 3, 1$ a pour
longueur $3 + 2 + 3 + 2 + 2 = 12$ (le trajet $1, 5, 2, 4, 3, 1$ aussi).

**Conclusion :** pour $n = 5$, la longueur maximale est $12$.

*Pour $n = 6$.* Les valeurs de $\min(j, 6 - j)$ pour $j = 1, \ldots, 5$ sont $1, 2, 3, 2, 1$. La
longueur est donc au plus $2 \times 9 = 18$. Le trajet $1, 4, 2, 5, 3, 6, 1$ a pour longueur
$3 + 2 + 3 + 2 + 3 + 5 = 18$.

**Conclusion :** pour $n = 6$, la longueur maximale est $18$.

**2.** *Si $n = 2m$ est pair.* Les valeurs de $\min(j, n - j)$ sont $1, 2, \ldots, m - 1, m, m - 1, \ldots, 2, 1$.
Comme $1 + 2 + \cdots + p = \frac{p(p + 1)}{2}$ (on écrit la somme deux fois, à l'endroit et à
l'envers, et on additionne terme à terme), leur somme vaut $2 \times \frac{(m - 1)m}{2} + m = m^2$, donc la longueur est au plus
$2m^2 = \frac{n^2}{2}$.

Le trajet $1, \ m + 1, \ 2, \ m + 2, \ 3, \ \ldots, \ m, \ 2m, \ 1$ atteint cette valeur :

- les $m$ montées $k \to m + k$ (pour $k = 1, \ldots, m$) mesurent $m$ chacune, soit $m^2$ ;
- les $m - 1$ descentes $m + k \to k + 1$ (pour $k = 1, \ldots, m - 1$) mesurent $m - 1$ chacune,
  soit $(m - 1)^2$ ;
- le retour $2m \to 1$ mesure $2m - 1$.

Total : $m^2 + (m - 1)^2 + 2m - 1 = 2m^2$.

*Si $n = 2m + 1$ est impair.* Les valeurs de $\min(j, n - j)$ sont $1, 2, \ldots, m, m, \ldots, 2, 1$.
Leur somme vaut $2 \times \frac{m(m + 1)}{2} = m(m + 1)$, donc la longueur est au plus
$2m(m + 1) = \frac{n^2 - 1}{2}$.

Le trajet $1, \ m + 2, \ 2, \ m + 3, \ 3, \ \ldots, \ m, \ 2m + 1, \ m + 1, \ 1$ atteint cette
valeur :

- les $m$ montées $k \to m + 1 + k$ (pour $k = 1, \ldots, m$) mesurent $m + 1$ chacune, soit
  $m(m + 1)$ ;
- les $m$ descentes $m + 1 + k \to k + 1$ (pour $k = 1, \ldots, m$) mesurent $m$ chacune, soit
  $m^2$ ;
- le retour $m + 1 \to 1$ mesure $m$.

Total : $m(m + 1) + m^2 + m = 2m^2 + 2m$.

On retrouve les trajets de la question 1 pour $m = 2$ ($n = 5$) et $m = 3$ ($n = 6$).

**Conclusion :** la longueur maximale d'un trajet est $\frac{n^2}{2}$ si $n$ est pair et
$\frac{n^2 - 1}{2}$ si $n$ est impair. Dans les deux cas, c'est le plus grand entier inférieur ou
égal à $\frac{n^2}{2}$.

**Bilan.** En comptant combien de fois chaque tronçon de la rue est parcouru, et en remarquant
qu'un tronçon ne peut pas être traversé plus de fois que ne le permettent les maisons du côté le
moins peuplé, on obtient une majoration de la longueur. Un trajet qui alterne les maisons de la
première moitié de la rue et celles de la seconde moitié l'atteint.

## Going further

- Pour $n = 5$, il y a exactement $8$ trajets de longueur $12$. Pouvez-vous tous les trouver ?
- L'exercice 12634 pose la même question pour un trajet qui ne revient pas à son point de départ.
  La majoration par tronçons n'y est plus atteinte : pourquoi ?
- Le trajet le plus court mesure $2(n - 1)$ (exercice 40405), le plus long environ
  $\frac{n^2}{2}$. Et en moyenne ? C'est l'exercice 40407.
