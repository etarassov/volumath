---
id: "8836"
title: "Chaque nombre est la moyenne de ses voisins"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [principe de lextremum, moyenne, cercle, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 3, p. 115"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On écrit $n$ nombres réels sur un cercle, un par position, de sorte que **chaque nombre soit la moyenne des deux qui l'encadrent**.

Montrer que tous les nombres sont égaux.

## Hints

1. Il n'y a qu'un nombre fini de nombres écrits : il en existe donc un qui est le plus grand. Appelle $M$ cette valeur maximale.
2. Prends une position où la valeur $M$ est écrite et regarde ses deux voisins. Que peux-tu dire de leur moyenne ?
3. Si l'un des deux voisins était strictement plus petit que $M$, que faudrait-il pour que la moyenne fasse quand même $M$ ?
4. Une fois établi que les voisins d'un $M$ valent aussi $M$, propage le long du cercle.

## Solution

### On prend le maximum

Il y a $n$ nombres, donc un nombre fini : il existe une valeur maximale, notons-la $M$. Choisissons une position où $M$ est écrite.

### Les deux voisins valent aussi $M$

Notons $x$ et $y$ les deux nombres voisins. L'hypothèse dit
$$M = \frac{x+y}{2} , \qquad \text{c'est-à-dire} \qquad x + y = 2M .$$

Or $M$ est le maximum, donc $x \leqslant M$ et $y \leqslant M$, d'où
$$x + y \leqslant 2M .$$

L'égalité $x+y = 2M$ ne peut donc avoir lieu que si les deux inégalités $x \leqslant M$ et $y \leqslant M$ sont des égalités. Autrement dit
$$x = M \qquad \text{et} \qquad y = M .$$

(Plus concrètement : si $x < M$, alors $y = 2M - x > M$, ce qui contredirait la maximalité de $M$.)

### On propage tout autour du cercle

Partons de la position où $M$ est écrite et avançons de proche en proche, toujours dans le même sens.

- Le voisin immédiat vaut $M$, d'après ce qui précède.
- Ce voisin porte donc lui aussi la valeur maximale : on peut lui réappliquer le raisonnement, et **son** voisin suivant vaut aussi $M$.
- En répétant, on parcourt tout le cercle.

Comme le cercle a $n$ positions, après $n$ pas on est revenu au point de départ et **toutes** les positions portent la valeur $M$.

**Conclusion.** Tous les nombres écrits sont égaux.

### Attention à la version « en ligne »

Le résultat utilise vraiment le cercle. Si les nombres sont écrits **en ligne** et que seuls ceux du milieu doivent être la moyenne de leurs voisins, la conclusion tombe : la suite
$$1, \; 2, \; 3, \; 4, \; 5$$
vérifie la condition pour les trois nombres du milieu, et ses termes ne sont pas égaux. C'est le fait de refermer le cercle qui force tout à s'aplatir.

## Going further

Sur un cercle, on écrit $n$ nombres de sorte que chaque nombre soit **inférieur ou égal** à la moyenne de ses deux voisins. Montrer qu'ils sont encore tous égaux.
