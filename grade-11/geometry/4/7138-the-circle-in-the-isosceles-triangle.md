---
id: "7138"
title: "Le cercle du triangle isocèle et une tangente"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [tangentes, triangles semblables, chasse aux angles, triangle isocele]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Vendredi : test final », débutants, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, soit $D$ le milieu de $[BC]$, et soit $\Gamma$ le
cercle de centre $D$ tangent aux deux côtés $[AB]$ et $[AC]$.

Soient $M$ un point de $[AB]$ et $N$ un point de $[AC]$ tels que le segment $[MN]$ soit lui
aussi tangent à $\Gamma$.

Montrer que

$$BD^2 = BM \times CN .$$

## Hints

1. Note $\beta = \widehat{ABC} = \widehat{ACB}$. Les segments $[MB]$ et $[MN]$ sont portés
   par deux tangentes à $\Gamma$ issues de $M$. Que peux-tu en déduire sur la droite $(MD)$ ?
2. Même question pour $N$ : que fait la droite $(ND)$ ?
3. Pose $2m = \widehat{BMN}$ et $2n = \widehat{CNM}$. Écris la somme des angles du
   quadrilatère $BMNC$. Quelle relation obtiens-tu entre $m$, $n$ et $\beta$ ?
4. Compare maintenant les triangles $BMD$ et $CDN$, angle par angle. Attention à l'ordre des
   sommets.

## Solution

Notons $\beta = \widehat{ABC} = \widehat{ACB}$ les angles à la base du triangle isocèle.

**Les deux bissectrices.** Le point $M$ est sur $[AB]$, et la droite $(AB)$ est tangente à
$\Gamma$ ; la droite $(MN)$ l'est aussi. Il passe donc par $M$ deux tangentes à $\Gamma$, et
le centre $D$ est sur la bissectrice de l'angle qu'elles forment. Autrement dit, la
demi-droite $[MD)$ **partage en deux l'angle $\widehat{BMN}$**.

Posons $\widehat{BMN} = 2m$, de sorte que

$$\widehat{BMD} = \widehat{DMN} = m .$$

Pour la même raison, en posant $\widehat{CNM} = 2n$,

$$\widehat{CND} = \widehat{DNM} = n .$$

**Une relation entre $m$, $n$ et $\beta$.** Le quadrilatère $BMNC$ a ses angles en $B$ et en
$C$ égaux à $\beta$ (ce sont les angles du triangle, puisque $M \in [AB]$ et $N \in [AC]$),
son angle en $M$ égal à $2m$ et son angle en $N$ égal à $2n$. La somme des angles d'un
quadrilatère valant $360^\circ$ :

$$\beta + 2m + 2n + \beta = 360^\circ ,$$

d'où

$$m + n = 180^\circ - \beta . \qquad (\star)$$

**Deux triangles semblables.** Regardons les triangles $BMD$ et $CDN$.

- Dans $BMD$ : l'angle en $B$ vaut $\widehat{MBD} = \beta$, l'angle en $M$ vaut $m$, donc
  l'angle en $D$ vaut $\widehat{BDM} = 180^\circ - \beta - m$.
- Dans $CDN$ : l'angle en $C$ vaut $\widehat{DCN} = \beta$, l'angle en $N$ vaut $n$, donc
  l'angle en $D$ vaut $\widehat{CDN} = 180^\circ - \beta - n$.

Comparons l'angle $\widehat{BMD} = m$ et l'angle $\widehat{CDN} = 180^\circ - \beta - n$.
D'après $(\star)$, $m = 180^\circ - \beta - n$ : **ils sont égaux.**

Les triangles $BMD$ et $CDN$ ont donc deux angles égaux deux à deux :

$$\widehat{MBD} = \widehat{DCN} = \beta \qquad \text{et} \qquad \widehat{BMD} = \widehat{CDN} .$$

Ils sont semblables, avec la correspondance $B \leftrightarrow C$, $M \leftrightarrow D$,
$D \leftrightarrow N$.

**On conclut.** La similitude donne l'égalité des rapports de côtés correspondants :

$$\frac{BM}{CD} = \frac{BD}{CN} ,$$

c'est-à-dire

$$BM \times CN = BD \times CD .$$

Or $D$ est le milieu de $[BC]$, donc $CD = BD$, et il vient

$$BM \times CN = BD^2 .$$

## Going further

Le cercle $\Gamma$ est le **cercle exinscrit** du triangle $AMN$ dans l'angle $\widehat{A}$ :
il est tangent au côté $[MN]$ et aux prolongements des deux autres côtés. L'égalité démontrée
ne dépend donc pas du choix de $M$ : quel que soit le segment $[MN]$ tangent à $\Gamma$, le
produit $BM \times CN$ reste constant, égal à $BD^2$.

C'est un phénomène fréquent en géométrie du cercle : une quantité qui semble dépendre d'un
choix libre s'avère constante. Le théorème de la puissance d'un point en est l'exemple le
plus connu.

Une question pour continuer : que se passe-t-il quand $[MN]$ devient tangent au point le plus
proche de $A$, c'est-à-dire quand $M$ et $N$ sont symétriques par rapport à l'axe du triangle ?
Retrouve alors $BM = CN = BD$.
