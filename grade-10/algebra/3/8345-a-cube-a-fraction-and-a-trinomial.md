---
id: "8345"
title: "Un cube, une fraction et un trinôme"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, identites-remarquables, trinome, discriminant, fonction-croissante]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, entraînement de mi-parcours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, entraînement de mi-parcours, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Démontrer que pour tous nombres réels $x$ et $y$,

$$\left( \frac{xy - y^2}{x^2 + 4x + 5} \right)^3 \;\leqslant\; \left( \frac{x^2 - xy}{x^2 + 4x + 5} \right)^3 .$$

## Hints

1. L'énoncé a l'air compliqué, mais il est fait de trois couches qu'on peut retirer une par une : le cube, le dénominateur, puis ce qui reste.
2. Première couche. La fonction $u \mapsto u^3$ est croissante sur $\mathbb{R}$ : si $u \leqslant v$ alors $u^3 \leqslant v^3$, et réciproquement. Que suffit-il donc de démontrer ?
3. Deuxième couche. Le dénominateur $x^2 + 4x + 5$ est le même des deux côtés. Si tu savais qu'il est strictement positif, tu pourrais multiplier l'inégalité par lui sans changer le sens.
4. Montre que $x^2 + 4x + 5 > 0$ pour tout $x$ réel, soit avec le discriminant, soit en écrivant ce trinôme sous forme canonique.
5. Troisième couche. Il reste à comparer $xy - y^2$ et $x^2 - xy$. Passe tout du même côté et regarde ce que tu obtiens.

## Solution

**On retire le cube.**

La fonction $u \mapsto u^3$ est strictement croissante sur $\mathbb{R}$. Donc, pour deux réels
$u$ et $v$,

$$u^3 \leqslant v^3 \qquad \text{équivaut à} \qquad u \leqslant v .$$

Il suffit donc de démontrer l'inégalité sans les cubes :

$$\frac{xy - y^2}{x^2 + 4x + 5} \;\leqslant\; \frac{x^2 - xy}{x^2 + 4x + 5} .$$

**On retire le dénominateur.**

Montrons d'abord qu'il ne s'annule jamais et qu'il est positif. Mettons le trinôme sous forme
canonique :

$$x^2 + 4x + 5 = (x^2 + 4x + 4) + 1 = (x+2)^2 + 1 .$$

Un carré est toujours positif ou nul, donc $(x+2)^2 + 1 \geqslant 1 > 0$. En particulier le
dénominateur ne s'annule jamais, les deux fractions sont bien définies, et

$$x^2 + 4x + 5 > 0 \qquad \text{pour tout } x \text{ réel} .$$

(On peut aussi le voir avec le discriminant : $\Delta = 4^2 - 4 \times 1 \times 5 = -4 < 0$, et
le coefficient de $x^2$ est positif, donc le trinôme est strictement positif partout.)

Comme les deux fractions ont le même dénominateur et que celui-ci est strictement positif, on
peut multiplier l'inégalité par lui sans changer le sens. Il suffit donc de démontrer

$$xy - y^2 \;\leqslant\; x^2 - xy .$$

**On conclut.**

Passons tout du même côté :

$$x^2 - xy - (xy - y^2) = x^2 - 2xy + y^2 = (x - y)^2 .$$

Un carré est toujours positif ou nul, donc

$$x^2 - xy - (xy - y^2) \geqslant 0 ,$$

c'est-à-dire $xy - y^2 \leqslant x^2 - xy$.

**Bilan.** En remontant les trois étapes : $xy - y^2 \leqslant x^2 - xy$, donc après division par
le dénominateur strictement positif $x^2 + 4x + 5$, puis passage au cube qui conserve l'ordre,

$$\boxed{\left( \frac{xy - y^2}{x^2 + 4x + 5} \right)^3 \leqslant \left( \frac{x^2 - xy}{x^2 + 4x + 5} \right)^3 }$$

pour tous réels $x$ et $y$.

## Going further

Toute la difficulté de cet exercice est dans la mise en scène. Le cube et le trinôme ne servent à
rien mathématiquement : ils ne font que cacher l'inégalité $(x-y)^2 \geqslant 0$, qui est le
squelette de presque toutes les inégalités élémentaires.

Deux réflexes à retenir de cette mise en scène.

- **Le carré change la règle.** Si l'énoncé avait dit « au carré » au lieu de « au cube », la première étape serait fausse : $u \mapsto u^2$ n'est pas croissante sur $\mathbb{R}$, puisque $(-3)^2 > 1^2$ alors que $-3 < 1$. Une puissance impaire conserve l'ordre sur tout $\mathbb{R}$, une puissance paire ne le fait que sur les nombres positifs.
- **Le signe du dénominateur est une vraie étape.** Multiplier une inégalité par un nombre négatif en renverse le sens. Ici la vérification $x^2 + 4x + 5 > 0$ n'est pas une formalité : sans elle, le raisonnement ne tient pas.

Le cas d'égalité, lui, se lit sur $(x-y)^2 = 0$ : les deux membres sont égaux exactement quand
$x = y$.
