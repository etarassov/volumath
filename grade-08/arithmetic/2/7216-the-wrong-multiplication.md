---
id: "7216"
title: "La multiplication est-elle juste ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, somme des chiffres, preuve par neuf, multiple de 3]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Un élève a écrit au tableau :
$$79\,133 \times 111\,107 = 8\,794\,230\,231 .$$

Sans calculatrice, et sans poser la multiplication, montrer que ce résultat est faux.

## Hints

1. On ne te demande pas le bon résultat : on te demande de prouver que celui-là ne peut pas
   convenir.
2. Souviens-toi : un nombre et la somme de ses chiffres ont le même reste dans la division par
   $3$.
3. Calcule le reste de chacun des trois nombres dans la division par $3$. Que devrait-on trouver
   si l'égalité était vraie ?

## Solution

**L'outil.** Un entier et la somme de ses chiffres ont le même reste dans la division par $3$.
C'est ce qui rend le critère de divisibilité par $3$ si commode.

**Le reste de chaque nombre.**

Pour $79\,133$ :
$$7 + 9 + 1 + 3 + 3 = 23, \qquad 2 + 3 = 5, \qquad 5 = 3 + 2 .$$
Le reste de $79\,133$ dans la division par $3$ vaut donc $2$.

Pour $111\,107$ :
$$1 + 1 + 1 + 1 + 0 + 7 = 11, \qquad 1 + 1 = 2 .$$
Le reste vaut $2$.

Pour $8\,794\,230\,231$ :
$$8 + 7 + 9 + 4 + 2 + 3 + 0 + 2 + 3 + 1 = 39, \qquad 3 + 9 = 12, \qquad 1 + 2 = 3 .$$
Le reste vaut $0$ : ce nombre est un multiple de $3$.

**La contradiction.**

Si l'égalité était vraie, le membre de droite serait un multiple de $3$, donc le produit
$79\,133 \times 111\,107$ serait un multiple de $3$.

Or $3$ est un nombre premier : s'il divise un produit, il divise l'un des deux facteurs. Ici il ne
divise ni $79\,133$ (reste $2$) ni $111\,107$ (reste $2$). Le produit n'est donc pas un multiple
de $3$.

**Le résultat écrit au tableau est donc faux.**

## Going further

On peut préciser ce que devrait être le reste : le produit de deux nombres de reste $2$ a le même
reste que $2 \times 2 = 4$, c'est-à-dire $1$. Le vrai résultat doit donc avoir une somme de
chiffres de reste $1$ dans la division par $3$.

Le vrai produit est $8\,792\,230\,231$ : l'élève s'était trompé d'un chiffre. Sa somme de chiffres
vaut $8+7+9+2+2+3+0+2+3+1 = 37$, de reste $1$. Tout est cohérent.

Cette méthode, appelée **preuve par neuf** quand on travaille modulo $9$, permet de repérer
beaucoup d'erreurs de calcul, mais pas toutes : elle ne dit jamais qu'un résultat est juste, elle
dit seulement quand il est faux.
