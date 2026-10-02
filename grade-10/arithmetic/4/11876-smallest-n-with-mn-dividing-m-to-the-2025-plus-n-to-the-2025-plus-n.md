---
id: "11876"
title: "Le plus petit n tel que mn divise m²⁰²⁵ + n²⁰²⁵ + n"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, nombres-premiers, decomposition-en-facteurs-premiers, puissances, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 5 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Trouver le plus petit entier $n \geqslant 2$ pour lequel il existe un entier $m \geqslant 1$ tel que $mn$ divise
$$m^{2025} + n^{2025} + n.$$

## Hints

1. Soit $p$ un nombre premier qui divise $n$. Montrer que $p$ divise aussi $m$.
2. On note $k$ l'exposant de $p$ dans la décomposition de $n$ en facteurs premiers : $p^k$ divise $n$, mais pas $p^{k+1}$. Montrer que $p^{k+1}$ divise $m^{2025} + n$.
3. Que se passe-t-il si $k + 1 \leqslant 2025$ ? En déduire une minoration de $n$, puis chercher un exemple qui l'atteint.

## Solution

**Un rappel.** Les nombres premiers qui apparaissent dans la décomposition de $m^{2025}$ sont exactement ceux de la décomposition de $m$ (chaque exposant est multiplié par $2025$). Donc si un nombre premier $p$ divise $m^{2025}$, il divise $m$.

**Étape 1 : chaque facteur premier de $n$ divise $m$.** Soient $n$ et $m$ comme dans l'énoncé, et $p$ un nombre premier qui divise $n$ (il en existe un car $n \geqslant 2$). Alors $p$ divise $mn$, donc divise $m^{2025} + n^{2025} + n$. Il divise aussi $n^{2025} + n$, donc il divise la différence $m^{2025}$. Par le rappel, **$p$ divise $m$**.

**Étape 2 : l'exposant de $p$ dans $n$ est au moins $2025$.** On note $k \geqslant 1$ l'exposant de $p$ dans $n$ : $p^k$ divise $n$ et $p^{k+1}$ ne divise pas $n$.

- Comme $p$ divise $m$ et $p^k$ divise $n$, le nombre $p^{k+1}$ divise $mn$, donc divise $m^{2025} + n^{2025} + n$.
- Le nombre $p^{2025k}$ divise $n^{2025}$, et $2025k \geqslant k + 1$, donc $p^{k+1}$ divise $n^{2025}$.
- Par différence, **$p^{k+1}$ divise $m^{2025} + n$.**

Supposons $k + 1 \leqslant 2025$. Comme $p$ divise $m$, le nombre $p^{2025}$ divise $m^{2025}$, donc $p^{k+1}$ aussi. Par différence, $p^{k+1}$ divise $(m^{2025} + n) - m^{2025} = n$, ce qui contredit le choix de $k$.

Donc $k \geqslant 2025$ : le nombre $p^{2025}$ divise $n$, et
$$n \geqslant p^{2025} \geqslant 2^{2025}.$$

**Étape 3 : $n = 2^{2025}$ convient.** On prend $m = 2$. Alors $mn = 2^{2026}$ et
$$m^{2025} + n^{2025} + n = 2^{2025} + 2^{2025 \times 2025} + 2^{2025} = 2^{2026} + 2^{2025 \times 2025}.$$
Les deux termes sont des multiples de $2^{2026}$, car $2025 \times 2025 \geqslant 2026$. Donc $mn$ divise bien $m^{2025} + n^{2025} + n$.

**Conclusion.** Le plus petit entier $n \geqslant 2$ qui convient est **$n = 2^{2025}$**.

## Going further

L'étape 2 donne une condition **nécessaire** : chaque nombre premier de la décomposition de $n$ y apparaît avec un exposant au moins égal à $2025$. Elle n'est pas suffisante. Par exemple $n = 2^{2026}$ ne convient pour aucun $m$.

En effet, on écrit $m = 2^a \times t$ avec $t$ impair et $a \geqslant 1$ (l'étape 1 impose $m$ pair), et on pose $E = 2025 \times 2026$, de sorte que $n^{2025} = 2^E$. Il faudrait que $2^{a + 2026}$ divise
$$m^{2025} + n^{2025} + n = 2^{2025a}\, t^{2025} + 2^{E} + 2^{2026}.$$

- Si $a = 1$, ce nombre vaut $2^{2025}\left(t^{2025} + 2^{E - 2025} + 2\right)$, et la parenthèse est impaire : il n'est même pas divisible par $2^{2026}$.
- Si $a \geqslant 2$, il vaut $2^{2026}\left(2^{2025a - 2026}\, t^{2025} + 2^{E - 2026} + 1\right)$, et la parenthèse est impaire : il n'est pas divisible par $2^{2027}$.

En revanche, on peut vérifier que $n = 3^{2025}$ convient, avec $m = 6$.
