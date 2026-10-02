---
id: "0553"
title: "Deux chiffres effacés, un multiple de 72"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, criteres-de-divisibilite, chiffres, somme-des-chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 11 «В целых числах», задача 1"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Sur un nombre de neuf chiffres, deux chiffres sont devenus illisibles. Ce qu'il en reste est

$$3\,2\,\square\,3\,5\,7\,1\,7\,\square$$

Autrement dit, en notant $a$ et $b$ les deux chiffres manquants, le nombre s'écrit $\overline{32a35717b}$ : ses neuf chiffres sont, dans l'ordre, $3$, $2$, $a$, $3$, $5$, $7$, $1$, $7$, $b$.

Retrouver $a$ et $b$, sachant que ce nombre est divisible par $72$.

## Hints

1. $72 = 8 \times 9$, et $8$ et $9$ n'ont pas d'autre diviseur commun que $1$. Un nombre est donc divisible par $72$ exactement lorsqu'il est à la fois divisible par $8$ et divisible par $9$.
2. Pour la divisibilité par $9$, on regarde la somme des chiffres. Que vaut-elle ici, en fonction de $a$ et de $b$ ?
3. Pour la divisibilité par $8$ : remarquer que $1000$ est divisible par $8$. Il suffit donc de regarder le nombre formé par les **trois derniers** chiffres.
4. Ces trois derniers chiffres sont $1$, $7$ et $b$ : ils forment le nombre $170 + b$. Pour quel chiffre $b$ ce nombre est-il divisible par $8$ ?

## Solution

Appelons $N = \overline{32a35717b}$ le nombre cherché.

**L'idée : couper $72$ en deux morceaux plus faciles.**

On a $72 = 8 \times 9$. Comme $8$ et $9$ n'ont aucun diviseur commun autre que $1$, un nombre est divisible par $72$ si et seulement s'il est divisible par $8$ **et** par $9$. On va traiter les deux conditions séparément.

**La divisibilité par 8 donne $b$.**

Séparons les trois derniers chiffres du reste. En notant $M = \overline{32a357}$ le nombre formé par les six premiers chiffres, on a

$$N = 1000 \times M + \overline{17b}.$$

Or $1000 = 8 \times 125$ est divisible par $8$, donc $1000 \times M$ l'est aussi. Il reste donc à rendre $\overline{17b}$ divisible par $8$, c'est-à-dire

$$170 + b \quad \text{divisible par } 8.$$

Essayons les dix chiffres possibles : $170, 171, \dots, 179$. Les multiples de $8$ dans le voisinage sont $168$ et $176$. Seul $176$ est dans la liste, donc

$$b = 6.$$

**La divisibilité par 9 donne $a$.**

Un nombre est divisible par $9$ si et seulement si la somme de ses chiffres l'est. Ici cette somme vaut

$$3 + 2 + a + 3 + 5 + 7 + 1 + 7 + b = 28 + a + b.$$

Avec $b = 6$, cela fait $34 + a$. Comme $a$ est un chiffre, on a $34 \leqslant 34 + a \leqslant 43$. Le seul multiple de $9$ dans cet intervalle est $36$, donc

$$34 + a = 36, \qquad a = 2.$$

**Conclusion.**

Le nombre est

$$N = 322\,357\,176.$$

**Vérification.** La somme de ses chiffres vaut $3+2+2+3+5+7+1+7+6 = 36$, qui est divisible par $9$. Ses trois derniers chiffres forment $176 = 8 \times 22$, divisible par $8$. Et en effet

$$322\,357\,176 = 72 \times 4\,477\,183.$$

Il y a donc **une seule** solution : $a = 2$ et $b = 6$.

## Going further

1. Pourquoi le critère de divisibilité par $8$ ne regarde-t-il que les trois derniers chiffres ? Écrire un nombre sous la forme « milliers $\times$ $1000$ $+$ trois derniers chiffres » et conclure. Quel est, pour la même raison, le critère de divisibilité par $4$ ?
2. Mêmes données, mais on demande que $\overline{32a35717b}$ soit divisible par $36$. Combien de couples $(a\,;b)$ conviennent alors ?
