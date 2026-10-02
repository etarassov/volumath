---
id: "8219"
title: "1 + x + x² + x³ + x⁴ est au moins 5x²"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, identites-remarquables, regroupement, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de mi-parcours, exercice 3 ; le même énoncé revient au chapitre IV « Groupe B », TD d'algèbre, exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $x$ un nombre réel positif ou nul. Montrer que

$$1 + x + x^2 + x^3 + x^4 \ \ge\ 5x^2 .$$

Pour quelle valeur de $x$ y a-t-il égalité ?

## Hints

1. Il y a cinq termes à gauche et un $5x^2$ à droite : cela suggère de comparer chaque terme, ou plutôt chaque **paire** de termes, à $x^2$.
2. Le terme $x^2$ se traite tout seul : il vaut exactement $x^2$. Restent quatre termes à apparier.
3. Apparie les termes « symétriques » : $1$ avec $x^4$, et $x$ avec $x^3$. Que faut-il montrer pour chaque paire ?
4. Pour la première paire : $1 + x^4 \ge 2x^2$. Range tout du même côté. Reconnais-tu un carré ?
5. Pour la seconde : $x + x^3 \ge 2x^2$. Même méthode, mais il restera un facteur $x$ devant, et c'est là que l'hypothèse $x \ge 0$ sert.

## Solution

**L'idée : apparier les termes.**

À gauche il y a cinq termes, à droite $5x^2 = x^2 + x^2 + x^2 + x^2 + x^2$. Il suffit donc de répartir les cinq termes de gauche en morceaux valant au moins $x^2$ chacun en moyenne. Le terme central $x^2$ est déjà bon ; on apparie les quatre autres deux par deux, en prenant les termes symétriques.

**Première paire : $1 + x^4 \ge 2x^2$.**

$$1 + x^4 - 2x^2 = \left(x^2 - 1\right)^2 \ \ge\ 0 .$$

Donc $1 + x^4 \ge 2x^2$, avec égalité exactement quand $x^2 = 1$.

**Deuxième paire : $x + x^3 \ge 2x^2$.**

$$x + x^3 - 2x^2 = x\left(1 + x^2 - 2x\right) = x\,(x-1)^2 .$$

Comme $x \ge 0$ et que $(x-1)^2 \ge 0$, ce produit est positif ou nul. Donc $x + x^3 \ge 2x^2$, avec égalité exactement quand $x = 0$ ou $x = 1$.

*(C'est le seul endroit où l'hypothèse $x \ge 0$ intervient, mais elle est indispensable : pour $x = -1$ on aurait $x + x^3 = -2$ et $2x^2 = 2$.)*

**Conclusion.**

En additionnant les deux inégalités puis en ajoutant $x^2$ des deux côtés :

$$\underbrace{1 + x^4}_{\ge\, 2x^2} \ + \ \underbrace{x + x^3}_{\ge\, 2x^2} \ + \ x^2 \ \ge\ 2x^2 + 2x^2 + x^2 = 5x^2 ,$$

c'est-à-dire

$$\boxed{1 + x + x^2 + x^3 + x^4 \ \ge\ 5x^2 \quad \text{pour tout } x \ge 0 .}$$

**Le cas d'égalité.**

Il faut l'égalité dans les deux paires à la fois :

- première paire : $x^2 = 1$, donc $x = 1$ (puisque $x \ge 0$) ;
- deuxième paire : $x = 0$ ou $x = 1$.

La seule valeur commune est $x = 1$. Et en effet, pour $x = 1$ le membre de gauche vaut $1+1+1+1+1 = 5$ et celui de droite $5 \times 1 = 5$.

$$\text{Égalité} \iff x = 1 .$$

**Vérification rapide.** Pour $x = 2$ : à gauche $1+2+4+8+16 = 31$, à droite $20$. ✓ Pour $x = \tfrac12$ : à gauche $1 + \tfrac12 + \tfrac14 + \tfrac18 + \tfrac1{16} = \tfrac{31}{16}$, à droite $\tfrac54 = \tfrac{20}{16}$. ✓

## Going further

Montrer, par la même méthode d'appariement, que pour tout $x \ge 0$ et tout entier $n \ge 1$,
$$1 + x + x^2 + \cdots + x^{2n} \ \ge\ (2n+1)\,x^{\,n} .$$
