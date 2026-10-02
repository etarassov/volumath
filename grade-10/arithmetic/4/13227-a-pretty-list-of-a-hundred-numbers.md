---
id: "13227"
title: "Une jolie liste de cent nombres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [produit, somme, inegalite, puissances-de-2, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices lycée, exercice 8 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf. Une version plus faible, qui demande seulement de montrer qu'au moins 93 des nombres valent 1, figure dans stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 8."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Une liste de nombres est dite **jolie** si elle est formée d'entiers strictement positifs dont la somme est égale au produit.

Déterminer le plus petit nombre d'entiers égaux à $1$ que peut contenir une jolie liste de $100$ nombres.

## Hints

1. Cherche d'abord un exemple. Avec beaucoup de $1$ et quelques petits nombres, la somme et le produit peuvent-ils être égaux ?
2. Note $r$ le nombre de termes qui valent au moins $2$, et $x_1, \ldots, x_r$ ces termes. Écris la condition « somme = produit » avec $r$ et les $x_i$.
3. Que devient « produit moins somme des $x_i$ » quand on augmente l'un des $x_i$ de $1$ ? Quelle est sa plus petite valeur possible ?
4. Tu dois obtenir $2^r - 2r \leqslant 100 - r$. Élimine $r \geqslant 7$, puis regarde de près le cas $r = 6$.

## Solution

**Un exemple avec $95$ fois le nombre $1$.** Prenons $95$ fois le nombre $1$, puis $2, 2, 3, 3, 3$. Cette liste a bien $100$ nombres, sa somme vaut $95 + 2 + 2 + 3 + 3 + 3 = 108$ et son produit $2 \times 2 \times 3 \times 3 \times 3 = 108$. Elle est jolie.

**La mise en équation.** Prenons une jolie liste de $100$ nombres. Notons $r$ le nombre de ses termes qui valent au moins $2$, et $x_1, \ldots, x_r$ ces termes. Les $100 - r$ autres valent $1$. La somme vaut $(100 - r) + x_1 + \cdots + x_r$ et le produit vaut $x_1 \times \cdots \times x_r$. En notant $P = x_1 \times \cdots \times x_r$ et $S = x_1 + \cdots + x_r$, la condition s'écrit

$$P - S = 100 - r.$$

Il s'agit de montrer que $r \leqslant 5$.

**Quand un $x_i$ augmente, $P - S$ ne diminue pas.** Si l'on augmente $x_1$ de $1$, la somme $S$ augmente de $1$ et le produit $P$ augmente de $x_2 \times \cdots \times x_r$, qui vaut au moins $1$. Donc $P - S$ ne diminue pas. Il en va de même pour chacun des $x_i$. En partant de la liste où tous les $x_i$ valent $2$ et en augmentant les termes un par un, on voit que

$$P - S \geqslant 2^r - 2r.$$

**Pas plus de $6$ termes différents de $1$.** On a donc $2^r - 2r \leqslant 100 - r$, c'est-à-dire $2^r \leqslant 100 + r$. Pour $r = 7$, $2^7 = 128 > 107$. Et quand $r$ augmente de $1$, $2^r$ augmente d'au moins $2^7 = 128$ tandis que $100 + r$ n'augmente que de $1$ : l'inégalité reste fausse pour tout $r \geqslant 7$. Donc $r \leqslant 6$.

**Le cas $r = 6$ est impossible.** Il faudrait $P - S = 94$. Rangeons les six termes du plus grand au plus petit : $x_1 \geqslant x_2 \geqslant \cdots \geqslant x_6 \geqslant 2$.

- Si $x_1 \geqslant 4$, en comparant avec $(4, 2, 2, 2, 2, 2)$ on obtient $P - S \geqslant 128 - 14 = 114 > 94$.
- Si $x_1 = 3$ et $x_2 \geqslant 3$, en comparant avec $(3, 3, 2, 2, 2, 2)$ on obtient $P - S \geqslant 144 - 14 = 130 > 94$.
- Il reste $(3, 2, 2, 2, 2, 2)$, avec $P - S = 96 - 13 = 83$, et $(2, 2, 2, 2, 2, 2)$, avec $P - S = 64 - 12 = 52$. Aucun ne donne $94$.

Donc $r \leqslant 5$, et une jolie liste de $100$ nombres contient au moins $100 - 5 = 95$ fois le nombre $1$.

**Conclusion.** Le plus petit nombre possible de $1$ est $95$.
