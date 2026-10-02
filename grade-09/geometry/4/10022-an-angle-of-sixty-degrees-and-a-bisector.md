---
id: "10022"
title: "Un angle de 60° et une bissectrice"
grade: 9
theme: geometry
difficulty: 4
duration_min: 40
tags: [hauteur, orthocentre, cercle-circonscrit, mediatrice, bissectrice, trigonometrie, distance-a-une-droite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 1 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-1.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2013-2014-envoi-1-solutions.pdf (le corrigé montre que A, H, O, C sont cocycliques ; la solution est refaite ici avec des distances à des droites, la méthode du corrigé est donnée en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et dont l'angle $\widehat{ABC}$ mesure $60°$. Les hauteurs $[AD]$ et $[CE]$ se coupent au point $H$. On note $O$ le centre du cercle circonscrit au triangle $ABC$.

![Le triangle ABC avec un angle de 60° en B, les hauteurs [AD] et [CE] qui se coupent en H, et le centre O du cercle circonscrit](10022-figure-1.svg)

Montrer que le point $O$ est sur la bissectrice commune des angles $\widehat{AHE}$ et $\widehat{CHD}$.

## Hints

1. Un point situé à l'intérieur d'un angle, à la même distance des deux côtés de cet angle, est sur sa bissectrice. Essaie de calculer la distance de $O$ à la droite $(AD)$ et la distance de $O$ à la droite $(CE)$.
2. Note $a = BC$ et $c = BA$. Dans le triangle rectangle $ABD$, que vaut $BD$ ? De même, que vaut $BE$ ?
3. Soit $I$ le milieu de $[BC]$. Pourquoi les droites $(AD)$ et $(OI)$ sont-elles parallèles ? Quelle est la distance entre ces deux droites ?
4. Il reste à voir de quel côté des droites $(AD)$ et $(CE)$ se trouve $O$. Sépare les cas $c < a$, $c > a$ et $c = a$.

## Solution

**Rappel : la bissectrice et les distances.** Soit un angle aigu $\widehat{xHy}$ et un point $O$ à l'intérieur de cet angle, à la même distance des droites $(Hx)$ et $(Hy)$. Alors $O$ est sur la bissectrice de l'angle.

En effet, soient $P$ et $Q$ les pieds des perpendiculaires menées de $O$ aux droites $(Hx)$ et $(Hy)$, de sorte que $OP = OQ$. L'angle $\widehat{xHO}$ est plus petit que $\widehat{xHy}$, donc aigu. Le point $P$ est donc sur la demi-droite $[Hx)$ et différent de $H$ : sinon le triangle $HPO$ aurait un angle obtus ou droit en $H$, en plus de son angle droit en $P$. De même, $Q$ est sur $[Hy)$ et différent de $H$. Le théorème de Pythagore dans les triangles $HPO$ et $HQO$, rectangles en $P$ et en $Q$, donne
$$HP^2 = HO^2 - OP^2 = HO^2 - OQ^2 = HQ^2 ,$$
donc $HP = HQ$. Les points $H$ et $O$ sont tous les deux à la même distance de $P$ et de $Q$ : la droite $(HO)$ est la médiatrice de $[PQ]$. La symétrie d'axe $(HO)$ échange $P$ et $Q$, donc elle échange les demi-droites $[HP) = [Hx)$ et $[HQ) = [Hy)$. Ainsi $\widehat{xHO} = \widehat{OHy}$.

On note $a = BC$ et $c = BA$. Comme les trois angles du triangle sont aigus, le point $D$ est sur le segment $[BC]$, le point $E$ sur le segment $[BA]$, et l'orthocentre $H$ est à l'intérieur du triangle. On note $I$ le milieu de $[BC]$ et $J$ le milieu de $[BA]$. Le point $O$ est sur les médiatrices de $[BC]$ et de $[BA]$, donc $(OI) \perp (BC)$ et $(OJ) \perp (BA)$.

### Étape 1 : $BD = \dfrac{c}{2}$ et $BE = \dfrac{a}{2}$

Le triangle $ABD$ est rectangle en $D$, donc $\cos\widehat{ABD} = \dfrac{BD}{BA}$, et
$$BD = BA \times \cos 60° = \frac{c}{2} .$$
De même, dans le triangle $CBE$ rectangle en $E$, $BE = BC \times \cos 60° = \dfrac{a}{2}$.

### Étape 2 : $O$ est à la même distance des droites $(AD)$ et $(CE)$

Les droites $(AD)$ et $(OI)$ sont toutes les deux perpendiculaires à $(BC)$, donc parallèles. Tous les points de $(OI)$ sont à la même distance de $(AD)$, et pour le point $I$ cette distance est $DI$, car $(BC)$ est perpendiculaire à $(AD)$. Les points $D$ et $I$ sont sur le segment $[BC]$, avec $BD = \dfrac{c}{2}$ et $BI = \dfrac{a}{2}$, donc la distance de $O$ à la droite $(AD)$ vaut
$$DI = \frac{|a - c|}{2} .$$
De la même façon, $(CE)$ et $(OJ)$ sont perpendiculaires à $(BA)$, donc parallèles, et avec $BE = \dfrac{a}{2}$ et $BJ = \dfrac{c}{2}$, la distance de $O$ à la droite $(CE)$ vaut
$$EJ = \frac{|a - c|}{2} .$$

### Étape 3 : l'angle $\widehat{CHD}$ mesure $60°$

Dans le quadrilatère $BEHD$, les angles en $E$ et en $D$ sont droits et l'angle en $B$ mesure $60°$. La somme des angles d'un quadrilatère est $360°$, donc $\widehat{EHD} = 360° - 90° - 90° - 60° = 120°$. Comme $H$ est entre $E$ et $C$, on obtient $\widehat{CHD} = 180° - 120° = 60°$. L'angle $\widehat{AHE}$, opposé par le sommet, mesure aussi $60°$.

### Étape 4 : de quel côté se trouve $O$ ?

**Cas $c < a$.** Alors $BD < BI$ : sur le segment $[BC]$, le point $D$ est entre $B$ et $I$. Le point $I$ est donc du même côté de la droite $(AD)$ que $C$, et toute la droite $(OI)$, parallèle à $(AD)$, aussi. Ainsi $O$ est du côté de $C$ par rapport à $(AD)$.

De même $BJ < BE$ : sur le segment $[BA]$, le point $J$ est entre $B$ et $E$. Il est donc du côté de $B$ par rapport à $(CE)$, et la droite $(OJ)$ aussi. Le point $D$, qui est sur $[BC]$, est lui aussi du côté de $B$, car la droite $(CE)$ ne coupe $(BC)$ qu'en $C$. Ainsi $O$ est du côté de $D$ par rapport à $(CE)$.

Le point $O$ est donc à l'intérieur de l'angle $\widehat{CHD}$, qui est aigu d'après l'étape 3. D'après l'étape 2, il est à la même distance des droites $(HC)$ et $(HD)$, et cette distance n'est pas nulle. Le rappel montre que $O$ est sur la bissectrice de $\widehat{CHD}$.

**Cas $c > a$.** Les rôles de $A$ et de $C$ s'échangent, ainsi que ceux de $D$ et de $E$. Le même raisonnement montre que $O$ est sur la bissectrice de l'angle $\widehat{AHE}$.

**Cas $c = a$.** Les deux distances de l'étape 2 sont nulles : $O$ est sur $(AD)$ et sur $(CE)$, donc $O = H$, qui est bien sur la bissectrice.

**Conclusion.** Les angles $\widehat{AHE}$ et $\widehat{CHD}$ sont opposés par le sommet, donc ils ont la même bissectrice. Dans tous les cas, le centre $O$ du cercle circonscrit est sur cette bissectrice.

## Going further

- Voici la méthode du corrigé, qui utilise les angles inscrits dans un cercle. On raisonne sur la figure. L'angle $\widehat{AHC}$ est opposé par le sommet à $\widehat{EHD}$, il mesure $120°$. L'angle au centre $\widehat{AOC}$ est le double de l'angle inscrit $\widehat{ABC}$, il mesure aussi $120°$. Les points $H$ et $O$ sont du même côté de $(AC)$ et voient le segment $[AC]$ sous le même angle, donc $A$, $H$, $O$, $C$ sont sur un même cercle. Le triangle $AOC$ est isocèle en $O$ avec un angle de $120°$ au sommet, donc $\widehat{OAC} = 30°$, et un angle inscrit dans ce nouveau cercle donne $\widehat{OHC} = \widehat{OAC} = 30°$, la moitié de $\widehat{CHD}$.
- Dans tout triangle aux angles aigus, on peut montrer que $BH = 2\,BO\cos\widehat{ABC}$. Ici $\cos 60° = \dfrac{1}{2}$, donc $BH = BO$ : le triangle $BHO$ est isocèle en $B$, et la bissectrice de l'angle $\widehat{ABC}$ est aussi celle de l'angle $\widehat{HBO}$.
