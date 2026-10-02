---
id: "2424"
title: "Cinquante fractions multipliées entre elles"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, produit, comparaison, telescopage, astuce]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Inequalities"
  reference: "Handout-427-528.pdf, exercice 6 (indication dans Handout-428-528.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-427-528.pdf"
---

## Statement

On pose

$$A = \frac{1}{2}\times\frac{3}{4}\times\frac{5}{6}\times\cdots\times\frac{99}{100} ,$$

produit des $50$ fractions dont le numérateur parcourt les nombres impairs de $1$ à $99$ et dont le dénominateur est le nombre pair qui suit.

1. Montrer que $A < \dfrac{1}{10}$.
2. Plus généralement, pour un entier $n \ge 1$, on pose
   $$P_n = \frac{1}{2}\times\frac{3}{4}\times\cdots\times\frac{2n-1}{2n} .$$
   Montrer que $P_n < \dfrac{1}{\sqrt{2n}}$.

*Un calcul direct de $A$ à la calculatrice est interdit : on demande une démonstration.*

## Hints

1. Chaque facteur de $A$ est plus petit que $1$, ce qui montre seulement $A < 1$ : c'est beaucoup trop faible. Il faut une autre idée.
2. Introduis le produit voisin $B = \dfrac{2}{3}\times\dfrac{4}{5}\times\cdots\times\dfrac{98}{99}$, formé des $49$ fractions « décalées d'un cran ».
3. Calcule le produit $A \times B$. Beaucoup de facteurs se simplifient, il ne reste presque rien.
4. Compare ensuite $A$ et $B$ facteur par facteur. Une fois que tu sais $A < B$, que peux-tu dire de $A^2$ ?

## Solution

### 1. Le produit des cinquante fractions

**L'idée.** Majorer chaque facteur séparément ne donne rien d'utile. On compare plutôt $A$ à un produit voisin, choisi de sorte que le produit des deux se simplifie presque entièrement.

Posons

$$B = \frac{2}{3}\times\frac{4}{5}\times\frac{6}{7}\times\cdots\times\frac{98}{99} \qquad (49 \text{ facteurs}) .$$

**Étape 1 : le produit $AB$ se télescope.**

$$A \times B = \frac{1\times 3\times 5\times\cdots\times 99}{2\times 4\times 6\times\cdots\times 100} \times \frac{2\times 4\times\cdots\times 98}{3\times 5\times\cdots\times 99} .$$

Au numérateur comme au dénominateur on retrouve les mêmes blocs. Le bloc $3\times5\times\cdots\times99$ se simplifie, ainsi que le bloc $2\times4\times\cdots\times98$. Il reste

$$A \times B = \frac{1}{100} .$$

**Étape 2 : $A$ est plus petit que $B$.**

Comparons les facteurs deux à deux. Pour tout entier $k \ge 1$,

$$\frac{2k-1}{2k} < \frac{2k}{2k+1} ,$$

car en multipliant par $2k(2k+1) > 0$ cela équivaut à $(2k-1)(2k+1) < (2k)^2$, c'est-à-dire à $4k^2 - 1 < 4k^2$, ce qui est vrai.

Ainsi

$$\frac{1}{2} < \frac{2}{3}, \qquad \frac{3}{4} < \frac{4}{5}, \qquad \ldots, \qquad \frac{97}{98} < \frac{98}{99} ,$$

soit $49$ inégalités entre nombres strictement positifs. En les multipliant, le produit des $49$ premiers facteurs de $A$ est strictement inférieur à $B$. Comme le cinquantième facteur de $A$ vaut $\dfrac{99}{100} < 1$, on en déduit

$$A < B .$$

**Étape 3 : conclusion.**

$$A^{2} < A \times B = \frac{1}{100} .$$

Les deux nombres $A$ et $\dfrac{1}{10}$ étant positifs, l'inégalité $A^2 < \left(\dfrac{1}{10}\right)^2$ donne

$$A < \frac{1}{10} .$$

*(Pour information, la valeur exacte est $A \approx \text{0,0796}$ : la majoration est assez fine.)*

### 2. Le cas général

Soit $n \ge 1$. Pour $n = 1$, $P_1 = \dfrac{1}{2} < \dfrac{1}{\sqrt{2}}$, l'inégalité est vraie.

Supposons $n \ge 2$ et posons

$$Q_n = \frac{2}{3}\times\frac{4}{5}\times\cdots\times\frac{2n-2}{2n-1} \qquad (n-1 \text{ facteurs}) .$$

Exactement comme ci-dessus :

* le produit se télescope :
  $$P_n \times Q_n = \frac{1\times3\times\cdots\times(2n-1)}{2\times4\times\cdots\times(2n)} \times \frac{2\times4\times\cdots\times(2n-2)}{3\times5\times\cdots\times(2n-1)} = \frac{1}{2n} ;$$
* on a $P_n < Q_n$, en multipliant les $n-1$ inégalités $\dfrac{2k-1}{2k} < \dfrac{2k}{2k+1}$ pour $k = 1, \ldots, n-1$, et en tenant compte du dernier facteur $\dfrac{2n-1}{2n} < 1$ de $P_n$ ;
* donc $P_n^{2} < P_n Q_n = \dfrac{1}{2n}$, et comme $P_n > 0$,
  $$P_n < \frac{1}{\sqrt{2n}} .$$

Pour $n = 50$ on retrouve $A = P_{50} < \dfrac{1}{\sqrt{100}} = \dfrac{1}{10}$.

**Ce qu'il faut retenir.** Quand on doit majorer un produit et qu'un traitement facteur par facteur est trop grossier, il vaut la peine de chercher un second produit qui, multiplié au premier, se simplifie, et de le comparer au premier.

## Going further

1. Montrer que $P_n \ge \dfrac{1}{2\sqrt{n}}$, par récurrence sur $n$. *(Pour l'hérédité, il faut vérifier que $\dfrac{2n+1}{2n+2} \ge \sqrt{\dfrac{n}{n+1}}$.)*
2. En déduire un encadrement de $A$, puis comparer à la valeur $A \approx \text{0,0796}$.
3. Montrer que $P_n = \dfrac{1}{4^{n}}\binom{2n}{n}$. Que devient alors l'inégalité de la question 2 ?
