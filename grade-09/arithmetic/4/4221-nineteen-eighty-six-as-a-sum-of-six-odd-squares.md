---
id: "4221"
title: "1986, somme de six carrés impairs ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [parite, carres, restes, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Algebra and Remainders"
  reference: "Handout-1928-1779.pdf, exercice 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1928-1779.pdf"
---

## Statement

Peut-on écrire $1986$ comme la somme des carrés de six nombres impairs ?

Autrement dit, existe-t-il six entiers impairs $a_1, a_2, \ldots, a_6$ (pas forcément distincts)
tels que
$$a_1^2 + a_2^2 + a_3^2 + a_4^2 + a_5^2 + a_6^2 = 1986 \;?$$

## Hints

1. Un essai au hasard ne prouvera rien. Cherche plutôt une propriété commune à **tous** les
   carrés de nombres impairs.
2. Écris un nombre impair sous la forme $2k+1$ et développe son carré. Peux-tu faire apparaître
   un multiple de $8$ ?
3. Dans $4k(k+1)$, que peut-on dire du produit $k(k+1)$ de deux entiers consécutifs ?
4. Une fois que tu sais quel reste donne un carré impair dans la division par $8$, additionne
   six fois ce reste, puis compare au reste de $1986$.

## Solution

**La réponse est non.** Voici pourquoi.

**Étape 1 : le carré d'un nombre impair est de la forme $8m + 1$.**

Soit $a$ un entier impair. On peut l'écrire $a = 2k + 1$ avec $k$ entier. Alors
$$a^2 = (2k+1)^2 = 4k^2 + 4k + 1 = 4k(k+1) + 1.$$

Or $k$ et $k+1$ sont deux entiers consécutifs : l'un des deux est pair, donc leur produit
$k(k+1)$ est pair. Écrivons $k(k+1) = 2m$ avec $m$ entier. Il vient
$$a^2 = 4 \times 2m + 1 = 8m + 1.$$

Autrement dit, le carré de tout nombre impair donne le reste $1$ dans la division par $8$.

*Vérification :* $1 = 8 \times 0 + 1$, $9 = 8 \times 1 + 1$, $25 = 8 \times 3 + 1$,
$49 = 8 \times 6 + 1$, $81 = 8 \times 10 + 1$. ✓

**Étape 2 : une somme de six tels carrés.**

Si $a_1, \ldots, a_6$ sont six entiers impairs, chacun de leurs carrés s'écrit $8m_i + 1$, donc
$$a_1^2 + \cdots + a_6^2 = 8(m_1 + \cdots + m_6) + 6.$$

Une telle somme donne donc toujours le reste $6$ dans la division par $8$.

**Étape 3 : le reste de $1986$.**

$$1986 = 8 \times 248 + 2,$$
car $8 \times 248 = 1984$. Le reste de $1986$ dans la division par $8$ vaut donc $2$.

**Étape 4 : on conclut.**

Une somme de six carrés impairs laisse le reste $6$ ; le nombre $1986$ laisse le reste $2$. Comme
$6 \neq 2$, une telle écriture est impossible.

**Conclusion.** On ne peut pas écrire $1986$ comme somme de six carrés de nombres impairs.

**Pourquoi la division par $4$ ne suffit pas.** Un carré impair donne le reste $1$ dans la
division par $4$, donc six carrés impairs donnent $6$, c'est-à-dire le reste $2$. Et $1986$ donne
aussi le reste $2$ dans la division par $4$. Le test « modulo $4$ » ne décide donc rien : il faut
vraiment aller jusqu'à $8$.

## Going further

1. Peut-on écrire $1986$ comme somme de six carrés d'entiers quelconques ? (Oui, par exemple
   $1986 = 44^2 + 7^2 + 1^2 + 0^2 + 0^2 + 0^2$.)
2. Quels sont les entiers qui s'écrivent comme somme de six carrés impairs ? (Exactement ceux de
   la forme $8m + 6$ qui sont assez grands.)
