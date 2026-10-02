---
id: "10231"
title: "Deux cercles tangents et le milieu de [PT]"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [cercles-tangents, tangente, cocyclicite, triangles-semblables, puissance-d-un-point, angle-tangentiel, mediatrice]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 1 (géométrie)"
  reference: "2021-11_Sujet-envoi-1.pdf, Exercices Juniors, exercice 4, repris mot pour mot en Exercices Seniors, exercice 12 ; corrigé 2021-12_corrige-envoi-1.pdf (l'énoncé n'exclut pas le cas où P est diamétralement opposé à T, où M = O et où le point Z du corrigé n'existe pas ; ce cas est exclu ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/11/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-11_Sujet-envoi-1.pdf"
---

## Statement

Soit $\Gamma$ un cercle, et soit $\omega$ un cercle de centre $O$, tangent intérieurement au cercle $\Gamma$ en un point $T$.

Soit $P$ un point du cercle $\omega$, différent de $T$ et du point de $\omega$ diamétralement opposé à $T$. On note $M$ le milieu du segment $[PT]$. La tangente au cercle $\omega$ en $P$ coupe le cercle $\Gamma$ en deux points $A$ et $B$.

Montrer que les quatre points $O$, $M$, $A$ et $B$ sont sur un même cercle.

![Le cercle Γ, le cercle ω de centre O tangent intérieurement en T, le point P, le milieu M de [PT], et la tangente en P qui coupe Γ en A et B](10231-figure-1.svg)

## Hints

1. Deux cercles tangents en $T$ ont la même tangente en $T$. Elle coupe la droite $(AB)$ en un point $Z$. Montrez que $ZT = ZP$, puis que les points $Z$, $M$ et $O$ sont alignés.
2. Avec des triangles semblables, montrez que $ZM \times ZO = ZP^2$ et que $ZA \times ZB = ZT^2$.
3. On a donc $ZM \times ZO = ZA \times ZB$. Écrivez cette égalité comme une égalité de rapports, et trouvez deux triangles semblables de sommet $Z$ qui donnent deux angles égaux regardant le segment $[AM]$.

## Solution

*Rappels.*

- *Tangente.* La tangente en un point $U$ à un cercle de centre $X$ est la droite perpendiculaire à $(XU)$ en $U$. Elle ne touche le cercle qu'en $U$, et ses autres points sont à l'extérieur du cercle.
- *Angle entre une tangente et une corde.* Si une droite est tangente en $U$ à un cercle et si $[UV]$ est une corde, l'angle entre la tangente et la corde est égal à l'angle inscrit $\widehat{UYV}$, pour tout point $Y$ du cercle situé de l'autre côté de la droite $(UV)$ que l'angle considéré.
- *Triangles semblables.* Deux triangles qui ont deux angles égaux sont semblables, et leurs côtés sont alors proportionnels. Deux triangles qui ont un angle égal compris entre deux côtés proportionnels sont semblables, et leurs angles sont alors égaux.
- *Quatre points sur un cercle.* Si $U$ et $V$ sont du même côté de la droite $(XY)$ et si $\widehat{XUY} = \widehat{XVY}$, alors $X$, $Y$, $U$, $V$ sont sur un même cercle.

**Étape 0 : le point $Z$.** Comme les deux cercles sont tangents en $T$, leurs centres et $T$ sont alignés, donc les deux cercles ont la même tangente en $T$ : c'est la perpendiculaire en $T$ à $(OT)$. La tangente à $\omega$ en $P$ est la droite $(AB)$. Ces deux tangentes ne sont pas parallèles, sinon $(OT)$ et $(OP)$ seraient parallèles, et $P$ serait diamétralement opposé à $T$. Elles se coupent donc en un point $Z$.

Le point $Z$ n'est pas $T$, car la droite $(AB)$ ne touche $\omega$ qu'en $P$. Il est donc sur la tangente à $\Gamma$ en $T$, mais pas en $T$ : il est à l'extérieur de $\Gamma$. Or le segment $[AB]$ est une corde de $\Gamma$, il est à l'intérieur du disque. Donc $Z$ n'est pas entre $A$ et $B$, et quitte à échanger les noms de $A$ et de $B$, on peut supposer que **$A$ est entre $Z$ et $B$**.

**Étape 1 : $Z$, $M$ et $O$ sont alignés.** Les triangles $ZTO$ et $ZPO$ sont rectangles en $T$ et en $P$, et $OT = OP$ (deux rayons de $\omega$). Le théorème de Pythagore donne

$$ZT^2 = ZO^2 - OT^2 = ZO^2 - OP^2 = ZP^2,$$

donc $ZT = ZP$. Les points $Z$ et $O$ sont donc tous les deux à égale distance de $T$ et de $P$ : ils sont sur la médiatrice du segment $[TP]$. Comme $Z \neq O$ ($Z$ est hors de $\omega$), la droite $(ZO)$ **est** cette médiatrice. Elle passe par le milieu $M$ de $[TP]$ et elle est perpendiculaire à $(TP)$ en $M$.

**Étape 2 : $ZM \times ZO = ZP^2$.** D'après l'étape 1, $M$ est le pied de la hauteur issue de $P$ dans le triangle $ZPO$, rectangle en $P$. Comme les angles en $Z$ et en $O$ de ce triangle sont aigus, ce pied est sur l'hypoténuse : **$M$ est entre $Z$ et $O$**. Les triangles $ZMP$ et $ZPO$ ont un angle droit (en $M$ et en $P$) et le même angle en $Z$. Ils sont semblables, donc

$$\frac{ZM}{ZP} = \frac{ZP}{ZO}, \qquad \text{c'est-à-dire} \qquad ZM \times ZO = ZP^2.$$

**Étape 3 : $ZA \times ZB = ZT^2$.** Comparons les triangles $ZTA$ et $ZBT$. Ils ont le même angle en $Z$, car $A$ et $B$ sont sur la même demi-droite issue de $Z$. La droite $(ZT)$ est tangente à $\Gamma$ en $T$ et $[TA]$ est une corde de $\Gamma$. Le segment $[ZB]$ coupe la droite $(TA)$ en $A$, donc $B$ est de l'autre côté de $(TA)$ que $Z$. D'après le deuxième rappel,

$$\widehat{ZTA} = \widehat{TBA} = \widehat{TBZ}.$$

Les deux triangles ont deux angles égaux : ils sont semblables, avec $T \leftrightarrow B$ et $A \leftrightarrow T$. Donc

$$\frac{ZT}{ZB} = \frac{ZA}{ZT}, \qquad \text{c'est-à-dire} \qquad ZA \times ZB = ZT^2.$$

**Étape 4 : un produit égal.** Comme $ZP = ZT$, les étapes 2 et 3 donnent

$$ZM \times ZO = ZA \times ZB, \qquad \text{donc} \qquad \frac{ZM}{ZA} = \frac{ZB}{ZO}.$$

**Étape 5 : deux triangles semblables.** Comparons les triangles $ZMB$ et $ZAO$. Leurs angles en $Z$ sont le même angle, car $M$ est sur la demi-droite $[ZO)$ et $B$ sur la demi-droite $[ZA)$. Les côtés qui encadrent cet angle sont proportionnels d'après l'étape 4. Les triangles sont semblables, avec $M \leftrightarrow A$ et $B \leftrightarrow O$, donc

$$\widehat{ZBM} = \widehat{ZOA}.$$

**Étape 6 : conclusion.** Comme $A$ est entre $Z$ et $B$, la demi-droite $[BZ)$ est la demi-droite $[BA)$, donc $\widehat{ZBM} = \widehat{ABM}$. Comme $M$ est entre $Z$ et $O$, la demi-droite $[OZ)$ est la demi-droite $[OM)$, donc $\widehat{ZOA} = \widehat{MOA}$. Ainsi

$$\widehat{ABM} = \widehat{AOM}.$$

Ces deux angles regardent le segment $[AM]$. Le segment $[ZB]$ coupe la droite $(AM)$ en $A$, et le segment $[ZO]$ la coupe en $M$ : les points $B$ et $O$ sont tous les deux de l'autre côté de $(AM)$ que $Z$, donc du même côté. D'après le dernier rappel, **les points $O$, $M$, $A$ et $B$ sont sur un même cercle.**

![Le point Z, la droite (ZO) qui est la médiatrice de [TP], et le cercle qui passe par O, M, A et B](10231-figure-2.svg)

*Remarque.* Le corrigé conclut directement par la « réciproque de la puissance d'un point » : si deux droites se coupent en $Z$, si $M$ et $O$ sont sur la première et $A$ et $B$ sur la seconde, du même côté de $Z$, et si $ZM \times ZO = ZA \times ZB$, alors $M$, $O$, $A$, $B$ sont cocycliques. Les étapes 5 et 6 démontrent cette réciproque dans notre cas. Au passage, l'étape 2 redémontre une relation très utile : si $UVW$ est un triangle rectangle en $U$ et si $H$ est le pied de la hauteur issue de $U$, alors $VH \times VW = VU^2$.

Si $P$ est diamétralement opposé à $T$, le milieu $M$ de $[PT]$ est le centre $O$, et il ne reste que trois points : c'est pourquoi ce cas est exclu.

## Going further

1. La droite $(TP)$ recoupe $\Gamma$ en un point $N$. On note $\Omega$ le centre de $\Gamma$. En comparant les triangles isocèles $OTP$ et $\Omega TN$, montrer que $(OP) \parallel (\Omega N)$, puis que $N$ est le milieu de l'arc $AB$ qui ne contient pas $T$.
2. Montrer que le cercle de diamètre $[OT]$ passe par $M$ et qu'il est tangent à la droite $(ZT)$ en $T$. En déduire une autre preuve de l'égalité $ZM \times ZO = ZT^2$.
