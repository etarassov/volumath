---
id: "12811"
title: "Quatre réels liés par des produits"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test junior, exercice 1 ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Trouver tous les quadruplets de réels $(a, b, c, d)$ tels que

$$a = bc + cd, \qquad b = cd + da, \qquad c = da + ab, \qquad d = ab + bc.$$

## Hints

1. Factorisez chacun des membres de droite.
2. Additionnez la première et la troisième égalité. Que remarquez-vous ?
3. Attention : pour simplifier par $a + c$, il faut que $a + c \neq 0$. Traitez à part le cas $a + c = 0$.

## Solution

La réponse : il y a exactement deux quadruplets, $(0, 0, 0, 0)$ et $\left(\frac{1}{2}, \frac{1}{2}, \frac{1}{2}, \frac{1}{2}\right)$.

### Factoriser

Soit $(a, b, c, d)$ une solution. En factorisant, les quatre égalités deviennent

$$a = c\,(b + d), \qquad b = d\,(a + c), \qquad c = a\,(b + d), \qquad d = b\,(a + c).$$

En additionnant la première et la troisième, puis la deuxième et la quatrième, on obtient

$$a + c = (a + c)(b + d) \qquad \text{et} \qquad b + d = (b + d)(a + c).$$

### Premier cas : a + c = 0

Alors $b = d\,(a + c) = 0$ et $d = b\,(a + c) = 0$, donc $b + d = 0$. Ensuite $a = c\,(b + d) = 0$ et $c = a\,(b + d) = 0$. On trouve $(a, b, c, d) = (0, 0, 0, 0)$.

### Second cas : a + c ≠ 0

On peut diviser la première égalité $a + c = (a + c)(b + d)$ par $a + c$ : on obtient $b + d = 1$. En particulier $b + d \neq 0$, et la seconde égalité, divisée par $b + d$, donne $a + c = 1$.

Les égalités factorisées deviennent alors $a = c$, $b = d$, $c = a$ et $d = b$. Avec $a + c = 1$ et $b + d = 1$, on obtient $a = b = c = d = \frac{1}{2}$.

### Vérification

Le quadruplet $(0, 0, 0, 0)$ convient évidemment. Pour $a = b = c = d = \frac{1}{2}$, chaque membre de droite vaut $\frac{1}{4} + \frac{1}{4} = \frac{1}{2}$, ce qui convient aussi.

**Conclusion : les solutions sont $(0, 0, 0, 0)$ et $\left(\frac{1}{2}, \frac{1}{2}, \frac{1}{2}, \frac{1}{2}\right)$.**

## Going further

1. Un raisonnement trop rapide fait disparaître la solution $(0, 0, 0, 0)$. À quel endroit ?
