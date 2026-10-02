---
id: "4216"
title: "8 999 999 est-il un nombre premier ?"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, difference-de-carres, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, More Tilings and Some Algebra"
  reference: "Handout-1924-1764.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1924-1764.pdf"
---

## Statement

Démontrer que $8\,999\,999$ n'est pas un nombre premier, sans calculatrice et sans essayer de le
diviser par tous les nombres premiers l'un après l'autre.

## Hints

1. Ce nombre est tout proche d'un nombre très rond. Lequel ? Écris-le sous la forme
   « nombre rond $-$ quelque chose ».
2. $9\,000\,000$ est un carré parfait. De quel nombre est-il le carré ?
3. Connais-tu une identité remarquable qui factorise $a^2 - b^2$ ?

## Solution

**On reconnaît le nombre.** Le nombre $8\,999\,999$ est tout proche de $9\,000\,000$ :
$$8\,999\,999 = 9\,000\,000 - 1.$$

**Les deux termes sont des carrés.** En effet
$$9\,000\,000 = 9 \times 1\,000\,000 = 3^2 \times 1000^2 = 3000^2,$$
et bien sûr $1 = 1^2$. Donc
$$8\,999\,999 = 3000^2 - 1^2.$$

**On factorise.** L'identité remarquable $a^2 - b^2 = (a-b)(a+b)$ donne, avec $a = 3000$ et
$b = 1$ :
$$8\,999\,999 = (3000 - 1)(3000 + 1) = 2999 \times 3001.$$

**On conclut.** Le nombre $8\,999\,999$ s'écrit comme un produit de deux entiers, tous deux
différents de $1$ et de $8\,999\,999$ lui-même. Il admet donc d'autres diviseurs que $1$ et
lui-même : ce n'est pas un nombre premier.

*Vérification du produit :* $2999 \times 3001 = 2999 \times 3000 + 2999 = 8\,997\,000 + 2999 = 8\,999\,999$. ✓

## Going further

1. Par la même méthode, montrer que $999\,999\,999\,999$ n'est pas premier.
2. Et $3\,999\,999$ ? (Il vaut $4 \times 10^6 - 1 = 2000^2 - 1 = 1999 \times 2001$.)
3. Attention au piège : $10^2 - 1 = 9 \times 11$ marche, mais que donne la méthode pour
   $2^2 - 1 = 3$ ? Pourquoi $3$ reste-t-il premier ?
