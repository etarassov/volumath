---
id: "10460"
title: "Les inverses de la suite aₙ₊₁ = aₙ² − aₙ + 1"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [suites, telescopage, encadrement, puissances, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices communs, exercice 6 ; corrigé 2019-02_envoi-3-cor.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

On considère la suite $(a_n)_{n \geqslant 1}$ définie par $a_1 = 2$ et

$$a_{n+1} = a_n^2 - a_n + 1 \qquad \text{pour tout } n \geqslant 1 .$$

Montrer que

$$1 - \frac{1}{2018^{2018}} < \frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_{2018}} < 1 .$$

## Hints

1. Calcule $a_2$, $a_3$, $a_4$, puis les sommes $1 / a_1$, $1 / a_1 + 1 / a_2$ et $1 / a_1 + 1 / a_2 + 1 / a_3$. Que remarques-tu ?
2. Factorise $a_{n+1} - 1$.
3. Écris $1 / a_n$ comme une différence de deux fractions, pour que la somme se simplifie.
4. Il reste à montrer que $a_{2019} - 1$ est très grand. Compare $a_{n+1} - 1$ au carré de $a_n - 1$, et minore $a_n - 1$ par une puissance de $2$.

## Solution

**Premières valeurs.** On trouve $a_2 = 3$, $a_3 = 7$, $a_4 = 43$, et

$$\frac{1}{2} = 1 - \frac{1}{2} , \qquad \frac{1}{2} + \frac{1}{3} = 1 - \frac{1}{6} , \qquad \frac{1}{2} + \frac{1}{3} + \frac{1}{7} = 1 - \frac{1}{42} .$$

Les nombres $2$, $6$, $42$ sont $a_2 - 1$, $a_3 - 1$, $a_4 - 1$. On va démontrer que c'est toujours le cas.

**Étape 1 : tous les termes sont au moins égaux à $2$.** On a $a_{n+1} - a_n = a_n^2 - 2a_n + 1 = (a_n - 1)^2 \geqslant 0$. La suite est donc croissante, et comme $a_1 = 2$, on a $a_n \geqslant 2$ pour tout $n$. En particulier $a_n - 1 \geqslant 1 > 0$, et toutes les fractions écrites plus bas ont un sens.

**Étape 2 : une somme télescopique.** On a

$$a_{n+1} - 1 = a_n^2 - a_n = a_n (a_n - 1) .$$

Donc

$$\frac{1}{a_{n+1} - 1} = \frac{1}{a_n (a_n - 1)} = \frac{1}{a_n - 1} - \frac{1}{a_n} ,$$

comme on le vérifie en réduisant au même dénominateur. Autrement dit,

$$\frac{1}{a_n} = \frac{1}{a_n - 1} - \frac{1}{a_{n+1} - 1} \qquad \text{pour tout } n \geqslant 1 .$$

Additionnons ces égalités pour $n = 1, 2, \ldots, N$. Chaque fraction $1 / (a_k - 1)$, pour $2 \leqslant k \leqslant N$, apparaît une fois avec le signe $+$ et une fois avec le signe $-$, et disparaît. Comme $a_1 - 1 = 1$, il reste

$$\frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_N} = 1 - \frac{1}{a_{N+1} - 1} . \qquad (1)$$

**Étape 3 : l'inégalité de droite.** Avec $N = 2018$, la somme de l'énoncé vaut $1 - 1 / (a_{2019} - 1)$, qui est strictement plus petit que $1$ car $a_{2019} - 1 > 0$.

**Étape 4 : l'inégalité de gauche.** D'après $(1)$, il suffit de montrer que $a_{2019} - 1 > 2018^{2018}$. Posons $b_n = a_n - 1$. L'étape 2 donne

$$b_{n+1} = a_n (a_n - 1) = (b_n + 1)\,b_n > b_n^2 .$$

Montrons, de proche en proche, que $b_n \geqslant 2^{2^{n-2}}$ pour tout $n \geqslant 2$. Pour $n = 2$, on a $b_2 = 2 = 2^{2^0}$. Si $b_n \geqslant 2^{2^{n-2}}$, alors

$$b_{n+1} > b_n^2 \geqslant \left( 2^{2^{n-2}} \right)^2 = 2^{2 \cdot 2^{n-2}} = 2^{2^{n-1}} .$$

En particulier $b_{2019} \geqslant 2^{2^{2017}}$. D'autre part, $2018 < 2048 = 2^{11}$, donc

$$2018^{2018} < \left( 2^{11} \right)^{2018} = 2^{22\,198} .$$

Enfin $22\,198 < 32\,768 = 2^{15} \leqslant 2^{2017}$, donc $2^{22\,198} < 2^{2^{2017}}$. On a ainsi

$$2018^{2018} < 2^{2^{2017}} \leqslant b_{2019} = a_{2019} - 1 ,$$

donc $1 / (a_{2019} - 1) < 1 / 2018^{2018}$, et avec $(1)$,

$$\frac{1}{a_1} + \cdots + \frac{1}{a_{2018}} = 1 - \frac{1}{a_{2019} - 1} > 1 - \frac{1}{2018^{2018}} .$$

**Conclusion.** Les deux inégalités de l'énoncé sont démontrées.

## Going further

1. Montrer que $a_{n+1} = a_1 a_2 \cdots a_n + 1$ pour tout $n \geqslant 1$. En déduire que deux termes distincts de la suite n'ont aucun diviseur commun autre que $1$.
2. Écrire $1$ comme une somme de cinq fractions de numérateur $1$ dont les dénominateurs sont des entiers tous différents.
