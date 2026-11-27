---
id: "40889"
title: "Ensembles disjoints et réseau de points : un rectangle vide"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [partie-entiere, partie-fractionnaire, irrationnel, reseau, principe-des-tiroirs, coordonnees, translation, homothetie]
adapted_from: null
see_also: ["40887", "40888", "40890", "40891", "40892"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », partie 3 « Intersection vide », questions 9 à 13"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Pour tout réel $x$, on note $\mathrm{ent}(x)$ la *partie entière* de $x$, l'unique entier $n$ tel que $n \leqslant x < n + 1$, et $\mathrm{frac}(x) = x - \mathrm{ent}(x)$, qui appartient à $[0, 1[$. Rappelons que si $x = n + y$ avec $n$ entier et $0 \leqslant y < 1$, alors $n = \mathrm{ent}(x)$ et $y = \mathrm{frac}(x)$.

Pour tout réel $x > 0$, on note $\mathcal{E}(x)$ l'ensemble des entiers $\mathrm{ent}\left(\frac{n}{x}\right)$ pour $n = 1, 2, 3, \ldots$ Autrement dit, un entier $k \geqslant 0$ est dans $\mathcal{E}(x)$ lorsqu'il existe un entier $n \geqslant 1$ tel que $k \leqslant \frac{n}{x} < k + 1$.

Soit $\alpha > 0$ et $\beta > 0$. On dit que $\alpha$ et $\beta$ ont la **propriété $\mathbf{P}_\cap$** lorsque les ensembles $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ n'ont aucun élément commun. On admet les résultats suivants, démontrés dans une partie précédente :

- si le plus grand des deux nombres $\alpha$, $\beta$ vaut au moins $1$, la propriété $\mathbf{P}_\cap$ est fausse ;
- si les deux nombres sont strictement inférieurs à $1$ et que l'un d'eux est rationnel, la propriété $\mathbf{P}_\cap$ est fausse.

1. On suppose que $\alpha$ et $\beta$ sont irrationnels et qu'il existe deux entiers $u \geqslant 1$ et $v \geqslant 1$ tels que $u\alpha + v\beta = 1$. Démontrer que la propriété $\mathbf{P}_\cap$ est vraie.

**Dans toute la suite, $\alpha$ et $\beta$ sont deux réels strictement positifs qui ont la propriété $\mathbf{P}_\cap$.**

2. Démontrer que $\alpha$ et $\beta$ sont irrationnels et strictement inférieurs à $1$.

On se place dans un repère du plan, d'origine $O$, et l'on note $\Omega$ l'ensemble des points de coordonnées $(k\alpha + m, k\beta + n)$, où $k$, $m$ et $n$ sont des entiers relatifs. Pour deux intervalles $I$ et $J$, on note $I \times J$ le rectangle formé des points $(x, y)$ tels que $x \in I$ et $y \in J$.

3. a) Soit $A$ et $B$ deux points de $\Omega$. Démontrer que la translation de vecteur $\overrightarrow{AB}$ envoie tout point de $\Omega$ sur un point de $\Omega$.

   b) Soit $\ell$ un entier relatif. Démontrer que l'homothétie de centre $O$ et de rapport $\ell$, qui envoie tout point $X$ sur le point $Y$ tel que $\overrightarrow{OY} = \ell\, \overrightarrow{OX}$, envoie tout point de $\Omega$ sur un point de $\Omega$.

4. Démontrer que, pour tout point $P$ de $\Omega$, de coordonnées $(x, y)$, il existe un **unique** triplet d'entiers relatifs $(k, m, n)$ tel que $x = k\alpha + m$ et $y = k\beta + n$. On note $f(P)$ l'entier $k$ correspondant.

5. a) Démontrer que $\mathcal{E}(\alpha)$ est formé des entiers $k \geqslant 0$ tels que $0 < \mathrm{frac}((k+1)\alpha) < \alpha$.

   b) En déduire que le rectangle $]0, \alpha[ \times ]0, \beta[$ ne contient aucun point $X$ de $\Omega$ tel que $f(X) \geqslant 1$.

   c) Soit $\varepsilon > 0$. Démontrer que le carré $]-\varepsilon, \varepsilon[ \times ]-\varepsilon, \varepsilon[$ contient un point $Y$ de $\Omega$ tel que $f(Y) \geqslant 1$.

   d) En déduire que le rectangle $]0, \alpha[ \times ]0, \beta[$ ne contient **aucun** point de $\Omega$.

## Hints

1. **Question 1.** Supposez qu'un entier $k$ soit dans les deux ensembles : il existe des entiers $m$ et $n$ avec $k\alpha \leqslant m < (k+1)\alpha$ et $k\beta \leqslant n < (k+1)\beta$. Regardez l'entier $um + vn$.
2. **Question 4.** Si deux triplets donnent le même point, que dire de $(k - k')\alpha$ ? Utilisez l'irrationalité de $\alpha$. Remarquez ensuite que $f(P + P') = f(P) + f(P')$, où $P + P'$ désigne le point dont les coordonnées sont les sommes de celles de $P$ et $P'$.
3. **Question 5.** a) $k \in \mathcal{E}(\alpha)$ signifie qu'il existe un entier $m \geqslant 1$ avec $k\alpha \leqslant m < (k+1)\alpha$. Combien vaut alors $(k+1)\alpha - m$ ?
4. **Question 5.** b) Si $X = (k\alpha + m, k\beta + n)$ est dans le rectangle, que vaut $\mathrm{frac}(k\alpha)$ ?
5. **Question 5.** c) Principe des tiroirs en dimension $2$ : découpez le carré $[0, 1[ \times [0, 1[$ en $N^2$ petits carrés, et placez-y les points $(\mathrm{frac}(k\alpha), \mathrm{frac}(k\beta))$ pour $k = 0, 1, \ldots, N^2$.
6. **Question 5.** d) Si $X$ est un point de $\Omega$ dans le rectangle, avec $f(X) \leqslant 0$, ajoutez-lui plusieurs fois un tout petit point $Y$ de la question c) : on reste dans le rectangle mais $f$ finit par devenir positif.

## Solution

**1.** Comme $u \geqslant 1$, $v \geqslant 1$ et $u\alpha + v\beta = 1$, on a $\alpha < 1$ et $\beta < 1$. Supposons qu'un entier $k$ soit dans $\mathcal{E}(\alpha)$ et dans $\mathcal{E}(\beta)$ : il existe deux entiers $m \geqslant 1$ et $n \geqslant 1$ tels que $k \leqslant \frac{m}{\alpha} < k + 1$ et $k \leqslant \frac{n}{\beta} < k + 1$, c'est-à-dire

$$k\alpha \leqslant m < (k+1)\alpha \quad \text{et} \quad k\beta \leqslant n < (k+1)\beta.$$

Comme $m \geqslant 1 > \alpha$, on a $k \geqslant 1$, donc $k\alpha$ est irrationnel et ne peut pas être égal à l'entier $m$ : $k\alpha < m$. De même $k\beta < n$. En multipliant par $u$ et $v$ puis en additionnant :

$$k\,(u\alpha + v\beta) < um + vn < (k+1)(u\alpha + v\beta), \quad \text{c'est-à-dire} \quad k < um + vn < k + 1.$$

C'est impossible, car $um + vn$ est un entier. Les deux ensembles n'ont donc aucun élément commun : $\mathbf{P}_\cap$ est vraie.

**2.** Si le plus grand des deux nombres valait au moins $1$, la propriété $\mathbf{P}_\cap$ serait fausse (premier résultat admis). Donc $\alpha < 1$ et $\beta < 1$. Si alors l'un des deux était rationnel, $\mathbf{P}_\cap$ serait encore fausse (second résultat admis). Donc $\alpha$ et $\beta$ sont irrationnels.

**3.** a) Soit $A = (k_1\alpha + m_1, k_1\beta + n_1)$, $B = (k_2\alpha + m_2, k_2\beta + n_2)$ et $X = (k\alpha + m, k\beta + n)$ trois points de $\Omega$. L'image de $X$ par la translation de vecteur $\overrightarrow{AB}$ a pour coordonnées

$$\left((k + k_2 - k_1)\alpha + (m + m_2 - m_1),\ (k + k_2 - k_1)\beta + (n + n_2 - n_1)\right),$$

qui sont de la forme voulue avec des entiers relatifs : c'est un point de $\Omega$.

b) L'image de $X$ a pour coordonnées $(\ell k\alpha + \ell m, \ell k\beta + \ell n)$ : c'est un point de $\Omega$. (Pour $\ell = -1$, c'est la symétrie de centre $O$.)

**4.** L'existence vient de la définition de $\Omega$. Pour l'unicité, supposons $k\alpha + m = k'\alpha + m'$ et $k\beta + n = k'\beta + n'$. Alors $(k - k')\alpha = m' - m$. Si $k \neq k'$, on aurait $\alpha = \frac{m' - m}{k - k'}$ rationnel, ce qui est faux (question 2). Donc $k = k'$, puis $m = m'$ et $n = n'$.

Conséquence utile : avec les notations de la question 3, $f$ de l'image de $X$ par la translation de vecteur $\overrightarrow{AB}$ vaut $f(X) + f(B) - f(A)$, et $f$ de l'image par l'homothétie vaut $\ell f(X)$.

**5.** a) Soit $k \geqslant 0$.

*Si $k \in \mathcal{E}(\alpha)$*, il existe un entier $m \geqslant 1$ tel que $k\alpha \leqslant m < (k+1)\alpha$. Si $k = 0$, on aurait $1 \leqslant m < \alpha < 1$ : impossible, donc $k \geqslant 1$. Alors $k\alpha$ est irrationnel, donc $k\alpha < m$, et

$$0 < (k+1)\alpha - m < \alpha < 1.$$

On a écrit $(k+1)\alpha = m + y$ avec $0 \leqslant y < 1$, donc $\mathrm{frac}((k+1)\alpha) = (k+1)\alpha - m$, qui est bien strictement entre $0$ et $\alpha$.

*Réciproquement*, si $0 < \mathrm{frac}((k+1)\alpha) < \alpha$, posons $m = \mathrm{ent}((k+1)\alpha)$. Alors $(k+1)\alpha - \alpha < m < (k+1)\alpha$, soit $k\alpha < m < (k+1)\alpha$. Comme $m > k\alpha \geqslant 0$, l'entier $m$ vaut au moins $1$, et $k \leqslant \frac{m}{\alpha} < k + 1$ : donc $k \in \mathcal{E}(\alpha)$.

b) Supposons qu'un point $X = (k\alpha + m, k\beta + n)$ de $\Omega$, avec $k = f(X) \geqslant 1$, soit dans le rectangle. Alors $k\alpha = -m + (k\alpha + m)$ avec $0 < k\alpha + m < \alpha < 1$, donc $\mathrm{frac}(k\alpha) = k\alpha + m$, qui est strictement entre $0$ et $\alpha$. D'après a), appliquée à l'entier $k - 1 \geqslant 0$, on a $k - 1 \in \mathcal{E}(\alpha)$. Le même raisonnement donne $k - 1 \in \mathcal{E}(\beta)$. Les deux ensembles auraient un élément commun, ce qui contredit $\mathbf{P}_\cap$.

c) Soit $N$ un entier tel que $\frac{1}{N} < \varepsilon$. Découpons le carré $[0, 1[ \times [0, 1[$ en $N^2$ petits carrés $[\frac{i}{N}, \frac{i+1}{N}[ \times [\frac{j}{N}, \frac{j+1}{N}[$. Les $N^2 + 1$ points $(\mathrm{frac}(k\alpha), \mathrm{frac}(k\beta))$, pour $k = 0, 1, \ldots, N^2$, sont dans ce carré. D'après le principe des tiroirs, deux d'entre eux, pour $k < \ell$, sont dans le même petit carré. Le point

$$Y = \left(\mathrm{frac}(\ell\alpha) - \mathrm{frac}(k\alpha),\ \mathrm{frac}(\ell\beta) - \mathrm{frac}(k\beta)\right)$$

a ses deux coordonnées strictement entre $-\frac{1}{N}$ et $\frac{1}{N}$, donc entre $-\varepsilon$ et $\varepsilon$. Sa première coordonnée vaut $(\ell - k)\alpha + (\mathrm{ent}(k\alpha) - \mathrm{ent}(\ell\alpha))$, et de même pour la seconde : $Y$ est un point de $\Omega$, et $f(Y) = \ell - k \geqslant 1$.

d) Supposons qu'un point $X = (x, y)$ de $\Omega$ soit dans le rectangle $R = ]0, \alpha[ \times ]0, \beta[$. Notons $d > 0$ le plus petit des nombres $x$, $\alpha - x$, $y$, $\beta - y$ : tout point dont les coordonnées diffèrent de celles de $X$ de moins de $d$ est encore dans $R$. Posons $J = \lvert f(X) \rvert + 1$, et prenons, grâce à c), un point $Y$ de $\Omega$ tel que $f(Y) \geqslant 1$ et dont les coordonnées sont, en valeur absolue, strictement inférieures à $\frac{d}{J}$.

Soit $Y'$ l'image de $Y$ par l'homothétie de centre $O$ et de rapport $J$, puis $Z$ l'image de $X$ par la translation de vecteur $\overrightarrow{OY'}$. Comme $O$ est dans $\Omega$, la question 3 montre que $Y'$ et $Z$ sont dans $\Omega$. Les coordonnées de $Z$ diffèrent de celles de $X$ de moins de $J \times \frac{d}{J} = d$, donc $Z$ est dans $R$. Enfin

$$f(Z) = f(X) + J f(Y) \geqslant f(X) + \lvert f(X) \rvert + 1 \geqslant 1.$$

On a trouvé un point de $\Omega$ dans $R$ avec $f \geqslant 1$, ce qui contredit b). Le rectangle $]0, \alpha[ \times ]0, \beta[$ ne contient donc aucun point de $\Omega$.

**Bilan.** La relation $u\alpha + v\beta = 1$ suffit à rendre $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ disjoints. Pour la réciproque, on a traduit la propriété $\mathbf{P}_\cap$ en géométrie : l'ensemble de points $\Omega$, stable par translations et par homothéties de rapport entier, évite complètement le rectangle $]0, \alpha[ \times ]0, \beta[$, alors qu'il possède des points aussi proches de $O$ qu'on veut.

## Going further

- Dans la suite du sujet, on montrait que les points de $\Omega$ proches de $O$ sont tous sur une même droite, puis que cette droite force une relation $u\alpha + v\beta = 1$. C'est le **théorème B** : $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ sont disjoints si et seulement si $\alpha$ et $\beta$ sont irrationnels et vérifient $u\alpha + v\beta = 1$ pour deux entiers $u, v \geqslant 1$.
- Essayez avec $\alpha = \frac{\sqrt{2} - 1}{2}$ et $\beta = 2 - \sqrt{2}$, qui vérifient $2\alpha + \beta = 1$ : écrivez à la calculatrice les premiers éléments de $\mathcal{E}(\alpha)$ et de $\mathcal{E}(\beta)$. Qu'est-ce qui manque à leur réunion ?
