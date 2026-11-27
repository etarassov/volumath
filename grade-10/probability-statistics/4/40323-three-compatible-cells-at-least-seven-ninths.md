---
id: "40323"
title: "Trois cellules compatibles : une probabilité d'au moins 7/9"
grade: 10
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [probabilite, evenement-contraire, tirage-avec-remise, inegalite, factorisation, cas-d-egalite]
adapted_from: null
see_also: ["40324", "40325"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2010, mathématiques, série S"
  reference: "cg-2010-s-sujet.pdf, problème « De la vie sur Mars ! », question 1 (a et b). Les proportions sont présentées ici comme une population de N cellules avec tirage avec remise."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2010.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2010-s-sujet.pdf"
---

## Statement

Une sonde envoyée sur Mars a enfin observé des traces de vie : des êtres minuscules, que nous
appellerons des *cellules*. Il y a trois espèces de cellules, notées A, B et C. La reproduction
fait intervenir trois cellules « parents », et elle n'est possible que si les trois parents sont
*compatibles*, c'est-à-dire si au moins deux d'entre eux sont de la même espèce.

Dans une population de $N$ cellules, les proportions des trois espèces sont $a$, $b$ et $c$ : il y
a $aN$ cellules de l'espèce A, $bN$ de l'espèce B et $cN$ de l'espèce C, avec $a$, $b$, $c$
positifs ou nuls et $a + b + c = 1$. On tire trois cellules au hasard, l'une après l'autre, en
remettant chaque cellule dans la population avant le tirage suivant. Les $N^3$ tirages possibles
(première, deuxième et troisième cellule) sont équiprobables.

1. Quelle est la probabilité $p$ que les trois cellules tirées soient compatibles ? On
   l'exprimera en fonction de $a$, $b$ et $c$.
2. Montrer que $p \geq \frac{7}{9}$. On pourra d'abord établir une inégalité à $c$ fixé.

## Hints

1. **Question 1.** Il est plus simple de compter les tirages où les trois cellules ne sont *pas*
   compatibles. Que veut dire « non compatibles » ?
2. **Question 1.** Trois cellules d'espèces toutes différentes : dans combien d'ordres
   différents les espèces A, B, C peuvent-elles sortir ?
3. **Question 2.** Il s'agit de montrer que $abc \leq \frac{1}{27}$. À $c$ fixé, la somme
   $a + b = 1 - c$ est fixée : quelle est la plus grande valeur possible du produit $ab$ ?
4. **Question 2.** Développer $(a - b)^2 \geq 0$ pour obtenir $4ab \leq (a + b)^2$. Il reste
   alors à montrer que $c(1 - c)^2 \leq \frac{4}{27}$ pour $0 \leq c \leq 1$.
5. **Question 2.** Pour $c = \frac{1}{3}$, c'est une égalité. Chercher à écrire
   $4 - 27c(1-c)^2$ sous la forme $(1 - 3c)^2(\alpha + \beta c)$.

## Solution

**1.** Trois cellules ne sont pas compatibles exactement quand elles sont de trois espèces
différentes : une A, une B et une C, dans un certain ordre. Il y a $6$ ordres possibles (ABC,
ACB, BAC, BCA, CAB, CBA). Pour l'ordre ABC, il y a $aN \times bN \times cN = abc\,N^3$ tirages,
et de même pour chacun des autres ordres. Il y a donc $6abc\,N^3$ tirages non compatibles sur
$N^3$, et la probabilité de tirer trois cellules non compatibles est $6abc$.

**Conclusion :** $p = 1 - 6abc$.

On peut vérifier ce résultat en comptant directement les tirages compatibles : trois cellules de
la même espèce ($a^3 + b^3 + c^3$), ou exactement deux de la même espèce
($3a^2(b+c) + 3b^2(a+c) + 3c^2(a+b)$). La somme vaut $(a+b+c)^3 - 6abc = 1 - 6abc$.

**2.** On a $p \geq \frac{7}{9}$ si et seulement si $6abc \leq \frac{2}{9}$, c'est-à-dire
$abc \leq \frac{1}{27}$.

*À $c$ fixé.* On a $a + b = 1 - c$. Comme $(a - b)^2 \geq 0$, on a $a^2 + b^2 \geq 2ab$, donc
$(a + b)^2 = a^2 + 2ab + b^2 \geq 4ab$. Ainsi
$$ab \leq \frac{(1 - c)^2}{4}, \qquad \text{donc} \qquad abc \leq \frac{c\,(1 - c)^2}{4}$$
puisque $c \geq 0$.

*Une inégalité à une seule variable.* Il reste à montrer que $c(1 - c)^2 \leq \frac{4}{27}$ pour
$0 \leq c \leq 1$, c'est-à-dire $4 - 27c(1 - c)^2 \geq 0$. En développant,
$$4 - 27c(1 - c)^2 = 4 - 27c + 54c^2 - 27c^3 .$$
Cette expression s'annule pour $c = \frac{1}{3}$, et on vérifie en développant le membre de droite
qu'elle se factorise ainsi :
$$4 - 27c + 54c^2 - 27c^3 = (1 - 3c)^2\,(4 - 3c) .$$
En effet $(1 - 6c + 9c^2)(4 - 3c) = 4 - 3c - 24c + 18c^2 + 36c^2 - 27c^3$. Pour
$0 \leq c \leq 1$, on a $(1 - 3c)^2 \geq 0$ et $4 - 3c \geq 1 > 0$, donc le produit est positif
ou nul.

Ainsi $abc \leq \frac{1}{4} \times \frac{4}{27} = \frac{1}{27}$, et
$p = 1 - 6abc \geq 1 - \frac{6}{27} = \frac{7}{9}$.

**Conclusion :** $p \geq \frac{7}{9}$, avec égalité quand $a = b = c = \frac{1}{3}$ (il faut
$c = \frac{1}{3}$ et $a = b$).

**Bilan.** La probabilité que trois cellules soient compatibles vaut $1 - 6abc$. Elle est la plus
petite quand les trois espèces sont présentes en proportions égales, et même dans ce cas elle
vaut $\frac{7}{9}$ : la reproduction est presque toujours possible.

## Going further

- En classe de première, on peut aussi étudier la fonction $c \mapsto c(1-c)^2$ sur $[0, 1]$ avec
  sa dérivée. Où atteint-elle son maximum ?
- L'inégalité $abc \leq \frac{1}{27}$ quand $a + b + c = 1$ est un cas de l'inégalité entre
  moyennes : pour $a, b, c \geq 0$, $abc \leq \left(\frac{a + b + c}{3}\right)^3$. Pouvez-vous
  la déduire de ce qui précède ?
- Dans la suite du sujet, on étudiait comment évoluent les proportions des trois espèces de
  génération en génération, selon deux règles d'hérédité possibles : voir les exercices 40324 et
  40325.
