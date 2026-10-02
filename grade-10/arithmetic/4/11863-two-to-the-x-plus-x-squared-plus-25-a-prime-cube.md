---
id: "11863"
title: "Quand 2ˣ + x² + 25 est-il le cube d'un nombre premier ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, cubes, modulo-3, parite, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 7 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Déterminer tous les entiers relatifs $x$ tels que $2^x + x^2 + 25$ soit le cube d'un nombre premier.

## Hints

1. Montrer que $x \geqslant 0$, puis étudier la parité de $2^x + x^2 + 25$ selon la parité de $x$.
2. Regarder le reste de la division par $3$. Que vaut $2^x$ modulo $3$ quand $x$ est pair ?
3. On arrive à $x = 6z$. Alors $2^x = (4^z)^3$. Entre quels cubes consécutifs se trouve $2^x + x^2 + 25$ ?

## Solution

Supposons que $2^x + x^2 + 25 = p^3$ avec $p$ premier.

**Étape 1 : $x$ est un entier positif pair.** Si $x < 0$, le nombre $2^x$ est strictement compris entre $0$ et $1$, et $x^2 + 25$ est un entier, donc la somme n'est pas un entier. Ainsi $x \geqslant 0$. Pour $x = 0$, on trouve $26$, qui n'est pas un cube.

Si $x \geqslant 1$ est impair, $2^x$ est pair, $x^2$ est impair et $25$ est impair, donc $p^3$ est pair. Alors $p = 2$ et $p^3 = 8$, alors que $2^x + x^2 + 25 > 25$. C'est impossible. Donc $x$ est pair et $x \geqslant 2$.

Dans ce cas $p^3 = 2^x + x^2 + 25$ est impair et au moins égal à $4 + 4 + 25 = 33$, donc $p \neq 2$ et $p \neq 3$ (car $3^3 = 27 < 33$).

**Étape 2 : $x$ est un multiple de $6$.** Comme $x$ est pair, $2^x = 4^{x/2}$, et comme $4 = 3 + 1$, toute puissance de $4$ a pour reste $1$ dans la division par $3$. Le nombre $25$ a aussi pour reste $1$.

Si $x$ n'était pas un multiple de $3$, on aurait $x = 3q + 1$ ou $x = 3q + 2$, et dans les deux cas $x^2$ aurait pour reste $1$ dans la division par $3$. La somme $2^x + x^2 + 25$ aurait alors pour reste $1 + 1 + 1 = 3$, c'est-à-dire $0$ : ce serait un multiple de $3$. Alors $3$ diviserait $p^3 = p \times p \times p$, donc $3$ diviserait $p$ (un nombre premier qui divise un produit divise l'un des facteurs), et comme $p$ est premier, $p = 3$, ce qui est exclu.

Donc $x$ est un multiple de $3$. Comme il est pair, c'est un multiple de $6$ : $x = 6z$ avec $z \geqslant 1$ entier.

**Étape 3 : le cas $z = 1$.** Pour $x = 6$, on trouve $2^6 + 36 + 25 = 64 + 36 + 25 = 125 = 5^3$, et $5$ est premier. La valeur $x = 6$ convient.

**Étape 4 : le cas $z \geqslant 2$.** Posons $A = 4^z$, de sorte que $2^x = 2^{6z} = (4^z)^3 = A^3$ et
$$2^x + x^2 + 25 = A^3 + 36z^2 + 25.$$

- Ce nombre est strictement plus grand que $A^3$.
- Montrons qu'il est strictement plus petit que $(A+1)^3 = A^3 + 3A^2 + 3A + 1$. D'abord, $4^z \geqslant 4z$ pour tout $z \geqslant 1$ : c'est vrai pour $z = 1$, et si $4^z \geqslant 4z$, alors $4^{z+1} = 4 \times 4^z \geqslant 16z \geqslant 4z + 4$. En élevant au carré, $A^2 = (4^z)^2 \geqslant 16z^2$, donc
$$3A^2 \geqslant 48z^2 = 36z^2 + 12z^2 \geqslant 36z^2 + 48 > 36z^2 + 25$$
car $z \geqslant 2$. A fortiori $3A^2 + 3A + 1 > 36z^2 + 25$.

Le nombre $2^x + x^2 + 25$ est donc strictement compris entre les deux cubes consécutifs $A^3$ et $(A+1)^3$. Ce n'est pas un cube.

**Conclusion.** **Le seul entier qui convient est $x = 6$**, pour lequel $2^6 + 6^2 + 25 = 125 = 5^3$.
