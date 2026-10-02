---
id: "10414"
title: "Une suite qui ne dépasse jamais 2013"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [suites, majoration, telescopage, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf (qui raisonne par récurrence forte ; la solution ci-dessous considère le premier terme qui dépasserait 400)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

On considère une suite $(a_n)_{n \geqslant 1}$ dont les deux premiers termes $a_1$ et $a_2$ sont des réels de l'intervalle $[0, 100]$, et qui vérifie

$$a_{n+1} = a_n + \frac{a_{n-1}}{n^2 - 1} \qquad \text{pour tout entier } n \geqslant 2 .$$

Existe-t-il un entier $n$ tel que $a_n > 2013$ ?

## Hints

1. Calcule $a_3$ et $a_4$ quand $a_1 = a_2 = 100$. La suite semble-t-elle grandir vite ?
2. Écris les égalités $a_3 - a_2 = \frac{a_1}{3}$, $a_4 - a_3 = \frac{a_2}{8}$, … jusqu'à $a_{n+1} - a_n$, puis additionne-les. Que reste-t-il à gauche ?
3. Décompose $\frac{1}{k^2 - 1}$ comme une différence de deux fractions simples, de dénominateurs $k - 1$ et $k + 1$. Que vaut alors $\frac{1}{3} + \frac{1}{8} + \frac{1}{15} + \cdots + \frac{1}{n^2 - 1}$ ? Montre que cette somme reste inférieure à $\frac{3}{4}$.
4. Essaie de montrer que tous les termes restent au plus égaux à $400$. Suppose le contraire, et regarde le premier terme qui dépasse $400$.

## Solution

**La réponse est non.** Nous allons montrer que $a_n \leqslant 400$ pour tout $n \geqslant 1$.

**Étape 1 : une somme télescopique.** Pour tout entier $k \geqslant 2$,

$$\frac{1}{k - 1} - \frac{1}{k + 1} = \frac{(k + 1) - (k - 1)}{(k - 1)(k + 1)} = \frac{2}{k^2 - 1}, \qquad \text{donc} \qquad \frac{1}{k^2 - 1} = \frac{1}{2}\left( \frac{1}{k - 1} - \frac{1}{k + 1} \right) .$$

Additionnons ces égalités pour $k = 2, 3, \ldots, n$. Dans la parenthèse, le terme $-\frac{1}{k+1}$ d'une ligne s'annule avec le terme $+\frac{1}{k+1}$ qui apparaît deux lignes plus bas. Il ne reste que les deux premiers termes positifs, $\frac{1}{1}$ et $\frac{1}{2}$, et les deux derniers termes négatifs, $-\frac{1}{n}$ et $-\frac{1}{n+1}$ :

$$\sum_{k=2}^{n} \frac{1}{k^2 - 1} = \frac{1}{2}\left( 1 + \frac{1}{2} - \frac{1}{n} - \frac{1}{n + 1} \right) < \frac{1}{2} \times \frac{3}{2} = \frac{3}{4} .$$

**Étape 2 : écrire $a_{n+1}$ comme une somme.** La relation de récurrence s'écrit $a_{k+1} - a_k = \frac{a_{k-1}}{k^2 - 1}$ pour tout $k \geqslant 2$. Additionnons ces égalités pour $k = 2, 3, \ldots, n$. À gauche, les termes intermédiaires s'annulent deux à deux et il reste $a_{n+1} - a_2$. Donc, pour tout $n \geqslant 2$,

$$a_{n+1} = a_2 + \sum_{k=2}^{n} \frac{a_{k-1}}{k^2 - 1} = a_2 + \frac{a_1}{3} + \frac{a_2}{8} + \cdots + \frac{a_{n-1}}{n^2 - 1} . \qquad (\star)$$

**Étape 3 : aucun terme ne dépasse $400$.** Supposons, par l'absurde, qu'au moins un terme de la suite soit strictement plus grand que $400$, et notons $a_N$ le premier d'entre eux. Comme $a_1 \leqslant 100$ et $a_2 \leqslant 100$, on a $N \geqslant 3$, et on peut écrire $N = n + 1$ avec $n \geqslant 2$.

Tous les termes avant $a_N$ sont au plus égaux à $400$. En particulier $a_1, a_2, \ldots, a_{n-1}$ sont au plus égaux à $400$. La formule $(\star)$ et l'étape 1 donnent alors

$$a_N = a_{n+1} \leqslant 100 + 400 \sum_{k=2}^{n} \frac{1}{k^2 - 1} < 100 + 400 \times \frac{3}{4} = 400 .$$

C'est en contradiction avec $a_N > 400$. Donc aucun terme ne dépasse $400$.

**Conclusion.** Pour tout $n \geqslant 1$, on a $a_n \leqslant 400 < 2013$. Il n'existe donc aucun entier $n$ tel que $a_n > 2013$.

## Going further

1. Montrer que tous les termes de la suite sont positifs ou nuls, puis que la suite est croissante à partir du rang $2$.
2. En traitant à part le terme $\frac{a_1}{3}$ dans la formule $(\star)$, montrer que $a_n \leqslant 230$ pour tout $n$. (Une calculatrice montre que, pour $a_1 = a_2 = 100$, la suite s'approche de $192$ environ.)
