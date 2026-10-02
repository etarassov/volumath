---
id: "11041"
title: "Quand 21 divise-t-il 2^(2ⁿ) + 2ⁿ + 1 ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [puissances, restes, periodicite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 4, repris tel quel en Exercices Seniors, exercice 11 ; corrigé 2023-03_corrige.pdf. L'exposant est bien 2 puissance n (le texte extrait du PDF le fait passer pour 2n). Coquille du corrigé : dans le calcul modulo 7, il écrit « (mod 3) » à la place de « (mod 7) »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Déterminer tous les entiers naturels $n$ tels que $21$ divise

$$2^{2^n} + 2^n + 1 .$$

(L'exposant du premier terme est $2^n$ : par exemple, pour $n = 3$, le nombre vaut $2^8 + 2^3 + 1$.)

## Hints

1. Calcule le nombre pour $n = 0, 1, 2, 3$. Lequel est divisible par $21$ ?
2. $21 = 3 \times 7$ : le nombre est divisible par $21$ exactement quand il est divisible par $3$ et par $7$. Traite les deux séparément.
3. Quels sont les restes des puissances de $2$ dans la division par $3$ ? Et dans la division par $7$ ? Utilise $4 = 3 + 1$ et $8 = 7 + 1$.
4. Pour le reste de $2^{2^n}$ dans la division par $7$, il faut connaître le reste de l'exposant $2^n$ dans la division par $3$.

## Solution

**Réponse :** les entiers $n$ qui conviennent sont ceux de la forme $n = 6j + 2$, avec $j$ entier naturel :
$n = 2, 8, 14, 20, \ldots$

Notons $A_n = 2^{2^n} + 2^n + 1$. Comme $21 = 3 \times 7$ avec $3$ et $7$ premiers, $21$ divise $A_n$
exactement quand $3$ divise $A_n$ et $7$ divise $A_n$.

**Les restes des puissances de 2.**

* Pour tout entier $t$, le nombre $4^t - 1$ est divisible par $4 - 1 = 3$ (car
  $x^t - 1 = (x - 1)(x^{t-1} + \cdots + x + 1)$). Donc $2^{2t} = 4^t$ a pour reste $1$ dans la division par
  $3$, et $2^{2t+1} = 2 \times 4^t$ a pour reste $2$. Autrement dit, **une puissance paire de $2$ a pour
  reste $1$ modulo $3$, une puissance impaire a pour reste $2$.**
* De même, $8^t - 1$ est divisible par $8 - 1 = 7$. Donc $2^{3t} = 8^t$, $2^{3t+1} = 2 \times 8^t$ et
  $2^{3t+2} = 4 \times 8^t$ ont pour restes respectifs $1$, $2$ et $4$ dans la division par $7$. **Le reste
  de $2^k$ modulo $7$ ne dépend que du reste de $k$ dans la division par $3$.**

On utilise aussi que le reste d'une somme se calcule en ajoutant les restes (puis en reprenant le reste du
total).

**Le cas $n = 0$.** $A_0 = 2^1 + 1 + 1 = 4$, qui n'est pas divisible par $21$.

**La divisibilité par 3, pour $n \geqslant 1$.** L'exposant $2^n$ est pair, donc $2^{2^n}$ a pour reste
$1$ modulo $3$.

* Si $n$ est pair, $2^n$ a pour reste $1$, et $A_n$ a le même reste que $1 + 1 + 1 = 3$ : il est divisible
  par $3$.
* Si $n$ est impair, $2^n$ a pour reste $2$, et $A_n$ a le même reste que $1 + 2 + 1 = 4$, c'est-à-dire
  $1$ : il n'est pas divisible par $3$.

Il faut donc que $n$ soit pair, $n \geqslant 2$.

**La divisibilité par 7, pour $n$ pair, $n \geqslant 2$.** Comme $n$ est pair, $2^n$ a pour reste $1$
modulo $3$ : on peut écrire $2^n = 3t + 1$. D'après le second point, $2^{2^n} = 2^{3t+1}$ a pour reste $2$
modulo $7$. Selon le reste de $n$ modulo $3$, le terme $2^n$ a pour reste $1$, $2$ ou $4$ modulo $7$, et :

| $n$ s'écrit | reste de $2^n$ modulo 7 | $A_n$ a le même reste que | divisible par 7 ? |
|---|---|---|---|
| $3q$ | $1$ | $2 + 1 + 1 = 4$ | non |
| $3q + 1$ | $2$ | $2 + 2 + 1 = 5$ | non |
| $3q + 2$ | $4$ | $2 + 4 + 1 = 7$ | oui |

Il faut donc que $n$ s'écrive $3q + 2$.

**Conclusion.** $21$ divise $A_n$ exactement quand $n$ est pair, $n \geqslant 2$, et $n = 3q + 2$. Or
$3q + 2$ est pair exactement quand $q$ est pair, $q = 2j$, ce qui donne $n = 6j + 2$ (et alors
$n \geqslant 2$ automatiquement).

Par exemple, pour $n = 2$ : $A_2 = 2^4 + 2^2 + 1 = 16 + 4 + 1 = 21$.

Les entiers cherchés sont donc exactement les $n = 6j + 2$, avec $j \geqslant 0$.

## Going further

Pour quels entiers naturels $n$ le nombre $2^{2^n} + 2^n + 1$ est-il divisible par $3$ seulement ? Par $7$
seulement ?
