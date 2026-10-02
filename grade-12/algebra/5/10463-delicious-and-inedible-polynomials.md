---
id: "10463"
title: "Polynômes délicieux et polynômes non comestibles"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [polynome, nombres-complexes, racines, cosinus, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Senior, exercice 9 ; corrigé 2019-02_envoi-3-cor.pdf (le corrigé reste allusif sur le choix de l'exposant M pour les racines de module 1 ; ce point est démontré ici en détail)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Un polynôme à coefficients réels est dit **unitaire** si son coefficient de plus haut degré vaut $1$.

Un polynôme unitaire à coefficients réels est dit **délicieux** si tous ses coefficients sont dans l'intervalle $[-1, 1]$.

Un polynôme unitaire à coefficients réels est dit **non comestible** si aucun de ses multiples n'est délicieux, c'est-à-dire s'il n'existe aucun polynôme $Q$ à coefficients réels tel que $PQ$ soit délicieux.

Déterminer l'ensemble des réels $\rho \geqslant 0$ pour lesquels il existe un polynôme non comestible $P$ tel que $\rho$ soit le plus grand des modules des racines complexes de $P$.

## Hints

1. Commence par chercher des polynômes non comestibles. Un polynôme délicieux peut-il s'annuler en un réel $a \geqslant 2$ ?
2. Essaie $P = X^N - a$ avec $a \geqslant 2$. Pour un multiple $S = (X^N - a)Q$, regroupe les termes de $S$ et de $Q$ selon le reste de leur exposant dans la division par $N$.
3. Pour $\rho \leqslant 1$, montre que tout polynôme unitaire dont les racines ont un module au plus égal à $1$ a un multiple délicieux. Si $D$ est délicieux de degré $m$, et si $F$ est unitaire, à coefficients dans $[-1, 1]$, avec des exposants deux à deux distants de plus de $m$, alors $FD$ est délicieux. Pourquoi ?
4. Pour une racine réelle $\lambda$, utilise $X^M - \lambda^M$. Pour deux racines conjuguées $\mu$ et $\overline{\mu}$, utilise $(X^M - \mu^M)(X^M - \overline{\mu}^M)$, avec un exposant $M$ bien choisi.

## Solution

On admet le théorème de d'Alembert-Gauss : un polynôme unitaire de degré $n \geqslant 1$ à coefficients réels a $n$ racines complexes, comptées avec leur multiplicité, et se factorise en produit de facteurs $X - z$ où $z$ parcourt ces racines. C'est ce qui donne un sens à l'énoncé. Rappelons aussi que si $\mu$ est une racine non réelle d'un tel polynôme, alors $\overline{\mu}$ en est aussi une, avec la même multiplicité, et que

$$(X - \mu)(X - \overline{\mu}) = X^2 - 2\,\mathrm{Re}(\mu)\,X + |\mu|^2 .$$

Le polynôme se factorise donc, sur les réels, en facteurs $X - \lambda$ (avec $\lambda$ réel) et $X^2 - 2\,\mathrm{Re}(\mu)\,X + |\mu|^2$ (avec $\mu$ non réel).

**La réponse est l'intervalle $]1, +\infty[$.**

### Première partie : tout $\rho > 1$ convient

**Lemme 1.** *Un polynôme délicieux $T$ de degré $p \geqslant 1$ ne s'annule en aucun réel $a \geqslant 2$.* Écrivons $T(Y) = Y^p + c_{p-1} Y^{p-1} + \cdots + c_0$ avec $|c_i| \leqslant 1$. Pour $a \geqslant 2$, on a $c_i a^i \geqslant -a^i$, donc

$$T(a) \geqslant a^p - (a^{p-1} + \cdots + a + 1) = a^p - \frac{a^p - 1}{a - 1} \geqslant a^p - (a^p - 1) = 1 > 0 ,$$

car $a - 1 \geqslant 1$.

**Le polynôme.** Soit $\rho > 1$. Comme $\rho^N$ tend vers $+\infty$ quand $N$ tend vers $+\infty$, on peut choisir un entier $N \geqslant 1$ tel que $a = \rho^N \geqslant 2$. Posons $P = X^N - a$. Ses racines sont les nombres complexes $z$ tels que $z^N = a$, donc $|z|^N = a$, c'est-à-dire $|z| = \rho$. Le plus grand module des racines de $P$ est donc bien $\rho$.

**$P$ est non comestible.** Supposons qu'il existe un polynôme $Q$ tel que $S = (X^N - a)\,Q$ soit délicieux. Le polynôme $Q$ est non nul et unitaire, car $S$ et $X^N - a$ le sont. Notons $q$ son degré, de sorte que $S$ est de degré $N + q$.

Pour chaque $r \in \{0, 1, \ldots, N - 1\}$, notons $S_r$ la somme des termes de $S$ dont l'exposant a pour reste $r$ dans la division par $N$, et définissons $Q_r$ de même. Ainsi $S = S_0 + \cdots + S_{N-1}$ et $Q = Q_0 + \cdots + Q_{N-1}$, donc

$$S = (X^N - a)\,Q_0 + (X^N - a)\,Q_1 + \cdots + (X^N - a)\,Q_{N-1} .$$

Multiplier un terme par $X^N$ ou par $a$ ne change pas le reste de son exposant. Le polynôme $(X^N - a)\,Q_r$ ne contient donc que des exposants de reste $r$. En comparant les coefficients des deux écritures de $S$, on obtient $S_r = (X^N - a)\,Q_r$ pour chaque $r$.

Choisissons pour $r$ le reste de $N + q$ dans la division par $N$. Les exposants de $S_r$ et de $Q_r$ s'écrivent tous $r + jN$, donc il existe deux polynômes $T$ et $U$ tels que

$$S_r = X^r\,T(X^N) \qquad \text{et} \qquad Q_r = X^r\,U(X^N) .$$

Le coefficient de $Y^j$ dans $T$ est le coefficient de $X^{r + jN}$ dans $S$. L'égalité $S_r = (X^N - a)\,Q_r$ devient $T(Y) = (Y - a)\,U(Y)$, en remplaçant $X^N$ par $Y$. Or :

- tous les coefficients de $T$ sont des coefficients de $S$, donc sont dans $[-1, 1]$ ;
- le terme de plus haut degré de $S$, à savoir $X^{N + q}$, fait partie de $S_r$, donc $T$ est unitaire ;
- $T$ n'est pas constant, puisque $T = (Y - a)\,U$ avec $U \neq 0$.

Le polynôme $T$ est donc délicieux, de degré au moins $1$, et $T(a) = 0$ avec $a \geqslant 2$. Cela contredit le lemme 1. Donc $P$ est non comestible, et tout $\rho > 1$ convient.

### Seconde partie : aucun $\rho \leqslant 1$ ne convient

Montrons que tout polynôme unitaire $P$ dont toutes les racines ont un module au plus égal à $1$ a un multiple délicieux. Un tel $P$ n'est donc jamais non comestible.

**Lemme 2 (des exposants bien espacés).** *Soient $D$ un polynôme délicieux de degré $m$, et $F = f_0 X^{e_0} + f_1 X^{e_1} + \cdots + f_k X^{e_k}$ un polynôme avec $0 \leqslant e_0 < e_1 < \cdots < e_k$, $f_k = 1$, tous les $f_i$ dans $[-1, 1]$, et $e_{i+1} - e_i > m$ pour tout $i$. Alors $FD$ est délicieux.* En effet, $FD$ est la somme des polynômes $f_i X^{e_i} D$. Le polynôme $f_i X^{e_i} D$ n'a que des exposants compris entre $e_i$ et $e_i + m$, et ces intervalles ne se chevauchent pas, car $e_i + m < e_{i+1}$. Chaque coefficient de $FD$ est donc un produit $f_i \times d$, où $d$ est un coefficient de $D$. Il est dans $[-1, 1]$, comme produit de deux nombres de $[-1, 1]$. Enfin $FD$ est unitaire, car son terme de plus haut degré est $1 \cdot X^{e_k} \cdot X^m$.

**Lemme 3 (le choix de l'angle).** *Pour tout réel $\theta \in \,]0, \pi[$ et tout entier $m \geqslant 0$, il existe un entier $M > m$ tel que $|\cos(M\theta)| \leqslant 1/2$.*

Pour $j = 0, 1, 2, 3$, écrivons $j\theta = \ell_j \pi + \varphi_j$ avec $\ell_j$ entier et $\varphi_j \in [0, \pi[$. Les quatre nombres $\varphi_j$ sont dans $[0, \pi[$, qui est la réunion des trois intervalles $[0, \pi/3[$, $[\pi/3, 2\pi/3[$ et $[2\pi/3, \pi[$. Deux d'entre eux, $\varphi_i$ et $\varphi_j$ avec $i < j$, sont donc dans le même intervalle. Posons $q = j - i \in \{1, 2, 3\}$ et $\varepsilon = \varphi_j - \varphi_i$. Alors $|\varepsilon| < \pi/3$ et $q\theta = \ell\pi + \varepsilon$, où $\ell = \ell_j - \ell_i$ est entier.

- *Si $\varepsilon = 0$*, alors $q\theta = \ell\pi$. Le cas $q = 1$ est impossible, car $\theta \in \,]0, \pi[$. Si $q = 2$, alors $\theta = \pi/2$, et tout entier impair $M$ convient, car $\cos(M\pi/2) = 0$. Si $q = 3$, alors $\theta = \pi/3$ ou $\theta = 2\pi/3$, et tout entier $M$ qui n'est pas multiple de $3$ convient, car alors $\cos(M\theta) = \pm 1/2$. Dans les deux cas, il existe un tel $M$ plus grand que $m$.
- *Si $\varepsilon \neq 0$*, posons $y_k = (m + 1)\theta + k\varepsilon$ pour tout entier $k \geqslant 0$. Comme $\cos(t + \ell\pi) = \pm \cos t$, on a $|\cos((m + 1 + kq)\theta)| = |\cos(y_k)|$. Supposons $\varepsilon > 0$ (le cas $\varepsilon < 0$ est symétrique). La suite $(y_k)$ augmente de $\varepsilon < \pi/3$ à chaque pas et tend vers $+\infty$. Choisissons un entier $n$ tel que $n\pi + \pi/3 > y_0$, et soit $k$ le premier indice tel que $y_k \geqslant n\pi + \pi/3$. Alors $k \geqslant 1$ et $y_{k-1} < n\pi + \pi/3$, donc $y_k < n\pi + \pi/3 + \pi/3 = n\pi + 2\pi/3$. Ainsi $y_k$ est dans $[n\pi + \pi/3, n\pi + 2\pi/3]$, où $|\cos|$ est au plus égal à $1/2$. L'entier $M = m + 1 + kq$ convient.

**La construction.** Soit $P$ un polynôme unitaire dont toutes les racines ont un module au plus égal à $1$. On le factorise en facteurs réels comme rappelé au début, et on traite ces facteurs un par un. On part de $D = 1$, qui est délicieux. Supposons qu'on dispose d'un polynôme délicieux $D$, de degré $m$, multiple du produit des facteurs déjà traités, et traitons le facteur suivant.

- *Un facteur $X - \lambda$, avec $\lambda$ réel et $|\lambda| \leqslant 1$.* Posons $M = m + 1$ et $F = X^M - \lambda^M$. Ses coefficients $1$ et $-\lambda^M$ sont dans $[-1, 1]$, et ses deux exposants $0$ et $M$ sont distants de $M > m$. D'après le lemme 2, $FD$ est délicieux. De plus $F$ est un multiple de $X - \lambda$, car $X^M - \lambda^M = (X - \lambda)(X^{M-1} + \lambda X^{M-2} + \cdots + \lambda^{M-1})$.
- *Un facteur $X^2 - 2\,\mathrm{Re}(\mu)\,X + |\mu|^2$, avec $\mu$ non réel et $|\mu| \leqslant 1$.* Quitte à remplacer $\mu$ par $\overline{\mu}$, ce qui ne change pas le facteur, écrivons $\mu = r e^{i\theta}$ avec $0 < r \leqslant 1$ et $\theta \in \,]0, \pi[$. Le lemme 3 donne un entier $M > m$ tel que $|\cos(M\theta)| \leqslant 1/2$. Posons
  $$F = (X^M - \mu^M)(X^M - \overline{\mu}^M) = X^{2M} - 2 r^M \cos(M\theta)\,X^M + r^{2M} .$$
  Ses coefficients sont réels, et ils sont dans $[-1, 1]$ : en effet $|2 r^M \cos(M\theta)| \leqslant 2 \cdot 1 \cdot 1/2 = 1$ et $0 < r^{2M} \leqslant 1$. Ses exposants $0$, $M$, $2M$ sont distants de $M > m$. D'après le lemme 2, $FD$ est délicieux. Enfin $\mu$ et $\overline{\mu}$ sont racines de $F$, donc $F$ est divisible par $(X - \mu)(X - \overline{\mu})$, qui est notre facteur. Le quotient a des coefficients réels, car c'est le quotient de la division euclidienne de deux polynômes réels.

Dans les deux cas, $FD$ est délicieux et multiple du produit des facteurs traités, facteur courant compris. Après avoir traité tous les facteurs, on obtient un multiple délicieux de $P$.

Si le plus grand module des racines de $P$ est $\rho \leqslant 1$, toutes ses racines ont un module au plus égal à $1$, donc $P$ n'est pas non comestible. Aucun $\rho \in [0, 1]$ ne convient.

**Conclusion.** L'ensemble cherché est $]1, +\infty[$.

## Going further

1. Le polynôme $X^2 + \text{1,5}\,X + 1$ n'est pas délicieux. Vérifier que ses racines ont pour module $1$, puis trouver un de ses multiples délicieux de degré $4$.
2. Le polynôme $X^2 - X - 1$ a une racine strictement plus grande que $1$. Est-il non comestible ? Pourquoi cela ne contredit-il pas la réponse ?
