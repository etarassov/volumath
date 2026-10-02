---
id: "1424"
title: "Combien de couleurs pour les maisons ?"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [maximum, contraintes, denombrement, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 3 « Combinatorics », problème 1 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Un promoteur immobilier demande à un peintre de peindre $2017$ maisons. Chaque maison reçoit une seule couleur. La commande impose deux conditions :

- au moins $1000$ maisons doivent être vertes ;
- au moins $1000$ maisons doivent être rouges.

À part cela, le peintre est libre : il peut utiliser autant d'autres couleurs qu'il veut, pourvu que chaque couleur qu'il annonce soit vraiment utilisée sur au moins une maison.

Quel est le plus grand nombre de couleurs différentes que le peintre puisse utiliser ?

## Hints

1. Le vert et le rouge coûtent cher en maisons : à eux deux, ils en prennent au minimum $2000$.
2. Combien de maisons reste-t-il alors pour les autres couleurs ?
3. Pour avoir beaucoup de couleurs, combien de maisons faut-il donner à chacune des autres couleurs ?
4. Ne pas oublier de compter le vert et le rouge dans le total des couleurs.

## Solution

**Majorer le nombre de couleurs.**

Appelons $n$ le nombre total de couleurs utilisées. Le vert et le rouge en font partie ; notons $k$ le nombre d'**autres** couleurs, de sorte que $n = k + 2$.

Comptons les maisons. Le vert en prend au moins $1000$, le rouge au moins $1000$, et chacune des $k$ autres couleurs en prend au moins $1$, puisqu'une couleur annoncée doit être utilisée. Comme il n'y a que $2017$ maisons en tout :

$$1000 + 1000 + k \leqslant 2017 ,$$

donc $k \leqslant 17$ et $n \leqslant 19$.

**Atteindre 19 couleurs.**

Il suffit de construire un exemple. Le peintre peint :

- $1000$ maisons en vert ;
- $1000$ maisons en rouge ;
- les $17$ maisons restantes chacune d'une couleur différente : bleu, jaune, orange, violet, et ainsi de suite jusqu'à en avoir $17$.

Le compte des maisons est exact : $1000 + 1000 + 17 = 2017$. Les deux conditions de la commande sont respectées. Et le peintre a utilisé $2 + 17 = 19$ couleurs.

**Conclusion.** Le peintre peut utiliser au plus $\boxed{19}$ couleurs, et il existe bien une façon d'en utiliser $19$.

**La leçon.** Une question du type « quel est le plus grand nombre possible ? » demande toujours deux choses : montrer qu'on ne peut pas faire mieux (ici, l'inégalité $n \leqslant 19$), et montrer qu'on peut vraiment atteindre cette valeur (ici, l'exemple). Une seule des deux ne suffit pas.

## Going further

1. Même question si le promoteur exige au moins $1000$ maisons vertes, $1000$ rouges et $10$ bleues.
2. Même question avec $2017$ maisons, mais cette fois chaque couleur doit être utilisée sur au moins $3$ maisons.
3. Le peintre veut au contraire utiliser le **moins** de couleurs possible. Combien lui en faut-il ?
