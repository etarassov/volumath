---
id: "13818"
title: "Trois nombres et leurs sommes deux à deux"
grade: 8
theme: algebra
difficulty: 1
duration_min: 10
tags: [mise en equation, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 1 ; corrigé dans le même fichier, solution 1 (inspirée des Olympiades mathématiques belges, éliminatoire miNi 1999, Q21)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Trois nombres sont écrits au tableau. En les additionnant deux à deux, on obtient les trois
sommes $69$, $72$ et $81$.

Quel est le plus grand des trois nombres écrits au tableau ?

## Hints

1. Appelle les trois nombres $a$, $b$ et $c$. Écris les trois sommes.
2. Additionne les trois sommes. Combien de fois chaque nombre y apparaît-il ?
3. Une fois connue la somme $a + b + c$, il suffit de lui retirer une des sommes deux à deux.

## Solution

Appelons $a$, $b$ et $c$ les trois nombres, avec $a + b = 69$, $a + c = 72$ et $b + c = 81$.

**La somme des trois nombres.** En additionnant les trois égalités, chaque nombre est compté
deux fois :

$$2(a + b + c) = 69 + 72 + 81 = 222, \qquad \text{donc} \qquad a + b + c = 111.$$

**Chaque nombre.** On retire à $111$ la somme des deux autres :

$$c = 111 - 69 = 42, \qquad b = 111 - 72 = 39, \qquad a = 111 - 81 = 30.$$

On vérifie : $30 + 39 = 69$, $30 + 42 = 72$ et $39 + 42 = 81$.

**Le plus grand nombre écrit au tableau est $42$.**
