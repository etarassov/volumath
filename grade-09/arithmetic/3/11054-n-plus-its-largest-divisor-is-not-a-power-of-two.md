---
id: "11054"
title: "n + d n'est jamais une puissance de 2"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [diviseurs, puissances, nombres-premiers, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 2, repris tel quel en Exercices Seniors, exercice 11 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On note $d$ le plus grand diviseur de $n$ différent de $n$ lui-même. Par exemple, pour $n = 12$, on a $d = 6$.

On suppose que $d > 1$, autrement dit que $n$ n'est pas un nombre premier.

Démontrer que $n + d$ n'est pas une puissance de $2$.

## Hints

1. Calcule $n + d$ pour $n = 4, 6, 8, 9, 12$.
2. Appelle $s$ le plus petit diviseur de $n$ plus grand que $1$. Explique pourquoi $s$ est premier et pourquoi $d = \dfrac{n}{s}$.
3. Écris $n + d$ comme un produit : $n + d = d \times (s + 1)$. Si c'était une puissance de $2$, que pourrait-on dire de $d$ ?
4. Si $d$ est pair, alors $n$ est pair. Que vaut alors $s$ ?

## Solution

**Étape 1 : $d = \dfrac{n}{s}$, où $s$ est le plus petit diviseur premier de $n$.**

Les diviseurs de $n$ vont par paires : si $e$ divise $n$, alors $\dfrac{n}{e}$ divise aussi $n$. De plus $\dfrac{n}{e}$ est différent de $n$ exactement quand $e$ est différent de $1$.

Donc les diviseurs de $n$ autres que $n$ sont les nombres $\dfrac{n}{e}$, où $e$ parcourt les diviseurs de $n$ autres que $1$. Le plus grand d'entre eux s'obtient avec le plus petit $e$. Notons $s$ le plus petit diviseur de $n$ plus grand que $1$ : alors
$$d = \frac{n}{s}, \qquad \text{c'est-à-dire} \qquad n = s \times d .$$

Ce nombre $s$ est premier. Sinon il s'écrirait $s = u \times v$ avec $1 < u < s$, et $u$ serait un diviseur de $n$ plus grand que $1$ et plus petit que $s$, ce qui est impossible.

Exemples : pour $n = 12$, on a $s = 2$ et $d = 6$ ; pour $n = 9$, on a $s = 3$ et $d = 3$.

**Étape 2 : une factorisation.**

$$n + d = s\,d + d = d\,(s + 1) .$$

**Étape 3 : raisonnement par l'absurde.**

Supposons que $n + d = 2^m$ pour un certain entier $m$.

Alors $d$ divise $2^m$. Dans la décomposition de $d$ en facteurs premiers, chaque facteur premier divise aussi $2^m$, donc c'est $2$ : le nombre $d$ est une puissance de $2$. Comme $d > 1$, il vaut $2$, $4$, $8$, etc., donc **$d$ est pair**.

Alors $n = s \times d$ est pair lui aussi. Son plus petit diviseur plus grand que $1$ est donc $s = 2$.

Mais alors $n + d = d\,(2 + 1) = 3d$ est un multiple de $3$. Or une puissance de $2$ n'est jamais un multiple de $3$ : son seul facteur premier est $2$. C'est une contradiction.

**Conclusion.** Si $n$ n'est pas premier, alors $n + d$ n'est jamais une puissance de $2$.

On voit bien le phénomène sur les exemples : pour $n = 8$, on a $d = 4$ et $n + d = 12 = 3 \times 4$ ; pour $n = 12$, on a $n + d = 18$.

**Pourquoi l'hypothèse $d > 1$ est nécessaire.** Si $n$ est premier, alors $d = 1$ et $n + d = n + 1$, qui peut être une puissance de $2$ : $3 + 1 = 4$, $7 + 1 = 8$, $31 + 1 = 32$.

## Going further

Pour quels entiers $n \geqslant 2$ non premiers le nombre $n + d$ est-il une puissance de $3$ ?

*Réponse :* exactement pour $n = 2 \times 3^j$ avec $j \geqslant 1$, c'est-à-dire $n = 6, 18, 54, \ldots$ En effet, si $d\,(s + 1) = 3^m$, alors $d$ et $s + 1$ sont des puissances de $3$. Comme $d > 1$, $d$ est un multiple de $3$, donc $3$ divise $n$ et $s$ vaut $2$ ou $3$. Le cas $s = 3$ donne $s + 1 = 4$, qui n'est pas une puissance de $3$. Donc $s = 2$ et $n = 2d$ avec $d = 3^j$. Réciproquement, pour $n = 2 \times 3^j$, on a $s = 2$, $d = 3^j$ et $n + d = 3^{j+1}$.
