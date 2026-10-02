---
id: "1425"
title: "Scier l'échiquier"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [proportionnalite, decoupage, longueurs, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 4 « Misc », problème 1 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Un menuisier a découpé une planche carrée en forme d'échiquier, c'est-à-dire quadrillée en $8 \times 8 = 64$ petits carrés, pour en faire $64$ carrés de $1$ case. Cela lui a pris $70$ minutes.

Il scie toujours en suivant les traits du quadrillage, et chaque trait de scie traverse la planche d'un bord à l'autre. Le temps de sciage est proportionnel à la longueur totale sciée.

Combien de temps lui faudrait-il pour découper une planche identique en carrés de $2 \times 2$ cases ?

## Hints

1. Faire un dessin de l'échiquier et tracer tous les traits qu'il faut scier pour obtenir des carrés de $1$ case.
2. Combien y a-t-il de traits horizontaux ? Et de traits verticaux ? Attention : les bords de la planche ne se scient pas.
3. Faire le même dessin pour des carrés de $2 \times 2$ cases.
4. Tous les traits ont la même longueur, celle du côté de la planche. Comparer alors simplement le nombre de traits dans les deux cas.

## Solution

**Les traits à scier pour obtenir des carrés de 1 case.**

Sur une planche de $8$ cases sur $8$, les traits intérieurs horizontaux sont ceux qui séparent la ligne $1$ de la ligne $2$, la ligne $2$ de la ligne $3$, ..., la ligne $7$ de la ligne $8$ : il y en a $7$. Les bords ne comptent pas, il n'y a rien à scier.

De même, il y a $7$ traits intérieurs verticaux.

Il faut donc scier

$$7 + 7 = 14 \text{ traits},$$

chacun traversant la planche d'un bord à l'autre, donc chacun de longueur égale au côté de la planche. Appelons $c$ cette longueur. La longueur totale sciée vaut $14c$, et cela prend $70$ minutes.

**Les traits à scier pour obtenir des carrés de 2 cases sur 2.**

Il faut maintenant séparer la planche en $4$ bandes de $2$ cases dans chaque direction. Les traits horizontaux à scier sont ceux qui passent entre les lignes $2$ et $3$, entre les lignes $4$ et $5$, entre les lignes $6$ et $7$ : il y en a $3$. De même, $3$ traits verticaux.

Il faut donc scier

$$3 + 3 = 6 \text{ traits},$$

soit une longueur totale de $6c$.

**Le temps.**

Le temps est proportionnel à la longueur sciée. Pour $14$ traits, il faut $70$ minutes, donc un trait demande

$$\frac{70}{14} = 5 \text{ minutes} .$$

Pour $6$ traits :

$$6 \times 5 = 30 \text{ minutes} .$$

**Conclusion.** Il lui faudrait $\boxed{30 \text{ minutes}}$.

## Going further

1. Combien de temps faudrait-il pour découper la planche en carrés de $4 \times 4$ cases ?
2. Et pour la couper en $8$ bandes de $8$ cases sur $1$ case ?
3. Une planche de $16 \times 16$ cases de même taille demanderait combien de temps pour être découpée en carrés de $1$ case ? (Attention : les traits sont maintenant deux fois plus longs.)
