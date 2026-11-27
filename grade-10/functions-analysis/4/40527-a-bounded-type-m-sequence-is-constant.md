---
id: "40527"
title: "Une suite de type M majorée ou minorée est constante"
grade: 10
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [suites, moyenne, minoration, contraposee, raisonnement-par-l-absurde, suite-geometrique]
adapted_from: null
see_also: ["40525", "40526"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème III « Moyennes prévisionnelles », question 4° c), d) et e). Le résultat de 4° b) et la question 1° sont admis dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

On considère des suites de nombres $(u_n) = (u_1, u_2, u_3, \ldots)$, numérotées à partir de
$1$. On dit qu'une suite est *de type M* si, pour tout entier $n \geqslant 1$, le terme $u_n$
est la moyenne des $n$ termes qui le suivent :

$$u_n = \frac{u_{n+1} + u_{n+2} + \cdots + u_{2n}}{n} .$$

Un nombre $m$ est un *minorant* de la suite si $u_n \geqslant m$ pour tout $n \geqslant 1$, et
la suite est *minorée* si elle a au moins un minorant. De même, elle est *majorée* s'il existe
un nombre $M$ tel que $u_n \leqslant M$ pour tout $n$.

On pourra utiliser les deux résultats suivants.

- **(A)** Si $(u_n)$ est de type M et si $C$ est un nombre, les suites $(u_n - C)$ et $(-u_n)$
  sont aussi de type M. (C'est une vérification immédiate.)
- **(B)** On admet que si $(v_n)$ est une suite de type M dont tous les termes sont positifs ou
  nuls, alors $v_p \leqslant 3v_r$ pour tous les entiers $p \geqslant 1$ et $r \geqslant 1$.

Dans les questions 1 et 2, $(u_n)$ est une suite minorée de type M.

1. Soit $D$ un nombre strictement positif et $p \geqslant 1$ un entier. Montrer que si
   $u_p - D$ n'est pas un minorant de la suite, alors $u_p - \frac{3}{2} D$ n'est pas non plus
   un minorant.

2. En déduire que la suite $(u_n)$ est constante.

3. Conclure : montrer que toute suite de type M majorée ou minorée est constante.

## Hints

1. **Question 1.** Raisonner par contraposée : supposer que $m = u_p - \frac{3}{2} D$ est un
   minorant, et montrer que $u_p - D$ en est un aussi.
2. **Question 1.** Trouver une suite de type M dont tous les termes sont positifs ou nuls, pour
   pouvoir utiliser (B).
3. **Question 2.** Si la suite n'est pas constante, deux de ses termes sont différents, disons
   $u_s < u_p$. Trouver un nombre $D > 0$ tel que $u_p - D$ ne soit pas un minorant, puis
   appliquer la question 1 encore et encore.
4. **Question 2.** Les nombres $\left(\frac{3}{2}\right)^k$ deviennent aussi grands que l'on
   veut. Or un nombre plus petit qu'un minorant est lui-même un minorant.
5. **Question 3.** Si $(u_n)$ est majorée, regarder la suite $(-u_n)$.

## Solution

**1.** Montrons la contraposée : si $m = u_p - \frac{3}{2} D$ est un minorant, alors $u_p - D$
en est un aussi.

Supposons donc que $u_n \geqslant m$ pour tout $n$. La suite $v_n = u_n - m$ est de type M
d'après (A), et tous ses termes sont positifs ou nuls. D'après (B), pour tout $s \geqslant 1$,
$v_p \leqslant 3v_s$. Or $v_p = u_p - m = \frac{3}{2} D$ et $v_s = u_s - u_p + \frac{3}{2} D$,
donc

$$\frac{3}{2} D \leqslant 3\left(u_s - u_p + \frac{3}{2} D\right), \qquad \text{soit} \qquad \frac{1}{2} D \leqslant u_s - u_p + \frac{3}{2} D ,$$

c'est-à-dire $u_s \geqslant u_p - D$. C'est vrai pour tout $s$ : $u_p - D$ est un minorant.

Par contraposée, si $u_p - D$ n'est pas un minorant, $u_p - \frac{3}{2} D$ n'en est pas un non
plus.

**2.** Soit $m$ un minorant de la suite. Supposons, par l'absurde, que la suite n'est pas
constante : il existe deux termes différents, $u_s < u_p$. Posons
$D_0 = \frac{1}{2}(u_p - u_s) > 0$. Alors $u_s < u_p - D_0$, donc $u_p - D_0$ n'est pas un
minorant.

La question 1, appliquée avec $D = D_0$, montre que $u_p - \frac{3}{2} D_0$ n'est pas un
minorant ; appliquée ensuite avec $D = \frac{3}{2} D_0$, elle montre que
$u_p - \left(\frac{3}{2}\right)^2 D_0$ n'en est pas un ; et ainsi de suite. Pour tout entier
$k \geqslant 0$, le nombre $u_p - \left(\frac{3}{2}\right)^k D_0$ n'est pas un minorant.

Or tout nombre inférieur ou égal à $m$ est un minorant. Donc, pour tout $k$,
$u_p - \left(\frac{3}{2}\right)^k D_0 > m$, c'est-à-dire

$$\left(\frac{3}{2}\right)^k < \frac{u_p - m}{D_0} .$$

C'est impossible, car la suite géométrique $\left(\frac{3}{2}\right)^k$, de raison
$\frac{3}{2} > 1$, dépasse n'importe quel nombre quand $k$ est assez grand. (Sans utiliser de
limite : $\left(\frac{3}{2}\right)^k \geqslant 1 + \frac{k}{2}$ pour tout $k$, car en passant de
$k$ à $k + 1$ on ajoute la moitié de $\left(\frac{3}{2}\right)^k$, qui est au moins
$\frac{1}{2}$.)

**Conclusion :** une suite minorée de type M est constante.

**3.** Le cas minoré est la question 2. Si $(u_n)$ est de type M et majorée par un nombre
$M$, la suite $(-u_n)$ est de type M d'après (A), et minorée par $-M$. Elle est donc constante
d'après la question 2, et $(u_n)$ aussi.

**Conclusion :** toute suite de type M majorée ou minorée est constante.

**Bilan.** Si une suite de type M est minorée, la question 1 montre qu'un écart entre deux de
ses termes forcerait des termes de plus en plus bas, sans fin, ce qui contredit l'existence
d'un minorant : la suite est constante. En passant aux opposés, il en est de même pour une
suite majorée. Une suite de type M non constante prend donc des valeurs aussi grandes et aussi
négatives que l'on veut.

## Going further

- Le résultat (B) se démontre avec des moyennes et des sommes de termes positifs : c'est
  l'exercice 40526.
- Il existe pourtant des suites de type M non constantes : on peut choisir librement le premier
  terme et tous les termes de numéro impair à partir de $u_3$, les termes de numéro pair s'en
  déduisant (exercice 40525). D'après ce qui précède, une telle suite n'est ni majorée ni
  minorée. Calculer quelques termes de plus de la suite $0, 0, 1, -1, 0, 4, 0, -8, \ldots$
  construite dans l'exercice 40525, et observer leur taille.
