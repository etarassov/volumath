---
id: "10841"
title: "d(n)³ = 4n"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [diviseurs, decomposition-en-facteurs-premiers, encadrement, disjonction-de-cas, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf (le corrigé écrit « n³ = 2 × (d(n)/2)³ » au lieu de n = 2 × (d(n)/2)³, et affirme que d(2³ᵏ⁺¹)³ / 2³ᵏ⁺¹ < 1 pour k > 2, ce qui est faux pour k = 3 ; la réponse reste juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $d(n)$ le nombre de diviseurs positifs de $n$. Par exemple $d(12) = 6$, car les diviseurs de $12$ sont $1, 2, 3, 4, 6, 12$.

Trouver tous les entiers $n \geqslant 1$ tels que

$$d(n)^3 = 4n .$$

## Hints

1. Rappelle comment calculer $d(n)$ à partir de la décomposition de $n$ en facteurs premiers. Vérifie que $n = 2$ convient.
2. Montre que $d(n)$ est pair, puis que $n = 2c^3$ pour un entier $c$. Qu'en déduis-tu sur les exposants de la décomposition de $n$ ?
3. Montre que $3$ ne divise pas $d(n)$, et donc pas $n$ non plus.
4. L'équation s'écrit $d(n) = 2c$. Compare chaque facteur de $d(n)$ avec la puissance de nombre premier qui lui correspond dans $2c$.

## Solution

**Réponse : $n = 2$, $n = 128$ et $n = 2000$.**

### Rappel : le nombre de diviseurs

Si $n = p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_r^{a_r}$ est la décomposition de $n$ en facteurs premiers, alors
$$d(n) = (a_1 + 1)(a_2 + 1) \cdots (a_r + 1) .$$
En effet, les diviseurs de $n$ sont exactement les nombres $p_1^{b_1} \times \cdots \times p_r^{b_r}$ avec $0 \leqslant b_i \leqslant a_i$ pour chaque $i$. On a $a_i + 1$ choix pour chaque exposant $b_i$, et deux choix différents donnent deux nombres différents, par unicité de la décomposition.

### Étape 1 : la forme de $n$

Soit $n$ une solution. Le nombre $d(n)^3 = 4n$ est pair, donc $d(n)$ est pair. Écrivons $d(n) = 2c$. Alors $8c^3 = 4n$, donc
$$n = 2c^3 \qquad \text{et} \qquad d(n) = 2c .$$
Dans $c^3$, l'exposant de chaque nombre premier est un multiple de $3$. Donc l'exposant de $2$ dans $n = 2c^3$ s'écrit $3j + 1$, et celui de tout nombre premier impair est un multiple de $3$. On peut écrire
$$n = 2^{3j+1} \times q_1^{3k_1} \times \cdots \times q_r^{3k_r} \qquad \text{et} \qquad c = 2^{j} \times q_1^{k_1} \times \cdots \times q_r^{k_r},$$
avec $j \geqslant 0$, $r \geqslant 0$, des nombres premiers impairs $q_1, \ldots, q_r$ différents, et des exposants $k_i \geqslant 1$.

### Étape 2 : $3$ ne divise pas $n$

D'après le rappel,
$$d(n) = (3j + 2)(3k_1 + 1) \cdots (3k_r + 1) .$$
Aucun de ces facteurs n'est un multiple de $3$. Comme $3$ est premier, s'il divisait le produit, il diviserait l'un des facteurs. Donc $3$ ne divise pas $d(n)$, ni $d(n)^3 = 4n$, ni $n$. **Tous les $q_i$ sont donc au moins égaux à $5$.**

### Étape 3 : l'équation sous forme de produit

L'égalité $d(n) = 2c$ s'écrit
$$(3j + 2)(3k_1 + 1) \cdots (3k_r + 1) = 2^{j+1} \times q_1^{k_1} \times \cdots \times q_r^{k_r} .$$
Posons
$$A = \frac{3j + 2}{2^{j+1}} \qquad \text{et} \qquad B_i = \frac{3k_i + 1}{q_i^{k_i}} \quad \text{pour chaque } i .$$
L'équation devient
$$A \times B_1 \times \cdots \times B_r = 1 . \qquad (\star)$$

### Étape 4 : chaque $B_i$ vaut au plus $4/5$

Soit $q \geqslant 5$ premier et $k \geqslant 1$. Comme $q^k \geqslant 5^k$, on a $(3k + 1) / q^k \leqslant (3k + 1) / 5^k$. Or la suite $(3k + 1) / 5^k$ est décroissante :
$$\frac{3k + 4}{5^{k+1}} < \frac{3k + 1}{5^k} \iff 3k + 4 < 15k + 5,$$
ce qui est vrai. Sa plus grande valeur est donc $4/5$, obtenue pour $k = 1$. Ainsi
$$B_i \leqslant \frac{4}{5}, \qquad \text{avec égalité seulement si } q_i = 5 \text{ et } k_i = 1 .$$
En particulier chaque $B_i$ est strictement plus petit que $1$, donc le produit $B_1 \times \cdots \times B_r$ est au plus égal à $1$ (il vaut $1$ quand $r = 0$).

### Étape 5 : les valeurs de $A$

Pour $j = 0, 1, 2, 3$, on trouve $A = 1$, $5/4$, $1$, $11/16$. Pour $j \geqslant 1$, la suite est décroissante :
$$\frac{3j + 5}{2^{j+2}} < \frac{3j + 2}{2^{j+1}} \iff 3j + 5 < 6j + 4 \iff j > \frac{1}{3} .$$
Donc $A \leqslant 11/16 < 1$ pour tout $j \geqslant 3$.

D'après $(\star)$, $A = 1 / \left(B_1 \times \cdots \times B_r\right) \geqslant 1$. Il reste donc seulement $j = 0$, $j = 1$ et $j = 2$.

### Étape 6 : les trois cas

- **$j = 0$ ou $j = 2$.** Alors $A = 1$, et $(\star)$ donne $B_1 \times \cdots \times B_r = 1$. Comme chaque $B_i$ est strictement plus petit que $1$, c'est possible seulement si $r = 0$. On obtient $n = 2^1 = 2$ et $n = 2^7 = 128$.
- **$j = 1$.** Alors $A = 5/4$, et $(\star)$ donne $B_1 \times \cdots \times B_r = 4/5$. Si $r = 0$, le produit vaut $1$. Si $r \geqslant 2$, il vaut au plus $(4/5) \times (4/5) < 4/5$. Donc $r = 1$ et $B_1 = 4/5$, ce qui impose $q_1 = 5$ et $k_1 = 1$. On obtient $n = 2^4 \times 5^3 = 2000$.

### Conclusion

On vérifie les trois valeurs : $d(2) = 2$ et $2^3 = 8 = 4 \times 2$ ; $d(128) = 8$ et $8^3 = 512 = 4 \times 128$ ; $d(2000) = 5 \times 4 = 20$ et $20^3 = 8000 = 4 \times 2000$. **Les solutions sont $n = 2$, $n = 128$ et $n = 2000$.**

## Going further

1. Trouve tous les entiers $n \geqslant 1$ tels que $d(n)^2 = n$. *Réponse : $n = 1$ et $n = 9$.*
2. Dans la solution, on a eu besoin d'écarter le nombre premier $3$. Que vaut $B$ pour $q = 3$ et $k = 1$ ? Pourquoi aurait-il gêné ?
