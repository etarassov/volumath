---
id: "8406"
title: "Deux cents équilibrés, deux cent deux non"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [suites, chiffres, blocs, maximum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de collège, exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Anna écrit au tableau, de gauche à droite, une suite de chiffres valant chacun $0$ ou $1$. Elle constate alors deux choses :

- dans n'importe quel bloc de $200$ chiffres consécutifs du tableau, il y a autant de $0$ que de $1$ ;
- dans n'importe quel bloc de $202$ chiffres consécutifs du tableau, il n'y a **pas** autant de $0$ que de $1$.

Quel est le plus grand nombre de chiffres qu'Anna a pu écrire ?

## Hints

1. La réponse à trouver est un nombre maximal. Il y a donc deux choses à faire, et les deux sont indispensables : montrer qu'on ne peut pas dépasser une certaine longueur, et donner un exemple qui atteint cette longueur.
2. Prends un bloc de $200$ chiffres et rallonge-le de deux chiffres vers la droite. Le bloc de $200$ est équilibré, celui de $202$ ne l'est pas. Que peux-tu en déduire sur les deux chiffres ajoutés ?
3. Tu obtiens que le chiffre en position $k+200$ est égal au chiffre en position $k+201$, et ceci pour tous les $k$ possibles. Que dit cette suite d'égalités mises bout à bout ?
4. À partir de la position $201$, tous les chiffres sont égaux. Si la suite est trop longue, il y en a trop : trouve un bloc de $200$ chiffres consécutifs qui contient plus de $100$ chiffres identiques.
5. Pour la construction, l'analyse te souffle la forme : un paquet de chiffres identiques à la fin. Essaie cent $0$, puis cent $1$, puis cent $0$.

## Solution

Notons $a_1, a_2, \ldots, a_n$ les chiffres écrits, de gauche à droite. Un « bloc de $m$ chiffres consécutifs » est une suite $a_i, a_{i+1}, \ldots, a_{i+m-1}$.

Nous allons montrer que $n \leqslant 300$, puis donner un exemple avec $n = 300$.

### Première partie : on ne peut pas dépasser $300$

**Étape 1. Deux chiffres voisins forcés d'être égaux.**

Soit $k$ un entier tel que le bloc de $202$ chiffres $a_k, a_{k+1}, \ldots, a_{k+201}$ existe, c'est-à-dire $1 \leqslant k \leqslant n - 201$.

Ce bloc de $202$ chiffres se décompose ainsi :

$$\underbrace{a_k, \; a_{k+1}, \; \ldots, \; a_{k+199}}_{200 \text{ chiffres}}, \quad a_{k+200}, \quad a_{k+201}.$$

Le bloc de $200$ chiffres contient exactement cent $0$ et cent $1$. Si les deux chiffres ajoutés étaient l'un un $0$ et l'autre un $1$, le bloc de $202$ chiffres contiendrait cent un $0$ et cent un $1$ : il serait équilibré, ce qui est interdit.

Donc les deux chiffres ajoutés sont égaux :

$$a_{k+200} = a_{k+201}.$$

**Étape 2. Tout est constant à partir de la position $201$.**

L'égalité de l'étape 1 vaut pour $k = 1, 2, \ldots, n-201$, ce qui donne la chaîne

$$a_{201} = a_{202}, \quad a_{202} = a_{203}, \quad \ldots, \quad a_{n-1} = a_n.$$

Donc tous les chiffres de la position $201$ à la position $n$ sont égaux. Appelons $c$ leur valeur commune.

**Étape 3. La suite ne peut pas être trop longue.**

Supposons par l'absurde que $n \geqslant 301$.

Regardons alors le bloc de $200$ chiffres consécutifs qui commence en position $102$ :

$$a_{102}, \; a_{103}, \; \ldots, \; a_{301}.$$

Ce bloc existe bien, puisque $n \geqslant 301$. Il contient toutes les positions de $201$ à $301$, c'est-à-dire $301 - 201 + 1 = 101$ positions, et sur toutes ces positions le chiffre vaut $c$.

Ce bloc de $200$ chiffres contient donc au moins $101$ chiffres égaux à $c$. Or il devrait en contenir exactement $100$. Contradiction.

On en déduit que $n \leqslant 300$.

### Deuxième partie : $300$ chiffres, c'est possible

Anna écrit :

$$\underbrace{0, 0, \ldots, 0}_{100 \text{ chiffres}}, \quad \underbrace{1, 1, \ldots, 1}_{100 \text{ chiffres}}, \quad \underbrace{0, 0, \ldots, 0}_{100 \text{ chiffres}}.$$

Les $1$ occupent exactement les positions $101$ à $200$.

**Les blocs de $200$ chiffres.** Un tel bloc part d'une position $i$ avec $1 \leqslant i \leqslant 101$, et va jusqu'à la position $i + 199$, avec $200 \leqslant i + 199 \leqslant 300$. Comme $i \leqslant 101$ et $i + 199 \geqslant 200$, le bloc contient toutes les positions de $101$ à $200$ : il contient donc **les cent $1$**, et rien que ceux-là. Les $100$ autres chiffres du bloc sont des $0$. Le bloc est équilibré.

**Les blocs de $202$ chiffres.** Un tel bloc part d'une position $i$ avec $1 \leqslant i \leqslant 99$. Il contient a fortiori les positions $101$ à $200$, donc les cent $1$ et eux seuls. Ses $202 - 100 = 102$ autres chiffres sont des $0$. Comme $102 \neq 100$, le bloc n'est pas équilibré.

Les deux remarques d'Anna sont donc bien vérifiées.

### Conclusion

Le plus grand nombre de chiffres qu'Anna a pu écrire est $\boxed{300}$.

## Going further

Une erreur classique sur cet exercice est de proposer la suite $0, 0, 1, 1, 0, 0, 1, 1, \ldots$ : elle a l'air de marcher, mais le bloc qui va de la position $2$ à la position $203$ y est équilibré. C'est un bon rappel qu'il faut tester **tous** les blocs, et pas seulement ceux qui commencent à une position impaire.

Une autre erreur, plus grave, est de se contenter de la construction : montrer qu'on ne peut pas rallonger **cet exemple-là** ne montre jamais qu'aucune autre suite plus longue n'existe. C'est précisément le rôle de la première partie.
