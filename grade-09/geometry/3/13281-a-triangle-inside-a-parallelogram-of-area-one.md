---
id: "13281"
title: "Un triangle dans un parallélogramme d'aire 1"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [parallelogramme, aire, thales, rapport-d-aires]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 15 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Soit $ABCD$ un parallélogramme d'aire $1$, et $M$ le point du segment $[BD]$ tel que $MD = 3\,MB$. La droite $(AM)$ coupe la droite $(BC)$ en un point $N$.

Calculer l'aire du triangle $MND$.

## Hints

1. Fais une grande figure soignée : $M$ est plus près de $B$ que de $D$. Attention, $ABCD$ n'est pas forcément un rectangle, et le résultat ne doit pas dépendre de ta figure.
2. Les droites $(BN)$ et $(AD)$ sont parallèles. Le théorème de Thalès donne la longueur $BN$ en fonction de $AD$.
3. Deux triangles qui ont le même sommet et leurs bases sur une même droite ont la même hauteur. Leurs aires sont donc dans le même rapport que leurs bases. Compare d'abord l'aire de $BND$ à celle de $BCD$, puis l'aire de $MND$ à celle de $BND$.

## Solution

**Où se trouve $N$.** Les droites $(BC)$ et $(AD)$ sont parallèles. Les droites $(AN)$ et $(DB)$ se coupent en $M$, et $M$ est entre $D$ et $B$. C'est la configuration en « papillon » du théorème de Thalès : $M$ est aussi entre $A$ et $N$, et

$$\frac{BN}{DA} = \frac{MB}{MD} = \frac{1}{3}.$$

Comme $M$ est entre $A$ et $N$, le point $N$ est de l'autre côté de la droite $(BD)$ par rapport à $A$, c'est-à-dire du côté de $C$. Donc $N$ est sur la demi-droite $[BC)$, avec $BN = \dfrac{1}{3}\,AD = \dfrac{1}{3}\,BC$ : le point $N$ est sur le segment $[BC]$, au tiers en partant de $B$.

**L'aire du triangle $BCD$.** La diagonale $[BD]$ partage le parallélogramme en deux triangles $ABD$ et $CDB$ qui ont la même aire (ils sont symétriques l'un de l'autre par rapport au centre du parallélogramme). Donc l'aire de $BCD$ vaut $\dfrac{1}{2}$.

**L'aire du triangle $BND$.** Les triangles $BND$ et $BCD$ ont le même sommet $D$, et leurs bases $[BN]$ et $[BC]$ sont sur la même droite $(BC)$. Ils ont donc la même hauteur issue de $D$, et

$$\text{aire}(BND) = \frac{BN}{BC} \times \text{aire}(BCD) = \frac{1}{3} \times \frac{1}{2} = \frac{1}{6}.$$

**L'aire du triangle $MND$.** Les triangles $MND$ et $BND$ ont le même sommet $N$, et leurs bases $[MD]$ et $[BD]$ sont sur la même droite $(BD)$. Comme $BD = MB + MD = MB + 3\,MB = 4\,MB$, on a $\dfrac{MD}{BD} = \dfrac{3}{4}$, et

$$\text{aire}(MND) = \frac{MD}{BD} \times \text{aire}(BND) = \frac{3}{4} \times \frac{1}{6} = \frac{1}{8}.$$

**Conclusion.** L'aire du triangle $MND$ vaut $\dfrac{1}{8}$, quel que soit le parallélogramme.
