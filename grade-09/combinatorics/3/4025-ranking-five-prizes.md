---
id: "4025"
title: "Ranger cinq lots du moins cher au plus cher"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, permutations, factorielle, symetrie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2B, Basic Combinatorics and Probability"
  reference: "Handout-3816-3443.pdf, exercice 9 (réponses 5!, 5!/2 et 3·3! dans Handout-3817-3443.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3816-3443.pdf"
---

## Statement

Dans un jeu télévisé, on présente au candidat cinq lots, appelés $A$, $B$, $C$, $D$ et $E$.
Leurs cinq prix sont tous différents, et le candidat doit les ranger du moins cher au plus
cher.

**a)** Sans aucune information, combien de rangements le candidat peut-il proposer ?

**b)** On lui apprend que le lot $A$ est moins cher que le lot $B$, et rien d'autre. Combien
de rangements restent alors possibles ?

**c)** On lui apprend en plus que le lot $A$ est le **deuxième** moins cher. Combien de
rangements restent possibles ?

## Hints

1. Pour la question a), place les lots un par un dans le classement : cinq choix pour la première place, puis quatre, etc.
2. Pour la question b), ne compte rien de nouveau : associe à chaque rangement où $A$ est avant $B$ le rangement obtenu en échangeant $A$ et $B$. Que peux-tu en déduire ?
3. Pour la question c), commence par placer $A$, dont la position est imposée. Où peut se trouver $B$ ?
4. Une fois $A$ et $B$ placés, il reste trois lots à ranger dans les trois places libres.

## Solution

**a) Sans information.**

Le candidat remplit les cinq places du classement l'une après l'autre : $5$ choix pour la
place du lot le moins cher, puis $4$ pour la suivante, puis $3$, puis $2$, puis $1$. Cela
fait

$$5! = 5 \times 4 \times 3 \times 2 \times 1 = 120 \text{ rangements.}$$

**b) On sait que $A$ est avant $B$.**

Inutile de tout recompter : utilisons une **symétrie**.

À chaque rangement des cinq lots, associons celui obtenu en échangeant les places de $A$ et
de $B$, tout le reste étant inchangé. Cette opération transforme un rangement où $A$ est
avant $B$ en un rangement où $A$ est après $B$, et réciproquement. Elle appaire donc les
$120$ rangements deux par deux, chaque paire contenant exactement un rangement de chaque
sorte.

Il y a donc autant de rangements avec $A$ avant $B$ que de rangements avec $A$ après $B$,
c'est-à-dire

$$\frac{120}{2} = 60 \text{ rangements.}$$

**c) On sait de plus que $A$ est en deuxième position.**

La place de $A$ est maintenant imposée : la deuxième.

Comme $B$ doit être plus cher que $A$, il occupe la troisième, la quatrième ou la cinquième
place : cela fait $3$ possibilités.

Une fois $A$ et $B$ placés, il reste trois lots à répartir dans les trois places encore
libres, ce qui se fait de $3! = 6$ façons.

Au total :

$$3 \times 6 = 18 \text{ rangements.}$$

**Réponses : a) $120$ ; b) $60$ ; c) $18$.**

## Going further

À la question c), on aurait pu croire que le raisonnement de la question b) s'applique
encore, et diviser $24$ (le nombre de rangements où $A$ est deuxième) par $2$, ce qui
donnerait $12$. C'est faux : l'échange de $A$ et de $B$ déplace $A$, donc il fait sortir du
cas étudié. Quand on ajoute une contrainte, il faut vérifier que l'argument de symétrie
reste valable, et ici il ne l'est plus.
