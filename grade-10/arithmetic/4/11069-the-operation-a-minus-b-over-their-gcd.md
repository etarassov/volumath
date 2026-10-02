---
id: "11069"
title: "Diviser a − b par PGCD(a, b)"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, nombres-premiers, decomposition-en-facteurs-premiers, nombres-premiers-entre-eux, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 5 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Pour deux entiers strictement positifs $a$ et $b$, on pose
$$a \star b = \frac{a - b}{\mathrm{PGCD}(a, b)} .$$

Trouver tous les entiers $n \geqslant 1$ tels que, pour tout entier $m$ avec $1 \leqslant m < n$, le nombre $n \star m$ soit premier avec $n$.

## Hints

1. Teste les petites valeurs de $n$. Par exemple, pour $n = 6$, calcule $6 \star 1$, $6 \star 2$, … , $6 \star 5$. Quels $n$ entre $1$ et $12$ conviennent ?
2. Tu dois deviner que les bons $n$ sont $1$ et les puissances d'un nombre premier. Pour $n = p^k$, écris $m = p^j \times \ell$ avec $\ell$ non divisible par $p$, et calcule $n \star m$.
3. Si $n$ a au moins deux facteurs premiers différents, appelle $p$ le plus petit et écris $n = p^k \times \ell$. Cherche un $m$ tel que $n - m$ soit une puissance de $p$.

## Solution

**Réponse :** $n = 1$ et les puissances d'un nombre premier, $n = p^k$ avec $p$ premier et $k \geqslant 1$.

Pour $1 \leqslant m < n$, le nombre $n \star m$ est un entier strictement positif, car $\mathrm{PGCD}(n, m)$ divise $n$ et $m$, donc divise $n - m > 0$. Dire que $n \star m$ est premier avec $n$, c'est dire qu'aucun nombre premier ne divise à la fois $n \star m$ et $n$.

**Étape 1 : $n = 1$ et les puissances de nombres premiers conviennent.**

Pour $n = 1$, il n'y a aucun entier $m$ à tester, donc la condition est vraie.

Soit $n = p^k$ avec $p$ premier et $k \geqslant 1$, et soit $m$ avec $1 \leqslant m < n$. Écrivons $m = p^j \times \ell$, où $p^j$ est la plus grande puissance de $p$ qui divise $m$, de sorte que $p$ ne divise pas $\ell$. Comme $p^j \leqslant m < p^k$, on a $j < k$.

Les diviseurs de $p^k$ sont les puissances de $p$. Parmi elles, $p^j$ divise $m$ mais $p^{j+1}$ ne le divise pas, donc $\mathrm{PGCD}(n, m) = p^j$. Alors
$$n \star m = \frac{p^k - p^j \ell}{p^j} = p^{k - j} - \ell .$$
Comme $k - j \geqslant 1$, le nombre $p$ divise $p^{k-j}$, mais il ne divise pas $\ell$. Donc $p$ ne divise pas $n \star m$. Or $p$ est le seul facteur premier de $n$ : les nombres $n \star m$ et $n$ sont premiers entre eux.

**Étape 2 : les autres $n$ ne conviennent pas.**

Soit $n$ un entier qui a au moins deux facteurs premiers différents. Notons $p$ le plus petit d'entre eux, et écrivons $n = p^k \times \ell$ avec $k \geqslant 1$ et $\ell$ non divisible par $p$. Le nombre $\ell$ est plus grand que $1$, et tous ses facteurs premiers sont plus grands que $p$, donc $\ell > p$. Par conséquent
$$p^{k+1} = p^k \times p < p^k \times \ell = n .$$
On choisit $m = n - p^{k+1}$, qui vérifie bien $1 \leqslant m < n$.

Un nombre divise à la fois $n$ et $m$ si et seulement s'il divise à la fois $n$ et $n - m = p^{k+1}$. Donc
$$\mathrm{PGCD}(n, m) = \mathrm{PGCD}\left(p^k \ell,\ p^{k+1}\right) = p^k ,$$
car $p$ ne divise pas $\ell$. On en déduit
$$n \star m = \frac{p^{k+1}}{p^k} = p ,$$
qui divise $n$. Les nombres $n \star m$ et $n$ ne sont pas premiers entre eux, et $n$ ne convient pas.

Par exemple, pour $n = 12 = 2^2 \times 3$, on prend $m = 12 - 8 = 4$ : $12 \star 4 = 8 / 4 = 2$, qui divise $12$.

**Conclusion.** Les entiers cherchés sont $n = 1$ et les puissances de nombres premiers $p^k$ avec $k \geqslant 1$.
