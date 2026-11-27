---
id: "40891"
title: "Du réseau à la relation uα + vβ = 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [reseau, pgcd, irrationnel, rationnels, coordonnees, partie-entiere]
adapted_from: null
see_also: ["40887", "40888", "40889", "40890", "40892"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », partie 3 « Intersection vide », questions 15 à 19"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Soit $\alpha$ et $\beta$ deux nombres irrationnels compris strictement entre $0$ et $1$. On se place dans un repère du plan, d'origine $O$, et l'on note $\Omega$ l'ensemble des points de coordonnées $(k\alpha + m, k\beta + n)$, où $k$, $m$ et $n$ sont des entiers relatifs. On note $R$ le rectangle formé des points $(x, y)$ tels que $0 < x < \alpha$ et $0 < y < \beta$.

On admet les résultats suivants, démontrés dans des parties précédentes.

- **(R1)** Le point $O$ est dans $\Omega$. Si $A$ et $B$ sont dans $\Omega$, la translation de vecteur $\overrightarrow{AB}$ envoie tout point de $\Omega$ sur un point de $\Omega$. Pour tout entier relatif $\ell$, l'homothétie de centre $O$ et de rapport $\ell$ envoie tout point de $\Omega$ sur un point de $\Omega$.
- **(R2)** Pour tout point $P$ de $\Omega$, de coordonnées $(x, y)$, il existe un unique triplet d'entiers $(k, m, n)$ tel que $x = k\alpha + m$ et $y = k\beta + n$. On note $f(P) = k$.
- **(R3)** Il existe un point $Q$ de $\Omega$, de coordonnées $(s, t)$ avec $0 < s < 1$ et $-1 < t < 0$, ayant les deux propriétés suivantes :
  - pour tout $\varepsilon > 0$, la droite $(OQ)$ contient un point de $\Omega$ dont l'abscisse est strictement comprise entre $0$ et $\varepsilon$ ;
  - toute droite parallèle à $(OQ)$ qui passe par un point de $R$ ne contient aucun point de $\Omega$.

1. Soit $x > 0$ un réel et $X$ un ensemble de réels qui contient $x$ mais aucun élément de l'intervalle $]0, x[$. On suppose que, pour tous $y$ et $z$ dans $X$, la différence $y - z$ est dans $X$. Démontrer que $X$ est exactement l'ensemble des multiples entiers de $x$, c'est-à-dire des réels $kx$ avec $k \in \mathbb{Z}$.

2. On note $\Lambda$ l'ensemble des réels $x$ tels que le point $(x, 0)$ appartient à une droite parallèle à $(OQ)$ passant par un point de $\Omega$. On pose $\lambda = \alpha - \frac{s}{t}\beta$.

   a) Démontrer que $\Lambda$ contient $\lambda$ mais aucun élément de l'intervalle $]0, \lambda[$.

   b) En déduire que $\Lambda$ est l'ensemble des multiples entiers de $\lambda$.

3. On note $\Gamma$ l'ensemble des entiers $f(P)$, pour tous les points $P$ de $\Omega$ situés sur la droite $(OQ)$.

   a) Démontrer que $\Gamma$ contient au moins un entier strictement positif.

   b) Soit $\gamma$ le plus petit entier strictement positif de $\Gamma$. Démontrer que $\Gamma$ est l'ensemble des multiples entiers de $\gamma$.

   c) En déduire que le nombre $-\frac{s}{t}$ est rationnel.

4. On écrit $-\frac{s}{t} = \frac{u}{v}$ sous forme de fraction irréductible, avec $u \geqslant 1$ et $v \geqslant 1$, et l'on note $W$ l'ensemble des entiers relatifs $\ell$ tels que $\frac{\ell}{v} \in \Lambda$.

   a) Démontrer que $u$ et $v$ appartiennent à $W$.

   b) En déduire que $W = \mathbb{Z}$.

5. En déduire qu'il existe deux entiers $u' \geqslant 1$ et $v' \geqslant 1$ tels que $u'\alpha + v'\beta = 1$.

## Hints

1. **Question 1.** Montrez d'abord que $0$, puis $-y$, puis $y + z$ sont dans $X$ quand $y$ et $z$ y sont. Pour l'autre inclusion, divisez $y$ par $x$ « avec reste » : posez $k = \mathrm{ent}\left(\frac{y}{x}\right)$ et regardez $y - kx$.
2. **Question 2.** La parallèle à $(OQ)$ passant par $P = (p_1, p_2)$ coupe l'axe des abscisses au point d'abscisse $h(P) = p_1 - \frac{s}{t}\, p_2$. Donc $\Lambda$ est l'ensemble des $h(P)$ pour $P$ dans $\Omega$.
3. **Question 2.** a) Pour $\lambda$, prenez $P = (\alpha, \beta)$. Pour l'intervalle, montrez que la parallèle à $(OQ)$ passant par $(x, 0)$, avec $0 < x < \lambda$, traverse $R$.
4. **Question 3.** c) Si $P$ et $P'$ sont deux points de $\Omega$ sur $(OQ)$ avec $f(P) = f(P')$, le point $P - P'$ est sur $(OQ)$ et a ses deux coordonnées entières. Si la pente de $(OQ)$ était irrationnelle, quels points de $\Omega$ seraient sur $(OQ)$ ? Comparez avec (R3).
5. **Question 4.** b) Appliquez la question 1 à $W$, avec son plus petit élément strictement positif. Que dire d'un diviseur commun de $u$ et $v$, quand la fraction $\frac{u}{v}$ est irréductible ?
6. **Question 5.** Écrivez que $\frac{1}{v}$ est dans $\Lambda$.

## Solution

Pour deux points $P = (p_1, p_2)$ et $P' = (p'_1, p'_2)$, on note $P - P'$ le point $(p_1 - p'_1, p_2 - p'_2)$ et $jP$ le point $(jp_1, jp_2)$. D'après (R1), si $P$ et $P'$ sont dans $\Omega$, alors $P - P'$ (image de $P$ par la translation de vecteur $\overrightarrow{P'O}$) et $jP$ sont dans $\Omega$ ; et d'après l'unicité dans (R2), $f(P - P') = f(P) - f(P')$.

**1.** *Les multiples de $x$ sont dans $X$.* On a $0 = x - x \in X$. Si $y \in X$, alors $-y = 0 - y \in X$. Si $y$ et $z$ sont dans $X$, alors $y + z = y - (-z) \in X$. De proche en proche, $x, 2x, 3x, \ldots$ sont dans $X$, ainsi que leurs opposés et $0$.

*Réciproquement*, soit $y \in X$ et $k = \mathrm{ent}\left(\frac{y}{x}\right)$. Alors $k \leqslant \frac{y}{x} < k + 1$, donc $0 \leqslant y - kx < x$. Le nombre $r = y - kx$ est dans $X$ (différence de deux éléments de $X$), et il est dans $[0, x[$. Comme $X$ ne contient aucun élément de $]0, x[$, on a $r = 0$, soit $y = kx$.

**2.** La droite $(OQ)$ est dirigée par $\overrightarrow{OQ}$, de coordonnées $(s, t)$. La parallèle à $(OQ)$ passant par $P = (p_1, p_2)$ est formée des points $(p_1 + \tau s, p_2 + \tau t)$, $\tau$ réel ; elle coupe l'axe des abscisses pour $\tau = -\frac{p_2}{t}$, au point d'abscisse

$$h(P) = p_1 - \frac{s}{t}\, p_2.$$

Ainsi $\Lambda$ est l'ensemble des $h(P)$ pour $P$ dans $\Omega$. Posons $c = -\frac{s}{t}$ ; comme $s > 0$ et $t < 0$, on a $c > 0$, et $h(P) = p_1 + c\, p_2$.

a) Le point $(\alpha, \beta)$ est dans $\Omega$ (avec $k = 1$, $m = n = 0$), donc $\lambda = \alpha + c\beta = h(\alpha, \beta)$ est dans $\Lambda$. De plus $\lambda > 0$.

Soit $x$ tel que $0 < x < \lambda$. Les points de la parallèle $D$ à $(OQ)$ passant par $(x, 0)$ sont les points $(x - c y, y)$, $y$ réel (car $h$ vaut $x$ en chacun d'eux). Un tel point est dans $R$ lorsque

$$0 < y < \beta \quad \text{et} \quad 0 < x - cy < \alpha, \quad \text{c'est-à-dire} \quad \frac{x - \alpha}{c} < y < \frac{x}{c}.$$

Les intervalles $]0, \beta[$ et $]\frac{x - \alpha}{c}, \frac{x}{c}[$ se rencontrent, car chaque borne gauche est strictement inférieure à chaque borne droite : $0 < \beta$, $0 < \frac{x}{c}$, $\frac{x - \alpha}{c} < \frac{x}{c}$, et $\frac{x - \alpha}{c} < \beta$ puisque $x < \alpha + c\beta = \lambda$. La droite $D$ passe donc par un point de $R$ ; d'après (R3), elle ne contient aucun point de $\Omega$, donc $x \notin \Lambda$.

b) Si $x = h(P)$ et $x' = h(P')$ sont dans $\Lambda$, alors $x - x' = h(P - P')$, avec $P - P'$ dans $\Omega$ : $x - x' \in \Lambda$. La question 1, appliquée à $X = \Lambda$ et au réel $\lambda$, donne : $\Lambda$ est l'ensemble des $j\lambda$, $j \in \mathbb{Z}$.

**3.** Si $P$ et $P'$ sont des points de $\Omega$ sur $(OQ)$, le point $P - P'$ est encore dans $\Omega$ et sur $(OQ)$, qui passe par $O$.

a) Le point $Q$ est dans $\Omega$ et sur $(OQ)$. On a $f(Q) \neq 0$ : sinon $s$ serait un entier, alors que $0 < s < 1$. Le point $-Q = O - Q$ est aussi dans $\Omega$ sur $(OQ)$, avec $f(-Q) = -f(Q)$. L'un des deux entiers $f(Q)$, $-f(Q)$ est strictement positif et appartient à $\Gamma$.

b) D'après la remarque ci-dessus, $\Gamma$ est stable par différence. Il contient $\gamma$ et, par définition de $\gamma$, aucun entier de $]0, \gamma[$ ; comme $\Gamma$ ne contient que des entiers, il ne contient aucun réel de $]0, \gamma[$. La question 1 donne : $\Gamma$ est l'ensemble des multiples entiers de $\gamma$.

c) Soit $Z_0 = (z_1, z_2)$ un point de $\Omega$ sur $(OQ)$ tel que $f(Z_0) = \gamma$. On a $Z_0 \neq O$ puisque $f(O) = 0$, et comme $(OQ)$ n'est pas verticale ($s \neq 0$), $z_1 \neq 0$.

Supposons $-\frac{s}{t}$ irrationnel. Alors la pente $\frac{t}{s}$ de $(OQ)$ l'est aussi. Le seul point de $(OQ)$ à coordonnées entières est alors $O$ : si $(m, n)$ est sur $(OQ)$ avec $m \neq 0$, on aurait $\frac{t}{s} = \frac{n}{m}$ rationnel, et si $m = 0$, alors $n = 0$.

Soit $P$ un point de $\Omega$ sur $(OQ)$. D'après b), $f(P) = j\gamma$ pour un entier $j$. Le point $P - jZ_0$ est dans $\Omega$, sur $(OQ)$, et $f(P - jZ_0) = 0$ : ses coordonnées sont des entiers, donc c'est $O$, et $P = jZ_0$. Les points de $\Omega$ sur $(OQ)$ sont donc exactement les $jZ_0$, et ceux qui sont différents de $O$ ont une abscisse de valeur absolue au moins $\lvert z_1 \rvert$. Cela contredit (R3), qui fournit un point de $\Omega$ sur $(OQ)$ d'abscisse strictement comprise entre $0$ et $\lvert z_1 \rvert$.

Donc $-\frac{s}{t}$ est rationnel.

**4.** Avec $c = -\frac{s}{t} = \frac{u}{v}$, on a $h(P) = p_1 + \frac{u}{v}\, p_2$, donc

$$\ell \in W \iff \text{il existe } P \text{ dans } \Omega \text{ tel que } \ell = v\,p_1 + u\,p_2.$$

a) Le point $(1, 0)$ est dans $\Omega$ ($k = 0$, $m = 1$, $n = 0$), et $v \times 1 + u \times 0 = v$ : donc $v \in W$. De même, avec le point $(0, 1)$, $u \in W$.

b) Si $\ell$ et $\ell'$ sont dans $W$, alors $\frac{\ell - \ell'}{v} = \frac{\ell}{v} - \frac{\ell'}{v}$ est dans $\Lambda$ (question 2 b), donc $\ell - \ell' \in W$. L'ensemble $W$ contient l'entier $v \geqslant 1$ ; soit $w$ le plus petit entier strictement positif de $W$. Comme à la question 3 b), la question 1 montre que $W$ est l'ensemble des multiples de $w$. En particulier $u$ et $v$, qui sont dans $W$, sont des multiples de $w$ : l'entier $w \geqslant 1$ est un diviseur commun de $u$ et $v$, donc $w \leqslant \mathrm{PGCD}(u, v) = 1$ puisque la fraction $\frac{u}{v}$ est irréductible. Donc $w = 1$, et $W = \mathbb{Z}$.

**5.** Comme $1 \in W$, le réel $\frac{1}{v}$ est dans $\Lambda$, donc, d'après la question 2 b), $\frac{1}{v} = j\lambda$ pour un entier $j$. Comme $\frac{1}{v} > 0$ et $\lambda > 0$, on a $j \geqslant 1$. Or $\lambda = \alpha + \frac{u}{v}\beta$, donc

$$\frac{1}{v} = j\left(\alpha + \frac{u}{v}\,\beta\right), \quad \text{soit} \quad 1 = jv\,\alpha + ju\,\beta.$$

Les entiers $u' = jv$ et $v' = ju$ valent au moins $1$ et vérifient $u'\alpha + v'\beta = 1$.

**Bilan.** Les résultats géométriques admis forcent la droite $(OQ)$ à avoir une pente rationnelle $-\frac{u}{v}$, et les parallèles à $(OQ)$ passant par les points de $\Omega$ à couper l'axe des abscisses exactement aux multiples de $\lambda$. En traduisant que $\frac{1}{v}$ est l'un de ces multiples, on obtient une relation $u'\alpha + v'\beta = 1$. Dans le sujet, c'était la dernière étape du **théorème B** : $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ sont disjoints si et seulement si $\alpha$ et $\beta$ sont irrationnels et vérifient une relation $u\alpha + v\beta = 1$ avec $u, v \geqslant 1$ entiers.

## Going further

- La question 1 est un résultat classique : un ensemble de réels stable par différence, qui contient un plus petit élément strictement positif, est formé des multiples de cet élément. Que dire de l'ensemble des réels $a + b\sqrt{2}$, avec $a$ et $b$ entiers, qui est stable par différence ? A-t-il un plus petit élément strictement positif ?
- Avec $\alpha = \frac{\sqrt{2} - 1}{2}$ et $\beta = 2 - \sqrt{2}$, on trouve numériquement $-\frac{s}{t} = \frac{1}{2}$. Que valent alors $\lambda$, $j$, $u'$ et $v'$ ?
