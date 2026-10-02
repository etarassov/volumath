---
id: "10252"
title: "Quatre centres cocycliques et deux angles égaux"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [angles-orientes, cocyclicite, cercle-circonscrit, mediatrice, perpendiculaire, bissectrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 1 (géométrie)"
  reference: "2022-11_Sujet-envoi-1.pdf, Exercices Seniors, exercice 12 ; corrigé 2022-12_corrige-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/11/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-11_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. Soient $P$ et $Q$ deux points distincts du segment $[BC]$, tous deux différents de $B$ et de $C$.

On note $O_1$, $O_2$, $O_3$ et $O_4$ les centres des cercles circonscrits aux triangles $ABP$, $ABQ$, $ACP$ et $ACQ$.

Montrer que les points $O_1$, $O_2$, $O_3$ et $O_4$ sont sur un même cercle si et seulement si $\widehat{BAP} = \widehat{QAC}$.

![Le triangle ABC, les points P et Q sur le côté [BC], et les centres des quatre cercles circonscrits](10252-figure-1.svg)

## Hints

1. Les cercles circonscrits aux triangles $ABP$ et $ABQ$ passent tous les deux par $A$ et par $B$. Sur quelle droite se trouvent leurs centres $O_1$ et $O_2$ ?
2. La droite $(O_1O_2)$ est la médiatrice de $[AB]$, donc elle est perpendiculaire à $(AB)$. Trouvez de même une droite perpendiculaire à $(O_1O_3)$, une à $(O_2O_4)$ et une à $(O_3O_4)$.
3. Si l'on fait tourner deux droites d'un quart de tour, l'angle entre elles ne change pas. Comparez l'angle de $(O_1O_2)$ et $(O_1O_3)$ avec celui de $(AB)$ et $(AP)$. Utilisez des angles orientés de droites pour ne pas dépendre de la figure.

## Solution

### Rappels

*Angles orientés de droites.* Pour deux droites $d_1$ et $d_2$, on note $(d_1, d_2)$ l'angle dont il faut faire tourner $d_1$, dans le sens direct, pour qu'elle devienne parallèle à $d_2$. Cet angle est compté **à $180°$ près**. On utilise les règles suivantes.

- *Relation de Chasles* : $(d_1, d_3) = (d_1, d_2) + (d_2, d_3)$.
- $(d_1, d_2) = 0$ si et seulement si $d_1$ et $d_2$ sont parallèles.
- Une droite peut être nommée par deux quelconques de ses points.
- *Angle inscrit.* Si $W$, $X$, $Y$, $Z$ sont quatre points distincts d'un même cercle, alors $(ZX, ZY) = (WX, WY)$. C'est le théorème de l'angle inscrit quand $Z$ et $W$ sont du même côté de $(XY)$, et la propriété des angles opposés d'un quadrilatère inscrit quand ils sont de part et d'autre : à $180°$ près, les deux cas donnent la même égalité.
- *Réciproque.* Si $W$, $X$, $Y$, $Z$ sont quatre points distincts, dont trois ne sont jamais alignés, et si $(ZX, ZY) = (WX, WY)$, alors ils sont sur un même cercle.

*Centres et médiatrice.* Le centre d'un cercle qui passe par $X$ et $Y$ est sur la médiatrice de $[XY]$. Donc si deux cercles de centres différents passent tous les deux par $X$ et $Y$, la droite qui joint leurs centres est la médiatrice de $[XY]$, et elle est perpendiculaire à $(XY)$.

Les angles orientés évitent d'avoir à vérifier sur la figure de quel côté de la droite $(O_2O_3)$ se trouvent $O_1$ et $O_4$, et si l'angle en $O_1$ vaut $\widehat{BAP}$ ou son supplément. Avec des angles ordinaires, il faudrait le prouver à part.

### La preuve

![La solution, dans le cas où les angles BAP et QAC sont égaux : les côtés du quadrilatère formé par les quatre centres sont les médiatrices de [AB], [AQ], [AC] et [AP], et le cercle qui passe par les quatre centres](10252-figure-2.svg)

**Étape 1 : les quatre centres sont distincts.** Un cercle coupe une droite en deux points au plus. Le cercle circonscrit à $ABP$ coupe la droite $(BC)$ en $B$ et en $P$, donc il ne passe ni par $Q$ ni par $C$. Il est donc différent des trois autres cercles, qui passent tous par $Q$ ou par $C$. De même, le cercle circonscrit à $ABQ$ coupe $(BC)$ en $B$ et $Q$, il ne passe ni par $P$ ni par $C$, donc il est différent des cercles circonscrits à $ACP$ et $ACQ$. Enfin le cercle circonscrit à $ACP$ ne passe pas par $Q$, donc il est différent du cercle circonscrit à $ACQ$.

Les quatre cercles sont donc différents. Or ils passent tous par $A$. Deux cercles de même centre $O$ qui passent par $A$ ont le même rayon $OA$, donc ils sont égaux. Les quatre centres sont donc distincts.

**Étape 2 : quatre angles droits.** Les cercles circonscrits à $ABP$ et $ABQ$ passent tous les deux par $A$ et $B$, et leurs centres sont différents. D'après le rappel sur la médiatrice, $(O_1O_2)$ est la médiatrice de $[AB]$. De la même façon :

- les cercles circonscrits à $ABP$ et $ACP$ passent par $A$ et $P$ ;
- ceux de $ABQ$ et $ACQ$ passent par $A$ et $Q$ ;
- ceux de $ACP$ et $ACQ$ passent par $A$ et $C$.

On obtient donc

$$(O_1O_2) \perp (AB), \qquad (O_1O_3) \perp (AP), \qquad (O_2O_4) \perp (AQ), \qquad (O_3O_4) \perp (AC).$$

**Étape 3 : trois des centres ne sont jamais alignés.** Prenons $O_1$, $O_2$ et $O_3$. Les droites $(O_1O_2)$ et $(O_1O_3)$ sont perpendiculaires à $(AB)$ et à $(AP)$. Ces deux droites passent par $A$ et sont différentes, car $P \neq B$. Elles ne sont donc pas parallèles, et leurs perpendiculaires $(O_1O_2)$ et $(O_1O_3)$ ne le sont pas non plus. Deux droites non parallèles qui passent par $O_1$ sont différentes, donc $O_1$, $O_2$, $O_3$ ne sont pas alignés.

Le même raisonnement marche pour les trois autres groupes de trois centres, en regardant :

- en $O_2$, les droites $(O_2O_1) \perp (AB)$ et $(O_2O_4) \perp (AQ)$, avec $Q \neq B$ ;
- en $O_3$, les droites $(O_3O_1) \perp (AP)$ et $(O_3O_4) \perp (AC)$, avec $P \neq C$ ;
- en $O_4$, les droites $(O_4O_2) \perp (AQ)$ et $(O_4O_3) \perp (AC)$, avec $Q \neq C$.

**Étape 4 : tourner d'un quart de tour.** Si $d_1 \perp d_1'$ et $d_2 \perp d_2'$, alors $(d_1', d_2') = (d_1, d_2)$. En effet, par la relation de Chasles,

$$(d_1', d_2') = (d_1', d_1) + (d_1, d_2) + (d_2, d_2') = 90° + (d_1, d_2) + 90° = (d_1, d_2) + 180°,$$

et $180°$ compte pour $0$, puisque les angles sont comptés à $180°$ près. Avec l'étape 2, on en déduit

$$(O_1O_2, O_1O_3) = (AB, AP) \qquad \text{et} \qquad (O_4O_2, O_4O_3) = (AQ, AC).$$

**Étape 5 : la cocyclicité.** Les quatre centres sont distincts (étape 1) et trois d'entre eux ne sont jamais alignés (étape 3). D'après l'angle inscrit et sa réciproque, avec $Z = O_1$, $W = O_4$, $X = O_2$, $Y = O_3$ :

$$O_1, O_2, O_3, O_4 \text{ sont cocycliques} \iff (O_1O_2, O_1O_3) = (O_4O_2, O_4O_3) \iff (AB, AP) = (AQ, AC).$$

**Étape 6 : retour aux angles ordinaires.** Choisissons le sens direct pour que la demi-droite $[AB)$, en tournant dans ce sens, balaie l'angle $\widehat{BAC}$ avant d'arriver sur $[AC)$. Comme $P$ et $Q$ sont sur le segment $[BC]$, les demi-droites $[AP)$ et $[AQ)$ sont à l'intérieur de cet angle. Pour amener $(AB)$ sur $(AP)$, il suffit donc de la tourner de $\widehat{BAP}$ dans le sens direct, et pour amener $(AQ)$ sur $(AC)$, de la tourner de $\widehat{QAC}$ :

$$(AB, AP) = \widehat{BAP} \qquad \text{et} \qquad (AQ, AC) = \widehat{QAC} \qquad (\text{à } 180° \text{ près}).$$

Les deux angles $\widehat{BAP}$ et $\widehat{QAC}$ sont strictement compris entre $0°$ et $180°$. Deux nombres de cet intervalle qui sont égaux à $180°$ près sont égaux tout court. Donc $(AB, AP) = (AQ, AC)$ si et seulement si $\widehat{BAP} = \widehat{QAC}$.

**Conclusion.** En réunissant les étapes 5 et 6 : **les points $O_1$, $O_2$, $O_3$, $O_4$ sont sur un même cercle si et seulement si $\widehat{BAP} = \widehat{QAC}$.**

*Remarques.*

- L'hypothèse « les trois angles sont aigus » n'a servi nulle part : le résultat est vrai pour tout triangle.
- La condition $\widehat{BAP} = \widehat{QAC}$ dit que les droites $(AP)$ et $(AQ)$ sont symétriques l'une de l'autre par rapport à la bissectrice de l'angle $\widehat{BAC}$.

## Going further

1. On fixe le point $P$. Montrer qu'il existe un seul point $Q$ du segment $[BC]$ tel que $\widehat{BAP} = \widehat{QAC}$, et expliquer comment le construire à la règle et au compas.
2. Pour quel point $P$ trouve-t-on $Q = P$ ? Que deviennent alors les quatre centres ?
