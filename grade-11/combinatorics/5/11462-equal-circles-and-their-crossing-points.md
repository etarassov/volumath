---
id: "11462"
title: "Des cercles de même rayon et leurs points de rencontre"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [cercle, double-comptage, poids, mediatrice, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Seniors, exercice 18 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf (l'énoncé original oublie l'hypothèse n ⩾ 2, sans laquelle il est faux : un seul cercle n'a aucun point d'intersection)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On trace dans le plan $n$ cercles différents, tous de même rayon, tels
que :

- deux de ces cercles ne sont jamais tangents ;
- la figure est d'un seul tenant : en marchant le long des cercles, et en changeant de cercle
  seulement là où deux cercles se coupent, on peut aller de n'importe quel point de la figure à
  n'importe quel autre.

On note $S$ l'ensemble des points où au moins deux de ces cercles se coupent. Montrer que $S$ contient
au moins $n$ points.

## Hints

1. Explique pourquoi chaque cercle porte au moins deux points de $S$.
2. Combien de cercles de rayon $r$ peuvent passer par deux points donnés ? Pense à la médiatrice.
3. Pour un cercle $c$, note $m(c)$ le nombre de points de $S$ situés sur $c$, et pour un point $s$ de
   $S$, note $m(s)$ le nombre de cercles qui passent par $s$. Montre que si $s$ est sur $c$, alors
   $m(c) \geqslant m(s)$.
4. Considère tous les couples $(c, s)$ formés d'un cercle $c$ et d'un point $s$ de $S$ situé sur $c$.
   Donne à chaque couple le poids $\frac{1}{m(c)}$, puis le poids $\frac{1}{m(s)}$, et fais la somme
   des poids dans les deux cas.

## Solution

Notons $r$ le rayon commun des cercles.

**Étape 1 : chaque cercle porte au moins deux points de $S$.** Prenons un cercle $c$. Comme $n \geqslant 2$,
il existe un autre cercle. Si $c$ ne coupait aucun autre cercle, on ne pourrait jamais quitter $c$ en
marchant le long de la figure, et elle ne serait pas d'un seul tenant. Donc $c$ coupe un autre cercle.
Deux cercles différents qui se rencontrent sans être tangents ont exactement deux points communs : $c$
porte donc au moins deux points de $S$.

**Étape 2 : au plus deux cercles de rayon $r$ passent par deux points donnés.** Soient $P$ et $Q$ deux
points différents. Le centre $O$ d'un cercle de rayon $r$ qui passe par $P$ et $Q$ vérifie $OP = OQ = r$.
Il est donc sur la médiatrice de $[PQ]$, et aussi sur le cercle de centre $P$ et de rayon $r$. Une droite
et un cercle ont au plus deux points communs : il y a au plus deux centres possibles, donc au plus deux
cercles.

**Étape 3 : la comparaison $m(c) \geqslant m(s)$.** Pour un cercle $c$, notons $m(c)$ le nombre de points
de $S$ situés sur $c$. Pour un point $s$ de $S$, notons $m(s)$ le nombre de cercles qui passent par $s$.
D'après l'étape 1, $m(c) \geqslant 2$, et par définition de $S$, $m(s) \geqslant 2$.

Prenons un point $s$ de $S$ et un cercle $c$ qui passe par $s$. Posons $m = m(s)$ : en plus de $c$, il
passe par $s$ exactement $m - 1$ autres cercles, notés $c_1, \ldots, c_{m-1}$.

- Chaque $c_i$ coupe $c$ en $s$. Comme ils ne sont pas tangents, $c_i$ recoupe $c$ en un second point
  $t_i$, différent de $s$, et $t_i$ est dans $S$.
- Les points $t_1, \ldots, t_{m-1}$ sont tous différents. En effet, si l'on avait $t_i = t_j$ avec
  $i \neq j$, les trois cercles différents $c$, $c_i$ et $c_j$, tous de rayon $r$, passeraient par les
  deux points différents $s$ et $t_i$. C'est impossible d'après l'étape 2.

Le cercle $c$ porte donc au moins les $m$ points différents $s, t_1, \ldots, t_{m-1}$ de $S$ :

$$m(c) \geqslant m(s), \qquad \text{donc} \qquad \frac{1}{m(c)} \leqslant \frac{1}{m(s)}.$$

**Étape 4 : un double comptage avec des poids.** Appelons *couple* toute paire $(c, s)$ formée d'un
cercle $c$ et d'un point $s$ de $S$ situé sur $c$. Calculons de deux façons deux sommes sur tous les
couples.

- *Avec le poids $\frac{1}{m(c)}$.* Regroupons les couples par cercle. Un cercle $c$ apparaît dans
  exactement $m(c)$ couples, qui ont tous le poids $\frac{1}{m(c)}$ : ensemble, ils pèsent $1$. La somme
  totale vaut donc $1 + 1 + \cdots + 1 = n$, une fois par cercle.
- *Avec le poids $\frac{1}{m(s)}$.* Regroupons les couples par point. Un point $s$ de $S$ apparaît dans
  exactement $m(s)$ couples, qui ont tous le poids $\frac{1}{m(s)}$ : ensemble, ils pèsent $1$. La somme
  totale vaut donc le nombre de points de $S$.

D'après l'étape 3, chaque couple pèse au plus autant avec le premier poids qu'avec le second. Donc la
première somme est au plus égale à la seconde :

$$n \leqslant \text{nombre de points de } S.$$

**Conclusion.** L'ensemble $S$ contient au moins $n$ points.

## Going further

**Pourquoi $n \geqslant 2$.** Avec un seul cercle, il n'y a aucun point d'intersection, et l'inégalité
est fausse. L'énoncé original oublie de l'exclure. C'est l'étape 1 qui utilise $n \geqslant 2$.

**Pourquoi le même rayon.** Sans cette hypothèse, le résultat est faux. Prenons deux points $P$ et $Q$
et traçons $10$ cercles de rayons différents qui passent tous par $P$ et par $Q$. Ils se coupent deux à
deux en $P$ et en $Q$, sans être tangents, et la figure est d'un seul tenant, mais $S$ n'a que $2$
points. C'est l'étape 2 qui tombe en défaut.

**L'égalité est possible.** Traçons trois cercles de rayon $r$ qui passent par un même point $s$. Ils se
recoupent deux à deux en trois autres points, et un théorème dû à Roger Johnson affirme que ces trois
points sont sur un quatrième cercle, de rayon $r$ lui aussi. Ces quatre cercles ont en tout $4$ points
d'intersection : il y a égalité.

Cet exemple montre aussi pourquoi une récurrence sur le nombre de cercles est vouée à l'échec : le
quatrième cercle s'ajoute à la figure sans créer aucun nouveau point d'intersection.
