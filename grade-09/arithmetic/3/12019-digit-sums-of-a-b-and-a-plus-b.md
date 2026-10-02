---
id: "12019"
title: "S(a) = S(b) = S(a + b)"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [somme des chiffres, divisibilite par 9, restes, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 1 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Pour un entier $k \geqslant 1$, on note $S(k)$ la somme des chiffres de son écriture décimale. Par exemple $S(2013) = 2 + 0 + 1 + 3 = 6$.

1. Existe-t-il deux entiers $a \geqslant 1$ et $b \geqslant 1$ tels que $S(a) = S(b) = S(a + b) = 2013$ ?
2. Existe-t-il deux entiers $a \geqslant 1$ et $b \geqslant 1$ tels que $S(a) = S(b) = S(a + b) = 2016$ ?

## Hints

1. Rappelez-vous le critère de divisibilité par $9$. En fait on a mieux : un entier et la somme de ses chiffres ont le même reste dans la division par $9$. Pourquoi ?
2. Question 1 : quel serait le reste de $a$, de $b$ et de $a + b$ dans la division par $9$ ?
3. Question 2 : $2016$ est un multiple de $9$. Cherchez d'abord un exemple plus petit, avec $S(a) = S(b) = S(a + b) = 9$, en prenant $a = b$.

## Solution

**Réponse.** 1) Non. 2) Oui.

**Un outil : $k - S(k)$ est divisible par $9$.** Écrivons par exemple $k = 2013 = 2 \times 1000 + 0 \times 100 + 1 \times 10 + 3$. Alors

$$k - S(k) = 2 \times (1000 - 1) + 0 \times (100 - 1) + 1 \times (10 - 1) = 2 \times 999 + 0 \times 99 + 1 \times 9 .$$

En général, $k - S(k)$ est une somme de chiffres multipliés par des nombres $9$, $99$, $999$, …, qui sont tous des multiples de $9$. Donc $k - S(k)$ est un multiple de $9$ : **un entier et la somme de ses chiffres ont le même reste dans la division par $9$.**

**Question 1.** Supposons que $a$ et $b$ existent. Comme $2013 = 9 \times 223 + 6$, l'outil donne :

- $a - 2013$ est un multiple de $9$, donc $a = 9u + 6$ pour un entier $u$ ;
- de même $b = 9v + 6$ pour un entier $v$ ;
- de même $a + b = 9w + 6$ pour un entier $w$.

Mais alors $a + b = 9(u + v) + 12 = 9(u + v + 1) + 3$, donc le reste de $a + b$ dans la division par $9$ vaut $3$, et non $6$. C'est une contradiction : **de tels entiers n'existent pas.**

**Question 2.** Prenons pour $a$ le nombre qui s'écrit $9090\ldots909$, avec $224$ chiffres $9$ séparés par des $0$ (il a $447$ chiffres), et $b = a$. Comme $2016 = 9 \times 224$, on a $S(a) = S(b) = 2016$.

Calculons $a + b = 2a$. Le double de $909$ est $1818$, le double de $90909$ est $181818$, et de même, en posant l'addition, chaque chiffre $9$ donne un « $18$ » : le $8$ reste à sa place et la retenue $1$ tombe sur le $0$ placé juste à gauche (ou devant le nombre, pour le premier $9$). Donc $a + b$ s'écrit $1818\ldots18$, avec $224$ fois le motif $18$, et

$$S(a + b) = 224 \times (1 + 8) = 224 \times 9 = 2016 .$$

**Conclusion.** C'est impossible avec $2013$, et c'est possible avec $2016$, par exemple avec $a = b = 9090\ldots909$ ($224$ chiffres $9$).

## Going further

Le même raisonnement montre que si $S(a) = S(b) = S(a + b) = s$, alors $s$ a le même reste que $2s$ dans la division par $9$, donc $s$ est un multiple de $9$. Réciproquement, l'exemple de la question 2 fonctionne pour tout multiple de $9$ : $S(a) = S(b) = S(a + b) = s$ est possible exactement quand $s$ est un multiple de $9$.
