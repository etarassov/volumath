---
id: "13421"
title: "Une somme d'écarts et deux plus petits rapports"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, valeur-absolue, minimum, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve lycée, exercice 14 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf. L'énoncé original écrit les deux minimums avec la notation min ; on les nomme ici α et β."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient $x_1, \ldots, x_n, y_1, \ldots, y_n$ des réels strictement positifs tels que

$$x_1 + x_2 + \ldots + x_n = 1 \qquad \text{et} \qquad y_1 + y_2 + \ldots + y_n = 1.$$

On note $\alpha$ le plus petit des $n$ nombres $\frac{x_1}{y_1}, \frac{x_2}{y_2}, \ldots, \frac{x_n}{y_n}$, et $\beta$ le plus petit des $n$ nombres $\frac{y_1}{x_1}, \frac{y_2}{x_2}, \ldots, \frac{y_n}{x_n}$.

Montrer que

$$|x_1 - y_1| + |x_2 - y_2| + \ldots + |x_n - y_n| \leqslant 2 - \alpha - \beta.$$

## Hints

1. Essaie avec $n = 2$, $x_1 = x_2 = \frac{1}{2}$, $y_1 = \frac{1}{4}$ et $y_2 = \frac{3}{4}$. Calcule les deux membres.
2. Montre d'abord que $\alpha \leqslant 1$ et $\beta \leqslant 1$. Peut-on avoir $x_i > y_i$ pour tous les $i$ ?
3. Pour te débarrasser des valeurs absolues, sépare les indices $i$ pour lesquels $x_i > y_i$ de ceux pour lesquels $x_i \leqslant y_i$.
4. Si $x_i > y_i$, compare $y_i$ et $\beta x_i$. Si $x_i \leqslant y_i$, compare $x_i$ et $\alpha y_i$.

## Solution

On note $L$ le membre de gauche.

**Étape 1 : $\alpha \leqslant 1$ et $\beta \leqslant 1$.** Si l'on avait $x_i > y_i$ pour tous les $i$, en additionnant on obtiendrait $1 > 1$. Il existe donc un indice $i$ tel que $x_i \leqslant y_i$, c'est-à-dire $\frac{x_i}{y_i} \leqslant 1$, et donc $\alpha \leqslant 1$. De même, il existe un indice $j$ tel que $y_j \leqslant x_j$, donc $\beta \leqslant 1$.

**Étape 2 : on enlève les valeurs absolues.** On partage les indices en deux groupes :

- le groupe $P$ des indices $i$ tels que $x_i > y_i$, pour lesquels $|x_i - y_i| = x_i - y_i$ ;
- le groupe $N$ des indices $i$ tels que $x_i \leqslant y_i$, pour lesquels $|x_i - y_i| = y_i - x_i$.

On note $X_P$ la somme des $x_i$ pour $i$ dans $P$, et de même $Y_P$, $X_N$, $Y_N$. (Une somme sans aucun terme vaut $0$.) Comme chaque indice est dans un seul des deux groupes, $X_P + X_N = 1$ et $Y_P + Y_N = 1$. En regroupant les termes de $L$ :

$$L = (X_P - Y_P) + (Y_N - X_N).$$

**Étape 3 : on utilise $\alpha$ et $\beta$.**

- Pour un indice $i$ de $P$, on a $\frac{y_i}{x_i} \geqslant \beta$ (car $\beta$ est le plus petit de ces rapports), donc $y_i \geqslant \beta x_i$. En additionnant sur $P$ : $Y_P \geqslant \beta X_P$.
- Pour un indice $i$ de $N$, on a de même $x_i \geqslant \alpha y_i$. En additionnant sur $N$ : $X_N \geqslant \alpha Y_N$.

On en déduit

$$L \leqslant (X_P - \beta X_P) + (Y_N - \alpha Y_N) = (1 - \beta) X_P + (1 - \alpha) Y_N.$$

**Étape 4 : conclusion.** D'après l'étape 1, les nombres $1 - \beta$ et $1 - \alpha$ sont positifs ou nuls. De plus $X_P \leqslant X_P + X_N = 1$ et $Y_N \leqslant 1$. Donc

$$L \leqslant (1 - \beta) \times 1 + (1 - \alpha) \times 1 = 2 - \alpha - \beta.$$

*Une autre idée.* Pour deux réels $u$ et $v$, on a $|u - v| = u + v - 2\min(u, v)$, où $\min(u, v)$ est le plus petit des deux. Donc

$$L = (x_1 + \ldots + x_n) + (y_1 + \ldots + y_n) - 2\left(\min(x_1, y_1) + \ldots + \min(x_n, y_n)\right) = 2 - 2\left(\min(x_1, y_1) + \ldots + \min(x_n, y_n)\right).$$

Or $x_i \geqslant \alpha y_i$ et $y_i \geqslant \alpha y_i$ (car $\alpha \leqslant 1$), donc $\min(x_i, y_i) \geqslant \alpha y_i$. De même $\min(x_i, y_i) \geqslant \beta x_i$. En additionnant ces deux inégalités, $2\min(x_i, y_i) \geqslant \alpha y_i + \beta x_i$, puis en additionnant sur tous les $i$, on trouve que $2\left(\min(x_1, y_1) + \ldots + \min(x_n, y_n)\right) \geqslant \alpha + \beta$, ce qui redonne $L \leqslant 2 - \alpha - \beta$.

## Going further

En reprenant la seconde idée, montrer que l'on a même $L \leqslant 2 - 2\alpha$ et $L \leqslant 2 - 2\beta$. Pourquoi est-ce plus fort que l'inégalité de l'énoncé ?
