---
id: "7120"
title: "La droite des milieux d'un trapèze"
grade: 9
theme: geometry
difficulty: 3
duration_min: 35
tags: [thales, trapeze, milieux, concours de droites, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 4 (repris en 2014, exercice 2)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $ABCD$ un trapèze, avec $(AB)$ et $(CD)$ parallèles. On appelle $M$ le milieu de $[AB]$,
$N$ le milieu de $[CD]$, et $\Delta$ la droite $(MN)$.

Montrer que les droites $\Delta$, $(AD)$ et $(BC)$ sont **concourantes** (elles passent
toutes les trois par un même point) ou **parallèles**.

## Hints

1. Il y a deux cas à traiter séparément : celui où $(AD)$ et $(BC)$ se coupent, et celui où
   elles sont parallèles. Commence par le second, qui est le plus court.
2. Si $(AD)$ et $(BC)$ sont parallèles, quelle sorte de quadrilatère est $ABCD$ ? Compare
   alors $AM$ et $DN$.
3. Dans l'autre cas, appelle $S$ le point d'intersection de $(AD)$ et $(BC)$. Ne suppose pas
   que $\Delta$ passe par $S$ : trace plutôt la droite $(SM)$ et appelle $N'$ le point où
   elle coupe $(CD)$. Il s'agit de montrer que $N' = N$.
4. Applique le théorème de Thalès deux fois dans le triangle $SAB$, une fois du côté de $A$
   et une fois du côté de $B$.

## Solution

**Premier cas : $(AD)$ et $(BC)$ sont parallèles.**

Alors $ABCD$ a ses côtés opposés deux à deux parallèles : c'est un parallélogramme. En
particulier $AB = DC$, et les segments $[AB]$ et $[DC]$ sont parallèles et de même sens.

Comme $M$ est le milieu de $[AB]$ et $N$ celui de $[DC]$, les segments $[AM]$ et $[DN]$ sont
parallèles, de même longueur $\frac{AB}{2}$ et de même sens. Donc $AMND$ est un
parallélogramme, et par conséquent

$$(MN) \ \text{est parallèle à} \ (AD) .$$

Les trois droites $\Delta$, $(AD)$ et $(BC)$ sont donc parallèles entre elles.

**Deuxième cas : $(AD)$ et $(BC)$ se coupent en un point $S$.**

Comme $(AB)$ et $(CD)$ sont parallèles, les points $D$ et $C$ sont sur les droites $(SA)$ et
$(SB)$, et la droite $(CD)$ est parallèle à $(AB)$. Le théorème de Thalès dans le triangle
$SAB$ donne alors

$$\frac{SD}{SA} = \frac{SC}{SB} . \qquad (\star)$$

Traçons maintenant la droite $(SM)$ et appelons $N'$ le point où elle coupe $(CD)$. Nous
allons montrer que $N'$ est le milieu de $[DC]$.

Appliquons Thalès deux fois de plus.

- Dans le triangle $SAM$, la droite $(DN')$ est parallèle à $(AM)$, donc
  $$\frac{DN'}{AM} = \frac{SD}{SA} .$$
- Dans le triangle $SMB$, la droite $(N'C)$ est parallèle à $(MB)$, donc
  $$\frac{N'C}{MB} = \frac{SC}{SB} .$$

D'après $(\star)$, les deux membres de droite sont égaux, donc

$$\frac{DN'}{AM} = \frac{N'C}{MB} .$$

Or $M$ est le milieu de $[AB]$, donc $AM = MB$, et il reste

$$DN' = N'C .$$

Le point $N'$ est donc le milieu de $[DC]$, c'est-à-dire $N' = N$. La droite $(SM)$ passe
donc par $N$ : c'est exactement la droite $\Delta$, et elle passe par $S$.

**Conclusion.** Les trois droites $\Delta$, $(AD)$ et $(BC)$ passent toutes par $S$ : elles
sont concourantes.

Dans les deux cas, le résultat annoncé est démontré.

## Going further

Le point $S$ mérite un nom : c'est le **sommet** du trapèze, le point où se rejoindraient les
deux côtés non parallèles si on les prolongeait. Vu de $S$, le trapèze est la partie d'un
triangle comprise entre la base $[AB]$ et une parallèle à cette base.

Le résultat dit alors quelque chose de naturel : vue de $S$, la droite $\Delta$ est la
**médiane** du triangle $SAB$ issue de $S$, et elle coupe donc en deux parties égales tous
les segments parallèles à $[AB]$ qu'elle rencontre, en particulier $[DC]$.

Une question pour continuer : la droite $\Delta$ passe aussi par un autre point remarquable
du trapèze. Trace les deux diagonales $[AC]$ et $[BD]$ et regarde où elles se coupent.
