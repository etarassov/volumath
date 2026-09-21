---
id: "7820"
title: "Le produit des chiffres vaut n² − 15n − 27"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, encadrement, inegalite, entiers]
adapted_from: null
see_also: ["7929"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », évaluation initiale, exercice bonus 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Pour un entier naturel $n$, on note $P(n)$ le produit de ses chiffres. Par exemple,
$P(204) = 2 \times 0 \times 4 = 0$ et $P(35) = 15$.

Trouver tous les entiers naturels $n$ tels que
$$P(n) = n^2 - 15n - 27 .$$

## Hints

1. Il n'y a qu'une équation, mais $P(n)$ est une drôle de fonction : on ne peut pas la
   manipuler algébriquement. En revanche, on peut l'**encadrer**.
2. Montre que $P(n) \leq n$ pour tout entier naturel $n$. Regarde le premier chiffre : il pèse
   au moins $10^{k}$ dans $n$, alors que les autres chiffres valent au plus $9$ chacun.
3. Tu as donc $0 \leq P(n) \leq n$. Reporte ces deux inégalités dans l'équation : tu obtiens
   deux conditions sur $n$ qui vont l'enfermer dans un intervalle minuscule.
4. Pour manipuler $n^2 - 15n - 27$ sans discriminant, écris-le $n(n - 15) - 27$ et teste les
   petites valeurs.

## Solution

**Étape 1 : le produit des chiffres ne dépasse jamais le nombre.**

Soit $n$ un entier naturel de $k+1$ chiffres, écrit $\overline{a_k a_{k-1} \cdots a_1 a_0}$ avec
$a_k \neq 0$. Alors
$$P(n) = a_k \times a_{k-1} \times \cdots \times a_0 \leq a_k \times \underbrace{9 \times \cdots \times 9}_{k \text{ facteurs}} = a_k \times 9^k ,$$
tandis que
$$n \geq a_k \times 10^k .$$

Comme $9^k \leq 10^k$, on en déduit
$$0 \leq P(n) \leq n .$$

**Étape 2 : $n$ ne peut pas être trop grand.**

L'équation donne $n^2 - 15n - 27 = P(n) \leq n$, donc
$$n^2 - 16n - 27 \leq 0, \qquad \text{c'est-à-dire} \qquad n(n - 16) \leq 27 .$$

- Si $n \geq 18$, alors $n(n-16) \geq 18 \times 2 = 36 > 27$. Impossible.
- Et la quantité $n(n-16)$ ne fait que croître ensuite.

Donc $n \leq 17$.

**Étape 3 : $n$ ne peut pas être trop petit.**

L'équation donne aussi $n^2 - 15n - 27 = P(n) \geq 0$, donc
$$n(n - 15) \geq 27 .$$

- Si $n \leq 15$, alors $n - 15 \leq 0$, donc $n(n-15) \leq 0 < 27$. Impossible.
- Si $n = 16$, alors $n(n-15) = 16 \times 1 = 16 < 27$. Impossible.

Donc $n \geq 17$.

**Étape 4 : il ne reste qu'un candidat.**

Les deux étapes précédentes donnent $n = 17$. On vérifie :
$$P(17) = 1 \times 7 = 7,$$
$$17^2 - 15 \times 17 - 27 = 289 - 255 - 27 = 7 .$$

Les deux valent bien $7$.

**Conclusion.** Le seul entier naturel qui convient est $\boxed{n = 17}$.
