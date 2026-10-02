---
id: "11879"
title: "Des pas entre 1 et 2, et deux sommes à comparer"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [suites, somme, optimisation, coefficients, encadrement, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 8, repris mot pour mot en exercice 14 (Seniors) ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Réponse vérifiée par ordinateur."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

On considère les suites de nombres réels $x_0, x_1, \ldots, x_{100}$ telles que :

- $x_0 = 0$ ;
- pour tout entier $i$ de $1$ à $100$, on a $1 \leqslant x_i - x_{i-1} \leqslant 2$.

Trouver le plus grand entier $k \leqslant 100$ tel que, pour **toute** suite de ce type,
$$x_0 + x_1 + \cdots + x_{k-1} \leqslant x_k + x_{k+1} + \cdots + x_{100}.$$

## Hints

1. On pose $d_i = x_i - x_{i-1}$ pour $i$ de $1$ à $100$, de sorte que $x_j = d_1 + d_2 + \cdots + d_j$. Combien de fois $d_i$ apparaît-il dans chacune des deux sommes ?
2. Écrire la différence (somme de droite moins somme de gauche) sous la forme $c_1 d_1 + c_2 d_2 + \cdots + c_{100} d_{100}$. Quels coefficients $c_i$ sont négatifs ?
3. Pour rendre cette différence la plus petite possible, il faut prendre $d_i = 2$ quand $c_i < 0$ et $d_i = 1$ quand $c_i > 0$.

## Solution

**Étape 1 : les pas.** On pose $d_i = x_i - x_{i-1}$ pour $1 \leqslant i \leqslant 100$ ; ce sont des réels entre $1$ et $2$, choisis librement, et $x_j = d_1 + \cdots + d_j$. On note $G = x_0 + \cdots + x_{k-1}$, $D = x_k + \cdots + x_{100}$ et $F = D - G$. On cherche les $k$ pour lesquels $F \geqslant 0$ quels que soient les $d_i$.

Le pas $d_i$ figure dans tous les $x_j$ tels que $j \geqslant i$.

- Dans $G$, il figure dans $x_i, \ldots, x_{k-1}$ : soit $k - i$ fois si $i \leqslant k$, et jamais si $i \geqslant k$.
- Dans $D$, il figure dans $x_k, \ldots, x_{100}$ si $i \leqslant k$, soit $101 - k$ fois, et dans $x_i, \ldots, x_{100}$ si $i \geqslant k$, soit $101 - i$ fois.

Donc $F = c_1 d_1 + \cdots + c_{100} d_{100}$, avec
$$c_i = (101 - k) - (k - i) = i - s \quad \text{si } i \leqslant k, \qquad c_i = 101 - i \quad \text{si } i \geqslant k,$$
où l'on a posé $s = 2k - 101$. (Pour $i = k$, les deux formules donnent $101 - k$.)

**Étape 2 : le cas $k \leqslant 51$.** Alors $s \leqslant 1$, et tous les $c_i$ sont positifs ou nuls. Comme les $d_i$ sont positifs, $F \geqslant 0$ : la propriété est vraie.

**Étape 3 : le cas $k \geqslant 52$.** Alors $s \geqslant 3$, et les coefficients sont :

| indices $i$ | $1$ à $s - 1$ | $s$ | $s + 1$ à $k$ | $k + 1$ à $100$ |
|---|---|---|---|---|
| $c_i$ | $-(s - 1), \ldots, -1$ | $0$ | $1, 2, \ldots, 101 - k$ | $100 - k, \ldots, 2, 1$ |

(Pour $i = k$, on a bien $k - s = 101 - k$.) Comme $1 \leqslant d_i \leqslant 2$, on a $c_i d_i \geqslant 2c_i$ quand $c_i < 0$ et $c_i d_i \geqslant c_i$ quand $c_i \geqslant 0$. Donc
$$F \geqslant m_k \quad \text{avec} \quad m_k = [(1 + 2 + \cdots + (101 - k)) + (1 + 2 + \cdots + (100 - k))] - 2(1 + 2 + \cdots + (s - 1)),$$
et $F = m_k$ pour le choix $d_i = 2$ si $i < s$, $d_i = 1$ si $i \geqslant s$. La propriété est donc vraie pour $k$ **si et seulement si $m_k \geqslant 0$**.

Avec $1 + 2 + \cdots + n = \dfrac{n(n + 1)}{2}$ et $p = 101 - k$ :
$$m_k = \frac{p(p + 1)}{2} + \frac{(p - 1)p}{2} - s(s - 1) = p^2 - s(s - 1).$$

**Étape 4 : comparer $s(s - 1)$ et $p^2$.** Ce sont des entiers positifs.

- Si $s \leqslant p$, alors $s(s - 1) < s^2 \leqslant p^2$, donc $m_k > 0$.
- Si $s \geqslant p + 1$, alors $s(s - 1) \geqslant (p + 1)p = p^2 + p > p^2$, donc $m_k < 0$.

La propriété est donc vraie exactement quand $s \leqslant p$, c'est-à-dire $2k - 101 \leqslant 101 - k$, soit $3k \leqslant 202$, soit $k \leqslant 67$.

**Vérification sur un exemple.** Pour $k = 68$, on a $s = 35$ : on prend $d_i = 2$ pour $i \leqslant 34$ et $d_i = 1$ ensuite, c'est-à-dire $x_j = 2j$ pour $j \leqslant 34$ et $x_j = j + 34$ pour $j \geqslant 34$. Alors $x_0 + \cdots + x_{67} = 1190 + 2805 = 3995$ et $x_{68} + \cdots + x_{100} = 3894$ : l'inégalité est fausse.

**Conclusion.** Le plus grand entier $k$ qui convient est **$k = 67$**.

## Going further

Le piège est de croire qu'on rend $G$ le plus grand possible en mettant des pas de $2$ jusqu'au rang $k$, puis des pas de $1$. Mais un pas $d_i$ juste avant le rang $k$ compte plus dans $D$ que dans $G$ : le tableau des coefficients montre que seuls les pas d'indice $i < 2k - 101$ favorisent $G$.
