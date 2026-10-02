---
id: "13446"
title: "Une somme de parties fractionnaires"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [partie fractionnaire, partie entiere, double comptage, moyenne, inegalites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve lycée, exercice 15 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Pour un nombre réel $x$, on note $\lfloor x \rfloor$ sa partie entière, c'est-à-dire le plus grand entier inférieur ou égal à $x$, et $\{x\} = x - \lfloor x \rfloor$ sa partie fractionnaire. On a toujours $0 \leqslant \{x\} < 1$. Par exemple, $\{\text{1,2}\} = \text{0,2}$, $\{3\} = 0$ et $\{\text{−2,4}\} = \text{0,6}$.

Déterminer le plus petit réel $\alpha$ qui a la propriété suivante :

*quels que soient les réels $x_1, x_2, \ldots, x_{2024}$, il existe toujours un indice $i$, compris entre $1$ et $2024$, tel que*

$$\{x_i - x_1\} + \{x_i - x_2\} + \{x_i - x_3\} + \ldots + \{x_i - x_{2024}\} \leqslant \alpha.$$

## Hints

1. Commence avec $2$ nombres $x_1$ et $x_2$ au lieu de $2024$. Calcule $\{\text{0,3}\} + \{\text{−0,3}\}$, puis $\{a\} + \{-a\}$ pour d'autres nombres $a$.
2. Montre que, pour tout réel $a$, la somme $\{a\} + \{-a\}$ vaut $0$ ou $1$.
3. Note $S_i$ la somme écrite pour l'indice $i$. Additionne les $2024$ sommes $S_1, \ldots, S_{2024}$, en regroupant $\{x_i - x_j\}$ avec $\{x_j - x_i\}$. La plus petite des sommes $S_i$ est au plus égale à leur moyenne.
4. Pour montrer qu'on ne peut pas faire mieux, essaie $x_k = \frac{k}{2024}$.

## Solution

Pour chaque indice $i$, on note

$$S_i = \{x_i - x_1\} + \{x_i - x_2\} + \ldots + \{x_i - x_{2024}\}.$$

La question revient à trouver le plus petit $\alpha$ tel que, pour tous les choix de $x_1, \ldots, x_{2024}$, la plus petite des sommes $S_i$ soit au plus $\alpha$. On va montrer que **la réponse est $\alpha = \frac{2023}{2}$**.

### Un lemme : $\{a\} + \{-a\}$ vaut $0$ ou $1$

- Si $a$ est un entier, $-a$ aussi, et $\{a\} + \{-a\} = 0 + 0 = 0$.
- Sinon, on note $n = \lfloor a \rfloor$ et $f = \{a\}$, de sorte que $a = n + f$ avec $0 < f < 1$. Alors
$$-a = -n - f = (-n - 1) + (1 - f).$$
Le nombre $-n - 1$ est un entier, et $0 < 1 - f < 1$. Donc $\lfloor -a \rfloor = -n - 1$ et $\{-a\} = 1 - f$. Ainsi $\{a\} + \{-a\} = f + (1 - f) = 1$.

Dans tous les cas, $\{a\} + \{-a\} \leqslant 1$.

### La valeur $\frac{2023}{2}$ convient toujours

Prenons des réels $x_1, \ldots, x_{2024}$ quelconques, et additionnons les $2024$ sommes :

$$T = S_1 + S_2 + \ldots + S_{2024}.$$

La somme $T$ contient tous les termes $\{x_i - x_j\}$, pour tous les indices $i$ et $j$ entre $1$ et $2024$.

- Les termes où $i = j$ valent $\{0\} = 0$.
- Les autres se regroupent deux par deux : pour deux indices $i < j$, on met ensemble $\{x_i - x_j\}$ et $\{x_j - x_i\}$. D'après le lemme avec $a = x_i - x_j$, chaque groupe vaut au plus $1$.

Il y a autant de groupes que de façons de choisir deux indices différents parmi $2024$, c'est-à-dire $\frac{2024 \times 2023}{2}$. Donc

$$T \leqslant \frac{2024 \times 2023}{2}.$$

La plus petite des $2024$ sommes $S_i$ est au plus égale à leur moyenne :

$$\text{le plus petit des } S_i \leqslant \frac{T}{2024} \leqslant \frac{2023}{2}.$$

Il existe donc toujours un indice $i$ tel que $S_i \leqslant \frac{2023}{2}$ : la valeur $\alpha = \frac{2023}{2}$ a la propriété demandée.

### On ne peut pas prendre $\alpha$ plus petit

On choisit $x_k = \frac{k}{2024}$ pour $k = 1, 2, \ldots, 2024$. Fixons un indice $i$. Pour chaque $j$, on a $x_i - x_j = \frac{i - j}{2024}$.

- Si $j \leqslant i$, ce nombre est supérieur ou égal à $0$ et strictement inférieur à $1$, donc $\{x_i - x_j\} = \frac{i - j}{2024}$. Quand $j$ va de $i$ à $1$, on obtient les valeurs $\frac{0}{2024}, \frac{1}{2024}, \ldots, \frac{i - 1}{2024}$.
- Si $j > i$, ce nombre est strictement entre $-1$ et $0$, donc $\{x_i - x_j\} = 1 + \frac{i - j}{2024} = \frac{2024 + i - j}{2024}$. Quand $j$ va de $2024$ à $i + 1$, on obtient les valeurs $\frac{i}{2024}, \frac{i + 1}{2024}, \ldots, \frac{2023}{2024}$.

Au total, quand $j$ varie, les nombres $\{x_i - x_j\}$ prennent chacune des valeurs $\frac{k}{2024}$, pour $k = 0, 1, \ldots, 2023$, exactement une fois. Donc

$$S_i = \frac{0 + 1 + 2 + \ldots + 2023}{2024} = \frac{1}{2024} \times \frac{2023 \times 2024}{2} = \frac{2023}{2}.$$

Avec ce choix, **toutes** les sommes $S_i$ valent $\frac{2023}{2}$. Si l'on prenait $\alpha < \frac{2023}{2}$, aucun indice $i$ ne vérifierait $S_i \leqslant \alpha$.

**Conclusion.** Le plus petit réel $\alpha$ cherché est $\alpha = \frac{2023}{2}$.

## Going further

Que devient la réponse si l'on prend $n$ réels $x_1, \ldots, x_n$ au lieu de $2024$ ?
