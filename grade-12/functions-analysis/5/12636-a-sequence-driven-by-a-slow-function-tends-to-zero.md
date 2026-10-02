---
id: "12636"
title: "Une suite pilotée par une fonction lente tend vers 0"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 90
tags: [suites, limite, fonction-croissante, suite-monotone, inegalites, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 novembre 2021"
  reference: "2021-12_Enonce-Web-Test-1.pdf, exercice 4 ; corrigé 2021-12_Corrige-Web-Test-1.pdf (dans le lemme 4 du corrigé, la preuve du second cas suppose « x ⩾ ℓ et y ⩽ ℓ/2 » au lieu de x ⩽ ℓ/2 et y ⩾ ℓ, et finit par « y − x − x − ε » au lieu de y − x − ε)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Web-Test-1.pdf"
---

## Statement

Soit $f : \mathbb{R} \to \mathbb{R}$ une fonction croissante telle que
$$f(y) - f(x) < y - x \qquad \text{pour tous les réels } x \text{ et } y \text{ tels que } y > x.$$
Soit $(u_n)_{n \geqslant 0}$ une suite telle que $u_{n+2} = f(u_{n+1}) - f(u_n)$ pour tout entier $n \geqslant 0$.

Démontrer que la suite $(u_n)$ converge vers 0, c'est-à-dire que pour tout réel $\varepsilon > 0$, il existe un entier $N$ tel que $|u_n| \leqslant \varepsilon$ pour tout entier $n \geqslant N$.

## Hints

1. Montre d'abord que $u_{n+2}$ est toujours compris entre $0$ et $u_{n+1} - u_n$. Qu'est-ce que cela dit de son signe ?
2. Remplacer $f$ par la fonction $t \mapsto -f(-t)$ et la suite $(u_n)$ par $(-u_n)$ ne change pas les hypothèses. Cela permet de supposer qu'un terme donné est positif.
3. Appelle *bon* un entier $n$ tel que $u_n$ et $u_{n+1}$ ont le même signe et $|u_{n+1}| \leqslant |u_n|$. Montre qu'il existe un bon entier, et qu'après un bon entier $m$, l'un des entiers $m + 2$ ou $m + 3$ est bon, sans que les valeurs absolues aient augmenté entre-temps.
4. Les valeurs absolues aux bons entiers successifs forment une suite décroissante et positive, donc elle a une limite $\ell$. Si $\ell > 0$, regarde comment $f$ augmente sur les intervalles $[0, \ell/2]$ et $[\ell/2, \ell]$, et montre qu'à chaque étape la valeur absolue diminue d'au moins une quantité fixe $\delta > 0$.

## Solution

Ici, « croissante » veut dire : si $x \leqslant y$, alors $f(x) \leqslant f(y)$. « Avoir le même signe » veut dire, pour deux réels $s$ et $t$, que $st \geqslant 0$ : le nombre 0 a le même signe que tous les réels.

**Étape 1 : deux règles de base.** Si $x \leqslant y$, alors
$$0 \leqslant f(y) - f(x) \leqslant y - x. \qquad (\mathrm{P})$$
La première inégalité vient de la croissance de $f$, la seconde de l'hypothèse (et c'est une égalité $0 = 0$ si $x = y$). On l'applique à $x = u_n$ et $y = u_{n+1}$, ou dans l'autre ordre :
$$\text{si } u_{n+1} \geqslant u_n : \ 0 \leqslant u_{n+2} \leqslant u_{n+1} - u_n ; \qquad \text{si } u_{n+1} \leqslant u_n : \ u_{n+1} - u_n \leqslant u_{n+2} \leqslant 0. \qquad (\mathrm{C})$$
Dans les deux cas, $u_{n+2}$ est entre $0$ et $u_{n+1} - u_n$.

**Étape 2 : une symétrie.** On pose $g(t) = -f(-t)$ et $v_n = -u_n$. La fonction $g$ est croissante, et pour $y > x$,
$$g(y) - g(x) = f(-x) - f(-y) < (-x) - (-y) = y - x,$$
car $-x > -y$. De plus $v_{n+2} = f(u_n) - f(u_{n+1}) = g(v_{n+1}) - g(v_n)$. Le couple $(g, v)$ vérifie donc les mêmes hypothèses que $(f, u)$, avec tous les signes changés. Tout ce que l'on démontre pour $(f, u)$ dans le cas où un certain terme $u_m$ est positif est donc aussi vrai, signes changés, quand $u_m$ est négatif.

**Étape 3 : les bons entiers.** On dit qu'un entier $n$ est *bon* si $u_n$ et $u_{n+1}$ ont le même signe et $|u_{n+1}| \leqslant |u_n|$. Cette définition ne change pas quand on remplace $u$ par $v$.

*Il existe un bon entier.* D'abord, il existe $k \in \{0, 1\}$ tel que $u_k$ et $u_{k+1}$ aient le même signe. Sinon $u_0$ et $u_1$ sont non nuls et de signes contraires, par exemple (étape 2) $u_0 > 0 > u_1$ ; alors $u_1 < u_0$, et (C) donne $u_2 \leqslant 0$, donc $k = 1$ convient. Ensuite, quitte à changer les signes, $u_k \geqslant 0$ et $u_{k+1} \geqslant 0$. Si $u_{k+1} \leqslant u_k$, l'entier $k$ est bon. Sinon $u_{k+1} > u_k \geqslant 0$, et (C) donne $0 \leqslant u_{k+2} \leqslant u_{k+1} - u_k \leqslant u_{k+1}$ : l'entier $k + 1$ est bon.

*Après un bon entier.* Soit $m$ un bon entier, avec par exemple $u_m \geqslant 0$. Alors $0 \leqslant u_{m+1} \leqslant u_m$, et (C) donne successivement
$$u_{m+1} - u_m \leqslant u_{m+2} \leqslant 0 \qquad \text{puis, comme } u_{m+2} \leqslant u_{m+1}, \qquad u_{m+2} - u_{m+1} \leqslant u_{m+3} \leqslant 0. \qquad (\mathrm{R})$$
On en déduit $u_{m+2} \geqslant -u_m$ et $u_{m+3} \geqslant (u_{m+1} - u_m) - u_{m+1} = -u_m$. Ainsi
$$|u_{m+1}|,\ |u_{m+2}|,\ |u_{m+3}| \leqslant |u_m|.$$
De plus $m + 2$ ou $m + 3$ est bon. En effet $u_{m+2}$ et $u_{m+3}$ sont tous deux négatifs. Si $|u_{m+3}| \leqslant |u_{m+2}|$, l'entier $m + 2$ est bon. Sinon $u_{m+3} < u_{m+2} \leqslant 0$, et (C) donne $u_{m+3} - u_{m+2} \leqslant u_{m+4} \leqslant 0$, donc $|u_{m+4}| \leqslant |u_{m+3}|$ : l'entier $m + 3$ est bon.

**Étape 4 : une suite décroissante.** Soit $m_0$ un bon entier. Pour $j \geqslant 0$, on pose $m_{j+1} = m_j + 2$ si cet entier est bon, et $m_{j+1} = m_j + 3$ sinon : d'après l'étape 3, $m_{j+1}$ est bon. On pose $w_j = |u_{m_j}|$.

D'après l'étape 3, $w_{j+1} \leqslant w_j$, et $|u_n| \leqslant w_j$ pour $m_j \leqslant n \leqslant m_{j+1}$, car $m_{j+1} \leqslant m_j + 3$. Les intervalles $[m_j, m_{j+1}]$, $[m_{j+1}, m_{j+2}]$, ... recouvrent tous les entiers à partir de $m_j$, et $(w_j)$ décroît. Donc
$$|u_n| \leqslant w_j \qquad \text{pour tout } n \geqslant m_j. \qquad (\mathrm{D})$$
La suite $(w_j)$ est décroissante et minorée par 0. Elle converge donc vers une limite $\ell \geqslant 0$, et $w_j \geqslant \ell$ pour tout $j$.

**Étape 5 : si $\ell = 0$, c'est fini.** Soit $\varepsilon > 0$. Il existe $j$ tel que $w_j \leqslant \varepsilon$, et d'après (D), $|u_n| \leqslant \varepsilon$ pour tout $n \geqslant N = m_j$. C'est ce qu'il fallait démontrer.

**Étape 6 : le cas $\ell > 0$ est impossible.** Supposons $\ell > 0$ et posons $h = \ell / 2$. D'après l'hypothèse, sur chacun des quatre intervalles $[-2h, -h]$, $[-h, 0]$, $[0, h]$, $[h, 2h]$, de longueur $h$, la fonction $f$ augmente *strictement moins* que $h$. On note $\delta$ le plus petit des quatre nombres
$$h - \left(f(-h) - f(-2h)\right), \quad h - \left(f(0) - f(-h)\right), \quad h - \left(f(h) - f(0)\right), \quad h - \left(f(2h) - f(h)\right).$$
On a donc $\delta > 0$, et $\delta \leqslant h$ car $f$ est croissante.

*Un renforcement de (P).* Soit $c$ l'un des nombres $-2h$, $-h$, $0$, $h$. Si $x \leqslant c$ et $y \geqslant c + h$, alors
$$f(y) - f(x) = \left(f(y) - f(c + h)\right) + \left(f(c + h) - f(c)\right) + \left(f(c) - f(x)\right) \leqslant (y - c - h) + (h - \delta) + (c - x),$$
où l'on a utilisé (P) pour le premier et le dernier terme. Ainsi
$$f(y) - f(x) \leqslant y - x - \delta. \qquad (\star)$$

Quand on remplace $f$ par $g$, les quatre nombres qui définissent $\delta$ sont les mêmes, dans un autre ordre : par exemple $h - \left(g(h) - g(0)\right) = h - \left(f(0) - f(-h)\right)$. La symétrie de l'étape 2 reste donc utilisable.

*À chaque étape, on perd au moins $\delta$.* Soit $j \geqslant 0$ et $m = m_j$. Quitte à changer les signes, $u_m \geqslant 0$, donc $u_m = w_j \geqslant \ell = 2h$. On sait que $0 \leqslant u_{m+1} \leqslant u_m$, et on utilise (R).

- Si $u_{m+1} \geqslant h$ : d'abord $u_{m+2} \geqslant u_{m+1} - u_m \geqslant h - u_m \geqslant \delta - u_m$. Ensuite $u_{m+2} \leqslant 0$ et $u_{m+1} \geqslant h$, donc $(\star)$ avec $c = 0$ donne $f(u_{m+1}) - f(u_{m+2}) \leqslant u_{m+1} - u_{m+2} - \delta$, c'est-à-dire
$$u_{m+3} \geqslant u_{m+2} - u_{m+1} + \delta \geqslant (u_{m+1} - u_m) - u_{m+1} + \delta = \delta - u_m.$$
- Si $u_{m+1} < h$ : comme $u_m \geqslant 2h$, $(\star)$ avec $c = h$ donne $f(u_m) - f(u_{m+1}) \leqslant u_m - u_{m+1} - \delta$, c'est-à-dire $u_{m+2} \geqslant u_{m+1} - u_m + \delta \geqslant \delta - u_m$. Ensuite, avec (R),
$$u_{m+3} \geqslant u_{m+2} - u_{m+1} \geqslant (u_{m+1} - u_m + \delta) - u_{m+1} = \delta - u_m.$$

Dans les deux cas, $\delta - u_m \leqslant u_{m+2} \leqslant 0$ et $\delta - u_m \leqslant u_{m+3} \leqslant 0$. Comme $m_{j+1}$ vaut $m + 2$ ou $m + 3$, on obtient
$$w_{j+1} \leqslant w_j - \delta.$$
Par récurrence, $w_j \leqslant w_0 - j\,\delta$ pour tout $j$. Pour $j > w_0 / \delta$, on aurait $w_j < 0$, ce qui est impossible pour une valeur absolue. Donc $\ell > 0$ est impossible.

**Conclusion.** On a $\ell = 0$, et d'après l'étape 5, **la suite $(u_n)$ converge vers 0.**

## Going further

- L'hypothèse stricte $f(y) - f(x) < y - x$ est indispensable. Avec $f(t) = t$, la suite vérifie $u_{n+2} = u_{n+1} - u_n$. En partant de $u_0 = 1$, $u_1 = 1$, on obtient $1, 1, 0, -1, -1, 0, 1, 1, \ldots$, qui revient tous les six rangs et ne tend pas vers 0.
- L'étape 6 est le cœur du problème. Savoir que $f(y) - f(x) < y - x$ ne suffit pas à dire que les valeurs absolues diminuent d'une quantité fixe, car l'écart peut être aussi petit que l'on veut. C'est la limite $\ell$, connue à l'avance, qui permet de choisir quatre intervalles fixes et d'en tirer un $\delta$ qui ne dépend pas de $j$.
- Le corrigé signale des erreurs fréquentes : croire qu'une suite est toujours croissante ou décroissante (contre-exemple $u_n = (-1)^n$), croire qu'une suite positive décroissante tend forcément vers 0 (contre-exemple $u_n = (n + 2)/(n + 1)$), ou oublier que les termes peuvent changer de signe.
