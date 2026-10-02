---
id: "11039"
title: "Des couples (m, n) pour lesquels m! × n! est un carré"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [factorielle, carres-parfaits, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 2, repris tel quel en Exercices Seniors, exercice 10 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$ (on lit « factorielle
$n$ »).

Montrer qu'il existe une infinité de couples $(m, n)$ d'entiers strictement positifs **distincts** tels que
$m! \times n!$ soit un carré parfait.

## Hints

1. Avec $m = n$, le nombre $n! \times n! = (n!)^2$ est un carré. L'énoncé l'interdit, mais il montre d'où peuvent venir les carrés.
2. Prends $m > n$ et écris $m! = m \times (m - 1) \times \cdots \times (n + 1) \times n!$. Que devient $m! \times n!$ ?
3. Essaie $m = n + 1$. Que faut-il demander à $m$ ?

## Solution

Prenons $m = n + 1$. Alors $m! = m \times n!$, donc

$$m! \times n! = m \times (n!)^2 .$$

Si $m$ est lui-même un carré parfait, disons $m = k^2$, alors

$$m! \times n! = k^2 \times (n!)^2 = (k \times n!)^2$$

est un carré parfait.

Pour tout entier $k \geqslant 2$, le couple $(m, n) = (k^2, k^2 - 1)$ convient donc : les deux entiers sont
distincts et strictement positifs (car $k^2 - 1 \geqslant 3$). Par exemple :

* $k = 2$ : $4! \times 3! = 24 \times 6 = 144 = 12^2$ ;
* $k = 3$ : $9! \times 8! = 9 \times (8!)^2 = (3 \times 40\,320)^2$.

Comme il y a une infinité d'entiers $k \geqslant 2$, on obtient une infinité de couples qui conviennent.

## Going further

Peut-on trouver un exemple avec $m = n + 2$ ? Il faudrait que $(n + 1)(n + 2)$ soit un carré. Montre que
c'est impossible en le comparant à $(n + 1)^2$ et à $(n + 2)^2$.
