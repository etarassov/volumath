---
id: "8724"
title: "Une chaîne de nombres qui décroissent"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalites, telescopage, regroupement, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, entraînement de mi-parcours"
  reference: "poly_valbonne_2024.pdf, Groupe A, entraînement de mi-parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient $x_0, x_1, \ldots, x_n$ des réels rangés dans l'ordre strictement décroissant :

$$x_0 > x_1 > x_2 > \cdots > x_n .$$

Montrer que

$$x_0 + \frac{1}{x_0 - x_1} + \frac{1}{x_1 - x_2} + \cdots + \frac{1}{x_{n-1} - x_n} \;\geqslant\; x_n + 2n .$$

## Hints

1. Fais passer $x_n$ à gauche. Il faut montrer que $\;(x_0 - x_n) + \displaystyle\sum \frac{1}{x_{i-1}-x_i} \geqslant 2n$.
2. Le nombre $x_0 - x_n$ ne demande qu'à être cassé en morceaux. Écris-le comme une somme télescopique.
3. Note $d_i = x_{i-1} - x_i$. Ces nombres sont strictement positifs. Réécris tout en fonction des $d_i$ seulement.
4. Il ne reste plus qu'une inégalité que tu connais : pour $d > 0$, $\;d + \dfrac{1}{d} \geqslant 2$. Démontre-la si ce n'est pas déjà fait.

## Solution

### Un outil : $d + \frac{1}{d} \geqslant 2$

Pour tout réel $d > 0$,

$$d + \frac{1}{d} - 2 = \frac{d^2 - 2d + 1}{d} = \frac{(d-1)^2}{d} \;\geqslant\; 0 ,$$

puisque le numérateur est un carré et le dénominateur est strictement positif. Donc

$$d + \frac{1}{d} \;\geqslant\; 2 ,$$

avec égalité si et seulement si $d = 1$.

### Le télescopage

Posons, pour $i = 1, 2, \ldots, n$,

$$d_i = x_{i-1} - x_i .$$

La suite étant strictement décroissante, chaque $d_i$ est **strictement positif**.

La somme de tous les $d_i$ se télescope : les termes intermédiaires s'annulent deux à deux.

$$d_1 + d_2 + \cdots + d_n = (x_0 - x_1) + (x_1 - x_2) + \cdots + (x_{n-1} - x_n) = x_0 - x_n .$$

### On regroupe

L'inégalité à démontrer s'écrit, après avoir fait passer $x_n$ à gauche :

$$\left(x_0 - x_n\right) + \frac{1}{d_1} + \frac{1}{d_2} + \cdots + \frac{1}{d_n} \;\geqslant\; 2n .$$

En remplaçant $x_0 - x_n$ par $d_1 + d_2 + \cdots + d_n$, le membre de gauche devient

$$\left(d_1 + d_2 + \cdots + d_n\right) + \left(\frac{1}{d_1} + \frac{1}{d_2} + \cdots + \frac{1}{d_n}\right) .$$

C'est ici qu'il faut **regrouper autrement** : au lieu de garder les $d_i$ d'un côté et les $\frac{1}{d_i}$ de l'autre, on associe chaque $d_i$ à son propre inverse :

$$\left(d_1 + \frac{1}{d_1}\right) + \left(d_2 + \frac{1}{d_2}\right) + \cdots + \left(d_n + \frac{1}{d_n}\right) .$$

Chacune des $n$ parenthèses est supérieure ou égale à $2$, d'après l'outil du début. Leur somme est donc supérieure ou égale à $2n$, ce qu'il fallait démontrer.

$$\boxed{\ x_0 + \frac{1}{x_0-x_1} + \cdots + \frac{1}{x_{n-1}-x_n} \;\geqslant\; x_n + 2n \ }$$

*Ce qu'il faut retenir.* Toute la démonstration tient dans deux gestes : **casser** $x_0 - x_n$ en une somme télescopique, puis **regrouper** les morceaux avec les fractions qui leur correspondent. Aucun des deux gestes n'est difficile, mais il faut penser à les faire dans cet ordre.

## Going further

1. Quand l'inégalité est-elle une égalité ? Chaque parenthèse doit valoir exactement $2$ : que cela impose-t-il aux écarts $d_i$, puis à la suite $(x_i)$ elle-même ? Donne un exemple avec $n = 4$.

2. Applique le résultat à $n = 3$ et $x_0 = 10$, $x_1 = 7$, $x_2 = 5$, $x_3 = 1$ : vérifie numériquement les deux membres.

3. Une variante : montre que si $x_0 > x_1 > \cdots > x_n$ et que $x_0 - x_n = n$, alors
   $$\frac{1}{x_0-x_1} + \cdots + \frac{1}{x_{n-1}-x_n} \;\geqslant\; n .$$
   *Indication : c'est un cas particulier de ce qu'on vient de démontrer.*
