---
id: "3217"
title: "Quelles valeurs prend la somme des facteurs premiers ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres-premiers, decomposition-en-facteurs-premiers, ensemble-image, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 13, d'après AMC 12B 2015, problème 18 (réponse dans Handout-4805-4981.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

Pour un entier $n$ **composé** (c'est-à-dire ni $1$, ni un nombre premier), on note $r(n)$ la somme des facteurs premiers de $n$, **chacun compté autant de fois qu'il apparaît** dans la décomposition.

Par exemple $50 = 2 \times 5 \times 5$, donc $r(50) = 2 + 5 + 5 = 12$.

Déterminer l'ensemble de toutes les valeurs prises par $r$, c'est-à-dire

$$\{\, r(n) \;:\; n \text{ entier composé} \,\} .$$

## Hints

1. Calcule $r(n)$ pour les premiers entiers composés : $4, 6, 8, 9, 10, 12, \ldots$ Quelle est la plus petite valeur obtenue ?
2. Un entier composé s'écrit comme produit d'**au moins deux** facteurs premiers. Que vaut au minimum leur somme ?
3. Pour montrer qu'une valeur $m$ est bien atteinte, il suffit d'exhiber **un** entier composé $n$ avec $r(n) = m$. Tu peux le fabriquer en choisissant toi-même les facteurs premiers.
4. Avec des $2$ seulement, quelles sommes peut-on obtenir ? Et si l'on remplace un $2$ par un $3$ ?

## Solution

**La question à l'envers.** Se demander quelles valeurs prend $r$ revient à se demander : *quels nombres peut-on écrire comme somme d'au moins deux nombres premiers, chacun pouvant être répété ?*

En effet, si $n = p_1 p_2 \cdots p_k$ avec $k \ge 2$ facteurs premiers (répétitions comprises), alors $n$ est composé et $r(n) = p_1 + \cdots + p_k$. Réciproquement, à toute somme d'au moins deux nombres premiers correspond leur produit, qui est composé.

**La plus petite valeur possible.**

Un entier composé a au moins deux facteurs premiers, chacun valant au moins $2$. Donc

$$r(n) \ge 2 + 2 = 4 .$$

Aucune valeur inférieure à $4$ n'est donc atteinte, et $4$ l'est : $r(4) = r(2 \times 2) = 4$.

**Toute valeur $\ge 4$ est atteinte.**

Soit $m$ un entier avec $m \ge 4$. On distingue deux cas.

*Cas 1 : $m$ est pair.* Écrivons $m = 2k$ avec $k \ge 2$. Prenons

$$n = 2^{k} = \underbrace{2 \times 2 \times \cdots \times 2}_{k \text{ fois}} .$$

C'est bien un entier composé (car $k \ge 2$) et

$$r(n) = \underbrace{2 + 2 + \cdots + 2}_{k \text{ fois}} = 2k = m .$$

*Cas 2 : $m$ est impair.* Alors $m - 3$ est pair et $m - 3 \ge 4 - 3 = 1$ ; comme $m \ge 5$ (le plus petit impair $\ge 4$), on a $m - 3 \ge 2$, donc $m - 3 = 2k$ avec $k \ge 1$. Prenons

$$n = 3 \times 2^{k} .$$

Cet entier a $k+1 \ge 2$ facteurs premiers, il est donc composé, et

$$r(n) = 3 + \underbrace{2 + \cdots + 2}_{k \text{ fois}} = 3 + 2k = m .$$

**Exemples.**

| $m$ | $n$ | décomposition | $r(n)$ |
|---|---|---|---|
| $4$ | $4$ | $2 \times 2$ | $4$ |
| $5$ | $6$ | $2 \times 3$ | $5$ |
| $6$ | $8$ | $2 \times 2 \times 2$ | $6$ |
| $7$ | $12$ | $2 \times 2 \times 3$ | $7$ |
| $23$ | $3 \times 2^{10} = 3072$ | $3 \times 2^{10}$ | $23$ |

**Conclusion.** L'ensemble des valeurs prises par $r$ est exactement l'ensemble des entiers supérieurs ou égaux à $4$ :

$$\{\, r(n) \;:\; n \text{ composé} \,\} = \{4, 5, 6, 7, 8, \ldots\} .$$

Remarquons que la démonstration n'utilise que les deux nombres premiers $2$ et $3$. Tous les autres sont inutiles ici.

## Going further

1. Quel est le plus petit entier composé $n$ tel que $r(n) = 20$ ? Et le plus grand ?
2. Pour un $m$ donné, combien y a-t-il d'entiers composés $n$ avec $r(n) = m$ ? Traiter les cas $m = 7$ et $m = 10$.
3. Si l'on autorisait aussi les nombres premiers (avec $r(p) = p$), quel serait l'ensemble des valeurs prises ?
