---
id: "8716"
title: "À la fois un carré et un cube"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [decomposition-en-facteurs-premiers, puissances, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Nombres premiers » (Paul A), exercices 13 et 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Un entier $n \geqslant 1$ est à la fois un **carré parfait** (il s'écrit $a^2$) et un **cube parfait** (il s'écrit $b^3$).

Est-il forcément une **puissance sixième**, c'est-à-dire de la forme $c^6$ ?

Par exemple $64 = 8^2 = 4^3$ est à la fois un carré et un cube, et en effet $64 = 2^6$.

## Hints

1. L'outil naturel est la décomposition en facteurs premiers. Écris $n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k}$.
2. Comment reconnaît-on, sur cette décomposition, qu'un entier est un carré parfait ? Essaie sur $36 = 2^2 \times 3^2$ et sur $18 = 2 \times 3^2$.
3. Même question pour un cube parfait.
4. Tu obtiendras que chaque exposant $\alpha_i$ est à la fois multiple de $2$ et multiple de $3$. Que peux-tu en conclure ?

## Solution

**Réponse : oui, toujours.**

Tout repose sur un critère qu'il faut établir d'abord.

### Le critère : lire les puissances sur la décomposition

> Un entier $n \geqslant 1$ est une puissance $k$-ième si et seulement si, dans sa décomposition en facteurs premiers, **tous les exposants sont des multiples de $k$**.

*Sens direct.* Si $n = c^k$, décomposons $c = p_1^{\beta_1} \cdots p_r^{\beta_r}$. Alors

$$n = c^k = p_1^{k\beta_1} \cdots p_r^{k\beta_r} ,$$

et comme la décomposition en facteurs premiers d'un entier est **unique**, c'est là la décomposition de $n$. Tous ses exposants sont des multiples de $k$.

*Sens réciproque.* Si $n = p_1^{k\gamma_1} \cdots p_r^{k\gamma_r}$, il suffit de poser $c = p_1^{\gamma_1} \cdots p_r^{\gamma_r}$ pour obtenir $n = c^k$.

### On applique le critère

Écrivons la décomposition en facteurs premiers de $n$ :

$$n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k} .$$

- $n$ est un **carré parfait**, donc d'après le critère avec $k = 2$ : chaque $\alpha_i$ est pair, c'est-à-dire multiple de $2$.
- $n$ est un **cube parfait**, donc d'après le critère avec $k = 3$ : chaque $\alpha_i$ est multiple de $3$.

Fixons un exposant $\alpha_i$. Il est multiple de $2$ et multiple de $3$. Comme $2$ et $3$ sont deux nombres premiers différents, ils apparaissent tous les deux dans la décomposition de $\alpha_i$, donc $\alpha_i$ est multiple de $2 \times 3 = 6$.

Tous les exposants sont donc des multiples de $6$. D'après le critère, cette fois avec $k = 6$, l'entier $n$ est une puissance sixième.

**Conclusion.** Un entier qui est à la fois un carré et un cube est toujours une puissance sixième. Le plus petit, en dehors de $1$, est $2^6 = 64$, puis $3^6 = 729$, puis $4^6 = 4096$.

*Attention à l'argument qu'on est tenté d'écrire.* On pourrait croire que « multiple de $2$ et multiple de $3$ donc multiple de $6$ » va de soi. Ce n'est vrai que parce que $2$ et $3$ n'ont pas de facteur commun : un nombre multiple de $2$ et de $4$ n'est pas forcément multiple de $8$, par exemple $4$.

## Going further

1. Un entier à la fois carré parfait et puissance quatrième est-il une puissance huitième ? Attention au piège.

2. Généralise : si $n$ est à la fois une puissance $k$-ième et une puissance $\ell$-ième, de quoi est-il une puissance ? La réponse fait intervenir le PPCM de $k$ et $\ell$.

3. Toujours avec le même critère : combien un entier $n = p_1^{\alpha_1} \cdots p_k^{\alpha_k}$ a-t-il de diviseurs positifs ? Compte les choix possibles pour chaque exposant.
