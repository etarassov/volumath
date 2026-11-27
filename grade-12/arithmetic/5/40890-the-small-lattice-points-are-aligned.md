---
id: "40890"
title: "Un réseau qui évite un rectangle : ses petits points sont alignés"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [reseau, irrationnel, coordonnees, translation, homothetie, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40887", "40888", "40889", "40891", "40892"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », partie 3 « Intersection vide », question 14 a) à f)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Soit $\alpha$ et $\beta$ deux nombres irrationnels compris strictement entre $0$ et $1$. On se place dans un repère du plan, d'origine $O$, et l'on note $\Omega$ l'ensemble des points de coordonnées $(k\alpha + m, k\beta + n)$, où $k$, $m$ et $n$ sont des entiers relatifs. Pour deux intervalles $I$ et $J$, on note $I \times J$ le rectangle formé des points $(x, y)$ tels que $x \in I$ et $y \in J$.

On admet les trois résultats suivants, démontrés dans une partie précédente.

- **(R1)** Le point $O$ est dans $\Omega$. Si $A$ et $B$ sont dans $\Omega$, la translation de vecteur $\overrightarrow{AB}$ envoie tout point de $\Omega$ sur un point de $\Omega$. Pour tout entier relatif $\ell$, l'homothétie de centre $O$ et de rapport $\ell$ envoie tout point de $\Omega$ sur un point de $\Omega$.
- **(R2)** Le rectangle $R = ]0, \alpha[ \times ]0, \beta[$ ne contient aucun point de $\Omega$.
- **(R3)** Pour tout réel $\varepsilon > 0$, le carré $]-\varepsilon, \varepsilon[ \times ]-\varepsilon, \varepsilon[$ contient un point de $\Omega$ autre que $O$.

Pour un point $P$ de coordonnées $(x, y)$ et un entier $\ell$, on note $\ell P$ le point de coordonnées $(\ell x, \ell y)$.

1. Soit $\varepsilon$ un réel tel que $0 < \varepsilon \leqslant \min\{\alpha ; \beta\}$. Démontrer que le rectangle $]0, \varepsilon[ \times ]-\varepsilon, 0[$ contient un point de $\Omega$.

On note $Q$ un point ainsi obtenu pour $\varepsilon = \frac{1}{2} \min\{\alpha ; \beta\}$, et $(s, t)$ ses coordonnées : on a donc $0 < s < \varepsilon$ et $-\varepsilon < t < 0$. Pour tout point $P$ de coordonnées $(x, y)$, on pose

$$g(P) = \frac{x}{s} - \frac{y}{t}.$$

2. Démontrer que, pour tout entier relatif $k$, le rectangle $]ks, (k+2)s] \times ]kt, (k-2)t]$ ne contient aucun point de $\Omega$.
3. Démontrer que $\Omega$ ne contient aucun point $P$ tel que $1 < g(P) \leqslant 2$.
4. Démontrer que tout point $P$ de $\Omega$ tel que $\lvert g(P) \rvert \leqslant 2$ appartient à la droite $(OQ)$.
5. Démontrer que, pour tout réel $\varepsilon > 0$, il existe un point de $\Omega$ situé à la fois sur la droite $(OQ)$ et dans le rectangle $]0, \varepsilon[ \times ]-\varepsilon, 0[$.
6. Démontrer que toute droite parallèle à $(OQ)$ qui passe par un point du rectangle $R$ ne contient aucun point de $\Omega$.

## Hints

1. **Question 1.** Prenez le point donné par (R3). Pourquoi ses deux coordonnées sont-elles non nulles ? Selon leurs signes, utilisez (R2) ou la symétrie de centre $O$.
2. **Question 2.** Translatez le rectangle par le vecteur qui envoie le point $kQ$ sur $O$. Attention : $t < 0$, donc $kt < (k-2)t$.
3. **Question 3.** Posez $a = \frac{x}{s}$ et $b = \frac{y}{t}$. Traduisez « $P$ est dans le rectangle de la question 2 » en conditions sur $k$, $a$ et $b$. L'intervalle $]b, a[$ est de longueur plus grande que $1$.
4. **Question 4.** On a $g(\ell P) = \ell\, g(P)$. Si $0 < g(P) \leqslant 1$, quel multiple de $P$ a une valeur de $g$ dans $]1, 2]$ ?
5. **Question 4.** Que vaut $g$ sur la droite $(OQ)$ ?
6. **Question 6.** En ajoutant à un point de $\Omega$ des multiples d'un très petit point de $\Omega$ situé sur $(OQ)$, on se déplace sur une parallèle à $(OQ)$ par tout petits pas.

## Solution

**1.** Le nombre $\varepsilon$ est au plus $\min\{\alpha ; \beta\} < 1$. Prenons, grâce à (R3), un point $Y = (k\alpha + m, k\beta + n)$ de $\Omega$, autre que $O$, dans le carré $]-\varepsilon, \varepsilon[ \times ]-\varepsilon, \varepsilon[$. Si l'on avait $k = 0$, les coordonnées $m$ et $n$ de $Y$ seraient des entiers strictement entre $-1$ et $1$, donc nulles, et $Y = O$. Donc $k \neq 0$, et comme $\alpha$ et $\beta$ sont irrationnels, $k\alpha + m \neq 0$ et $k\beta + n \neq 0$. Les deux coordonnées de $Y$ sont non nulles.

- Si elles sont toutes deux positives, $Y$ est dans $]0, \varepsilon[ \times ]0, \varepsilon[$, qui est inclus dans $R$ : c'est impossible d'après (R2).
- Si elles sont toutes deux négatives, le point $-Y$, qui est dans $\Omega$ d'après (R1), est dans $]0, \varepsilon[ \times ]0, \varepsilon[$ : impossible de même.
- Si la première est positive et la seconde négative, $Y$ convient.
- Si la première est négative et la seconde positive, $-Y$ convient.

**2.** Comme $t < 0$, on a $(k-2)t = kt - 2t > kt$ : l'intervalle $]kt, (k-2)t]$ a un sens. Supposons qu'un point $P = (x, y)$ de $\Omega$ soit dans ce rectangle. Le point $kQ = (ks, kt)$ est dans $\Omega$ (R1), et la translation qui envoie $kQ$ sur $O$ envoie $P$ sur le point $P' = (x - ks, y - kt)$ de $\Omega$. On a

$$0 < x - ks \leqslant 2s \quad \text{et} \quad 0 < y - kt \leqslant -2t = 2\lvert t \rvert.$$

Or $s$ et $\lvert t \rvert$ sont strictement inférieurs à $\frac{1}{2}\min\{\alpha ; \beta\}$, donc $2s < \alpha$ et $2\lvert t \rvert < \beta$. Le point $P'$ serait dans $R$, ce qui contredit (R2).

**3.** Soit $P = (x, y)$ un point de $\Omega$ ; posons $a = \frac{x}{s}$ et $b = \frac{y}{t}$, de sorte que $g(P) = a - b$, et supposons $1 < a - b \leqslant 2$. Comme $s > 0$ et $t < 0$, pour un entier $k$ :

$$ks < x \leqslant (k+2)s \iff k < a \leqslant k + 2, \qquad kt < y \leqslant (k-2)t \iff k - 2 \leqslant b < k.$$

L'intervalle $]b, a[$ est de longueur $a - b > 1$ : il contient un entier $k$. Alors $b < k < a$, et de plus $k < a \leqslant b + 2$ et $k > b \geqslant a - 2$. Les deux conditions ci-dessus sont remplies : $P$ est dans le rectangle de la question 2 pour cet entier $k$, ce qui est impossible. Aucun point de $\Omega$ ne vérifie $1 < g(P) \leqslant 2$.

**4.** Pour tout entier $\ell$, $g(\ell P) = \ell\, g(P)$, et $\ell P$ est dans $\Omega$ si $P$ l'est (R1). Soit $P$ un point de $\Omega$ tel que $0 < \lvert g(P) \rvert \leqslant 2$. Quitte à remplacer $P$ par $-P$, on peut supposer $0 < g(P) \leqslant 2$.

- Si $g(P) > 1$, c'est impossible d'après la question 3.
- Si $g(P) \leqslant 1$, soit $j$ le plus petit entier tel que $j\, g(P) > 1$. Alors $(j - 1)\,g(P) \leqslant 1$, donc $j\, g(P) \leqslant 1 + g(P) \leqslant 2$. Le point $jP$ de $\Omega$ vérifie $1 < g(jP) \leqslant 2$ : impossible encore.

Donc $g(P) = 0$, c'est-à-dire $\frac{x}{s} = \frac{y}{t}$, soit $y = \frac{t}{s}\, x$ : c'est l'équation de la droite $(OQ)$. Le point $P$ est sur $(OQ)$.

**5.** Soit $\varepsilon > 0$, et posons $\varepsilon' = \min\{\varepsilon ; s ; \lvert t \rvert\}$. Comme $\varepsilon' \leqslant s < \min\{\alpha ; \beta\}$, la question 1 fournit un point $P = (x, y)$ de $\Omega$ dans $]0, \varepsilon'[ \times ]-\varepsilon', 0[$. Alors $0 < \frac{x}{s} < 1$ et, comme $y$ et $t$ sont négatifs avec $\lvert y \rvert < \lvert t \rvert$, $0 < \frac{y}{t} < 1$. Donc $-1 < g(P) < 1$, et d'après la question 4, $P$ est sur $(OQ)$. Il est bien dans $]0, \varepsilon[ \times ]-\varepsilon, 0[$ puisque $\varepsilon' \leqslant \varepsilon$.

**6.** Soit $D$ une droite parallèle à $(OQ)$ passant par un point $M = (x_M, y_M)$ de $R$, et supposons que $D$ contienne un point $P$ de $\Omega$. Comme $M$ est dans le rectangle ouvert $R$, il existe $\delta > 0$ tel que tout point dont les deux coordonnées diffèrent de celles de $M$ de moins de $\delta$ soit encore dans $R$.

D'après la question 5, il existe un point $Z = (z_1, z_2)$ de $\Omega$ sur $(OQ)$ avec $0 < z_1 < \delta$ et $-\delta < z_2 < 0$. Pour tout entier $j$, le point $P + jZ$, de coordonnées $(x_P + j z_1, y_P + j z_2)$, est dans $\Omega$ d'après (R1) (homothétie de rapport $j$, puis translation qui envoie $O$ sur $jZ$), et il est sur $D$, car $\overrightarrow{OZ}$ dirige $(OQ)$ donc $D$.

Les abscisses $x_P + j z_1$ avancent par pas de $z_1 > 0$. Soit $j$ le plus petit entier tel que $x_P + j z_1 \geqslant x_M$ ; le point $N = P + jZ$ vérifie alors $0 \leqslant x_N - x_M < z_1 < \delta$. Comme $M$ et $N$ sont sur $D$, de coefficient directeur $\frac{z_2}{z_1}$,

$$\lvert y_N - y_M \rvert = \frac{\lvert z_2 \rvert}{z_1}\, (x_N - x_M) < \lvert z_2 \rvert < \delta.$$

Le point $N$ de $\Omega$ serait donc dans $R$, ce qui contredit (R2). Aucune parallèle à $(OQ)$ passant par un point de $R$ ne contient de point de $\Omega$.

**Bilan.** Tous les points de $\Omega$ qui sont assez proches de la droite $(OQ)$, au sens où $\lvert g \rvert \leqslant 2$, sont exactement sur cette droite, et il y en a d'aussi proches de $O$ qu'on veut. En glissant le long des parallèles à $(OQ)$ par tout petits pas, on en déduit qu'une bande entière du plan, celle des parallèles à $(OQ)$ qui traversent $R$, est vide de points de $\Omega$.

## Going further

- Dans la suite du sujet, on étudiait les abscisses des points où les parallèles à $(OQ)$ passant par les points de $\Omega$ coupent l'axe des abscisses. Grâce à la question 6, on montre que ces abscisses sont exactement les multiples entiers d'un réel $\lambda > 0$, puis que la pente de $(OQ)$ est rationnelle, et enfin qu'il existe des entiers $u, v \geqslant 1$ tels que $u\alpha + v\beta = 1$.
- Faites un dessin pour $\alpha = \frac{\sqrt{2} - 1}{2}$ et $\beta = 2 - \sqrt{2}$ (on a $2\alpha + \beta = 1$) : placez quelques points de $\Omega$ proches de $O$ à la calculatrice. Quelle est la pente de $(OQ)$ ?
