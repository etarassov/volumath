---
id: "1008"
title: "Battre un treize avec trois dés"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [denombrement, des, symetrie, equiprobabilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercice 26 (réponse dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

Votre adversaire lance trois dés équilibrés à six faces et obtient une somme de $13$.

C'est maintenant votre tour : vous lancez trois dés à votre tour. Quelle est la probabilité que votre somme soit **strictement supérieure** à la sienne ?

## Hints

1. Combien y a-t-il de résultats possibles pour trois dés, si l'on tient compte de l'ordre des dés ? Sont-ils tous également probables ?
2. Il faut compter les triplets $(a, b, c)$ de nombres entre $1$ et $6$ dont la somme vaut $14$, $15$, $16$, $17$ ou $18$.
3. Commencez par les sommes faciles. Combien de triplets donnent $18$ ? Et $17$ ?
4. Pour la somme $14$, listez d'abord les résultats **sans tenir compte de l'ordre** ($6+6+2$, $6+5+3$, …), puis comptez de combien de façons chacun peut se répartir sur les trois dés.
5. Il existe un raccourci : remplacer chaque dé $a$ par $7 - a$. Que devient la somme ?

## Solution

Les trois dés étant équilibrés et lancés indépendamment, les $6^3 = 216$ triplets ordonnés $(a, b, c)$ avec $1 \leqslant a, b, c \leqslant 6$ sont **équiprobables**. Chacun a donc la probabilité $\frac{1}{216}$.

Il s'agit de compter les triplets de somme $14$, $15$, $16$, $17$ ou $18$.

**Somme $18$.** Un seul triplet : $(6,6,6)$. Cela fait $1$ triplet.

**Somme $17$.** Les dés valent $6, 6, 5$ dans un certain ordre. Le $5$ peut être sur l'un des trois dés : $3$ triplets.

**Somme $16$.** Les décompositions non ordonnées sont $6+6+4$ et $6+5+5$.
- $6+6+4$ : le $4$ peut être sur l'un des trois dés, soit $3$ triplets.
- $6+5+5$ : le $6$ peut être sur l'un des trois dés, soit $3$ triplets.

Total : $6$ triplets.

**Somme $15$.** Les décompositions non ordonnées sont $6+6+3$, $6+5+4$ et $5+5+5$.
- $6+6+3$ : $3$ triplets.
- $6+5+4$ : trois valeurs différentes, donc $3! = 6$ triplets.
- $5+5+5$ : $1$ triplet.

Total : $10$ triplets.

**Somme $14$.** Les décompositions non ordonnées sont $6+6+2$, $6+5+3$, $6+4+4$ et $5+5+4$.
- $6+6+2$ : $3$ triplets.
- $6+5+3$ : $3! = 6$ triplets.
- $6+4+4$ : $3$ triplets.
- $5+5+4$ : $3$ triplets.

Total : $15$ triplets.

**Le compte final.**
$$15 + 10 + 6 + 3 + 1 = 35.$$

D'où
$$P(\text{somme} > 13) = \frac{35}{216} \approx \text{0,162}.$$

**Conclusion.** Vous avez environ $16\,\%$ de chances de faire mieux que votre adversaire. Sa somme de $13$ était donc un bon lancer : dans plus de huit cas sur dix vous ne ferez pas mieux.

### Le raccourci annoncé dans l'indication 5

Remplaçons chaque résultat $a$ par $7 - a$. Comme un dé équilibré donne $a$ et $7-a$ avec la même probabilité, cette transformation échange les $216$ triplets deux à deux sans changer les probabilités. Et la somme $s = a + b + c$ devient
$$(7-a) + (7-b) + (7-c) = 21 - s.$$

Donc le nombre de triplets de somme $s$ est le même que le nombre de triplets de somme $21 - s$. Ainsi :

| somme | 3 | 4 | 5 | 6 | 7 | … |
|---|---|---|---|---|---|---|
| même nombre que | 18 | 17 | 16 | 15 | 14 | … |

Compter les sommes $\geqslant 14$ revient donc à compter les sommes $\leqslant 7$, et ces triplets-là sont bien plus faciles à énumérer :
$$3 : 1, \quad 4 : 3, \quad 5 : 6, \quad 6 : 10, \quad 7 : 15,$$
soit encore $35$. La symétrie fournit le même résultat pour bien moins de travail.

## Going further

1. Dresser la table complète du nombre de triplets pour chaque somme de $3$ à $18$, et vérifier que le total fait $216$. Quelle somme est la plus probable ?
2. Quelle est la probabilité de faire **exactement** $13$, c'est-à-dire de faire match nul ? En déduire la probabilité de faire strictement moins que l'adversaire.
3. Le premier joueur obtient une somme $s$ au hasard, puis le second joue. Quelle est la probabilité que le second gagne ? Répondre sans calcul, par un argument de symétrie, puis vérifier par le calcul.
