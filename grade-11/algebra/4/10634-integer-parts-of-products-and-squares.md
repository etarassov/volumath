---
id: "10634"
title: "Parties entières de produits et de carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [partie-entiere, inegalite, parite, maximum, double-somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 16 ; corrigé 2022-01_corrige-envoi-2.pdf. Dans le cas n impair, le corrigé prend x_{k+2}, ..., x_{2k}, ce qui ne fait que 2k nombres, et un facteur (2k − 1)k au lieu de 2k × k ; il trouve k(k + 2) au lieu de k(k + 1). La réponse finale ⌊n²/4⌋ est juste. La solution ci-dessous traite les deux parités d'un coup."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soient $x_1, x_2, \ldots, x_n$ des nombres réels positifs ou nuls. On note $\lfloor t \rfloor$ la partie entière d'un réel $t$. Déterminer la plus grande valeur que peut prendre la quantité

$$S = \sum_{1 \leqslant i < j \leqslant n} 2\lfloor x_i x_j \rfloor \;-\; (n - 1) \sum_{i=1}^{n} \lfloor x_i^2 \rfloor$$

## Hints

1. Note $p_i = \lfloor x_i^2 \rfloor$. Combien de fois chaque $p_i$ apparaît-il dans la somme $\sum_{i < j} (p_i + p_j)$ ? Écris $S$ comme une somme sur les couples $i < j$ d'une même quantité $T_{ij}$.
2. Montre que $T_{ij} = 2\lfloor x_i x_j \rfloor - p_i - p_j$ est un entier strictement inférieur à $2$. On pourra utiliser $2x_ix_j \leqslant x_i^2 + x_j^2$.
3. Que se passe-t-il quand $p_i$ et $p_j$ ont la même parité ?
4. Si $k$ des nombres $p_i$ sont impairs, combien y a-t-il de couples $(i, j)$ où un seul des deux est impair ? Pour l'exemple, essaie des $x_i$ égaux à $\text{1,2}$ ou à $\text{0,9}$.

## Solution

Notons $p_i = \lfloor x_i^2 \rfloor$ : c'est un entier naturel, et $p_i \leqslant x_i^2 < p_i + 1$.

**Étape 1. Réécrire $S$.**

Dans la somme $\sum_{i < j} (p_i + p_j)$, chaque $p_i$ apparaît une fois pour chaque autre indice, c'est-à-dire $n - 1$ fois. Donc

$$(n - 1) \sum_{i=1}^{n} p_i = \sum_{1 \leqslant i < j \leqslant n} (p_i + p_j)$$

et, en posant $T_{ij} = 2\lfloor x_i x_j \rfloor - p_i - p_j$ :

$$S = \sum_{1 \leqslant i < j \leqslant n} T_{ij}$$

**Étape 2. Chaque $T_{ij}$ vaut au plus $1$.**

Comme $(x_i - x_j)^2 \geqslant 0$, on a $2x_ix_j \leqslant x_i^2 + x_j^2 < p_i + p_j + 2$. Donc

$$2\lfloor x_i x_j \rfloor \leqslant 2x_ix_j < p_i + p_j + 2$$

et $T_{ij} < 2$. Comme $T_{ij}$ est un entier, $T_{ij} \leqslant 1$.

**Étape 3. Si $p_i$ et $p_j$ ont la même parité, $T_{ij} \leqslant 0$.**

Dans ce cas $p_i + p_j$ est pair, donc $T_{ij} = 2\lfloor x_ix_j \rfloor - (p_i + p_j)$ est pair. Un entier pair qui vaut au plus $1$ vaut au plus $0$.

**Étape 4. La borne.**

Soit $k$ le nombre d'indices $i$ pour lesquels $p_i$ est impair. Les couples $(i, j)$ où $p_i$ et $p_j$ n'ont pas la même parité sont formés d'un indice parmi ces $k$ et d'un indice parmi les $n - k$ autres : il y en a $k(n - k)$. Par les étapes 2 et 3, chacun d'eux apporte au plus $1$ à $S$ et les autres couples apportent au plus $0$. Donc

$$S \leqslant k(n - k)$$

Or $k(n - k) = \frac{n^2}{4} - \left(k - \frac{n}{2}\right)^2 \leqslant \frac{n^2}{4}$. Comme $S$ est un entier, $S \leqslant \left\lfloor \frac{n^2}{4} \right\rfloor$.

**Étape 5. Cette valeur est atteinte.**

Posons $k = \left\lfloor \frac{n}{2} \right\rfloor$. Prenons $x_1 = \cdots = x_k = \text{1,2}$ et $x_{k+1} = \cdots = x_n = \text{0,9}$. On calcule :

- $\text{1,2} \times \text{1,2} = \text{1,44}$, de partie entière $1$ ;
- $\text{0,9} \times \text{0,9} = \text{0,81}$, de partie entière $0$ ;
- $\text{1,2} \times \text{0,9} = \text{1,08}$, de partie entière $1$.

Pour deux nombres égaux à $\text{1,2}$, $T_{ij} = 2 - 1 - 1 = 0$. Pour deux nombres égaux à $\text{0,9}$, $T_{ij} = 0 - 0 - 0 = 0$. Pour un de chaque, $T_{ij} = 2 - 1 - 0 = 1$. Donc $S = k(n - k)$.

- Si $n = 2m$ est pair, $k = m$ et $S = m^2 = \frac{n^2}{4}$.
- Si $n = 2m + 1$ est impair, $k = m$ et $S = m(m + 1) = \frac{n^2 - 1}{4} = \left\lfloor \frac{n^2}{4} \right\rfloor$.

**Conclusion : la plus grande valeur de $S$ est $\left\lfloor \frac{n^2}{4} \right\rfloor$.**
