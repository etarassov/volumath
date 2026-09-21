---
id: "7523"
title: "Un périmètre qui impose un angle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [carre, rotation, angles, triangles-egaux, perimetre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 72. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

$ABCD$ est un carré. Le point $E$ est sur le côté $[BC]$ et le point $F$ est sur le côté $[DC]$.

On suppose que le périmètre du triangle $ECF$ est égal au double du côté du carré.

![Le carré ABCD, avec E sur le côté [BC] et F sur le côté [DC]](7523-figure-1.svg)

Déterminer la mesure de l'angle $\widehat{EAF}$.

## Hints

1. Prends le côté du carré égal à $1$, pose $BE = x$ et $DF = y$, et traduis l'hypothèse sur le périmètre. Tu obtiendras une expression très simple de $EF$.
2. Le triangle $ABE$ et le triangle $ADF$ se ressemblent beaucoup : ils ont un angle droit en $B$ et en $D$, et le côté $AB = AD$. Y a-t-il une transformation qui envoie l'un vers l'autre ?
3. Fais tourner le triangle $ABE$ d'un quart de tour autour de $A$, de façon que $B$ vienne sur $D$. Où arrive $E$ ? Appelle $E'$ ce point.
4. Calcule $E'F$ et compare-le à $EF$. Que peux-tu dire alors des triangles $AEF$ et $AE'F$ ?
5. Il reste à comparer l'angle $\widehat{EAF}$ et l'angle $\widehat{E'AF}$, sachant que leur somme est connue.

## Solution

**Étape 1. Ce que dit l'hypothèse sur le périmètre.**

Prenons le côté du carré égal à $1$, et posons

$$x = BE, \qquad y = DF.$$

Alors $EC = 1 - x$ et $FC = 1 - y$. Le périmètre du triangle $ECF$ vaut $2$, donc

$$(1-x) + (1-y) + EF = 2, \qquad \text{d'où} \qquad EF = x + y.$$

**Étape 2. On fait tourner un quart de tour.**

Considérons la rotation de centre $A$ et d'angle $90°$ qui envoie $B$ sur $D$. Elle envoie le côté $[BC]$ sur la demi-droite issue de $D$ opposée à $[DC]$, donc elle envoie $E$ sur un point $E'$ situé sur la droite $(DC)$, de l'autre côté de $D$ par rapport à $C$, avec

$$DE' = BE = x \qquad \text{et} \qquad AE' = AE.$$

**Étape 3. Les triangles $AEF$ et $AE'F$ sont superposables.**

Comme $E'$ et $C$ sont de part et d'autre de $D$ sur la droite $(DC)$, et comme $F$ est entre $D$ et $C$, le point $D$ est entre $E'$ et $F$. Donc

$$E'F = E'D + DF = x + y.$$

D'après l'étape 1, $EF = x + y$ aussi : les deux longueurs sont égales.

Les triangles $AEF$ et $AE'F$ ont donc leurs trois côtés respectivement égaux :

$$AE = AE', \qquad EF = E'F, \qquad AF = AF.$$

Ils sont superposables, et en particulier

$$\widehat{EAF} = \widehat{E'AF}.$$

**Étape 4. On additionne les angles autour de $A$.**

Posons $u = \widehat{BAE}$ et $v = \widehat{DAF}$. Ces deux angles sont à l'intérieur de l'angle droit $\widehat{BAD}$, séparés par l'angle $\widehat{EAF}$, donc

$$u + \widehat{EAF} + v = 90°.$$

Par ailleurs, la rotation envoie l'angle $\widehat{BAE}$ sur l'angle $\widehat{DAE'}$, donc $\widehat{DAE'} = u$. Comme $\widehat{E'AF} = \widehat{E'AD} + \widehat{DAF}$, on obtient

$$\widehat{E'AF} = u + v.$$

**Étape 5. On conclut.**

L'étape 3 donne $\widehat{EAF} = \widehat{E'AF} = u+v$, et l'étape 4 donne $u + v = 90° - \widehat{EAF}$. Donc

$$\widehat{EAF} = 90° - \widehat{EAF}, \qquad \text{soit} \qquad 2\,\widehat{EAF} = 90°.$$

**Réponse.** $\widehat{EAF} = 45°$, quelles que soient les positions de $E$ et $F$ vérifiant l'hypothèse.

## Going further

Le résultat est frappant : l'angle ne dépend pas du tout de l'endroit où se trouvent $E$ et $F$, du moment que le périmètre est le bon. Et la réciproque est vraie aussi : si $\widehat{EAF} = 45°$, alors le périmètre du triangle $ECF$ vaut $2$. Le même dessin le prouve, en le lisant à l'envers.

Le geste décisif est la rotation d'un quart de tour, qui « déplie » les deux triangles rectangles de part et d'autre du carré pour les mettre bout à bout. C'est une technique standard dans les figures qui possèdent un carré ou un triangle équilatéral : chaque fois que deux segments égaux partent d'un même point avec un angle connu entre eux, on peut essayer la rotation qui échange ces deux segments.

Pour t'entraîner : dans le même carré, place $E$ au milieu de $[BC]$. Que vaut alors $DF$ ? Tu devrais trouver $DF = \frac{1}{3}$, et donc $FC = \frac{2}{3}$.
