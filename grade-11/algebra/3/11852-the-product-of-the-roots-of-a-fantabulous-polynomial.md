---
id: "11852"
title: "Le produit des racines d'un polynôme fantabuleux"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [polynome, racines, produit, inegalite, optimisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Seniors, exercice 13 ; corrigé 2023-07_corrige-envoi-5.pdf. L'énoncé original dit « P a 2023 racines r1, …, r2023 (non nécessairement distinctes) dans [0, 1] » ; on l'écrit directement sous forme factorisée."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

On dit qu'un polynôme $P$ est **fantabuleux** s'il s'écrit

$$P(X) = (X - r_1)(X - r_2)\cdots(X - r_{2023}),$$

où $r_1, r_2, \ldots, r_{2023}$ sont des réels de l'intervalle $[0, 1]$, pas forcément distincts, et si de plus

$$P(0) + P(1) = 0.$$

Déterminer la plus grande valeur possible du produit $r_1 r_2 \cdots r_{2023}$ pour un polynôme fantabuleux.

## Hints

1. Calculer $P(0)$ et $P(1)$ en fonction des $r_k$. Attention au signe : $2023$ est impair.
2. La condition devient une égalité entre deux produits. Multiplier le produit cherché par lui-même.
3. Pour un réel $r$, comparer $r(1 - r)$ et $\frac{1}{4}$.

## Solution

Notons $\Pi = r_1 r_2 \cdots r_{2023}$ le produit des racines. La réponse est $\Pi = \left(\frac{1}{2}\right)^{2023} = 2^{-2023}$.

**Traduire la condition.** En remplaçant $X$ par $0$, chacun des $2023$ facteurs devient $-r_k$. Comme $2023$ est impair, le produit de $2023$ signes moins est un signe moins :

$$P(0) = (-r_1)(-r_2)\cdots(-r_{2023}) = -\,r_1 r_2 \cdots r_{2023} = -\Pi.$$

En remplaçant $X$ par $1$ : $P(1) = (1 - r_1)(1 - r_2)\cdots(1 - r_{2023})$. La condition $P(0) + P(1) = 0$ s'écrit donc

$$(1 - r_1)(1 - r_2)\cdots(1 - r_{2023}) = \Pi.$$

**Une majoration.** Pour tout réel $r$, on a $\frac{1}{4} - r(1 - r) = r^2 - r + \frac{1}{4} = \left(r - \frac{1}{2}\right)^2 \geqslant 0$, donc

$$r(1 - r) \leqslant \frac{1}{4},$$

avec égalité seulement pour $r = \frac{1}{2}$.

Multiplions $\Pi$ par lui-même, en écrivant le second facteur grâce à la condition :

$$\Pi^2 = \Pi \times \Pi = (r_1 r_2 \cdots r_{2023})((1 - r_1)(1 - r_2)\cdots(1 - r_{2023})) = \prod_{k=1}^{2023} r_k(1 - r_k).$$

Chaque facteur $r_k(1 - r_k)$ est positif ou nul (car $0 \leqslant r_k \leqslant 1$) et au plus égal à $\frac{1}{4}$. Un produit de nombres positifs augmente quand on augmente chacun d'eux, donc

$$\Pi^2 \leqslant \left(\frac{1}{4}\right)^{2023} = \left(\left(\frac{1}{2}\right)^{2023}\right)^2.$$

Comme $\Pi \geqslant 0$, on peut prendre la racine carrée : $\Pi \leqslant \left(\frac{1}{2}\right)^{2023}$.

**Cette valeur est atteinte.** Prenons toutes les racines égales à $\frac{1}{2}$, c'est-à-dire $P(X) = \left(X - \frac{1}{2}\right)^{2023}$. Les racines sont bien dans $[0, 1]$, et

$$P(0) + P(1) = \left(-\frac{1}{2}\right)^{2023} + \left(\frac{1}{2}\right)^{2023} = -\left(\frac{1}{2}\right)^{2023} + \left(\frac{1}{2}\right)^{2023} = 0.$$

Ce polynôme est fantabuleux, et le produit de ses racines vaut $\left(\frac{1}{2}\right)^{2023}$.

**Conclusion.** La plus grande valeur possible de $r_1 r_2 \cdots r_{2023}$ est $2^{-2023}$.

## Going further

Une fois établie l'égalité $(1 - r_1)\cdots(1 - r_{2023}) = r_1 \cdots r_{2023}$, la majoration utilise seulement le fait que, pour deux nombres positifs $u$ et $v$ de somme $1$, le produit $uv$ est au plus $\frac{1}{4}$. Ce produit est le plus grand quand $u = v$. C'est une idée qui sert souvent : un produit de nombres positifs de somme fixée est le plus grand quand ils sont égaux.
