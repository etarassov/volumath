---
id: "8506"
title: "Un triangle rectangle tricolore"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [coloriage-du-plan, triangle-rectangle, raisonnement-par-l-absurde, perpendiculaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 7 (sujet collégiens) et exercice 13 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On colorie chaque point du plan en bleu, en vert ou en rouge. On suppose que les trois
couleurs sont utilisées : il existe au moins un point bleu, au moins un point vert et au moins
un point rouge.

Démontrer qu'il existe alors un triangle rectangle dont les trois sommets sont de trois
couleurs différentes.

## Hints

1. Raisonne par l'absurde : suppose qu'aucun triangle rectangle n'a ses trois sommets de trois couleurs différentes, et cherche une contradiction.
2. Pars de trois points $B$, $V$, $R$ de trois couleurs. Le projeté orthogonal de $R$ sur la droite $(BV)$ fabrique automatiquement des angles droits. De quelle couleur peut-il bien être ?
3. Tu peux donc supposer que tu disposes de trois points de trois couleurs différentes **alignés** sur une même droite $d$.
4. Trace maintenant les perpendiculaires à $d$ en chacun de ces trois points. Montre que chacune de ces trois droites est entièrement d'une seule couleur.
5. Il ne reste qu'à fabriquer un angle droit ailleurs que sur $d$, entre deux de ces droites-là.

## Solution

Raisonnons par l'absurde. **Supposons qu'aucun triangle rectangle du plan n'ait ses trois
sommets de trois couleurs différentes.**

### Étape 1 : on se ramène à trois points alignés

Par hypothèse il existe un point bleu $B$, un point vert $V$ et un point rouge $R$.

Si $R$ est déjà sur la droite $(BV)$, nous avons directement trois points alignés de trois
couleurs. Sinon, appelons $X$ le projeté orthogonal de $R$ sur la droite $(BV)$ ; le point $X$
est sur $(BV)$ et $(RX)$ est perpendiculaire à $(BV)$.

- Si $X$ était bleu, le triangle $RXV$ serait rectangle en $X$ (car $(XR) \perp (XV)$), et ses
  trois sommets seraient rouge, bleu et vert. Interdit.
- Si $X$ était vert, le triangle $RXB$ serait rectangle en $X$, avec trois sommets rouge, vert
  et bleu. Interdit.

Donc $X$ est rouge. Quitte à remplacer $R$ par $X$, nous disposons dans tous les cas de trois
points $B$, $V$, $R$ **alignés** sur une même droite $d$, respectivement bleu, vert et rouge.

### Étape 2 : trois droites entièrement monochromes

Appelons $b$, $v$ et $r$ les perpendiculaires à $d$ passant respectivement par $B$, $V$ et $R$.
Ces trois droites sont parallèles entre elles et deux à deux distinctes.

**Montrons que tout point de $r$ est rouge.** Soit $Y$ un point de $r$ différent de $R$.
Comme $(RY) = r$ est perpendiculaire à $d$, et que $B$ et $V$ sont sur $d$, les triangles
$YRB$ et $YRV$ sont tous les deux rectangles en $R$.

- Si $Y$ était bleu, le triangle $YRV$ aurait pour sommets un point bleu, un rouge et un vert.
  Interdit.
- Si $Y$ était vert, le triangle $YRB$ aurait pour sommets un point vert, un rouge et un bleu.
  Interdit.

Donc $Y$ est rouge. La droite $r$ est donc entièrement rouge. Le même raisonnement, en
échangeant les rôles, montre que $b$ est entièrement bleue et $v$ entièrement verte.

### Étape 3 : la contradiction

Choisissons un point $R'$ sur $r$, différent de $R$. Il est rouge.

Traçons la droite $p$ passant par $V$ et perpendiculaire à $(VR')$.

La droite $p$ est-elle parallèle à $b$ ? Elle le serait seulement si $p$ était perpendiculaire
à $d$, c'est-à-dire si $(VR')$ était parallèle à $d$. Or $V$ est sur $d$ et $R'$ n'y est pas,
donc $(VR')$ n'est pas parallèle à $d$. Donc $p$ n'est pas parallèle à $b$ : ces deux droites
se coupent en un point, appelons-le $B'$.

Le point $B'$ est sur $b$, donc il est bleu. Il est différent de $V$, puisque $V$ est sur $v$
et que $b$ et $v$ sont deux droites parallèles distinctes.

Regardons enfin le triangle $B'VR'$ :

- il est rectangle en $V$, car $(VB')$ est portée par $p$, qui est perpendiculaire à $(VR')$ ;
- son sommet $B'$ est bleu, son sommet $V$ est vert, son sommet $R'$ est rouge.

Voilà un triangle rectangle aux trois sommets de trois couleurs différentes : c'est exactement
ce que nous avions supposé impossible.

### Conclusion

L'hypothèse de départ est donc fausse : quel que soit le coloriage du plan en trois couleurs
toutes utilisées, **il existe toujours un triangle rectangle dont les trois sommets sont de
trois couleurs différentes**.

## Going further

Le point délicat de ce problème n'est pas le calcul, il est de fabriquer de nouveaux points
dont on connaît la couleur. On ne part de presque rien — trois points — et chaque angle droit
tracé interdit une couleur à un point, jusqu'à ce que des droites entières deviennent
monochromes. Dire « il y a une infinité de points, donc… » ne remplace pas cette construction.
