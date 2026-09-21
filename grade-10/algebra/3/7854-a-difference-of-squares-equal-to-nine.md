---
id: "7854"
title: "Une différence de carrés qui vaut 9"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [identites remarquables, factorisation, diviseurs, equation diophantienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 9 (la liste imprimée écrit (0,5,5) au lieu de (0,5,4))"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers naturels (donc éventuellement nuls) tels que
$$x^2 + y^2 - z^2 = 9 - 2xy .$$

## Hints

1. Commence par faire passer le terme $-2xy$ de l'autre côté. Que reconnais-tu alors dans
   $x^2 + 2xy + y^2$ ?
2. L'équation devient une **différence de deux carrés** égale à $9$. Factorise-la.
3. Un produit de deux entiers vaut $9$ : liste les factorisations possibles. Attention au signe
   de chacun des deux facteurs.
4. Pour chaque factorisation, tu obtiens la valeur de $x+y$ et celle de $z$. Il reste à compter
   les couples $(x, y)$ d'entiers naturels de somme donnée.

## Solution

**Étape 1 : on reconnaît une identité remarquable.**

L'équation s'écrit
$$x^2 + 2xy + y^2 - z^2 = 9 ,$$
c'est-à-dire
$$(x + y)^2 - z^2 = 9 .$$

**Étape 2 : on factorise.**

$$(x + y - z)\,(x + y + z) = 9 .$$

Posons $s = x + y$ et rappelons que $x$, $y$, $z$ sont des entiers naturels, donc $s \geq 0$ et
$z \geq 0$.

Le facteur $x + y + z = s + z$ est positif ou nul. Comme le produit vaut $9 > 0$, aucun des deux
facteurs n'est nul, donc $s + z > 0$, et l'autre facteur $s - z$ est lui aussi strictement
positif.

De plus $s - z \leq s + z$ (car $z \geq 0$).

**Étape 3 : on liste les factorisations.**

Les façons d'écrire $9$ comme produit de deux entiers strictement positifs, le premier n'étant
pas plus grand que le second, sont
$$9 = 1 \times 9 \qquad \text{et} \qquad 9 = 3 \times 3 .$$

*Premier cas : $s - z = 1$ et $s + z = 9$.* En additionnant, $2s = 10$ donc $s = 5$, puis
$z = 4$.

*Second cas : $s - z = 3$ et $s + z = 3$.* En additionnant, $2s = 6$ donc $s = 3$, puis $z = 0$.

**Étape 4 : on énumère les solutions.**

*Cas $s = 5$, $z = 4$ :* les couples $(x,y)$ d'entiers naturels de somme $5$ sont
$$(0,5), \ (1,4), \ (2,3), \ (3,2), \ (4,1), \ (5,0) .$$
Cela donne six triplets :
$$(0,5,4), \ (1,4,4), \ (2,3,4), \ (3,2,4), \ (4,1,4), \ (5,0,4) .$$

*Cas $s = 3$, $z = 0$ :* les couples de somme $3$ sont $(0,3)$, $(1,2)$, $(2,1)$, $(3,0)$, d'où
quatre triplets :
$$(0,3,0), \ (1,2,0), \ (2,1,0), \ (3,0,0) .$$

**Conclusion.** Il y a exactement **dix** triplets solutions, ceux listés ci-dessus.

*Vérification sur un exemple.* Pour $(2,3,4)$ : $4 + 9 - 16 = -3$ et $9 - 2 \times 6 = -3$. Cela
colle.

*Coquille dans la source.* Le polycopié écrit $(0, 5, 5)$ dans la liste du premier cas, alors
que son propre calcul donne $z = 4$. Le triplet correct est $(0, 5, 4)$.
