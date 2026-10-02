---
id: "12617"
title: "Les chiffres 1 de n(2ⁿ − 1) en base 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [base-2, ecriture-binaire, puissances-de-deux, chiffres, complement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 9 (EGMO) ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Soit $n$ un entier naturel. Démontrer que l'écriture en base $2$ de l'entier
$$n\,(2^n - 1)$$
contient exactement $n$ fois le chiffre $1$.

## Hints

1. Écris en base $2$ les nombres $n(2^n - 1)$ pour $n = 1, 2, 3, 4, 5$. Coupe chaque écriture en
   deux blocs de $n$ chiffres (en ajoutant des zéros devant si besoin). Que remarques-tu ?
2. Écris $n(2^n - 1) = 2^n \times s + t$ avec $s = n - 1$. Que vaut $t$ ? Que vaut $s + t$ ?
3. Que vaut $2^n - 1$ en base $2$ ? Si deux nombres de $n$ chiffres en base $2$ ont pour somme
   $2^n - 1$, que peux-tu dire de leurs chiffres ?
4. Multiplier par $2^n$, en base $2$, c'est ajouter $n$ zéros à droite.

## Solution

**Petits cas.** Pour $n = 0$, le nombre vaut $0$ et ne contient aucun chiffre $1$. Pour
$n = 1$, il vaut $1$. Pour $n = 3$, on trouve $21$, qui s'écrit $10101$ en base $2$ : en coupant en
deux blocs de trois chiffres, $010 \mid 101$. Pour $n = 4$, on trouve $60$, qui s'écrit
$0011 \mid 1100$. Les deux blocs semblent « complémentaires » : là où l'un a un $1$, l'autre a un
$0$. C'est ce qu'on va démontrer. On suppose désormais $n \geqslant 1$.

**Étape 1 : découper le nombre.** Posons $s = n - 1$ et $t = 2^n - n$. Alors
$$2^n s + t = 2^n(n - 1) + 2^n - n = n \cdot 2^n - n = n\,(2^n - 1),$$
et
$$s + t = 2^n - 1 .$$

**Étape 2 : $s$ et $t$ s'écrivent avec $n$ chiffres.** On a
$$2^n = 1 + (1 + 2 + 4 + \cdots + 2^{n-1}) \geqslant 1 + n,$$
car la somme entre parenthèses a $n$ termes, tous au moins égaux à $1$. Donc $t = 2^n - n \geqslant 1$,
et bien sûr $s = n - 1 \geqslant 0$. Comme $s + t = 2^n - 1$, les deux nombres $s$ et $t$ sont
compris entre $0$ et $2^n - 1$. Ils s'écrivent donc en base $2$ avec au plus $n$ chiffres ; on
complète par des zéros à gauche pour avoir exactement $n$ chiffres :
$$s = \overline{a_{n-1} \ldots a_1 a_0}, \qquad t = \overline{b_{n-1} \ldots b_1 b_0} .$$

**Étape 3 : les chiffres de $s$ et de $t$ sont complémentaires.** En base $2$, le nombre
$2^n - 1 = 1 + 2 + \cdots + 2^{n-1}$ s'écrit avec $n$ chiffres $1$ : $\overline{11\ldots1}$.
Retrancher $s$ de ce nombre se fait chiffre par chiffre, sans retenue : là où $s$ a un $1$, le
résultat a un $0$, et là où $s$ a un $0$, le résultat a un $1$. Or ce résultat est
$2^n - 1 - s = t$. Donc, pour chaque position $i$,
$$a_i + b_i = 1 .$$

**Étape 4 : recoller.** Multiplier $s$ par $2^n$, en base $2$, revient à écrire $n$ zéros à sa
droite. Comme $t < 2^n$ s'écrit avec $n$ chiffres, ajouter $t$ remplit exactement ces $n$ places,
sans retenue. Ainsi
$$n\,(2^n - 1) = 2^n s + t = \overline{a_{n-1} \ldots a_0\, b_{n-1} \ldots b_0}$$
en base $2$ (en ôtant les éventuels zéros de tête, ce qui ne change pas le nombre de $1$).

Le nombre de chiffres $1$ est la somme de tous ces chiffres :
$$(a_0 + b_0) + (a_1 + b_1) + \cdots + (a_{n-1} + b_{n-1}) = 1 + 1 + \cdots + 1 = n .$$

**Conclusion.** L'écriture en base $2$ de $n(2^n - 1)$ contient exactement $n$ chiffres $1$.

## Going further

La preuve n'utilise presque rien de particulier au facteur $n$. Pour tout entier $k$ tel que
$1 \leqslant k \leqslant 2^n$, on écrit de même
$$k\,(2^n - 1) = 2^n (k - 1) + (2^n - k),$$
avec $(k - 1) + (2^n - k) = 2^n - 1$, et l'on obtient que $k(2^n - 1)$ contient exactement $n$
chiffres $1$ en base $2$. Ce n'est plus vrai si $k > 2^n$ : pour $n = 1$, le nombre $k(2^1 - 1) = k$
peut contenir beaucoup de chiffres $1$, par exemple $k = 3 = \overline{11}$.

C'est l'analogue en base $2$ d'un fait connu en base $10$ : si $1 \leqslant k \leqslant 10^n$, la
somme des chiffres de $k \times 99\ldots9$ (avec $n$ chiffres $9$) vaut $9n$.
