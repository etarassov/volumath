---
id: "10433"
title: "Un polynôme évalué en x, x², …, xⁿ"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynome, coefficients, degre, produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf (qui dérive l'égalité et compare des valuations ; ici on compare directement les deux termes de plus bas degré. Erreur de la source : le corrigé annonce les solutions xᵃ et −xᵃ avec a ⩾ 0, mais a = 0 donne un polynôme constant, exclu par l'énoncé ; il faut a ⩾ 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, et $N = \frac{n(n + 1)}{2}$. Trouver tous les polynômes $P$ non constants, à coefficients réels, tels que, pour tout réel $x$,

$$P(x)\,P(x^2)\,P(x^3) \cdots P(x^n) = P(x^N) .$$

## Hints

1. Calcule $1 + 2 + \cdots + n$. Cherche ensuite les solutions de la forme $P(x) = c\,x^a$.
2. Suppose que $P$ a au moins deux termes non nuls. Écris $P(x) = c\,x^a + d\,x^b + \cdots$, où $c\,x^a$ et $d\,x^b$ sont les deux termes de plus bas degré.
3. Dans le produit de gauche, quel est le terme de plus bas degré ? Et celui qui vient juste après ? Compare avec les degrés des termes de $P(x^N)$.

## Solution

On rappelle que $1 + 2 + \cdots + n = \frac{n(n + 1)}{2} = N$. Comme $n \geqslant 2$, on a $N \geqslant 3$.

**Lemme.** *Si deux polynômes prennent la même valeur en tout réel $x$, ils ont les mêmes coefficients.* Soit $D$ leur différence. Si $D$ n'est pas le polynôme nul, notons $m$ son degré et $e \neq 0$ son coefficient dominant. Pour $x > 0$, le quotient $\frac{D(x)}{x^m}$ vaut $e$ plus des termes de la forme $(\text{coefficient}) \times x^{j - m}$ avec $j < m$, qui tendent vers $0$ quand $x$ tend vers $+\infty$. Donc $\frac{D(x)}{x^m}$ tend vers $e \neq 0$, et $D(x) \neq 0$ pour $x$ assez grand. C'est impossible, puisque $D(x) = 0$ pour tout $x$. Donc $D$ est nul, et les deux polynômes ont les mêmes coefficients.

**Étape 1 : les polynômes à un seul terme.** Soit $P(x) = c\,x^a$, avec $c \neq 0$ et $a \geqslant 1$ entier (si $a = 0$, $P$ serait constant). Alors

$$P(x)\,P(x^2) \cdots P(x^n) = c\,x^{a} \times c\,x^{2a} \times \cdots \times c\,x^{na} = c^n\,x^{a(1 + 2 + \cdots + n)} = c^n\,x^{aN} ,$$

tandis que $P(x^N) = c\,x^{aN}$. L'égalité a lieu pour tout $x$ si et seulement si $c^n = c$, c'est-à-dire $c^{n-1} = 1$ puisque $c \neq 0$.

Or $c^{n-1} = 1$ entraîne $|c|^{n-1} = 1$, donc $|c| = 1$ : si $|c| > 1$, ses puissances sont strictement plus grandes que $1$, et si $|c| < 1$, elles sont strictement plus petites. Donc $c = 1$ ou $c = -1$. La valeur $c = 1$ convient toujours. La valeur $c = -1$ convient exactement quand $(-1)^{n-1} = 1$, c'est-à-dire quand $n - 1$ est pair, donc quand $n$ est impair.

**Étape 2 : une solution n'a qu'un seul terme.** Soit $P$ une solution, et supposons que $P$ a au moins deux termes non nuls. Rangeons ses termes par degrés croissants :

$$P(x) = c\,x^a + d\,x^b + (\text{termes de degré plus grand que } b) ,$$

avec $a < b$, $c \neq 0$ et $d \neq 0$. Pour chaque $i \in \{1, \ldots, n\}$,

$$P(x^i) = c\,x^{ia} + d\,x^{ib} + (\text{termes de degré plus grand que } ib) .$$

*Le membre de gauche.* Développons le produit $P(x)\,P(x^2) \cdots P(x^n)$ : chaque terme du développement s'obtient en choisissant un terme dans chacun des $n$ facteurs et en les multipliant.

- Si l'on choisit le plus petit terme $c\,x^{ia}$ dans chaque facteur, on obtient $c^n\,x^{aN}$.
- Si, dans le facteur $P(x^i)$, on choisit un autre terme, son degré est au moins $ib$ au lieu de $ia$ : le degré du produit augmente d'au moins $i\,(b - a)$ par rapport à $aN$.

Tous les autres termes du développement ont donc un degré au moins égal à $aN + (b - a)$. Et pour obtenir exactement ce degré, on ne peut s'écarter du plus petit terme que dans un seul facteur, avec $i\,(b - a) \leqslant b - a$, donc $i = 1$, et il faut y prendre le terme de degré exactement $b$, c'est-à-dire $d\,x^b$. Un seul terme du développement a donc le degré $aN + (b - a)$, à savoir

$$d\,x^b \times c\,x^{2a} \times c\,x^{3a} \times \cdots \times c\,x^{na} = d\,c^{n-1}\,x^{aN + b - a} .$$

Dans le membre de gauche, le coefficient de $x^{aN + b - a}$ vaut donc $d\,c^{n-1} \neq 0$.

*Le membre de droite.* On a

$$P(x^N) = c\,x^{aN} + d\,x^{bN} + (\text{termes de degré plus grand que } bN) .$$

Or $b - a > 0$ et $N > 1$, donc

$$aN < aN + (b - a) < aN + N(b - a) = bN .$$

Aucun terme de $P(x^N)$ n'a le degré $aN + (b - a)$ : dans le membre de droite, le coefficient de $x^{aN + b - a}$ vaut $0$.

D'après le lemme, les deux membres ont les mêmes coefficients, donc $d\,c^{n-1} = 0$. C'est impossible. Ainsi $P$ n'a qu'un seul terme non nul : $P(x) = c\,x^a$, et l'étape 1 s'applique.

**Conclusion.**

- Si $n$ est pair, les solutions sont les polynômes $P(x) = x^a$, avec $a \geqslant 1$ entier.
- Si $n$ est impair, les solutions sont les polynômes $P(x) = x^a$ et $P(x) = -x^a$, avec $a \geqslant 1$ entier.

## Going further

1. Que deviennent les solutions si l'on ne suppose plus $P$ non constant ?
2. Avec la même méthode, trouver tous les polynômes $P$ non constants tels que $P(x)^2 = P(x^2)$ pour tout réel $x$.
