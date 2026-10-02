---
id: "12064"
title: "Choisir des signes pour qu'une somme de carrés dépasse le carré de la somme"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalites, signes alternes, nombres ranges, carre d'une somme, descente, inegalite]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, deuxième jour du test de sélection pour l'OIM 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice 5 ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice 5 ; le corrigé écrit que le coefficient α de x₁ est négatif, alors qu'il est positif ou nul, ce que la suite de son raisonnement utilise d'ailleurs ; inégalité vérifiée par ordinateur sur cent mille listes"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier et $x_1, x_2, \ldots, x_n$ des nombres réels strictement positifs.

Montrer qu'on peut choisir des nombres $a_1, a_2, \ldots, a_n$, chacun égal à $1$ ou à $-1$, tels que

$$a_1 x_1^2 + a_2 x_2^2 + \cdots + a_n x_n^2 \geqslant (a_1 x_1 + a_2 x_2 + \cdots + a_n x_n)^2 .$$

## Hints

1. Traitez $n = 1$ puis $n = 2$. Pour $n = 2$, quel signe donner au plus grand des deux nombres ?
2. On peut renuméroter les nombres pour avoir $x_1 \geqslant x_2 \geqslant \cdots \geqslant x_n$. Essayez alors des signes alternés : $a_1 = 1$, $a_2 = -1$, $a_3 = 1$, et ainsi de suite.
3. Notez $F$ la différence entre le membre de gauche et le membre de droite. Développez $F$ en mettant à part $x_1$ : le terme $x_1^2$ disparaît, et $F$ s'écrit $\alpha\,x_1 + \beta$, où $\alpha$ et $\beta$ ne dépendent pas de $x_1$. Quel est le signe de $\alpha$ ?
4. Que devient $F$ si l'on remplace $x_1$ par $x_2$ ? Comparez avec la même expression écrite pour les seuls nombres $x_3, \ldots, x_n$.

## Solution

**Étape 1 : on peut ranger les nombres.** Si l'on échange deux des nombres $x_k$, en échangeant en même temps les signes $a_k$ correspondants, les deux membres de l'inégalité ne changent pas. On peut donc renuméroter les nombres de sorte que

$$x_1 \geqslant x_2 \geqslant \cdots \geqslant x_n > 0 ,$$

choisir les signes pour cette liste rangée, puis rendre à chaque nombre son signe dans l'ordre de départ.

Nous allons montrer que les **signes alternés** conviennent : $a_k = 1$ si $k$ est impair et $a_k = -1$ si $k$ est pair. Pour une liste rangée $y_1 \geqslant y_2 \geqslant \cdots \geqslant y_m \geqslant 0$ de $m$ nombres, notons

$$F(y_1, \ldots, y_m) = (y_1^2 - y_2^2 + y_3^2 - \cdots) - (y_1 - y_2 + y_3 - \cdots)^2 ,$$

où les signes alternent jusqu'au dernier terme $y_m$. Il faut montrer que $F(x_1, \ldots, x_n) \geqslant 0$.

**Étape 2 : une ou deux valeurs.** Pour un seul nombre, $F(y_1) = y_1^2 - y_1^2 = 0$. Pour deux nombres $y_1 \geqslant y_2 \geqslant 0$,

$$F(y_1, y_2) = y_1^2 - y_2^2 - (y_1 - y_2)^2 = 2y_1 y_2 - 2y_2^2 = 2y_2\,(y_1 - y_2) \geqslant 0 .$$

**Étape 3 : enlever deux nombres.** Soit $m \geqslant 3$ et $y_1 \geqslant y_2 \geqslant \cdots \geqslant y_m \geqslant 0$. Notons

$$T = y_2 - y_3 + y_4 - y_5 + \cdots \qquad \text{et} \qquad R = y_2^2 - y_3^2 + y_4^2 - y_5^2 + \cdots ,$$

les signes alternant jusqu'à $y_m$. Alors la somme alternée $y_1 - y_2 + y_3 - \cdots$ vaut $y_1 - T$, la somme alternée des carrés vaut $y_1^2 - R$, et

$$F(y_1, \ldots, y_m) = y_1^2 - R - (y_1 - T)^2 = 2T\,y_1 - R - T^2 .$$

*Le nombre $T$ est positif ou nul.* On regroupe ses termes deux par deux : $T = (y_2 - y_3) + (y_4 - y_5) + \cdots$. Chaque parenthèse est positive ou nulle, car les nombres sont rangés. S'il reste un dernier terme seul, c'est $+y_m$, qui est aussi positif ou nul.

Comme $T \geqslant 0$ et $y_1 \geqslant y_2$, on a $2T\,y_1 \geqslant 2T\,y_2$, donc

$$F(y_1, \ldots, y_m) \geqslant 2T\,y_2 - R - T^2 .$$

Calculons ce membre de droite. Notons $T' = y_3 - y_4 + y_5 - \cdots$ et $R' = y_3^2 - y_4^2 + y_5^2 - \cdots$, de sorte que $T = y_2 - T'$ et $R = y_2^2 - R'$. Alors

$$2T\,y_2 - R - T^2 = 2y_2^2 - 2T' y_2 - y_2^2 + R' - (y_2^2 - 2T' y_2 + T'^2) = R' - T'^2 .$$

Or $R' - T'^2$ est exactement $F(y_3, \ldots, y_m)$, l'expression écrite pour la liste rangée $y_3 \geqslant \cdots \geqslant y_m$, qui commence elle aussi par un signe $+$. On a donc montré que

$$F(y_1, y_2, y_3, \ldots, y_m) \geqslant F(y_3, \ldots, y_m) .$$

**Étape 4 : conclusion.** En appliquant l'étape 3 plusieurs fois, on enlève les nombres deux par deux :

$$F(x_1, \ldots, x_n) \geqslant F(x_3, \ldots, x_n) \geqslant F(x_5, \ldots, x_n) \geqslant \cdots$$

On s'arrête quand il reste un seul nombre (si $n$ est impair) ou deux nombres (si $n$ est pair). D'après l'étape 2, cette dernière valeur est positive ou nulle. Donc $F(x_1, \ldots, x_n) \geqslant 0$.

Ainsi, une fois les nombres rangés dans l'ordre décroissant, les signes alternés $a_1 = 1$, $a_2 = -1$, $a_3 = 1$, $\ldots$ donnent

$$a_1 x_1^2 + a_2 x_2^2 + \cdots + a_n x_n^2 \geqslant (a_1 x_1 + a_2 x_2 + \cdots + a_n x_n)^2 .$$

## Going further

1. Pour $n = 2$, montrer que les signes $a_1 = -1$, $a_2 = 1$ ne conviennent pas lorsque $x_1 > x_2$.
2. Montrer qu'avec tous les signes égaux à $1$, l'inégalité est fausse dès que $n \geqslant 2$.
