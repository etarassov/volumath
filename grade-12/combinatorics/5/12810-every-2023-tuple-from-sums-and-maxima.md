---
id: "12810"
title: "Écrire tous les 2023-uplets avec des sommes et des maxima"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [invariant, construction, vecteurs, maximum, tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test senior, exercice 7 ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

Lucile a écrit au tableau $s$ listes de $2023$ entiers (des « $2023$-uplets »). Elle s'autorise ensuite l'opération suivante : elle choisit deux $2023$-uplets $u = (u_1, u_2, \ldots, u_{2023})$ et $v = (v_1, v_2, \ldots, v_{2023})$ déjà écrits au tableau, pas forcément distincts, et elle écrit à son tour les deux $2023$-uplets

$$u + v = (u_1 + v_1,\ \ldots,\ u_{2023} + v_{2023}) \qquad \text{et} \qquad \max(u, v) = \left(\max(u_1, v_1),\ \ldots,\ \max(u_{2023}, v_{2023})\right).$$

Pour quelles valeurs de $s$ Lucile peut-elle choisir ses $s$ $2023$-uplets de départ de façon à pouvoir ensuite écrire, en répétant cette opération, **n'importe quel** $2023$-uplet d'entiers ?

## Hints

1. Commencez par $s = 1$. Si la première coordonnée du $2023$-uplet de départ est positive ou nulle, que peut-on dire de la première coordonnée de tout ce que Lucile écrira ?
2. Pour $s = 2$, avec $u$ et $v$ au départ : pour chaque coordonnée $i$, montrez que l'un des nombres $u_i$, $v_i$ est strictement positif et l'autre strictement négatif.
3. Toujours pour $s = 2$ : parmi les trois premières coordonnées, deux ont « le même vecteur positif », disons $u_1, u_2 > 0$ et $v_1, v_2 < 0$. Cherchez une inégalité entre $x_1$ et $x_2$ qui reste vraie quand on additionne ou quand on prend le maximum.
4. Pour $s = 3$ : si Lucile sait écrire le $2023$-uplet $(-1, -1, \ldots, -1)$ et chacun des $2023$-uplets $e_k$ qui valent $1$ en position $k$ et $0$ ailleurs, elle sait tout écrire. Pourquoi ?
5. Pour fabriquer $e_k$, cherchez un $2023$-uplet dont la $i$-ème coordonnée vaut $1 - (i - k)^2$. Partez de $u_i = -1$, $v_i = i$, $w_i = -i^2$.

## Solution

La réponse : Lucile y arrive si et seulement si $s \geq 3$.

Dans toute la solution, on dit qu'un $2023$-uplet est **constructible** s'il peut apparaître au tableau. Remarquons que si $x$ est constructible, alors $x + x = 2x$, puis $3x$, etc., le sont aussi, et plus généralement toute somme $n_1 x^{(1)} + n_2 x^{(2)} + \cdots$ de $2023$-uplets constructibles, avec des coefficients $n_j$ entiers **strictement positifs**, est constructible (on additionne un par un).

### Le cas s = 1 ne marche pas

Soit $u$ l'unique $2023$-uplet de départ.

- Si $u_1 \geq 0$ : la somme et le maximum de deux nombres positifs ou nuls sont positifs ou nuls. Donc la première coordonnée de tout $2023$-uplet constructible est $\geq 0$, et Lucile n'écrira jamais $(-1, 0, \ldots, 0)$.
- Si $u_1 < 0$ : la somme et le maximum de deux nombres strictement négatifs sont strictement négatifs. Donc Lucile n'écrira jamais $(0, 0, \ldots, 0)$.

### Le cas s = 2 ne marche pas

Soit $u$ et $v$ les deux $2023$-uplets de départ, et supposons que Lucile puisse tout écrire.

**Signes des coordonnées.** Fixons une position $i$. Le même raisonnement que pour $s = 1$ montre que :

- si $u_i \geq 0$ et $v_i \geq 0$, toutes les $i$-èmes coordonnées constructibles sont $\geq 0$ ; impossible ;
- si $u_i < 0$ et $v_i < 0$, elles sont toutes $< 0$ ; impossible ;
- si $u_i \leq 0$ et $v_i \leq 0$, elles sont toutes $\leq 0$, et Lucile n'écrit jamais un $1$ en position $i$ ; impossible.

Donc, en chaque position, l'un des deux nombres $u_i$, $v_i$ est **strictement positif** et l'autre **strictement négatif**.

**Principe des tiroirs.** Regardons les positions $1$, $2$, $3$. En chacune d'elles, c'est soit $u$, soit $v$ qui a la coordonnée positive. Il y a trois positions et deux possibilités, donc deux positions ont la même. Quitte à renommer les vecteurs et les positions, on peut supposer que

$$u_1 > 0, \quad u_2 > 0, \quad v_1 < 0, \quad v_2 < 0.$$

Quitte à échanger les positions $1$ et $2$, on peut aussi supposer que $u_1 v_2 \leq u_2 v_1$ (l'une des deux inégalités $u_1 v_2 \leq u_2 v_1$ ou $u_2 v_1 \leq u_1 v_2$ est forcément vraie, et échanger les positions transforme l'une en l'autre).

**Un invariant.** Montrons que tout $2023$-uplet constructible $x$ vérifie

$$u_1\, x_2 \leq u_2\, x_1. \qquad (\star)$$

- C'est vrai pour $x = u$ (égalité) et pour $x = v$ (c'est notre hypothèse).
- Si $x$ et $y$ vérifient $(\star)$, alors $u_1 (x_2 + y_2) = u_1 x_2 + u_1 y_2 \leq u_2 x_1 + u_2 y_1 = u_2 (x_1 + y_1)$ : la somme vérifie $(\star)$.
- Si $x$ et $y$ vérifient $(\star)$, notons $m_1 = \max(x_1, y_1)$ et $m_2 = \max(x_2, y_2)$. Comme $u_2 > 0$, on a $u_1 x_2 \leq u_2 x_1 \leq u_2 m_1$ et de même $u_1 y_2 \leq u_2 m_1$. Or $u_1 > 0$, donc $u_1 m_2$ est égal à $u_1 x_2$ ou à $u_1 y_2$. Ainsi $u_1 m_2 \leq u_2 m_1$ : le maximum vérifie $(\star)$.

Par récurrence sur le nombre d'opérations, tout ce qui est écrit au tableau vérifie $(\star)$. Or le $2023$-uplet $(0, 1, 0, \ldots, 0)$ ne la vérifie pas, puisque $u_1 \times 1 > u_2 \times 0$. Contradiction : **le cas $s = 2$ ne marche pas.**

### Le cas s = 3 marche

Lucile écrit au départ les trois $2023$-uplets $u$, $v$, $w$ définis par

$$u_i = -1, \qquad v_i = i, \qquad w_i = -i^2 \qquad (1 \leq i \leq 2023).$$

**Étape 1.** Pour $k$ entier entre $1$ et $2023$, le $2023$-uplet $a^{(k)} = (k^2 - 1)\, u + 2k\, v + w$ est constructible (les coefficients $k^2 - 1 \geq 0$, $2k$ et $1$ sont des entiers positifs ; un coefficient nul veut dire qu'on n'utilise pas le vecteur). Sa $i$-ème coordonnée vaut

$$-(k^2 - 1) + 2ki - i^2 = 1 - (i - k)^2.$$

**Étape 2 : le $2023$-uplet nul.** Le $2023$-uplet $b^{(k)} = a^{(k)} + u$ a pour coordonnées $-(i - k)^2$ : elles sont toutes $\leq 0$, et celle de position $k$ vaut $0$. Prenons le maximum de $b^{(1)}, b^{(2)}, \ldots, b^{(2023)}$ (en prenant les maxima deux par deux, un par un). En position $i$, on obtient $\max_k \left(-(i-k)^2\right) = 0$, atteint pour $k = i$. Donc le $2023$-uplet nul $\mathbf{0} = (0, \ldots, 0)$ est constructible.

**Étape 3 : les $2023$-uplets $e_k$.** Le nombre $1 - (i - k)^2$ vaut $1$ si $i = k$, $0$ si $i = k \pm 1$, et il est strictement négatif sinon. Donc

$$\max\left(a^{(k)}, \mathbf{0}\right) = e_k = (0, \ldots, 0, 1, 0, \ldots, 0) \qquad (\text{le } 1 \text{ en position } k)$$

est constructible.

**Étape 4 : tout est constructible.** Soit $x = (x_1, \ldots, x_{2023})$ un $2023$-uplet d'entiers quelconque, et $M = 1 + \max_k |x_k|$. Alors $M \geq 1$ et chaque $M + x_k \geq 1$, donc

$$M\, u + (M + x_1)\, e_1 + (M + x_2)\, e_2 + \cdots + (M + x_{2023})\, e_{2023}$$

est une somme à coefficients entiers strictement positifs de $2023$-uplets constructibles : elle est constructible. Sa $i$-ème coordonnée vaut $-M + (M + x_i) = x_i$. C'est donc $x$.

**Si $s > 3$**, Lucile écrit $u$, $v$, $w$ et, par exemple, $s - 3$ copies de $u$ : elle ne s'en sert pas, et le même raisonnement marche.

### Conclusion

Lucile peut écrire n'importe quel $2023$-uplet d'entiers si et seulement si $s \geq 3$.

## Going further

1. Que devient la réponse pour des $n$-uplets avec $n = 1$ ? Et avec $n = 2$ ? À quel endroit de la preuve du cas $s = 2$ a-t-on utilisé qu'il y a au moins trois coordonnées ?
