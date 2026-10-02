---
id: "10648"
title: "Une inégalité avec les produits de voisins"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, somme-de-carres, moyenne, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 13 ; corrigé 2023-01_corrige-envoi-2.pdf. Le corrigé écrit (x2 + x3)³ au lieu de (x2 + x3)², deux fois ; c'est une coquille. Il conclut par l'inégalité de Cauchy-Schwarz, remplacée ici par un lemme démontré."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier et soient $x_1, \ldots, x_n$ des réels. Montrer que

$$2(x_1 + \cdots + x_n)^2 \leqslant n\left(x_1^2 + \cdots + x_n^2 + x_1 x_2 + x_2 x_3 + \cdots + x_{n-1} x_n + x_n x_1\right)$$

## Hints

1. Le membre de droite contient les produits $x_1 x_2$, $x_2 x_3$, …, $x_n x_1$ de deux nombres voisins (en tournant : $x_n$ et $x_1$ sont aussi voisins). Développe $(x_1 + x_2)^2 + (x_2 + x_3)^2 + \cdots + (x_n + x_1)^2$.
2. Pose $y_1 = x_1 + x_2$, $y_2 = x_2 + x_3$, …, $y_n = x_n + x_1$. Que vaut $y_1 + \cdots + y_n$ ? Réécris l'inégalité avec les $y_i$.
3. Pour montrer que $(y_1 + \cdots + y_n)^2 \leqslant n(y_1^2 + \cdots + y_n^2)$, note $m$ la moyenne des $y_i$, et développe $(y_1 - m)^2 + \cdots + (y_n - m)^2$, qui est positif.

## Solution

**Étape 1. On réécrit le membre de droite.**

Posons $y_1 = x_1 + x_2$, $y_2 = x_2 + x_3$, …, $y_{n-1} = x_{n-1} + x_n$ et $y_n = x_n + x_1$. Chaque $x_i$ apparaît dans exactement deux carrés $y_j^2$, et chaque produit de voisins apparaît dans exactement un. Donc

$$y_1^2 + \cdots + y_n^2 = 2\left(x_1^2 + \cdots + x_n^2 + x_1 x_2 + x_2 x_3 + \cdots + x_n x_1\right)$$

Le membre de droite de l'énoncé vaut donc $\frac{n}{2}(y_1^2 + \cdots + y_n^2)$.

**Étape 2. On réécrit le membre de gauche.**

Chaque $x_i$ apparaît dans exactement deux des $y_j$, donc $y_1 + \cdots + y_n = 2(x_1 + \cdots + x_n)$. Le membre de gauche de l'énoncé vaut donc $2 \times \frac{(y_1 + \cdots + y_n)^2}{4} = \frac{1}{2}(y_1 + \cdots + y_n)^2$.

L'inégalité à montrer devient, après multiplication par $2$ :

$$(y_1 + \cdots + y_n)^2 \leqslant n(y_1^2 + \cdots + y_n^2)$$

**Étape 3. Un lemme sur des réels quelconques.**

*Lemme.* Pour tous réels $y_1, \ldots, y_n$, on a $(y_1 + \cdots + y_n)^2 \leqslant n(y_1^2 + \cdots + y_n^2)$.

*Preuve.* Notons $S = y_1 + \cdots + y_n$ et $m = \frac{S}{n}$ la moyenne. Une somme de carrés est positive, donc

$$0 \leqslant (y_1 - m)^2 + \cdots + (y_n - m)^2 = (y_1^2 + \cdots + y_n^2) - 2m(y_1 + \cdots + y_n) + n m^2$$

Or $2mS = \frac{2S^2}{n}$ et $nm^2 = \frac{S^2}{n}$. Il reste $0 \leqslant (y_1^2 + \cdots + y_n^2) - \frac{S^2}{n}$, et en multipliant par $n > 0$, on obtient le lemme.

**Conclusion : en appliquant le lemme aux nombres $y_1, \ldots, y_n$ de l'étape 1, on obtient l'inégalité demandée.**

## Going further

D'après la preuve du lemme, quand y a-t-il égalité ? Traduis la condition sur les $x_i$, et trouve, pour $n = 4$, des réels $x_1, x_2, x_3, x_4$ qui ne sont pas tous égaux et qui donnent une égalité.
