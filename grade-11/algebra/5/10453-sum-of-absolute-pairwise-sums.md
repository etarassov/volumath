---
id: "10453"
title: "La somme des |xᵢ + xⱼ| est au moins n fois la somme des |xᵢ|"
grade: 11
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, valeur-absolue, sommes-doubles, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe A, exercice 8 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Soient $n \geqslant 1$ un entier et $x_1, x_2, \ldots, x_n$ des réels quelconques. Montrer que

$$\sum_{i=1}^{n} \sum_{j=1}^{n} |x_i + x_j| \geqslant n \sum_{i=1}^{n} |x_i| .$$

(La somme de gauche compte les $n^2$ couples $(i, j)$, y compris ceux où $i = j$.)

## Hints

1. Essaie d'abord $x_1 = 1$ et $x_2 = -1$. Que remarques-tu ?
2. Sépare les nombres positifs ou nuls, notés $a_1, \ldots, a_r$, et les nombres strictement négatifs, notés $-b_1, \ldots, -b_s$, avec tous les $b_j > 0$. Pose $A = a_1 + \cdots + a_r$ et $B = b_1 + \cdots + b_s$. Que se passe-t-il si l'on change le signe de tous les $x_i$ ?
3. Calcule séparément les termes $|x_i + x_j|$ où $x_i$ et $x_j$ sont tous deux positifs ou nuls, tous deux négatifs, ou de signes différents. Tu dois te ramener à $2 \sum_i \sum_j |a_i - b_j| \geqslant (s - r)(A - B)$.
4. Si $s \leqslant r$, c'est facile. Sinon, utilise $|t| \geqslant t$.

## Solution

Notons $M_1$ le membre de gauche et $M_2$ le membre de droite.

**Étape 1 : les notations.** Parmi les $n$ nombres, notons $a_1, \ldots, a_r$ ceux qui sont positifs ou nuls, et $-b_1, \ldots, -b_s$ ceux qui sont strictement négatifs, de sorte que $b_1, \ldots, b_s$ sont strictement positifs et $r + s = n$. Posons

$$A = a_1 + \cdots + a_r, \qquad B = b_1 + \cdots + b_s .$$

Si l'on change le signe de tous les $x_i$, ni $M_1$ ni $M_2$ ne change. Les rôles de $A$ et $B$ s'échangent alors : les anciens nombres strictement négatifs deviennent strictement positifs, de somme $B$, et les anciens nombres positifs ou nuls deviennent négatifs ou nuls, de valeurs absolues de somme $A$ (les zéros ne comptent pas). Quitte à faire ce changement, on peut donc supposer que $A \geqslant B$.

**Étape 2 : calculer $M_2$.** La somme des $|x_i|$ vaut $A + B$, donc

$$M_2 = (r + s)(A + B) .$$

**Étape 3 : calculer $M_1$.** Rangeons les $n^2$ couples $(i, j)$ en trois paquets.

- *Les deux nombres sont positifs ou nuls.* La somme des $|a_i + a_k| = a_i + a_k$, sur les $r^2$ couples $(i, k)$, vaut $2rA$, car chaque $a_i$ apparaît $r$ fois en première place et $r$ fois en seconde place.
- *Les deux nombres sont strictement négatifs.* De même, la somme des $|-b_j - b_l| = b_j + b_l$ vaut $2sB$.
- *Les deux nombres sont de signes différents.* Chaque paire formée d'un $a_i$ et d'un $-b_j$ apparaît deux fois, dans un ordre puis dans l'autre, et donne $|a_i - b_j|$. Ce paquet vaut donc $2S$, où

$$S = \sum_{i=1}^{r} \sum_{j=1}^{s} |a_i - b_j| .$$

Ainsi $M_1 = 2rA + 2sB + 2S$.

**Étape 4 : se ramener à une inégalité plus simple.** On calcule

$$M_1 - M_2 = 2rA + 2sB + 2S - (rA + rB + sA + sB) = 2S + rA - rB - sA + sB ,$$

c'est-à-dire

$$M_1 - M_2 = 2S - (s - r)(A - B) .$$

Il suffit donc de montrer que $2S \geqslant (s - r)(A - B)$.

**Étape 5 : deux cas.**

- *Si $s \leqslant r$.* Alors $s - r \leqslant 0$ et $A - B \geqslant 0$, donc $(s - r)(A - B) \leqslant 0 \leqslant 2S$.
- *Si $s > r$.* Comme $|t| \geqslant t$ pour tout réel $t$, et comme $S \geqslant 0$,

$$2S \geqslant S \geqslant \sum_{i=1}^{r} \sum_{j=1}^{s} (a_i - b_j) = sA - rB .$$

En effet, chaque $a_i$ apparaît $s$ fois dans la double somme, et chaque $b_j$ y apparaît $r$ fois. Ensuite,

$$sA - rB = (s - r)A + r(A - B) \geqslant (s - r)A \geqslant (s - r)(A - B) ,$$

car $r(A - B) \geqslant 0$, puis $s - r > 0$ et $A \geqslant A - B$.

Dans les deux cas, $2S \geqslant (s - r)(A - B)$.

**Conclusion.** On a $M_1 - M_2 \geqslant 0$, ce qui est l'inégalité demandée.

## Going further

1. Montrer qu'il y a égalité lorsque $n = 2m$ est pair et que $m$ des nombres valent un même réel $t$, et les $m$ autres valent $-t$.
2. Montrer que ce sont, avec le cas où tous les $x_i$ sont nuls, les seuls cas d'égalité. On pourra suivre la démonstration et regarder quand chaque inégalité est une égalité.
