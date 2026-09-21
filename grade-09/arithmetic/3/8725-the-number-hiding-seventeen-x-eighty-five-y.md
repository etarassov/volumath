---
id: "8725"
title: "Les deux chiffres cachés de 17x85y"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [criteres-de-divisibilite, divisibilite-par-11, chiffres, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « TD de modulos » (Théo et Thomas), exercice 7 ; la correction du polycopié s'arrête au système, la résolution est complétée ici"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Un nombre à six chiffres s'écrit $\overline{17x85y}$ : le premier chiffre est $1$, le deuxième est $7$, le troisième est inconnu et vaut $x$, puis viennent $8$, puis $5$, et le dernier chiffre est inconnu et vaut $y$.

Trouver tous les couples de chiffres $(x, y)$ pour lesquels ce nombre est divisible par $33$.

*Rappel du critère de divisibilité par $11$ : un entier est divisible par $11$ si et seulement si la somme alternée de ses chiffres, en commençant par celui des unités avec un signe $+$, est divisible par $11$. Par exemple pour $918\,082$ on calcule $2 - 8 + 0 - 8 + 1 - 9 = -22$, qui est un multiple de $11$, donc $918\,082$ l'est aussi.*

## Hints

1. $33 = 3 \times 11$. Un entier est divisible par $33$ exactement quand il est divisible par $3$ **et** par $11$, parce que $3$ et $11$ n'ont aucun facteur commun.
2. Écris le critère de divisibilité par $3$ : que doit valoir $x+y$ ?
3. Écris ensuite le critère de divisibilité par $11$ : que doit valoir $y - x$ ?
4. La deuxième condition est une congruence modulo $11$, mais $x$ et $y$ sont des chiffres, donc $x-y$ est compris entre $-9$ et $9$. Il n'y a que deux valeurs possibles à examiner.

## Solution

### Ramener 33 à 3 et 11

Le nombre $33$ s'écrit $3 \times 11$, et $3$ et $11$ sont deux nombres premiers différents. Un entier est donc divisible par $33$ si et seulement s'il est divisible à la fois par $3$ et par $11$.

### La condition de divisibilité par 3

Un entier est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Ici,

$$1 + 7 + x + 8 + 5 + y = 21 + x + y .$$

Comme $21$ est déjà un multiple de $3$, la condition est :

$$x + y \text{ est un multiple de } 3 . \qquad (1)$$

### La condition de divisibilité par 11

On calcule la somme alternée des chiffres en partant des unités :

$$y - 5 + 8 - x + 7 - 1 = y - x + 9 .$$

La condition est donc :

$$y - x + 9 \text{ est un multiple de } 11 . \qquad (2)$$

### On exploite la condition (2)

Comme $x$ et $y$ sont des chiffres, on a $0 \leqslant x \leqslant 9$ et $0 \leqslant y \leqslant 9$, donc

$$-9 \leqslant y - x \leqslant 9, \qquad \text{et par conséquent} \qquad 0 \leqslant y-x+9 \leqslant 18 .$$

Les seuls multiples de $11$ dans cet intervalle sont $0$ et $11$. Deux cas.

**Cas A : $y - x + 9 = 0$**, c'est-à-dire $y = x - 9$.

Comme $y \geqslant 0$, il faut $x \geqslant 9$, donc $x = 9$ et $y = 0$.
Vérifions $(1)$ : $x+y = 9$, qui est bien un multiple de $3$. Ce couple convient.

**Cas B : $y - x + 9 = 11$**, c'est-à-dire $y = x + 2$.

Alors $x + y = x + (x+2) = 2x + 2$. La condition $(1)$ demande que $2x+2$ soit un multiple de $3$, autrement dit que $2(x+1)$ le soit. Comme $2$ et $3$ n'ont pas de facteur commun, cela revient à demander que $x+1$ soit un multiple de $3$, c'est-à-dire

$$x \in \{2, 5, 8\} .$$

Il faut aussi que $y = x+2$ reste un chiffre :

- $x = 2$ donne $y = 4$ ;
- $x = 5$ donne $y = 7$ ;
- $x = 8$ donne $y = 10$, ce qui n'est pas un chiffre : à écarter.

### Les solutions

Trois couples conviennent :

$$\boxed{(x,y) = (2,4), \quad (5,7), \quad (9,0)} ,$$

correspondant aux trois nombres

$$172\,854 = 33 \times 5238, \qquad 175\,857 = 33 \times 5329, \qquad 179\,850 = 33 \times 5450 .$$

*Vérification du dernier.* Somme des chiffres de $179\,850$ : $1+7+9+8+5+0 = 30$, multiple de $3$. Somme alternée : $0 - 5 + 8 - 9 + 7 - 1 = 0$, multiple de $11$. Tout est cohérent.

## Going further

1. D'où vient le critère de divisibilité par $11$ ? De ce que $10$ laisse le reste $-1$ modulo $11$ : $10 \equiv -1$, donc $10^2 \equiv 1$, $10^3 \equiv -1$, et ainsi de suite. Écris un nombre $\overline{a_n \ldots a_1 a_0}$ comme $a_0 + 10a_1 + 100a_2 + \cdots$ et retrouve le critère.

2. Même question pour $\overline{17x85y}$ divisible par $36$. *Attention : $36 = 4 \times 9$, et il faut le critère de divisibilité par $4$, qui ne regarde que les deux derniers chiffres.*

3. Combien y a-t-il de nombres à six chiffres de la forme $\overline{17x85y}$ divisibles par $7$ ?
