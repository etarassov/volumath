---
id: "12640"
title: "Trois entiers tels que c + 2a > 3b"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [inegalites, puissances, principe-extremal, ecarts, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 janvier 2022"
  reference: "2022-08_Enonce-Web-Test-2.pdf, exercices 4 et 5 (le même problème, posé aux juniors et aux seniors) ; corrigé 2022-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-2.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. Anna a écrit $4n + 2$ entiers deux à deux distincts, tous compris entre $0$ et $5^n$ inclus.

Démontrer que, parmi les entiers qu'elle a écrits, il en existe trois, disons $a$, $b$ et $c$, tels que
$$a < b < c \qquad \text{et} \qquad c + 2a > 3b.$$

## Hints

1. Récris la condition $c + 2a > 3b$ avec les écarts $b - a$ et $c - b$. Que signifie-t-elle ?
2. Pour $a$ et $b$ fixés, quel est le meilleur choix de $c$ ? Et pour rendre l'écart entre $a$ et $b$ petit, quel est le meilleur choix de $a$ et $b$ ?
3. Range les nombres d'Anna : $x_1 < x_2 < \cdots < x_{4n+2}$. Prends $c = x_{4n+2}$, et $a$, $b$ deux nombres voisins $x_k$ et $x_{k+1}$. Suppose qu'aucun de ces choix ne convient, et regarde les distances $y_k = x_{4n+2} - x_k$.
4. Tu dois obtenir $y_k \geqslant (3/2)\, y_{k+1}$. Que donne cette inégalité répétée $4n$ fois ? Compare $(3/2)^4$ et $5$.

## Solution

**Ce que dit la condition.** On a $c + 2a > 3b$ si et seulement si $c - b > 2b - 2a$, c'est-à-dire
$$c - b > 2\,(b - a).$$
Il faut donc trouver trois nombres où l'écart entre $b$ et $c$ est plus du double de l'écart entre $a$ et $b$. Pour cela, on a intérêt à prendre $c$ le plus grand possible, et $a$, $b$ très proches.

**On range les nombres.** Soit $x_1 < x_2 < \cdots < x_{4n+2}$ les nombres d'Anna. On va montrer qu'il existe un entier $k$ compris entre $1$ et $4n$ tel que le triplet
$$a = x_k, \qquad b = x_{k+1}, \qquad c = x_{4n+2}$$
convienne. Pour $k \leqslant 4n$, on a bien $k + 1 < 4n + 2$, donc $a < b < c$.

**Supposons le contraire.** Supposons qu'aucun de ces $4n$ triplets ne convienne. On pose, pour $1 \leqslant k \leqslant 4n + 1$,
$$y_k = x_{4n+2} - x_k,$$
la distance de $x_k$ au plus grand nombre. Alors $c - b = y_{k+1}$ et $b - a = x_{k+1} - x_k = y_k - y_{k+1}$. Dire que le triplet ne convient pas, c'est dire que $c - b \leqslant 2(b - a)$, soit
$$y_{k+1} \leqslant 2\,(y_k - y_{k+1}), \qquad \text{c'est-à-dire} \qquad 3\,y_{k+1} \leqslant 2\,y_k, \qquad \text{ou encore} \qquad y_k \geqslant \frac{3}{2}\, y_{k+1}.$$
Ceci est vrai pour tout $k$ de $1$ à $4n$.

**On enchaîne les inégalités.** En partant de $k = 1$ et en appliquant cette inégalité $4n$ fois,
$$y_1 \geqslant \frac{3}{2}\, y_2 \geqslant \left(\frac{3}{2}\right)^2 y_3 \geqslant \cdots \geqslant \left(\frac{3}{2}\right)^{4n} y_{4n+1}.$$
Les nombres d'Anna sont des entiers distincts, donc $y_{4n+1} = x_{4n+2} - x_{4n+1} \geqslant 1$. D'autre part, tous les nombres sont entre $0$ et $5^n$, donc $y_1 = x_{4n+2} - x_1 \leqslant 5^n$. On obtient
$$5^n \geqslant y_1 \geqslant \left(\frac{3}{2}\right)^{4n} = \left(\frac{3^4}{2^4}\right)^n = \left(\frac{81}{16}\right)^n.$$
Or $81/16 = \text{5,0625} > 5$, donc $(81/16)^n > 5^n$. C'est une contradiction.

**Conclusion.** L'un des triplets $(x_k, x_{k+1}, x_{4n+2})$ convient : **parmi les nombres d'Anna, il en existe trois, $a < b < c$, tels que $c + 2a > 3b$.**

## Going further

- Les nombres $4n + 2$ et $5^n$ sont choisis juste comme il faut : on utilise $(3/2)^4 = \text{5,0625}$, qui dépasse à peine $5$. Avec seulement $4n + 1$ nombres, la chaîne donnerait $(3/2)^{4n-1}$, qui est inférieur à $5^n$ pour tout $n \leqslant 32$ : ce raisonnement ne suffirait plus.
- Le corrigé remarque qu'il était peu utile de regarder le plus petit écart entre deux nombres, et que les intuitions sur un « pire cas » étaient souvent fausses. La bonne question était : une fois $a$ fixé, quels $b$ et $c$ ont le plus de chances de convenir ?
- Les inégalités larges et strictes demandent du soin ici : c'est parce que les nombres sont des **entiers** distincts que $y_{4n+1} \geqslant 1$.
