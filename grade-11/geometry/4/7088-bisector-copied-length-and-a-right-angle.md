---
id: "7088"
title: "La bissectrice, un report de longueur et un angle droit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [bissectrice, cercle-circonscrit, angle-au-centre, triangles-superposables, perpendiculaire, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-21
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Géométrie », TD du groupe des débutants, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB < BC$. On note $O$ le centre de son cercle circonscrit.

La bissectrice issue de $B$ coupe le côté $[AC]$ en un point $D$. On place ensuite sur le côté $[BC]$ le point $E$ tel que

$$BE = BA.$$

Démontrer que les droites $(BO)$ et $(DE)$ sont perpendiculaires.

![Le triangle ABC, son cercle circonscrit de centre O, la bissectrice BD, le point E de [BC] tel que BE = BA, et la droite (BO) qui rencontre (DE).](7088-figure-1.svg)

## Hints

1. Regarde les deux triangles $BAD$ et $BED$. Ils ont un côté commun, et tu connais deux autres informations sur eux. Que peux-tu en conclure ?
2. De cette égalité de triangles, tire la valeur de l'angle $\widehat{BED}$. C'est un angle du triangle $ABC$.
3. Passe maintenant à l'autre droite. Le triangle $OBC$ est isocèle : pourquoi ? Et que vaut l'angle au centre $\widehat{BOC}$ ?
4. Tu obtiens ainsi $\widehat{OBC}$ en fonction de $\widehat{BAC}$.
5. Note $P$ le point où $(BO)$ rencontre $(DE)$ et regarde le triangle $BEP$. Tu connais deux de ses trois angles. Additionne.

## Solution

Posons $\alpha = \widehat{BAC}$ et $\beta = \widehat{ABC}$.

### Étape 1 : deux triangles superposables

Comparons les triangles $BAD$ et $BED$.

- $BA = BE$, c'est la définition du point $E$.
- $\widehat{ABD} = \widehat{DBE}$. En effet $(BD)$ est la bissectrice de l'angle $\widehat{ABC}$, donc $\widehat{ABD} = \widehat{DBC} = \dfrac{\beta}{2}$ ; et comme $E$ est sur le segment $[BC]$, la demi-droite $[BE)$ est la demi-droite $[BC)$, donc $\widehat{DBE} = \widehat{DBC}$.
- Le côté $[BD]$ est commun aux deux triangles.

Ces deux triangles ont donc deux côtés égaux et l'angle compris entre ces deux côtés égal. Ils sont superposables.

En particulier leurs troisièmes angles se correspondent :

$$\widehat{BED} = \widehat{BAD}.$$

Or $D$ est sur le segment $[AC]$, donc la demi-droite $[AD)$ est la demi-droite $[AC)$, et par conséquent $\widehat{BAD} = \widehat{BAC} = \alpha$. On retient :

$$\widehat{BED} = \alpha.$$

Autrement dit, **la droite $(DE)$ fait un angle $\alpha$ avec la droite $(BC)$.**

### Étape 2 : l'angle que fait $(BO)$ avec $(BC)$

Le point $O$ est le centre du cercle circonscrit, donc $OB = OC$ : le triangle $OBC$ est isocèle en $O$.

L'angle $\widehat{BAC}$ est un angle inscrit qui intercepte la corde $[BC]$, et il est aigu par hypothèse. Le théorème de l'angle au centre donne donc

$$\widehat{BOC} = 2\,\widehat{BAC} = 2\alpha.$$

Dans le triangle isocèle $OBC$, les deux angles à la base sont égaux et leur somme vaut $180^\circ - \widehat{BOC}$. Donc

$$\widehat{OBC} = \frac{180^\circ - 2\alpha}{2} = 90^\circ - \alpha.$$

Autrement dit, **la droite $(BO)$ fait un angle $90^\circ - \alpha$ avec la droite $(BC)$.**

### Étape 3 : l'angle droit

Comme le triangle est acutangle, $O$ est à l'intérieur du triangle, et la configuration est celle de la figure : la demi-droite $[BO)$ rencontre le segment $[DE]$ en un point que nous notons $P$. Les deux droites se coupent bien, car les deux angles que nous venons de calculer se trouvent aux deux extrémités opposées du segment $[BE]$ et leur somme, $\left(90^\circ - \alpha\right) + \alpha = 90^\circ$, est inférieure à $180^\circ$. Dans le triangle $BEP$ on a donc

$$\widehat{PBE} = \widehat{OBC} = 90^\circ - \alpha \qquad \text{et} \qquad \widehat{BEP} = \widehat{BED} = \alpha.$$

La somme des angles du triangle $BEP$ donne enfin

$$\widehat{BPE} = 180^\circ - \left(90^\circ - \alpha\right) - \alpha = 90^\circ.$$

Les droites $(BO)$ et $(DE)$ se coupent donc à angle droit :

$$\boxed{(BO) \perp (DE).}$$

## Going further

**Une deuxième perpendiculaire, cadeau de l'étape 1.** Les triangles $BAD$ et $BED$ étant superposables, on a aussi

$$DA = DE.$$

Le point $D$ est donc à égale distance de $A$ et de $E$, et le point $B$ aussi puisque $BA = BE$. La droite $(BD)$ est par conséquent la médiatrice du segment $[AE]$, d'où une deuxième perpendicularité, gratuite :

$$(BD) \perp (AE).$$

**Sur l'hypothèse « triangle acutangle ».** Elle sert deux fois, et uniquement pour garantir la configuration : elle assure que $\widehat{BAC}$ est aigu, ce qui permet d'écrire $\widehat{BOC} = 2\alpha$ directement, et elle place $O$ à l'intérieur du triangle.

Le résultat reste vrai sans elle. Si $\widehat{BAC}$ est obtus, le centre $O$ passe de l'autre côté de la droite $(BC)$, l'angle au centre devient $\widehat{BOC} = 360^\circ - 2\alpha$, et l'on trouve cette fois $\widehat{OBC} = \alpha - 90^\circ$. La droite $(BO)$ fait donc toujours un angle de $\left|90^\circ - \alpha\right|$ avec $(BC)$, mais de l'autre côté, et le même calcul redonne l'angle droit.

**L'hypothèse $AB < BC$**, elle, est indispensable pour que le point $E$ existe sur le côté $[BC]$. Si $AB > BC$, il faut reporter la longueur $BA$ sur la demi-droite $[BC)$ au-delà de $C$, et la démonstration s'adapte sans changement.
