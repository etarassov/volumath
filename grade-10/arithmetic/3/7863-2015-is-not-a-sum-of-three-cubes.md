---
id: "7863"
title: "2015 n'est pas une somme de trois cubes"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [cubes, encadrement, disjonction-de-cas, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 25 (résolu par Arthur Léonard et Théodore Fougereux)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Montrer qu'il n'existe aucun triplet d'entiers naturels $(x, y, z)$ tel que
$$x^3 + y^3 + z^3 = 2015.$$

## Hints

1. Comme l'ordre de $x$, $y$, $z$ n'a aucune importance, on peut supposer $x \leq y \leq z$.
2. Le plus grand des trois cubes ne peut pas être trop petit : à lui seul il vaut au moins le tiers
   du total. Combien vaut $8^3$ ? Et $3 \times 8^3$ ?
3. Le plus grand des trois cubes ne peut pas non plus être trop grand : il est inférieur à $2015$.
   Combien vaut $13^3$ ?
4. Tu n'as alors que quelques valeurs possibles pour $z$. Pour chacune, recommence le même
   encadrement avec $y$, qui est le plus grand des deux cubes restants.
5. Garde sous les yeux la liste des cubes : $0$, $1$, $8$, $27$, $64$, $125$, $216$, $343$, $512$,
   $729$, $1000$, $1331$, $1728$.

## Solution

Supposons qu'il existe des entiers naturels $x$, $y$, $z$ vérifiant $x^3 + y^3 + z^3 = 2015$.
L'addition ne tient pas compte de l'ordre, donc on peut les ranger et supposer
$$x \leq y \leq z.$$

Voici la liste des cubes dont nous aurons besoin :
$$0,\; 1,\; 8,\; 27,\; 64,\; 125,\; 216,\; 343,\; 512,\; 729,\; 1000,\; 1331,\; 1728,\; 2197.$$

### Étape 1 : encadrer $z$

**$z$ n'est pas trop petit.** Si on avait $z \leq 8$, alors $x$ et $y$ seraient aussi au plus $8$,
et la somme vaudrait au plus $3 \times 8^3 = 3 \times 512 = 1536$, ce qui est plus petit que
$2015$. Donc $z \geq 9$.

**$z$ n'est pas trop grand.** On a $z^3 \leq 2015$, et $13^3 = 2197 > 2015$. Donc $z \leq 12$.

Il ne reste que quatre valeurs à examiner : $z = 9$, $10$, $11$ ou $12$.

### Étape 2 : les quatre cas

Dans chaque cas on pose $R = 2015 - z^3$, et il faut écrire $R = x^3 + y^3$ avec $x \leq y \leq z$.
On encadre alors $y$ de la même manière : $y^3 \leq R$ (car $x^3 \geq 0$), et $2y^3 \geq R$ (car
$x \leq y$), c'est-à-dire $y^3 \geq R/2$.

**Cas $z = 9$**, $R = 2015 - 729 = 1286$. On a $y \leq 9$, et $y^3 \geq 643$ donne $y \geq 9$ (car
$8^3 = 512 < 643$). Donc $y = 9$, et $x^3 = 1286 - 729 = 557$. Or $557$ n'est pas un cube : il est
coincé entre $8^3 = 512$ et $9^3 = 729$. Impossible.

**Cas $z = 10$**, $R = 2015 - 1000 = 1015$. On a $y \leq 10$, et $y^3 \geq \text{507,5}$ donne
$y \geq 8$. Trois valeurs :

- $y = 8$ : $x^3 = 1015 - 512 = 503$, coincé entre $343$ et $512$. Non.
- $y = 9$ : $x^3 = 1015 - 729 = 286$, coincé entre $216$ et $343$. Non.
- $y = 10$ : $x^3 = 1015 - 1000 = 15$, coincé entre $8$ et $27$. Non.

**Cas $z = 11$**, $R = 2015 - 1331 = 684$. Ici $y^3 \leq 684$ donne $y \leq 8$, et
$y^3 \geq 342$ donne $y \geq 7$. Deux valeurs :

- $y = 7$ : $x^3 = 684 - 343 = 341$, coincé entre $216$ et $343$. Non.
- $y = 8$ : $x^3 = 684 - 512 = 172$, coincé entre $125$ et $216$. Non.

**Cas $z = 12$**, $R = 2015 - 1728 = 287$. Ici $y^3 \leq 287$ donne $y \leq 6$, et
$y^3 \geq \text{143,5}$ donne $y \geq 6$. Donc $y = 6$, et $x^3 = 287 - 216 = 71$, coincé entre
$64$ et $125$. Non.

### Conclusion

Aucun des sept cas ne fournit de solution. **Il n'existe donc aucun triplet d'entiers naturels
$(x, y, z)$ tel que $x^3 + y^3 + z^3 = 2015$.**

## Going further

Devant une question de ce genre, le premier réflexe est de chercher un argument de reste, qui
règlerait tout d'un coup sans aucun calcul. Le candidat naturel est le reste modulo $9$, car les
cubes y sont très pauvres : quel que soit l'entier $n$, le reste de $n^3$ dans la division par $9$
vaut $0$, $1$ ou $8$. Une somme de trois cubes ne peut donc prendre que certains restes.

Ici, cela ne suffit pas. En effet $2015 = 9 \times 223 + 8$, donc $2015$ a pour reste $8$, et
$8 = 8 + 0 + 0$ est bel et bien une somme autorisée. Le test modulo $9$ laisse passer $2015$.

Le reste modulo $7$ échoue de la même façon : les cubes y valent $0$, $1$ ou $6$, et $2015$ a pour
reste $6 = 6 + 0 + 0$.

C'est précisément pour cela que l'exercice demande du travail à la main : il faut renoncer à
l'astuce et accepter l'encadrement suivi de la disjonction de cas. Savoir reconnaître qu'un argument
élégant ne marchera pas, et basculer à temps vers une recherche organisée, fait partie du métier.
