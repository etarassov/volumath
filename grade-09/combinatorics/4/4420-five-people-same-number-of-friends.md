---
id: "4420"
title: "Cinq personnes, autant d'amis"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [tiroirs, amities, absurde, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Pigeonhole Principle"
  reference: "Handout-1280-1280.pdf, problème 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1280-1280.pdf"
---

## Statement

Cinq personnes se trouvent dans une pièce. Certaines sont amies entre elles, d'autres non.
L'amitié est réciproque : si Alice est amie avec Bruno, alors Bruno est ami avec Alice. On ne
compte que les amitiés à l'intérieur du groupe de cinq.

Montrer qu'il y a forcément deux personnes qui ont exactement le même nombre d'amis dans la
pièce.

## Hints

1. Combien d'amis une personne peut-elle avoir, au minimum et au maximum ? Combien de valeurs
   différentes cela fait-il ?
2. Il y a autant de valeurs possibles que de personnes, donc le principe des tiroirs ne suffit
   pas tout seul. Suppose que les cinq nombres d'amis soient tous différents : que vaut alors
   chacun d'eux ?
3. Une personne aurait $0$ ami et une autre en aurait $4$. Ces deux personnes peuvent-elles
   coexister ?

## Solution

Raisonnons par l'absurde : supposons que les cinq personnes aient des nombres d'amis tous
différents.

**Les valeurs possibles.** Chaque personne a entre $0$ et $4$ amis dans la pièce (elle n'est pas
amie avec elle-même). Cela fait exactement $5$ valeurs possibles : $0$, $1$, $2$, $3$, $4$.

**Tous différents, donc toutes les valeurs.** Cinq personnes avec cinq nombres tous différents
pris parmi cinq valeurs : chacune des valeurs $0, 1, 2, 3, 4$ est donc atteinte exactement une
fois. En particulier, il y a une personne qui a $0$ ami, appelons-la Zoé, et une personne qui a
$4$ amis, appelons-la Quentin.

**La contradiction.** Quentin a $4$ amis, c'est-à-dire qu'il est ami avec **toutes** les autres
personnes de la pièce, et donc avec Zoé. Mais l'amitié est réciproque, donc Zoé est amie avec
Quentin, et Zoé a au moins $1$ ami. Cela contredit le fait que Zoé a $0$ ami.

L'hypothèse de départ est donc fausse.

**Il y a bien deux personnes qui ont exactement le même nombre d'amis.**

## Going further

Rien dans ce raisonnement n'utilise le nombre $5$. Le même argument marche pour un groupe de $n$
personnes, quel que soit $n \geqslant 2$ : dans n'importe quelle réunion, deux personnes au moins
ont le même nombre de connaissances parmi les présents.
