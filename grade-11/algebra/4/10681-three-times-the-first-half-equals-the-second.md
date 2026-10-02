---
id: "10681"
title: "Trois fois la première moitié égale la seconde"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [suite, entiers, suite-croissante, nombres-impairs, plus-petit-contre-exemple]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 13 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé se trompe dans la preuve d'unicité : il écarte le cas a(2n+1) = 4n, a(2n+2) = 4n + 4 en disant qu'il contredit a(2n+3) + a(2n+4) = 8n + 12, alors que 4n + 5 et 4n + 7 conviennent. La solution ci-dessous démontre d'abord que deux termes consécutifs diffèrent d'au moins 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Trouver toutes les suites strictement croissantes d'entiers $a_1, a_2, \ldots, a_n, \ldots$ telles que $a_1 = 1$ et, pour tout entier $n \geqslant 1$,

$$3(a_1 + a_2 + \cdots + a_n) = a_{n+1} + a_{n+2} + \cdots + a_{2n}$$

## Hints

1. Calcule $a_2$, puis cherche les valeurs possibles de $a_3$ et $a_4$. Quelle suite connue devines-tu ?
2. Écris l'égalité pour $n = k + 1$ et pour $n = k$, puis soustrais-les. Tu dois trouver $a_{2k+1} + a_{2k+2} = 4a_{k+1}$.
3. Dans la paire $a_{2k+1} < a_{2k+2}$ de somme $4a_{k+1}$, le plus petit est au plus $2a_{k+1} - 1$ et le plus grand au moins $2a_{k+1} + 1$. Utilise ces deux remarques pour montrer que $a_{k+1} - a_k \geqslant 2$ pour tout $k$.
4. Suppose que la suite s'écarte de ta conjecture, et regarde le premier indice où cela arrive. Utilise la relation de l'indication 2 et l'écart de l'indication 3.

## Solution

On note $E(n)$ l'égalité de l'énoncé pour l'entier $n$. On va montrer que la seule solution est la suite des nombres impairs, $a_n = 2n - 1$.

**Étape 1. Une relation entre paires.**

Écrivons $E(k + 1)$ et $E(k)$ pour un entier $k \geqslant 1$ et soustrayons-les. À gauche, il reste $3a_{k+1}$. À droite, la somme $a_{k+2} + \cdots + a_{2k+2}$ moins la somme $a_{k+1} + \cdots + a_{2k}$ donne $a_{2k+1} + a_{2k+2} - a_{k+1}$. Donc

$$a_{2k+1} + a_{2k+2} = 4a_{k+1}$$

Pour $k = 0$, cette relation s'écrit $a_1 + a_2 = 4a_1$, c'est-à-dire $a_2 = 3a_1$, et c'est exactement $E(1)$. Elle est donc vraie pour tout entier $k \geqslant 0$. En particulier $a_2 = 3$.

**Étape 2. Deux termes voisins diffèrent d'au moins $2$.**

Soit $k \geqslant 1$. Les termes sont des entiers et la suite est strictement croissante, donc chaque terme dépasse le précédent d'au moins $1$.

- La paire $a_{2k-1} < a_{2k}$ a pour somme $4a_k$, par l'étape 1. Comme $a_{2k-1} \leqslant a_{2k} - 1$, on a $4a_k \leqslant 2a_{2k} - 1$, donc $a_{2k} \geqslant 2a_k + \frac{1}{2}$, et comme ce sont des entiers, $a_{2k} \geqslant 2a_k + 1$.
- De même, la paire $a_{2k+1} < a_{2k+2}$ a pour somme $4a_{k+1}$, et $a_{2k+2} \geqslant a_{2k+1} + 1$ donne $a_{2k+1} \leqslant 2a_{k+1} - 1$.

Enfin $a_{2k+1} \geqslant a_{2k} + 1$. En mettant bout à bout :

$$2a_k + 2 \leqslant a_{2k} + 1 \leqslant a_{2k+1} \leqslant 2a_{k+1} - 1$$

Donc $2a_{k+1} - 2a_k \geqslant 3$, soit $a_{k+1} - a_k \geqslant \frac{3}{2}$, et comme ce sont des entiers, $a_{k+1} - a_k \geqslant 2$.

**Étape 3. La suite est celle des nombres impairs.**

Supposons qu'il existe un indice $m$ tel que $a_m \neq 2m - 1$, et prenons le plus petit. Comme $a_1 = 1$ et $a_2 = 3$, on a $m \geqslant 3$. Écrivons $m = 2k + 1$ ou $m = 2k + 2$, avec $k \geqslant 1$. Dans les deux cas $m > 2k$, donc $a_i = 2i - 1$ pour tout $i \leqslant 2k$. En particulier $a_{2k} = 4k - 1$ et, comme $k + 1 \leqslant 2k$, $a_{k+1} = 2k + 1$.

Par l'étape 2, $a_{2k+1} \geqslant a_{2k} + 2 = 4k + 1$ et $a_{2k+2} \geqslant a_{2k+1} + 2 \geqslant 4k + 3$. Donc

$$a_{2k+1} + a_{2k+2} \geqslant 8k + 4$$

Mais par l'étape 1, cette somme vaut exactement $4a_{k+1} = 8k + 4$. Les deux inégalités sont donc des égalités : $a_{2k+1} = 4k + 1$ et $a_{2k+2} = 4k + 3$. Ainsi $a_m = 2m - 1$, ce qui contredit le choix de $m$.

Donc $a_n = 2n - 1$ pour tout $n$.

**Étape 4. Vérification.**

La suite $a_n = 2n - 1$ est formée d'entiers, est strictement croissante et vérifie $a_1 = 1$. La somme des $n$ premiers nombres impairs vaut $n^2$ : c'est une somme de $n$ termes d'une suite arithmétique, égale à $n \times \frac{1 + (2n - 1)}{2} = n^2$. Donc

$$a_{n+1} + \cdots + a_{2n} = (a_1 + \cdots + a_{2n}) - (a_1 + \cdots + a_n) = (2n)^2 - n^2 = 3n^2 = 3(a_1 + \cdots + a_n)$$

**Conclusion : la seule suite qui convient est la suite des nombres impairs, $a_n = 2n - 1$ pour tout $n \geqslant 1$.**

## Going further

Vérifie que les dix nombres $1, 3, 5, 7, 9, 11, 12, 16, 17, 19$ forment une suite strictement croissante qui respecte les égalités $E(1)$ à $E(5)$. On ne peut donc pas conclure en regardant seulement les premiers termes : il faut un argument, comme celui de l'étape 2, qui utilise les égalités pour tous les $n$.
