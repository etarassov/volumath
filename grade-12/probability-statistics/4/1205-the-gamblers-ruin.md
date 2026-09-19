---
id: "1205"
title: "Le costume à 12 000 €"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, marche-aleatoire, suite-arithmetique, recurrence, ruine-du-joueur]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, «Random walks»"
  reference: "Handout-4548-4513.pdf, problème 1.8 (réponse dans Handout-4549-4513.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4548-4513.pdf"
---

## Statement

Un casino propose le jeu suivant : on mise $1$ € sur un lancer de pièce équilibrée. Si la pièce tombe sur pile, on gagne $1$ € ; si elle tombe sur face, on perd les $1$ € misés. On peut rejouer autant de fois qu'on le souhaite.

Bruno entre au casino avec $14$ €. Dans le hall, un costume de soie coûte exactement $12\,000$ €. Bruno décide de jouer jusqu'à ce qu'il ait $12\,000$ €, ou jusqu'à ce qu'il n'ait plus rien.

Pour $0 \leqslant d \leqslant 12\,000$, on note $p_d$ la probabilité que Bruno finisse par atteindre $12\,000$ € s'il commence la soirée avec $d$ €. *(On admet que la partie finit par s'arrêter : Bruno atteint l'une des deux bornes avec une probabilité égale à $1$.)*

1. Que valent $p_0$ et $p_{12\,000}$ ?
2. Montrer que, pour tout $d$ tel que $0 < d < 12\,000$, on a $p_d = \dfrac{1}{2}\,p_{d-1} + \dfrac{1}{2}\,p_{d+1}$.
3. En déduire que la suite $(p_0, p_1, \dots, p_{12\,000})$ est arithmétique.
4. Bruno repartira-t-il avec le costume ? Donner la probabilité exacte, puis sa valeur approchée.

## Hints

1. Si Bruno n'a plus rien, il ne peut plus jouer. S'il a déjà $12\,000$ €, il a gagné.
2. Pour la question 2, conditionner sur le résultat du premier lancer : après ce lancer, tout se passe comme si la soirée recommençait, avec $d+1$ € ou avec $d-1$ €.
3. Réécrire la relation de la question 2 sous la forme $p_{d+1} - p_d = \ldots$ .
4. Une suite est arithmétique quand la différence entre deux termes consécutifs ne dépend pas du rang.
5. Une suite arithmétique dont on connaît le premier et le dernier terme est entièrement déterminée.

## Solution

**1. Les deux bouts.**

Si Bruno commence avec $0$ €, il n'a plus rien à miser : la partie est finie et il n'aura jamais le costume. Donc $p_0 = 0$.

S'il commence avec $12\,000$ €, il s'arrête immédiatement : il a le costume. Donc $p_{12\,000} = 1$.

**2. La relation de récurrence.**

Supposons $0 < d < 12\,000$ : Bruno joue donc au moins un coup. Deux cas, chacun de probabilité $\frac{1}{2}$ :

- la pièce tombe sur pile : Bruno se retrouve avec $d+1$ € et la suite de la soirée est un jeu identique, commencé avec $d+1$ € ; il atteint $12\,000$ € avec la probabilité $p_{d+1}$ ;
- la pièce tombe sur face : Bruno se retrouve avec $d-1$ € et atteint $12\,000$ € avec la probabilité $p_{d-1}$.

Les lancers étant indépendants, ce qui arrive après le premier coup ne dépend que de la somme dont Bruno dispose alors. La formule des probabilités totales donne donc

$$p_d = \frac{1}{2}\,p_{d+1} + \frac{1}{2}\,p_{d-1}.$$

Autrement dit : **chaque terme est la moyenne de ses deux voisins.**

**3. La suite est arithmétique.**

Multiplions la relation par $2$ :

$$2p_d = p_{d+1} + p_{d-1}, \qquad \text{donc} \qquad p_{d+1} - p_d = p_d - p_{d-1}.$$

L'écart entre deux termes consécutifs est donc toujours le même, quel que soit $d$ : en le notant $r$, on a

$$p_1 - p_0 = p_2 - p_1 = \dots = p_{12\,000} - p_{11\,999} = r.$$

La suite $(p_d)$ est arithmétique de raison $r$.

**4. La probabilité cherchée.**

Une suite arithmétique de premier terme $p_0$ et de raison $r$ vérifie $p_d = p_0 + d\,r = d\,r$, puisque $p_0 = 0$.

En écrivant cela pour $d = 12\,000$ :

$$1 = p_{12\,000} = 12\,000\,r, \qquad \text{donc} \qquad r = \frac{1}{12\,000}.$$

Finalement, pour tout $d$,

$$p_d = \frac{d}{12\,000}.$$

Avec $d = 14$ :

$$p_{14} = \frac{14}{12\,000} = \frac{7}{6\,000} \approx \text{0,00117}.$$

**Conclusion.** Bruno a environ une chance sur $857$ de repartir avec le costume, soit un peu plus d'un millième. Le résultat est simple et se retient : dans un jeu équitable, la probabilité d'atteindre la cible avant de tout perdre est exactement le rapport entre la fortune de départ et la cible.

## Going further

1. Combien de temps dure la soirée, en moyenne ? On peut montrer que le nombre moyen de coups joués en partant de $d$ € vaut $d\,(12\,000 - d)$. Que cela donne-t-il pour $d = 14$ ?
2. Le casino truque la pièce : pile sort avec la probabilité $p < \frac{1}{2}$. La suite $(p_d)$ n'est alors plus arithmétique. Montrer que la suite des écarts $p_{d+1} - p_d$ est géométrique, et en déduire $p_d$.
3. Bruno entre avec $10$ € et joue toute la nuit sans objectif. Montrer que, avec une pièce équilibrée, il finira presque sûrement par tout perdre à un moment ou à un autre.
