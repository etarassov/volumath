---
id: "11860"
title: "Trois réels entre 0 et 2 et le produit de leurs écarts"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalites, moyenne arithmetique et geometrique, valeur absolue]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 4 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels tels que $0 \leqslant a, b, c \leqslant 2$. Montrer que
$$(a - b)(b - c)(a - c) \leqslant 2.$$

## Hints

1. Un nombre est toujours inférieur ou égal à sa valeur absolue. Que vaut la valeur absolue du produit ? Dépend-elle de l'ordre de $a$, $b$, $c$ ?
2. Ranger les trois nombres dans l'ordre et appeler $x$ et $y$ les deux écarts entre deux nombres voisins. Exprimer la valeur absolue du produit avec $x$ et $y$.
3. Pour une somme $x + y$ fixée, quelle est la plus grande valeur possible de $xy$ ?

## Solution

**Rappel.** Pour tous réels $x$ et $y$, on a $xy \leqslant \dfrac{(x+y)^2}{4}$. En effet, la différence vaut
$$\frac{(x+y)^2}{4} - xy = \frac{x^2 + 2xy + y^2 - 4xy}{4} = \frac{(x-y)^2}{4} \geqslant 0.$$

**Étape 1 : passer à la valeur absolue.** Notons $P = (a-b)(b-c)(a-c)$. Comme tout nombre est inférieur ou égal à sa valeur absolue, il suffit de montrer que $|P| \leqslant 2$. Or
$$|P| = |a-b| \times |b-c| \times |a-c|$$
est le produit des trois écarts entre deux des nombres. Il ne change pas si l'on échange les noms des nombres.

**Étape 2 : deux écarts.** Rangeons les trois nombres dans l'ordre croissant : $u \leqslant v \leqslant w$. Posons $x = v - u$ et $y = w - v$. Ce sont deux nombres positifs ou nuls, et l'écart entre le plus petit et le plus grand est $w - u = x + y$. Donc
$$|P| = x \times y \times (x + y).$$
Comme les trois nombres sont entre $0$ et $2$, on a aussi $x + y = w - u \leqslant 2 - 0 = 2$.

**Étape 3 : on conclut.** Par le rappel, $xy \leqslant \dfrac{(x+y)^2}{4}$, et comme $x + y \geqslant 0$,
$$|P| = xy(x+y) \leqslant \frac{(x+y)^3}{4} \leqslant \frac{2^3}{4} = 2.$$

**Conclusion.** **On a bien $(a-b)(b-c)(a-c) \leqslant |P| \leqslant 2$.**

Ce maximum est atteint : pour $a = 2$, $b = 1$ et $c = 0$, le produit vaut $1 \times 1 \times 2 = 2$.

## Going further

La même méthode donne le minimum : le produit $(a-b)(b-c)(a-c)$ est toujours supérieur ou égal à $-2$, avec égalité par exemple pour $a = 0$, $b = 1$, $c = 2$. Plus généralement, si les trois nombres sont dans un intervalle de longueur $L$, le produit est compris entre $-\dfrac{L^3}{4}$ et $\dfrac{L^3}{4}$.
