---
id: "13821"
title: "Le nombre x2345y est multiple de 72"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [chiffres, criteres-de-divisibilite, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 4 ; corrigé dans le même fichier, solution 4 (inspirée des Olympiades mathématiques belges, éliminatoire miNi 2000, Q7)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Je pense à deux chiffres $x$ et $y$. Je remarque que le nombre à six chiffres qui s'écrit
$x\,2\,3\,4\,5\,y$ (le chiffre $x$, puis $2$, $3$, $4$, $5$, puis le chiffre $y$) est un multiple
de $72$.

Que vaut $10x + y$ ?

## Hints

1. Décompose $72$ en un produit de deux nombres dont tu connais bien les multiples.
2. $72 = 8 \times 9$. Un multiple de $72$ est donc à la fois un multiple de $8$ et un multiple
   de $9$.
3. Comme $1000 = 8 \times 125$, un nombre est multiple de $8$ exactement quand le nombre formé
   par ses trois derniers chiffres l'est. Cela permet de trouver $y$. Pour $x$, pense au
   critère de divisibilité par $9$.

## Solution

Notons $N$ le nombre $x\,2\,3\,4\,5\,y$. Comme $72 = 8 \times 9$, le nombre $N$ est à la fois
un multiple de $8$ et un multiple de $9$.

**Le chiffre $y$.** On peut écrire $N = 1000 \times (x\,2\,3) + 4\,5\,y$, où $x\,2\,3$ désigne
le nombre formé des trois premiers chiffres. Comme $1000 = 8 \times 125$ est un multiple de $8$,
le nombre $N$ est multiple de $8$ exactement quand le nombre $4\,5\,y$, compris entre $450$ et
$459$, l'est. Or $448 = 8 \times 56$ et $456 = 8 \times 57$, et le multiple de $8$ suivant est
$464$. Le seul multiple de $8$ entre $450$ et $459$ est $456$, donc $y = 6$.

**Le chiffre $x$.** Un nombre est multiple de $9$ exactement quand la somme de ses chiffres
l'est. Ici cette somme vaut $x + 2 + 3 + 4 + 5 + 6 = x + 20$, qui est comprise entre $20$ et
$29$. Le seul multiple de $9$ dans cet intervalle est $27$, donc $x = 7$.

**On vérifie.** Le nombre $723\,456$ vaut bien $72 \times 10\,048$.

**On a $x = 7$ et $y = 6$, donc $10x + y = 76$.**
