---
id: "7534"
title: "Un multiple tout près d'un entier"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [tiroirs, partie-fractionnaire, approximation, reels]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 52 (une étoile). La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soit $a > 0$ un réel quelconque.

Montrer que parmi les $n-1$ nombres

$$a, \quad 2a, \quad 3a, \quad \ldots, \quad (n-1)a,$$

l'un au moins est à distance au plus $\dfrac{1}{n}$ d'un entier.

## Hints

1. Ce qui compte, ce n'est pas $ka$ mais sa **partie fractionnaire** $\{ka\} = ka - \lfloor ka \rfloor$, qui vit dans $[0\,;1[$.
2. Traduis « $ka$ est à distance au plus $\frac1n$ d'un entier » en une condition sur $\{ka\}$. Il y a deux possibilités : près de $0$ ou près de $1$.
3. Si aucune des $n-1$ parties fractionnaires n'est près des bords, elles sont toutes dans un intervalle plus court. Découpe-le en morceaux de longueur $\frac1n$ : combien y en a-t-il ?
4. Deux parties fractionnaires dans un même morceau : que peux-tu dire de leur différence ? Et à quel multiple de $a$ cette différence correspond-elle ?

## Solution

Pour un réel $t$, notons $\lfloor t \rfloor$ sa partie entière et $\{t\} = t - \lfloor t \rfloor$ sa partie fractionnaire, qui vérifie $0 \leqslant \{t\} < 1$.

Dire que $t$ est à distance au plus $\dfrac1n$ d'un entier signifie

$$\{t\} \leqslant \frac1n \qquad \text{ou} \qquad \{t\} \geqslant 1 - \frac1n.$$

**Le cas $n = 2$.** La liste se réduit à $a$, et tout réel est à distance au plus $\frac12$ de l'entier le plus proche. C'est acquis. On suppose donc $n \geqslant 3$.

**Étape 1. On suppose le contraire.**

Supposons qu'aucun des nombres $a, 2a, \ldots, (n-1)a$ ne soit à distance $\leqslant \frac1n$ d'un entier. Alors pour tout $k$ entre $1$ et $n-1$ :

$$\frac1n < \{ka\} < 1 - \frac1n = \frac{n-1}{n}.$$

**Étape 2. On découpe et on applique les tiroirs.**

L'intervalle $[\tfrac1n \,;\, \tfrac{n-1}{n}[$ se découpe en $n-2$ morceaux de longueur $\frac1n$ :

$$[\tfrac{1}{n} \,;\, \tfrac{2}{n}[, \qquad [\tfrac{2}{n} \,;\, \tfrac{3}{n}[, \qquad \ldots, \qquad [\tfrac{n-2}{n} \,;\, \tfrac{n-1}{n}[.$$

Les $n-1$ nombres $\{a\}, \{2a\}, \ldots, \{(n-1)a\}$ sont tous dans cet intervalle, donc répartis dans ces $n-2$ morceaux. Comme $n-1 > n-2$, le principe des tiroirs donne deux indices $i < j$ (avec $1 \leqslant i < j \leqslant n-1$) tels que $\{ia\}$ et $\{ja\}$ soient dans le **même** morceau.

Deux nombres d'un même morceau de longueur $\frac1n$ diffèrent de moins de $\frac1n$ :

$$\bigl|\{ja\} - \{ia\}\bigr| \;<\; \frac1n.$$

**Étape 3. On revient à un multiple de $a$.**

Posons $m = j - i$, de sorte que $1 \leqslant m \leqslant n-2$. Alors

$$ma = ja - ia = \bigl(\lfloor ja\rfloor - \lfloor ia \rfloor\bigr) + \bigl(\{ja\} - \{ia\}\bigr).$$

Le premier terme, notons-le $N$, est un entier. Le second est de valeur absolue $< \frac1n$. Donc

$$|ma - N| \;<\; \frac1n.$$

Autrement dit, $ma$ est à distance strictement inférieure à $\frac1n$ de l'entier $N$. Et $m$ est bien compris entre $1$ et $n-1$ : le nombre $ma$ figure donc dans la liste de l'énoncé.

**Étape 4. La contradiction.**

C'est exactement ce que l'étape 1 déclarait impossible. Contradiction.

**Conclusion.** L'un des nombres $a, 2a, \ldots, (n-1)a$ est bien à distance au plus $\dfrac1n$ d'un entier.

Signalons enfin que cet entier est nécessairement positif ou nul : comme $ma > 0$ et $|ma - N| < \frac1n \leqslant \frac13$, on a $N > ma - \frac13 > -\frac13$, donc $N \geqslant 0$.

## Going further

Ce résultat est la version la plus simple du **théorème d'approximation de Dirichlet**. Sous sa forme habituelle, il dit : pour tout réel $a$ et tout entier $n \geqslant 1$, il existe des entiers $p$ et $q$ avec $1 \leqslant q \leqslant n$ tels que

$$\left| a - \frac{p}{q} \right| \;<\; \frac{1}{q\,n}.$$

C'est le point de départ de toute la théorie de l'approximation des réels par des fractions, et donc des fractions continues.

Un exemple concret : prends $a = \pi$ et $n = 8$. Parmi $\pi, 2\pi, \ldots, 7\pi$, c'est $7\pi \approx 21{,}991$ qui est le plus près d'un entier, à $0{,}009$ de $22$, bien mieux que le $\frac18 = 0{,}125$ garanti. On retrouve la fameuse approximation $\pi \approx \frac{22}{7}$.
