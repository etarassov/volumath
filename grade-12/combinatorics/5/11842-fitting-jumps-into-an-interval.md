---
id: "11842"
title: "Ranger des sauts dans un intervalle"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [recurrence, encadrement, construction, intervalle, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 17 ; corrigé 2022-05_corrige-envoi-5.pdf (énoncé précisé : les termes de la suite sont positifs ou nuls)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $a_1, a_2, \ldots, a_k$ une suite finie de réels positifs ou nuls. On dit qu'elle est *casable* dans l'intervalle $[b ; c]$ s'il existe des réels $x_0, x_1, \ldots, x_k$, tous dans $[b ; c]$, tels que

$$|x_i - x_{i-1}| = a_i \qquad \text{pour tout } i \text{ entre } 1 \text{ et } k.$$

Autrement dit, partant de $x_0$, on fait des sauts de longueurs $a_1$, puis $a_2$, et ainsi de suite, chacun vers la gauche ou vers la droite, sans jamais sortir de $[b ; c]$. La suite est dite *normalisée* si tous ses termes sont inférieurs ou égaux à $1$.

1. Montrer que, pour tout entier $n \geqslant 1$, toute suite normalisée de longueur $2n + 1$ est casable dans $\left[0 ; 2 - \frac{1}{2^n}\right]$.
2. Montrer que, pour tout entier $n \geqslant 1$, il existe une suite normalisée de longueur $4n + 3$ qui n'est pas casable dans $\left[0 ; 2 - \frac{1}{2^n}\right]$.

## Hints

1. Seule la longueur de l'intervalle compte : si $x_0, \ldots, x_k$ conviennent dans $[b ; c]$, alors $x_0 + d, \ldots, x_k + d$ conviennent dans $[b + d ; c + d]$. De même, $b + c - x_0, \ldots, b + c - x_k$ conviennent encore dans $[b ; c]$.
2. Question 1 : raisonner par récurrence sur $n$, en passant de la longueur $2n - 1$ à la longueur $2n + 1$. Grâce à la symétrie, on peut supposer que $x_{2n-1}$ est dans la moitié gauche de l'intervalle obtenu.
3. Question 1 encore : faire le saut $a_{2n}$ vers la droite, puis distinguer selon que le saut $a_{2n+1}$ vers la droite sort ou non de l'intervalle.
4. Question 2 : des sauts de longueur $1$ obligent les points à passer d'un côté à l'autre du centre de l'intervalle. Alterner des sauts de longueur $1$ et des sauts un peu plus courts, et suivre la distance de chaque point au centre.

## Solution

On note $L_n = 2 - \frac{1}{2^n}$ pour tout entier $n \geqslant 0$. On a $L_0 = 1$ et

$$L_n = L_{n-1} + \frac{1}{2^n} \qquad \text{et} \qquad \frac{L_{n-1}}{2} = 1 - \frac{1}{2^n}.$$

**Deux remarques.** Si $x_0, \ldots, x_k$ conviennent dans $[b ; c]$, alors les nombres $x_i + d$ conviennent dans $[b + d ; c + d]$, car les écarts ne changent pas. Une suite casable dans un intervalle de longueur $L$ est donc casable dans tout intervalle de longueur $L$. De même, les nombres $b + c - x_i$ conviennent encore dans $[b ; c]$ : on peut retourner l'intervalle.

### Question 1

Montrons par récurrence sur $n \geqslant 0$ la propriété $\mathcal{P}(n)$ : *toute suite normalisée de longueur $2n + 1$ est casable dans $[0 ; L_n]$.* Pour $n \geqslant 1$, c'est la question posée.

**Initialisation.** Pour $n = 0$, la suite a un seul terme $a_1 \in [0 ; 1]$. On prend $x_0 = 0$ et $x_1 = a_1$, tous deux dans $[0 ; 1] = [0 ; L_0]$.

**Hérédité.** Soit $n \geqslant 1$ tel que $\mathcal{P}(n-1)$ soit vraie, et soit $a_1, \ldots, a_{2n+1}$ une suite normalisée. Ses $2n - 1$ premiers termes sont casables dans $[0 ; L_{n-1}]$ : on a des réels $x_0, \ldots, x_{2n-1}$ dans $[0 ; L_{n-1}]$ qui conviennent. Quitte à les remplacer par $L_{n-1} - x_i$, on peut supposer que

$$s = x_{2n-1} \leqslant \frac{L_{n-1}}{2} = 1 - \frac{1}{2^n}.$$

Notons $a = a_{2n}$ et $b = a_{2n+1}$, deux réels de $[0 ; 1]$. On saute vers la droite : $x_{2n} = s + a$.

*Cas 1 : $s + a + b \leqslant L_n$.* On prend $x_{2n+1} = s + a + b$. Alors $0 \leqslant x_{2n} \leqslant x_{2n+1} \leqslant L_n$, et les points précédents sont dans $[0 ; L_{n-1}] \subset [0 ; L_n]$. Tous les points sont dans $[0 ; L_n]$.

*Cas 2 : $s + a + b > L_n$.* On prend $x_{2n+1} = s + a - b$. Comme $b \leqslant 1$,

$$x_{2n+1} = (s + a + b) - 2b > L_n - 2 = -\frac{1}{2^n}.$$

- *Si $s + a \leqslant L_{n-1}$.* Alors $x_{2n} \in [0 ; L_{n-1}]$, et $-\frac{1}{2^n} < x_{2n+1} \leqslant x_{2n} \leqslant L_{n-1}$. Tous les points sont dans l'intervalle $\left[-\frac{1}{2^n} ; L_{n-1}\right]$, dont la longueur est $L_{n-1} + \frac{1}{2^n} = L_n$. Par la première remarque, la suite est casable dans $[0 ; L_n]$.
- *Si $s + a > L_{n-1}$.* D'une part $x_{2n} = s + a \leqslant \left(1 - \frac{1}{2^n}\right) + 1 = L_n$. D'autre part, comme $b \leqslant 1$ et $n \geqslant 1$,

$$x_{2n+1} = s + a - b > L_{n-1} - 1 = 1 - \frac{2}{2^n} \geqslant 0.$$

  Ainsi $0 < x_{2n+1} \leqslant x_{2n} \leqslant L_n$, et tous les points sont dans $[0 ; L_n]$.

Dans tous les cas, la suite est casable dans $[0 ; L_n]$, ce qui prouve $\mathcal{P}(n)$ et termine la récurrence.

### Question 2

Fixons $n \geqslant 1$ et posons

$$N = 3 \times 2^n - 1 \qquad \text{et} \qquad \delta = \frac{1}{2N}, \qquad \text{de sorte que} \qquad 1 = (6 \times 2^n - 2)\,\delta.$$

**La suite.** On prend $a_1 = 1$ puis, pour $k = 1, 2, \ldots, 2n + 1$, $a_{2k} = 1 - \varepsilon_k$ et $a_{2k+1} = 1$, où

$$\varepsilon_k = 2^k \delta \ \text{ pour } k \leqslant n + 1, \qquad \varepsilon_k = 2^{2n+2-k} \delta \ \text{ pour } k \geqslant n + 2.$$

C'est la suite $1,\ 1 - 2\delta,\ 1,\ 1 - 4\delta,\ 1,\ \ldots,\ 1 - 2^{n+1}\delta,\ 1,\ 1 - 2^n\delta,\ 1,\ \ldots,\ 1 - 2\delta,\ 1$. Elle a $4n + 3$ termes, tous dans $[0 ; 1]$ car $2^{n+1}\delta = \frac{2^{n+1}}{6 \times 2^n - 2} < 1$. Elle est normalisée.

**Se placer au centre.** Supposons par l'absurde qu'elle soit casable dans un intervalle de longueur $L_n$. Par la première remarque, on peut prendre l'intervalle $[-h ; h]$ avec $h = \frac{L_n}{2} = 1 - \frac{1}{2^{n+1}}$. Comme $N > 2^n$, on a $\frac{1}{2^{n+1}} > \frac{1}{2N} = \delta$, donc

$$h < 1 - \delta.$$

Soient $y_0, \ldots, y_{4n+3}$ des points de $[-h ; h]$ qui conviennent, et $m_j = |y_j|$ la distance de $y_j$ au centre. Tous les $m_j$ sont au plus $h$.

**Fait A : un saut de longueur $1$.** Si $a_j = 1$, alors $m_j = 1 - m_{j-1}$. En effet, supposons $y_{j-1} \geqslant 0$ (l'autre cas est symétrique). Le saut vers la droite mènerait à $y_{j-1} + 1 \geqslant 1 > h$, hors de l'intervalle. Donc $y_j = y_{j-1} - 1$, qui est négatif car $y_{j-1} \leqslant h < 1$, et $m_j = 1 - y_{j-1} = 1 - m_{j-1}$.

**Fait B : un saut un peu plus court.** Soit $a_j = 1 - \varepsilon$, et supposons $m_{j-1} > u$ pour un réel $u \geqslant \varepsilon - \delta$ positif ou nul. Alors

$$m_j < \max(1 - \varepsilon - u,\ \varepsilon - \delta).$$

En effet, supposons $y_{j-1} > u$ (l'autre cas est symétrique). Le saut vers l'extérieur mènerait à $y_{j-1} + 1 - \varepsilon > u + 1 - \varepsilon \geqslant 1 - \delta > h$, hors de l'intervalle. Donc $y_j = y_{j-1} - (1 - \varepsilon)$ et $m_j = |m_{j-1} - (1 - \varepsilon)|$. Si $m_{j-1} \leqslant 1 - \varepsilon$, alors $m_j = 1 - \varepsilon - m_{j-1} < 1 - \varepsilon - u$. Sinon, $m_j = m_{j-1} - (1 - \varepsilon) \leqslant h - 1 + \varepsilon < \varepsilon - \delta$.

**La montée.** Par le fait A, $m_1 = 1 - m_0 \geqslant 1 - h > \delta$. Montrons que pour $k = 1, \ldots, n + 2$,

$$m_{2k-1} > (2^k - 1)\,\delta.$$

C'est vrai pour $k = 1$. Supposons-le pour un $k \leqslant n + 1$. On applique le fait B au saut $a_{2k} = 1 - 2^k\delta$, avec $u = (2^k - 1)\delta = \varepsilon_k - \delta$ :

$$m_{2k} < \max\left(1 - (2^{k+1} - 1)\delta,\ (2^k - 1)\delta\right) = 1 - (2^{k+1} - 1)\delta.$$

Le maximum est bien le premier nombre, car leur différence vaut $1 - (3 \times 2^k - 2)\delta = (6 \times 2^n - 3 \times 2^k)\delta \geqslant 0$ pour $k \leqslant n + 1$. Le fait A appliqué au saut $a_{2k+1} = 1$ donne $m_{2k+1} > (2^{k+1} - 1)\delta$, ce qui est la propriété au rang $k + 1$.

**La descente.** Pour $k = n + 2$, on vient d'obtenir $m_{2n+3} > (2^{n+2} - 1)\delta$. Or $1 = (6 \times 2^n - 2)\delta$ donne $(2^{n+2} - 1)\delta = 1 - (2^{n+1} - 1)\delta$. Montrons que pour $k = n + 2, \ldots, 2n + 2$, en posant $j = 2n + 2 - k$,

$$m_{2k-1} > 1 - (2^{j+1} - 1)\,\delta.$$

C'est vrai pour $k = n + 2$ (où $j = n$). Supposons-le pour un $k \leqslant 2n + 1$, donc $j \geqslant 1$. Le saut $a_{2k}$ vaut $1 - 2^j\delta$. On applique le fait B avec $u = 1 - (2^{j+1} - 1)\delta$, qui vérifie bien $u \geqslant 2^j\delta - \delta$, car $u - (2^j - 1)\delta = 1 - (3 \times 2^j - 2)\delta \geqslant 0$ :

$$m_{2k} < \max\left(1 - 2^j\delta - 1 + (2^{j+1} - 1)\delta,\ (2^j - 1)\delta\right) = (2^j - 1)\delta.$$

Le fait A appliqué au saut $a_{2k+1} = 1$ donne $m_{2k+1} > 1 - (2^j - 1)\delta = 1 - (2^{(j-1)+1} - 1)\delta$, ce qui est la propriété au rang $k + 1$.

**La contradiction.** Pour $k = 2n + 2$, on a $j = 0$ et $2k - 1 = 4n + 3$ :

$$m_{4n+3} > 1 - \delta > h.$$

Le dernier point est donc hors de l'intervalle $[-h ; h]$, ce qui est absurde.

**Conclusion.** Toute suite normalisée de longueur $2n + 1$ est casable dans $\left[0 ; 2 - \frac{1}{2^n}\right]$, mais la suite de longueur $4n + 3$ construite ci-dessus ne l'est pas.

## Going further

Pour $n = 1$, la suite de la question 2 est $1,\ 1 - \frac{1}{5},\ 1,\ 1 - \frac{2}{5},\ 1,\ 1 - \frac{1}{5},\ 1$. Essayer de la caser à la main dans $\left[0 ; \frac{3}{2}\right]$, et voir à quel saut on est bloqué.
