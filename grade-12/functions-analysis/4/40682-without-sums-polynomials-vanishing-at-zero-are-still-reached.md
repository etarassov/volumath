---
id: "40682"
title: "Sans la somme, on obtient encore les polynômes nuls en 0"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [fonctions, composition, exponentielle, logarithme, polynome, ensembles, loi-binomiale, coefficients-binomiaux]
adapted_from: null
see_also: ["40681", "40683"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 1 « Ensembles remarquables de fonctions », question 3 a à d"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

On note $\mathcal{P}$ l'ensemble des fonctions définies sur $[0, +\infty[$ et à valeurs dans
$[0, +\infty[$. Pour $f$ et $g$ dans $\mathcal{P}$, on note $f \circ g$ la fonction
$x \mapsto f(g(x))$. Si $f(x) \geqslant g(x)$ pour tout réel $x \geqslant 0$, on note
$f \geqslant g$.

On note $u$ et $v$ les fonctions de $\mathcal{P}$ définies, pour tout réel $x \geqslant 0$, par
$$u(x) = e^x - 1 \qquad \text{et} \qquad v(x) = \ln(x + 1),$$
et $\ell$ la fonction définie par $\ell(x) = x$. Une *fonction polynomiale* est une fonction de
la forme $x \mapsto a_d x^d + \cdots + a_1 x + a_0$, où les *coefficients* $a_0, \ldots, a_d$
sont des réels.

Dans tout l'exercice, $\mathcal{V}$ est un ensemble de fonctions de $\mathcal{P}$ qui vérifie
les propriétés suivantes :

- **(P1)** $\mathcal{V}$ contient $u$ et $v$.
- **(P2)** $\mathcal{V}$ contient toutes les fonctions constantes positives (ou nulles).
- **(P4)** Si $f$ et $g$ sont dans $\mathcal{V}$, alors $f \circ g$ est dans $\mathcal{V}$.
- **(P5)** Si $f$ et $g$ sont dans $\mathcal{V}$ avec $f \geqslant g$, alors $f - g$ est dans
  $\mathcal{V}$.
- **(P6)** Si $f$ et $g$ sont dans $\mathcal{V}$, alors $f \times g$ est dans $\mathcal{V}$.

On ne suppose **pas** que $\mathcal{V}$ est stable par somme : si $f$ et $g$ sont dans
$\mathcal{V}$, rien ne dit que $f + g$ y soit.

1. Soit $d$ un entier naturel non nul. On note $Q_d$ la fonction définie, pour tout réel
   $x \geqslant 0$, par $Q_d(x) = (x + 1)^d - 1$. Montrer que $\ell$ puis $Q_d$ sont dans
   $\mathcal{V}$.

2. Soit $d$ un entier naturel non nul. Démontrer qu'il existe des **entiers** $a_1, \ldots, a_d$
   supérieurs ou égaux à $1$ tels que, pour tout réel $x \geqslant 0$,
   $$(x + 1)^d = a_d x^d + a_{d-1} x^{d-1} + \cdots + a_1 x + 1.$$
   On pourra, pour un réel $x > 0$ fixé, introduire une variable aléatoire qui suit la loi
   binomiale de paramètres $d$ et $\frac{x}{1 + x}$.

3. Soit $f$ une fonction polynomiale telle que $f(0) = 0$. Montrer qu'il existe un réel
   $c \geqslant 0$ et un entier $d \geqslant 1$ tels que la fonction
   $$x \mapsto c\,(x + x^2 + \cdots + x^d) - f(x)$$
   soit une fonction polynomiale dont tous les coefficients sont positifs ou nuls.

4. En déduire que, si $f$ est une fonction polynomiale de $\mathcal{P}$ telle que $f(0) = 0$,
   alors $f$ est dans $\mathcal{V}$.

## Hints

1. **Question 1.** Que vaut $v(u(x))$ ? Pour $Q_d$, écrire $(x + 1)^d = e^{d \ln(x + 1)}$.
2. **Question 2.** Pour $X$ de loi binomiale $\mathcal{B}\left(d, p\right)$, la somme des
   probabilités $P(X = k)$, pour $k$ allant de $0$ à $d$, vaut $1$. Que devient cette égalité
   avec $p = \frac{x}{1 + x}$ et $1 - p = \frac{1}{1 + x}$ ?
3. **Question 3.** Prendre pour $d$ le degré de $f$ et choisir $c$ plus grand que tous les
   coefficients de $f$.
4. **Question 4.** Commencer par les fonctions polynomiales à coefficients positifs ou nuls
   (et nulles en $0$). Une fois celles-ci obtenues, la question 3 et la propriété (P5)
   concluent.
5. **Question 4.** Le seul obstacle est l'absence de la somme. Montrer ce petit lemme : si $F$,
   $G$ et $H$ sont dans $\mathcal{V}$ avec $H \geqslant F + G$, alors $F + G$ est dans
   $\mathcal{V}$.
6. **Question 4.** Pour le lemme, écrire $F + G = H - \left((H - F) - G\right)$.
7. **Question 4.** Un bon « plafond » $H$ pour une fonction polynomiale à coefficients positifs
   nulle en $0$ : un multiple $M\,Q_d$, grâce à la question 2.

## Solution

**1.** Pour tout $x \geqslant 0$, $v(u(x)) = \ln(e^x) = x$, donc $\ell = v \circ u$ est dans
$\mathcal{V}$ par (P1) et (P4).

La constante $d$ est dans $\mathcal{V}$ (P2), donc $d\,\ell = d \times \ell$ aussi (P6). Pour tout
$x \geqslant 0$,
$$u\left(d\,v(x)\right) = e^{d \ln(x + 1)} - 1 = (x + 1)^d - 1 = Q_d(x),$$
donc $Q_d = u \circ (d\ell) \circ v$, qui est dans $\mathcal{V}$ par (P4) appliquée deux fois.

**2.** Pour $x = 0$, l'égalité demandée s'écrit $1 = 1$ quels que soient les $a_k$. Fixons
$x > 0$ et posons $p = \frac{x}{1 + x}$, qui est dans $]0, 1[$, et $1 - p = \frac{1}{1 + x}$.
Soit $X$ une variable aléatoire de loi binomiale $\mathcal{B}(d, p)$. La somme des
probabilités de toutes ses valeurs vaut $1$ :
$$\sum_{k=0}^{d} \binom{d}{k} p^k (1 - p)^{d-k} = 1.$$
Or
$$p^k (1 - p)^{d-k} = \frac{x^k}{(1 + x)^k} \times \frac{1}{(1 + x)^{d-k}} = \frac{x^k}{(1 + x)^d}.$$
En multipliant par $(1 + x)^d$, on obtient
$$(1 + x)^d = \sum_{k=0}^{d} \binom{d}{k} x^k = 1 + \binom{d}{1} x + \cdots + \binom{d}{d} x^d.$$
On pose $a_k = \binom{d}{k}$ pour $1 \leqslant k \leqslant d$ : c'est un nombre de chemins
dans un arbre (ou de parties à $k$ éléments d'un ensemble à $d$ éléments), donc un entier, et il
est supérieur ou égal à $1$ puisque $1 \leqslant k \leqslant d$. Ces entiers ne dépendent pas de
$x$, donc l'égalité vaut pour tout $x \geqslant 0$.

**3.** Si $f$ est la fonction nulle, $c = 0$ et $d = 1$ conviennent. Sinon, comme $f(0) = 0$, on
peut écrire $f(x) = b_1 x + b_2 x^2 + \cdots + b_d x^d$ où $d \geqslant 1$ est le degré de $f$.
Posons $c = \max(0, b_1, \ldots, b_d)$. Alors
$$c\,(x + \cdots + x^d) - f(x) = (c - b_1)\,x + (c - b_2)\,x^2 + \cdots + (c - b_d)\,x^d,$$
et chaque coefficient $c - b_k$ est positif ou nul.

**4.** *Un lemme pour remplacer la somme.* Soient $F$, $G$, $H$ dans $\mathcal{V}$ avec
$H \geqslant F + G$. Comme $G \geqslant 0$, on a $H \geqslant F$, donc $H - F$ est dans
$\mathcal{V}$ (P5). Ensuite $H - F \geqslant G$, donc $K = (H - F) - G$ est dans $\mathcal{V}$
(P5). Enfin $H \geqslant K$ car $F + G \geqslant 0$, donc $H - K = F + G$ est dans $\mathcal{V}$
(P5).

*Les fonctions polynomiales à coefficients positifs, nulles en $0$.* Soit
$h(x) = h_1 x + h_2 x^2 + \cdots + h_d x^d$ avec tous les $h_k \geqslant 0$. Montrons que $h$ est
dans $\mathcal{V}$.

- Chaque terme $x \mapsto h_k x^k$ est dans $\mathcal{V}$ : $\ell^k = \ell \times \cdots \times
  \ell$ y est par (P6), puis on multiplie par la constante $h_k$ (P2 et P6).
- Soit $M = \max(h_1, \ldots, h_d)$ et $H = M\,Q_d$, qui est dans $\mathcal{V}$ (question 1, P2
  et P6). D'après la question 2, $H(x) = M a_1 x + \cdots + M a_d x^d$ avec $M a_k \geqslant M
  \geqslant h_k$.
- Notons $S_j(x) = h_1 x + \cdots + h_j x^j$ pour $1 \leqslant j \leqslant d$. On a $S_1$ dans
  $\mathcal{V}$. Si $S_j$ est dans $\mathcal{V}$ (avec $j < d$), alors $S_{j+1} = S_j + h_{j+1}
  x^{j+1}$ est une somme de deux fonctions de $\mathcal{V}$, et
  $H - S_{j+1}$ a tous ses coefficients positifs ou nuls ($M a_k - h_k$ ou $M a_k$), donc
  $H \geqslant S_{j+1}$ sur $[0, +\infty[$. Le lemme donne $S_{j+1}$ dans $\mathcal{V}$.
- De proche en proche, $S_d = h$ est dans $\mathcal{V}$.

*Conclusion.* Soit $f$ une fonction polynomiale de $\mathcal{P}$ avec $f(0) = 0$, et soient $c$,
$d$ donnés par la question 3. Les fonctions $g(x) = c\,(x + \cdots + x^d) - f(x)$ et
$x \mapsto c\,(x + \cdots + x^d)$ sont polynomiales, nulles en $0$, à coefficients positifs ou
nuls : elles sont dans $\mathcal{V}$ d'après ce qui précède. De plus
$c\,(x + \cdots + x^d) - g(x) = f(x) \geqslant 0$ puisque $f$ est dans $\mathcal{P}$. Par (P5),
$f$ est dans $\mathcal{V}$.

**Bilan.** Même sans la stabilité par somme, un ensemble de fonctions qui contient $u$, $v$ et
les constantes et qui est stable par composition, différence positive et produit contient toutes
les fonctions polynomiales positives sur $[0, +\infty[$ qui s'annulent en $0$. La somme manquante
se récupère par des différences, dès qu'on dispose d'une fonction plus grande, ici un multiple de
$(x + 1)^d - 1$.

## Going further

- Le lemme de la question 4 montre que $\mathcal{V}$ contient $F + G$ dès qu'il contient une
  fonction plus grande que $F + G$. Pourquoi cela ne suffit-il pas pour $\ell + 1$ ? Dans la
  suite du sujet, on construisait un ensemble $\mathcal{V}$ qui ne contient pas la fonction
  $x \mapsto x + 1$ (exercice 40683).
- Sans probabilités : montrer la question 2 en développant $(x + 1)^{d+1} = (x + 1)^d (x + 1)$
  et en regardant comment les coefficients se transforment (triangle de Pascal).
