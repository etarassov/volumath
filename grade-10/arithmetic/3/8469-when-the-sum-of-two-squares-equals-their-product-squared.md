---
id: "8469"
title: "Quand a² + b² vaut (ab)²"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation diophantienne, divisibilite, carres, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations diophantiennes » (Jean Rax), exercice 16 (énoncé sans solution imprimée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers naturels tels que

$$a^2 + b^2 = (ab)^2.$$

## Hints

1. Une solution saute aux yeux. Laquelle ? Tout le travail est de montrer qu'il n'y en a pas d'autre.
2. Fais passer $b^2$ du côté droit et mets $b^2$ en facteur. Que t'apprend l'égalité obtenue sur les diviseurs de $a^2$ ?
3. Recommence en faisant passer $a^2$ de l'autre côté. Tu obtiens deux divisibilités croisées.
4. Deux entiers naturels qui se divisent l'un l'autre sont égaux. Que devient alors l'équation ?

## Solution

Le couple $(0, 0)$ est solution : $0 + 0 = 0$. Montrons que c'est le seul.

### Étape 1. Deux divisibilités croisées

Partons de $a^2 + b^2 = a^2 b^2$ et isolons $a^2$ :

$$a^2 = a^2 b^2 - b^2 = b^2\left(a^2 - 1\right).$$

Cette égalité montre que **$b^2$ divise $a^2$**.

Par symétrie de l'équation en $a$ et $b$, le même calcul donne

$$b^2 = a^2\left(b^2 - 1\right),$$

donc **$a^2$ divise $b^2$**.

### Étape 2. Les deux carrés sont égaux

Les deux nombres $a^2$ et $b^2$ sont des entiers naturels et chacun divise l'autre.

Si l'un des deux est nul, disons $a = 0$, l'équation devient $b^2 = 0$, donc $b = 0$ : on retombe sur la solution $(0,0)$.

Sinon $a^2$ et $b^2$ sont tous deux strictement positifs, et une divisibilité entre entiers strictement positifs impose $a^2 \leqslant b^2$ et $b^2 \leqslant a^2$. Donc

$$a^2 = b^2, \qquad \text{et comme } a, b \geqslant 0, \qquad a = b.$$

### Étape 3. Résoudre le cas $a = b$

L'équation devient

$$a^2 + a^2 = \left(a^2\right)^2, \qquad \text{c'est-à-dire} \qquad 2a^2 = a^4.$$

En factorisant :

$$a^2\left(a^2 - 2\right) = 0.$$

Donc $a = 0$, ou bien $a^2 = 2$. Mais $a^2 = 2$ n'a pas de solution entière, car $1^2 = 1$ et $2^2 = 4$.

Il reste $a = 0$, donc $b = 0$, ce qui contredit l'hypothèse de l'étape 2 selon laquelle $a$ et $b$ étaient non nuls.

### Conclusion

$$\boxed{(a, b) = (0, 0) \text{ est la seule solution.}}$$

## Going further

L'argument central mérite d'être retenu : **deux entiers naturels non nuls qui se divisent mutuellement sont égaux.** C'est immédiat, puisque chacun est alors inférieur ou égal à l'autre, mais c'est souvent le pivot d'une démonstration.

On peut aussi conclure autrement, par la taille. Supposons $a, b \geqslant 1$ et, quitte à échanger, $a \leqslant b$. Alors

$$a^2 b^2 = a^2 + b^2 \leqslant b^2 + b^2 = 2b^2,$$

donc $a^2 \leqslant 2$, donc $a = 1$. L'équation devient $1 + b^2 = b^2$, soit $1 = 0$ : absurde. Cette route est encore plus courte, et c'est souvent le cas quand une équation mêle une somme et un produit : le produit grandit beaucoup plus vite, et l'égalité ne peut tenir que pour de toutes petites valeurs.

Le même problème posé avec des **rationnels** au lieu d'entiers a en revanche beaucoup de solutions. En divisant l'équation par $a^2 b^2$, elle se réécrit

$$\frac{1}{a^2} + \frac{1}{b^2} = 1,$$

et il suffit alors de partir d'un triplet pythagoricien. Avec $3^2 + 4^2 = 5^2$, on prend $\dfrac{1}{a} = \dfrac{4}{5}$ et $\dfrac{1}{b} = \dfrac{3}{5}$, c'est-à-dire

$$a = \frac54, \qquad b = \frac53,$$

et l'on vérifie : $a^2 + b^2 = \dfrac{25}{16} + \dfrac{25}{9} = \dfrac{625}{144}$, tandis que $(ab)^2 = \left(\dfrac{25}{12}\right)^2 = \dfrac{625}{144}$. Chaque triplet pythagoricien fournit ainsi une solution rationnelle, et il y en a une infinité.
