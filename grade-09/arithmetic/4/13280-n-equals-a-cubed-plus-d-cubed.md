---
id: "13280"
title: "n = a³ + d³, où a est le plus petit facteur premier de n"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [diviseurs, nombres-premiers, cubes, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 14 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 2$ qui ont la propriété suivante : si $a$ désigne le plus petit diviseur premier de $n$, il existe un diviseur positif $d$ de $n$ tel que

$$n = a^3 + d^3.$$

## Hints

1. Essaie quelques valeurs. Par exemple, que se passe-t-il pour $n = 16$ ?
2. Le nombre $d$ divise $n$ et $d^3$. Que divise-t-il d'autre ?
3. Quels sont les diviseurs de $a^3$ quand $a$ est premier ? Ensuite, regarde la parité de $n$.

## Solution

Soit $n$ un entier qui convient, avec $a$ et $d$ comme dans l'énoncé.

**$d$ divise $a^3$.** Le nombre $d$ divise $n$ et divise $d^3$, donc il divise leur différence $n - d^3 = a^3$. Comme $a$ est premier, les diviseurs positifs de $a^3$ sont $1$, $a$, $a^2$ et $a^3$. Donc $d$ est l'un de ces quatre nombres.

**$d = 1$ est impossible.** On aurait $n = a^3 + 1$. Or $a$ divise $n$ et $a^3$, donc il diviserait $n - a^3 = 1$, alors que $a \geqslant 2$.

**$a = 2$.** Il reste $d = a$, $d = a^2$ ou $d = a^3$. Dans chaque cas $d$ est un produit de facteurs égaux à $a$, donc $d$ a la même parité que $a$, et $d^3$ la même parité que $a^3$. La somme $n = a^3 + d^3$ de deux nombres de même parité est paire. Donc $2$ divise $n$, et le plus petit diviseur premier de $n$ est $a = 2$. Ainsi $d$ vaut $2$, $4$ ou $8$.

**Vérification des trois candidats.**

- $d = 2$ : $n = 8 + 8 = 16$. Son plus petit diviseur premier est bien $2$, et $2$ divise $16$.
- $d = 4$ : $n = 8 + 64 = 72 = 4 \times 18$. Son plus petit diviseur premier est $2$, et $4$ divise $72$.
- $d = 8$ : $n = 8 + 512 = 520 = 8 \times 65$. Son plus petit diviseur premier est $2$, et $8$ divise $520$.

**Conclusion.** Les entiers cherchés sont $16$, $72$ et $520$.
