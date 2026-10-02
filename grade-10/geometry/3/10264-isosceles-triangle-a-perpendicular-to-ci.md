---
id: "10264"
title: "Triangle isocèle : une perpendiculaire à (CI)"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle-isocele, cercle-inscrit, cercle-circonscrit, triangles-semblables, paralleles, perpendiculaires, bissectrice]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 1 (géométrie)"
  reference: "2023-11_Sujet-envoi-1-2023-2024.pdf, Exercices Juniors, exercice 6 ; corrigé 2023-04_Corrige-envoi-1-2023-2024.pdf (le corrigé montre que I, O, D, C sont cocycliques par une chasse aux angles faite sur la figure où O est entre A et I ; la preuve ci-dessous, par triangles semblables, vaut aussi quand l'angle en A dépasse 60°)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/11/Sujet-envoi-1-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-11_Sujet-envoi-1-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, $O$ le centre de son cercle circonscrit et $I$ le centre de son cercle inscrit. La parallèle à $(AB)$ passant par $I$ coupe $(AC)$ en $D$.

Montrer que les droites $(CI)$ et $(DO)$ sont perpendiculaires.

![Le triangle ABC isocèle en A, son axe de symétrie en pointillés, son cercle inscrit de centre I, le centre O du cercle circonscrit, le point D sur [AC], et les segments [DO] et [CI] en bleu](10264-figure-1.svg)

## Hints

1. Montrez que le triangle $ADI$ est isocèle en $D$.
2. Soit $S$ le point du cercle circonscrit diamétralement opposé à $A$. Comparez le triangle $ACS$ avec le triangle formé par $A$, $D$ et le milieu $N$ de $[AI]$. Déduisez-en que $AD \times AC = AI \times AO$.
3. Comparez alors les triangles $ADO$ et $AIC$ : que vaut l'angle $\widehat{AOD}$ ?

## Solution

*Rappels.*

- *Angle inscrit dans un demi-cercle.* Si $[AS]$ est un diamètre d'un cercle et $C$ un autre point du cercle, l'angle $\widehat{ACS}$ est droit.
- *Triangles semblables.* Deux triangles qui ont deux angles égaux sont semblables, et leurs côtés sont proportionnels. Deux triangles qui ont un angle égal compris entre des côtés proportionnels sont semblables, et leurs autres angles sont égaux deux à deux.

On note $M$ le milieu de $[BC]$, $\alpha = \frac{1}{2}\widehat{BAC}$ et $\gamma = \frac{1}{2}\widehat{ACB}$. Comme $\widehat{BAC} + 2\,\widehat{ACB} = 180°$, on a $\alpha + 2\gamma = 90°$.

Le triangle est isocèle en $A$, donc la droite $(AM)$ est son axe de symétrie. Elle contient la bissectrice issue de $A$, donc $I$, et la médiatrice de $[BC]$, donc $O$.

![Le cercle circonscrit, le point S diamétralement opposé à A, le milieu N de [AI] et les triangles rectangles AND et ACS](10264-figure-2.svg)

**Étape 1 : le triangle $ADI$ est isocèle en $D$.** Le point $I$ est à l'intérieur du triangle, donc la parallèle à $(AB)$ passant par $I$ coupe $(AC)$ en un point $D$ situé strictement entre $A$ et $C$. Les droites $(ID)$ et $(AB)$ sont parallèles, coupées par la sécante $(AI)$, et $D$, $B$ sont de part et d'autre de $(AI)$ : les angles alternes-internes $\widehat{DIA}$ et $\widehat{IAB}$ sont égaux. Or $\widehat{IAB} = \alpha = \widehat{IAD}$. Donc $\widehat{DIA} = \widehat{DAI}$ et $DA = DI$.

Le pied de la perpendiculaire à $(AI)$ issue de $D$ est donc le milieu $N$ de $[AI]$.

**Étape 2 : le point $S$.** La droite $(AM)$ passe par $O$, elle recoupe donc le cercle circonscrit au point $S$ diamétralement opposé à $A$, et $AS = 2R$ où $R = AO$ est le rayon. Comme $M$ est à l'intérieur du cercle, $S$ est au-delà de $M$ : les points $N$, $I$, $O$, $M$, $S$ sont tous sur la demi-droite $[AM)$. D'après le premier rappel, $\widehat{ACS} = 90°$.

**Étape 3 : $AD \times AC = AI \times AO$.** Les triangles $AND$ et $ACS$ sont rectangles en $N$ et en $C$, et ils ont le même angle $\alpha$ en $A$, car $D$ est sur $[AC)$ et $N$ sur $[AS)$. Ils sont semblables, donc

$$\frac{AN}{AD} = \frac{AC}{AS}, \qquad AD \times AC = AN \times AS = \frac{AI}{2} \times 2R = AI \times AO.$$

**Étape 4 : l'angle $\widehat{AOD}$.** L'étape 3 s'écrit $\frac{AD}{AI} = \frac{AO}{AC}$. Les triangles $ADO$ et $AIC$ ont le même angle $\alpha$ en $A$ (le point $D$ est sur $[AC)$ et $O$ sur $[AI)$), compris entre des côtés proportionnels : ils sont semblables, avec $D$ qui correspond à $I$ et $O$ qui correspond à $C$. Donc

$$\widehat{AOD} = \widehat{ACI} = \gamma.$$

**Étape 5 : l'angle de $(CI)$ avec l'axe.** Dans le triangle $AIC$, $\widehat{AIC} = 180° - \alpha - \gamma = 90° + \gamma$, en utilisant $\alpha + 2\gamma = 90°$. L'angle supplémentaire vaut $\widehat{MIC} = 90° - \gamma$.

**Étape 6 : conclusion.** Si $O = I$ (le triangle est alors équilatéral), la droite $(DO)$ est la droite $(DI)$, parallèle à $(AB)$, et $(CI)$ est la hauteur issue de $C$ : elle est perpendiculaire à $(AB)$, donc à $(DO)$. Sinon, il y a deux cas, selon la position de $O$ sur l'axe.

- *Si $O$ est plus loin de $A$ que $I$.* Vue de $O$, la demi-droite $[OI)$ est dirigée vers $A$, donc $\widehat{IOD} = \widehat{AOD} = \gamma$. Vue de $I$, la demi-droite $[IO)$ est dirigée vers $M$, donc $\widehat{OIC} = \widehat{MIC} = 90° - \gamma$. Les demi-droites $[OD)$ et $[IC)$ partent du même côté de l'axe, et les deux angles ont pour somme $90° < 180°$ : elles se coupent en un point $P$, et le triangle $OIP$ a pour angle en $P$ : $180° - \gamma - (90° - \gamma) = 90°$.
- *Si $O$ est entre $A$ et $I$, comme sur la figure.* On prolonge les deux segments de l'autre côté de l'axe. La demi-droite opposée à $[OD)$ fait avec $[OI)$ un angle $\gamma$, car $[OI)$ est opposée à $[OA)$. La demi-droite opposée à $[IC)$ fait avec $[IO)$ un angle $\widehat{MIC} = 90° - \gamma$, car $[IO)$ est opposée à $[IM)$. Comme dans le premier cas, ces deux demi-droites se coupent en un point $P$ et l'angle en $P$ du triangle $OIP$ vaut $90°$.

Dans tous les cas, **les droites $(CI)$ et $(DO)$ sont perpendiculaires.**

*Remarques.*

- Le point $O$ est entre $A$ et $I$ quand l'angle en $A$ est plus petit que $60°$, il est au-delà de $I$ quand cet angle est plus grand, et il peut même sortir du triangle si l'angle en $A$ est obtus. La preuve ci-dessus couvre toutes ces figures.
- L'égalité $AD \times AC = AI \times AO$ dit aussi que les points $I$, $O$, $D$, $C$ sont sur un même cercle : c'est la puissance du point $A$. Le corrigé de la source part de cette cocyclicité, obtenue par une chasse aux angles.
