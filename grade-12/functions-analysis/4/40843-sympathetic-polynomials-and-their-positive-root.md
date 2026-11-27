---
id: "40843"
title: "Polynômes sympathiques : quand y a-t-il une racine positive ?"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [polynome, coefficients, signe, derivee, variations, valeurs-intermediaires, recurrence, racines]
adapted_from: null
see_also: ["40842", "40844"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 2 « Limite sympathique ! », partie B « Polynômes sympathiques », questions 5 à 9. Erreur du sujet corrigée : la définition de « vraiment sympathique » y impose 1 ≤ k ≤ d − 1 (lu sur la page rendue à 400 dpi). Avec cette borne, la question 8 a) est fausse : P(x) = x² − x − 1 est vraiment sympathique sans être initialement sympathique, mais P'(x) = 2x − 1 ne s'écrit pas b·x^ℓ·Q(x) avec Q vraiment sympathique. On a remplacé la borne par 0 ≤ k ≤ d − 1, seul changement ; il rend aussi la partie C applicable au premier exemple de la partie A. La précision « de degré au plus d − 1 » de la question 4 a) est ajoutée pour la récurrence."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

On fixe un entier $d \geqslant 1$. Une fonction $P$ est un *polynôme de degré au plus $d$* s'il existe des réels $a_0, a_1, \ldots, a_d$ tels que

$$P(x) = a_d x^d + a_{d-1} x^{d-1} + \cdots + a_2 x^2 + a_1 x + a_0$$

pour tout réel $x$. Soit $P$ un tel polynôme. On dit que :

- $P$ est **initialement sympathique** si $a_0 = -1$ et si $a_j \geqslant 0$ pour tout entier $j$ tel que $1 \leqslant j \leqslant d$ ;
- $P$ est **faussement sympathique** si $a_0 = -1$ et si $a_j \leqslant 0$ pour tout entier $j$ tel que $1 \leqslant j \leqslant d$ ;
- $P$ est **vraiment sympathique** si $a_0 = -1$ et s'il existe un entier $k$ tel que $0 \leqslant k \leqslant d - 1$ et pour lequel
$$a_1 \leqslant 0, \; a_2 \leqslant 0, \; \ldots, \; a_k \leqslant 0 \quad \text{et} \quad a_{k+1} > 0, \; a_{k+2} \geqslant 0, \; \ldots, \; a_d \geqslant 0$$
(quand $k = 0$, il n'y a aucune condition « $\leqslant 0$ »).

Enfin, $P$ est **sympathique** s'il est initialement, faussement ou vraiment sympathique. Par exemple, $x^3 - 2x^2 - 1$ est vraiment sympathique (avec $k = 2$).

1. Quels sont les polynômes qui sont à la fois faussement sympathiques et initialement sympathiques ?
2. Démontrer que tout polynôme faussement sympathique est

   a) strictement négatif sur l'intervalle $[0, +\infty[$ ;

   b) décroissant sur l'intervalle $[0, +\infty[$.

3. Soit $P$ un polynôme vraiment sympathique et initialement sympathique.

   a) Démontrer que $P$ est strictement croissant sur l'intervalle $[0, +\infty[$.

   b) Démontrer que l'équation $P(x) = 0$ admet une unique solution strictement positive.

4. Soit $P$ un polynôme vraiment sympathique mais pas initialement sympathique.

   a) Démontrer qu'il existe un réel $b > 0$, un entier $\ell \geqslant 0$ et un polynôme $Q$ vraiment sympathique, de degré au plus $d - 1$, tels que $P'(x) = b\,x^{\ell}\,Q(x)$ pour tout réel $x$.

   b) Démontrer qu'il existe un réel $r > 0$ tel que :
      - $P$ est décroissant sur l'intervalle $[0, r]$ ;
      - $P$ est strictement croissant sur l'intervalle $[r, +\infty[$ ;
      - $P$ est strictement négatif sur l'intervalle $[0, r]$ ;
      - l'équation $P(x) = 0$ admet une unique solution dans l'intervalle $[r, +\infty[$.

5. Quels sont les polynômes sympathiques $P$ pour lesquels l'équation $P(x) = 0$ admet au moins une solution strictement positive ? Donner, dans ce cas, le tableau de signes de $P$ sur l'intervalle $[0, +\infty[$.

## Hints

1. **Question 3.** Que valent $a_1, \ldots, a_k$ quand $P$ est à la fois vraiment et initialement sympathique ? Écrire alors $P'(x)$.
2. **Question 3.** Quelle est la limite de $P$ en $+\infty$ ? Regarder le coefficient non nul de plus haut degré.
3. **Question 4 a).** Puisque $P$ n'est pas initialement sympathique, un coefficient $a_j$ avec $j \geqslant 1$ est strictement négatif. Soit $i$ le plus petit indice $i \geqslant 1$ tel que $a_i \neq 0$ : quel est son signe ? Mettre $x^{i-1}$ en facteur dans $P'(x)$.
4. **Question 4 b).** Raisonner par récurrence sur $d$ : le polynôme $Q$ a un degré plus petit. Pour que la récurrence marche, la bonne propriété à démontrer est : « tout polynôme vraiment sympathique de degré au plus $d$ a une racine $\rho > 0$, est strictement négatif sur $[0, \rho[$ et strictement positif sur $]\rho, +\infty[$ ».
5. **Question 4 b).** Si $Q$ est négatif avant sa racine $r$ et positif après, que dire du signe de $P'(x) = b\,x^{\ell}\,Q(x)$ pour $x \geqslant 0$ ?
6. **Question 5.** Un polynôme initialement sympathique dont un coefficient $a_j$ ($j \geqslant 1$) est non nul est-il vraiment sympathique ?

## Solution

Dans toute la solution, $P(x) = -1 + a_1 x + \cdots + a_d x^d$. On utilisera souvent ce fait : **si $P$ est vraiment sympathique, alors $P(x) \to +\infty$ quand $x \to +\infty$.** En effet, soit $m$ le plus grand indice tel que $a_m \neq 0$ ; comme $a_{k+1} > 0$, on a $m \geqslant k + 1$, donc $a_m > 0$ (tous les coefficients d'indice au moins $k+1$ sont positifs ou nuls). La limite de $P$ en $+\infty$ est celle de son terme de plus haut degré $a_m x^m$, c'est-à-dire $+\infty$.

**1.** Il faut $a_j \geqslant 0$ et $a_j \leqslant 0$, donc $a_j = 0$, pour tout $j \geqslant 1$. Le seul polynôme qui convient est le polynôme constant $P(x) = -1$.

**2. a)** Pour $x \geqslant 0$ et $j \geqslant 1$, on a $x^j \geqslant 0$ et $a_j \leqslant 0$, donc $a_j x^j \leqslant 0$. Ainsi $P(x) \leqslant -1 < 0$.

**b)** $P'(x) = a_1 + 2a_2 x + \cdots + d\,a_d x^{d-1}$ est une somme de termes négatifs ou nuls pour $x \geqslant 0$, donc $P' \leqslant 0$ sur $[0, +\infty[$ et $P$ y est décroissant.

**3. a)** Pour $1 \leqslant j \leqslant k$, on a à la fois $a_j \leqslant 0$ et $a_j \geqslant 0$, donc $a_j = 0$. Ainsi $P(x) = -1 + a_{k+1}x^{k+1} + \cdots + a_d x^d$, avec $a_{k+1} > 0$ et les autres coefficients positifs ou nuls. Pour $x > 0$,
$$P'(x) = (k+1)a_{k+1}x^k + \cdots + d\,a_d x^{d-1} \geqslant (k+1)a_{k+1}x^k > 0.$$
La dérivée est strictement positive sur $]0, +\infty[$, donc $P$ est strictement croissant sur $[0, +\infty[$.

**b)** $P$ est continu, strictement croissant sur $[0, +\infty[$, $P(0) = -1 < 0$ et $P(x) \to +\infty$ en $+\infty$. D'après le théorème des valeurs intermédiaires (cas d'une fonction strictement monotone), $P$ s'annule en exactement un point de $[0, +\infty[$, et ce point n'est pas $0$. L'équation $P(x) = 0$ a donc une unique solution strictement positive. De plus, $P < 0$ avant cette solution et $P > 0$ après.

**4. a)** Comme $P$ n'est pas initialement sympathique, il existe $j \geqslant 1$ avec $a_j < 0$. Soit $i$ le plus petit indice $i \geqslant 1$ tel que $a_i \neq 0$ ; on a $i \leqslant j$. Comme les coefficients négatifs ont un indice au plus $k$, on a $j \leqslant k$, donc $i \leqslant k$, et alors $a_i \leqslant 0$ avec $a_i \neq 0$ : $a_i < 0$.

Puisque $a_1 = \cdots = a_{i-1} = 0$,
$$P'(x) = i\,a_i x^{i-1} + (i+1)a_{i+1}x^{i} + \cdots + d\,a_d x^{d-1} = x^{i-1}(i\,a_i + (i+1)a_{i+1}x + \cdots + d\,a_d x^{d-i}).$$
Posons $\ell = i - 1 \geqslant 0$, $b = -i\,a_i > 0$ et
$$Q(x) = -1 + c_1 x + c_2 x^2 + \cdots + c_{d-i}x^{d-i}, \qquad \text{où } c_p = \frac{(i+p)\,a_{i+p}}{b}.$$
Alors $b\,x^{\ell}Q(x) = P'(x)$ pour tout réel $x$, et $Q$ est de degré au plus $d - i \leqslant d - 1$. Comme $b > 0$, chaque $c_p$ a le signe de $a_{i+p}$. Posons $k' = k - i$ : on a $0 \leqslant k'$ (car $i \leqslant k$) et $k' \leqslant (d - i) - 1$ (car $k \leqslant d - 1$). Les coefficients $c_1, \ldots, c_{k'}$ correspondent à $a_{i+1}, \ldots, a_k$, donc sont négatifs ou nuls ; $c_{k'+1}$ correspond à $a_{k+1}$, donc est strictement positif ; les suivants correspondent à $a_{k+2}, \ldots, a_d$, donc sont positifs ou nuls. Ainsi $Q$ est vraiment sympathique, de degré au plus $d - 1$.

**b)** On démontre, par récurrence sur $d \geqslant 1$, la propriété suivante, plus forte que ce qui est demandé.

$\mathcal{H}(d)$ : tout polynôme vraiment sympathique $P$ de degré au plus $d$ s'annule en un réel $\rho > 0$, avec $P(x) < 0$ pour $0 \leqslant x < \rho$ et $P(x) > 0$ pour $x > \rho$ ; et si de plus $P$ n'est pas initialement sympathique, il existe $r > 0$ qui vérifie les quatre propriétés de l'énoncé.

*Cas d'un polynôme initialement sympathique.* La question 3 b) donne directement la racine $\rho$ et les signes.

*Initialisation, $d = 1$.* Un polynôme vraiment sympathique de degré au plus $1$ a forcément $k = 0$, donc s'écrit $a_1 x - 1$ avec $a_1 > 0$ : il est initialement sympathique, et le cas précédent s'applique. Donc $\mathcal{H}(1)$ est vraie.

*Hérédité.* Soit $d \geqslant 2$ tel que $\mathcal{H}(d-1)$ soit vraie, et soit $P$ vraiment sympathique de degré au plus $d$. S'il est initialement sympathique, c'est réglé. Sinon, la question 4 a) donne $P'(x) = b\,x^{\ell}Q(x)$ avec $Q$ vraiment sympathique de degré au plus $d - 1$. Par $\mathcal{H}(d-1)$, $Q$ a une racine $r > 0$, avec $Q < 0$ sur $[0, r[$ et $Q > 0$ sur $]r, +\infty[$. Pour $x \geqslant 0$, on a $b\,x^{\ell} \geqslant 0$, et même $b\,x^{\ell} > 0$ pour $x > 0$. Donc :

- $P'(x) \leqslant 0$ sur $[0, r]$ : $P$ est décroissant sur $[0, r]$ ;
- $P'(x) > 0$ sur $]r, +\infty[$ : $P$ est strictement croissant sur $[r, +\infty[$ ;
- pour $0 \leqslant x \leqslant r$, $P(x) \leqslant P(0) = -1 < 0$ : $P$ est strictement négatif sur $[0, r]$ ;
- sur $[r, +\infty[$, $P$ est continu et strictement croissant, $P(r) < 0$ et $P(x) \to +\infty$ : d'après le théorème des valeurs intermédiaires, $P$ s'annule en exactement un point $\rho$ de $[r, +\infty[$, et $\rho > r$.

Ce sont les quatre propriétés demandées. Enfin $P < 0$ sur $[0, r]$ et sur $[r, \rho[$ (car $P$ croît strictement jusqu'à $P(\rho) = 0$), et $P > 0$ sur $]\rho, +\infty[$. Donc $\mathcal{H}(d)$ est vraie, ce qui achève la récurrence et répond à la question.

**5.** Rappelons que $P(0) = -1$ pour tout polynôme sympathique.

- Un polynôme faussement sympathique n'a aucune racine positive (question 2 a).
- Un polynôme initialement sympathique non constant est vraiment sympathique : si $i$ est le plus petit indice $i \geqslant 1$ tel que $a_i \neq 0$, alors $a_i > 0$, et $k = i - 1$ convient. Le seul polynôme initialement sympathique constant est $-1$, qui est aussi faussement sympathique.
- Un polynôme vraiment sympathique a exactement une racine strictement positive (questions 3 b et 4 b).

Donc **les polynômes sympathiques qui ont une racine strictement positive sont exactement les polynômes vraiment sympathiques.** D'après la propriété $\mathcal{H}(d)$ démontrée en 4 b), si $\rho$ est cette racine, le tableau de signes de $P$ sur $[0, +\infty[$ est :

| $x$ | $0$ | | $\rho$ | | $+\infty$ |
|---|---|---|---|---|---|
| $P(x)$ | $-1$ | $-$ | $0$ | $+$ | |

**Bilan.** On a classé les polynômes de terme constant $-1$ selon le signe de leurs coefficients. Un polynôme faussement sympathique reste négatif sur $[0, +\infty[$. Un polynôme vraiment sympathique, dont les coefficients sont d'abord négatifs ou nuls puis positifs ou nuls avec au moins un strictement positif, a exactement une racine strictement positive $\rho$ : il est négatif avant $\rho$ et positif après. Ces deux familles couvrent tous les polynômes sympathiques.

## Going further

- Le polynôme $\frac{1}{6}x^3 - x^2 + \frac{11}{6}x - 1$ n'est pas sympathique : ses coefficients changent trois fois de signe. Vérifier qu'il s'annule en $1$, en $2$ et en $3$. Ce phénomène est le sujet de la *règle des signes de Descartes* : le nombre de racines strictement positives d'un polynôme est au plus le nombre de changements de signe dans la suite de ses coefficients.
- Dans la suite du sujet (exercice 40844), on prenait une suite de polynômes vraiment sympathiques dont les coefficients convergent, et on cherchait si leurs racines positives convergent vers celle du polynôme limite.
