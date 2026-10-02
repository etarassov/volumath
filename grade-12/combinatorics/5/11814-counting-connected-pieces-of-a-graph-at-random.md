---
id: "11814"
title: "Compter les morceaux connexes d'un graphe par le hasard"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [graphe, connexite, methode-probabiliste, independance, majoration, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 18 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $G$ un graphe fini non orienté, et soit $d \geqslant 1$ un entier tel que chaque sommet de $G$ ait au plus $d$ voisins. Soient $x$ un sommet de $G$ et $n \geqslant 1$ un entier.

Pour un ensemble $H$ de sommets, on note $G[H]$ le graphe formé des sommets de $H$ et de **toutes** les arêtes de $G$ qui relient deux sommets de $H$. On note $a(n, x)$ le nombre d'ensembles $H$ de $n$ sommets, contenant $x$, tels que le graphe $G[H]$ soit connexe.

1. Montrer que $a(n, x) \leqslant 2^{nd}$.
2. Montrer que $a(n, x) \leqslant \left( \dfrac{(d+1)^{d+1}}{d^d} \right)^n$.

## Hints

1. Colorie chaque arête de $G$ en blanc avec probabilité $p$, indépendamment des autres. Regarde l'ensemble $X$ des sommets que l'on peut atteindre depuis $x$ en n'empruntant que des arêtes blanches.
2. Les événements « $X = H$ », pour les différents ensembles $H$, sont incompatibles. Que vaut au plus la somme de leurs probabilités ?
3. Trouve un événement simple qui force $X = H$. Combien d'arêtes ont au moins une extrémité dans $H$ ?
4. Pour la question 2, il suffit de rendre blanches $n - 1$ arêtes bien choisies à l'intérieur de $H$. Puis choisis $p$ au mieux.

## Solution

Appelons *bon* un ensemble $H$ de $n$ sommets contenant $x$ tel que $G[H]$ soit connexe. On veut majorer le nombre $a(n, x)$ de bons ensembles.

**L'expérience aléatoire.** Fixons un réel $p$ avec $0 < p < 1$. Pour chaque arête de $G$, indépendamment des autres, on la colorie en blanc avec la probabilité $p$, et on la laisse non coloriée avec la probabilité $1 - p$. Par indépendance, si l'on fixe $a$ arêtes et $b$ autres arêtes, la probabilité que les $a$ premières soient blanches et les $b$ autres non coloriées vaut $p^a (1 - p)^b$.

Notons $X$ l'ensemble des sommets que l'on peut atteindre à partir de $x$ en suivant uniquement des arêtes blanches ($x$ lui-même compris). C'est un ensemble aléatoire.

**L'inégalité de départ.** Pour deux bons ensembles $H \neq H'$, les événements « $X = H$ » et « $X = H'$ » ne peuvent pas se produire en même temps. La somme de leurs probabilités est donc au plus la probabilité de l'événement certain :
$$\sum_{H \text{ bon}} P(X = H) \leqslant 1 . \qquad (1)$$
Il suffit donc de minorer chaque $P(X = H)$.

**Un événement qui force $X = H$.** Soit $H$ un bon ensemble. Notons $\ell$ le nombre d'arêtes qui joignent deux sommets de $H$, et $k$ le nombre d'arêtes qui joignent un sommet de $H$ à un sommet hors de $H$. Si l'on additionne les degrés des $n$ sommets de $H$, on compte chaque arête intérieure deux fois et chaque arête sortante une fois. Comme chaque degré est au plus $d$,
$$2\ell + k \leqslant nd, \qquad \text{donc} \quad \ell + k \leqslant nd \quad \text{et} \quad k \leqslant nd .$$
Supposons que **un ensemble $F$ d'arêtes intérieures à $H$ qui relie tous les sommets de $H$ entre eux** soit blanc, et que **toutes les $k$ arêtes sortantes** soient non coloriées. Alors :

- tout sommet de $H$ est atteint depuis $x$ par les arêtes blanches de $F$, donc $H \subset X$ ;
- en partant de $x \in H$ on ne peut pas sortir de $H$, puisque aucune arête sortante n'est blanche, donc $X \subset H$.

Ainsi cet événement entraîne $X = H$, et $P(X = H) \geqslant p^{|F|}(1 - p)^k$, où $|F|$ est le nombre d'arêtes de $F$.

**Question 1.** Prenons pour $F$ toutes les $\ell$ arêtes intérieures (elles relient bien tous les sommets de $H$, puisque $G[H]$ est connexe) et $p = \dfrac{1}{2}$ :
$$P(X = H) \geqslant \left(\frac{1}{2}\right)^{\ell} \left(\frac{1}{2}\right)^{k} = \frac{1}{2^{\ell + k}} \geqslant \frac{1}{2^{nd}} .$$
En reportant dans $(1)$ : $a(n, x) \times \dfrac{1}{2^{nd}} \leqslant 1$, c'est-à-dire $a(n, x) \leqslant 2^{nd}$.

**Question 2.** Cette fois on veut colorier peu d'arêtes en blanc, donc prendre $p$ petit, et pour cela n'imposer que le minimum d'arêtes blanches.

*Il existe un ensemble $F$ de $n - 1$ arêtes intérieures à $H$ qui relie tous les sommets de $H$.* Construisons-le pas à pas. On part de l'ensemble $Y = \{x\}$ et de $F$ vide. Tant que $Y \neq H$, comme $G[H]$ est connexe, il existe une arête de $G[H]$ entre un sommet de $Y$ et un sommet $y$ de $H$ hors de $Y$ (sinon aucun chemin de $G[H]$ ne mènerait de $x$ aux sommets de $H \setminus Y$) ; on ajoute cette arête à $F$ et $y$ à $Y$. Chaque étape ajoute un sommet et une arête, et tous les sommets de $Y$ restent reliés à $x$ par $F$. Au bout de $n - 1$ étapes, $Y = H$ et $F$ a $n - 1$ arêtes.

Avec ce $F$, et comme $0 < p < 1$ et $k \leqslant nd$ :
$$P(X = H) \geqslant p^{n-1} (1 - p)^{k} \geqslant p^{n} (1 - p)^{nd} = \left( p\,(1-p)^d \right)^n .$$
Choisissons $p$ pour rendre $f(p) = p\,(1 - p)^d$ le plus grand possible sur $[0, 1]$. On a
$$f'(p) = (1 - p)^d - d\,p\,(1 - p)^{d-1} = (1 - p)^{d-1} \left(1 - (d+1)p\right),$$
qui est positive puis négative, et s'annule en $p = \dfrac{1}{d+1}$. Pour cette valeur,
$$f\!\left(\frac{1}{d+1}\right) = \frac{1}{d+1} \left(\frac{d}{d+1}\right)^d = \frac{d^d}{(d+1)^{d+1}} .$$
Donc $P(X = H) \geqslant \left( \dfrac{d^d}{(d+1)^{d+1}} \right)^n$ pour tout bon ensemble $H$, et $(1)$ donne
$$a(n, x) \times \left( \frac{d^d}{(d+1)^{d+1}} \right)^n \leqslant 1, \qquad \text{c'est-à-dire} \qquad a(n, x) \leqslant \left( \frac{(d+1)^{d+1}}{d^d} \right)^n .$$

## Going further

1. Compare les deux bornes pour $d = 1, 2, 3, 4, 10$. Montre que $\dfrac{(d+1)^{d+1}}{d^d} = (d+1)\left(1 + \dfrac{1}{d}\right)^d$ et que cette quantité est inférieure à $3(d+1)$ : la seconde borne finit par être bien meilleure que $2^d$.
2. Lorsque $G$ est un très long chemin ($d = 2$) et $x$ un sommet loin des extrémités, calcule exactement $a(n, x)$ et compare avec les deux bornes.
