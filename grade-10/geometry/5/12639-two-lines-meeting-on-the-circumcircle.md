---
id: "12639"
title: "Deux droites qui se coupent sur le cercle circonscrit"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle-circonscrit, bissectrice, hauteur, angle-inscrit, triangles-semblables, puissance-d-un-point, point-fantome]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 janvier 2022"
  reference: "2022-08_Enonce-Web-Test-2.pdf, exercice 3 ; corrigé 2022-01_Corrige-Web-Test-2.pdf. Énoncé précisé ici : AB ≠ AC (sinon les deux droites sont confondues) et angles en B et C aigus (pour que D soit sur [BC]). Dans le corrigé, l'égalité « (XA′, XS) = (AA′, AX) » doit se lire (XA′, XS) = (AA′, AS), et « le point I » désigne le point X."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-2.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$ et dont les angles $\widehat{ABC}$ et $\widehat{ACB}$ sont aigus. On note $\Omega$ son cercle circonscrit et $O$ le centre de $\Omega$.

Soit $D$ le pied de la hauteur issue de $A$. La bissectrice de l'angle $\widehat{BAC}$ coupe le segment $[BC]$ en $P$ et recoupe le cercle $\Omega$ en $S$. Soit $A'$ le point de $\Omega$ diamétralement opposé à $A$.

![Le triangle ABC, son cercle circonscrit, la hauteur [AD], la bissectrice [AS], le diamètre [AA′] et les droites (SD) et (A′P)](12639-figure-1.svg)

Démontrer que les droites $(SD)$ et $(A'P)$ se coupent en un point du cercle $\Omega$.

## Hints

1. Plutôt que de prendre le point d'intersection des deux droites, appelle $X$ le second point où la droite $(SD)$ coupe $\Omega$. Il suffit de montrer que $X$, $P$ et $A'$ sont alignés.
2. Comme $[AA']$ est un diamètre, l'angle $\widehat{AXA'}$ est droit. Il suffit donc de montrer que $\widehat{AXP}$ est droit, c'est-à-dire que $X$ est sur le cercle de diamètre $[AP]$. Quel autre point connu est sur ce cercle ?
3. Avec le théorème de l'angle inscrit, montre que les triangles $SBP$ et $SAB$ sont semblables, puis que les triangles $SBD$ et $SXB$ le sont aussi. Compare $SP \times SA$ et $SD \times SX$.
4. Pour un cercle $\Gamma$ et un point $M$ extérieur, le produit $MU \times MV$ ne dépend pas de la droite passant par $M$ qui coupe $\Gamma$ en $U$ et $V$. Applique-le au point $S$ et au cercle de diamètre $[AP]$.

## Solution

**Deux outils.**

*Le théorème de l'angle inscrit.* Si $U$ et $V$ sont deux points d'un cercle, et $M$, $N$ deux autres points du cercle situés du même côté de la droite $(UV)$, alors $\widehat{UMV} = \widehat{UNV}$. En effet, chacun de ces angles vaut la moitié de l'angle au centre qui intercepte le même arc $UV$.

*La puissance d'un point.* Soit $\Gamma$ un cercle de centre $K$ et de rayon $\rho$, et $M$ un point extérieur à $\Gamma$. Si une droite passant par $M$ coupe $\Gamma$ en $U$ et $V$ (avec $U = V$ si elle est tangente), alors
$$MU \times MV = MK^2 - \rho^2,$$
et $M$ n'est pas entre $U$ et $V$. En effet, soit $H$ le milieu de $[UV]$, avec $MU \leqslant MV$. Le point $K$ est sur la médiatrice de $[UV]$, donc $(KH)$ est perpendiculaire à $(UV)$ quand $K \neq H$. Le théorème de Pythagore, dans les triangles $MHK$ et $UHK$ rectangles en $H$, donne $MH^2 = MK^2 - KH^2$ et $HU^2 = \rho^2 - KH^2$ (c'est encore vrai si $K = H$), donc $MH^2 - HU^2 = MK^2 - \rho^2 > 0$. Ainsi $MH > HU$ : le point $M$ est en dehors du segment $[UV]$, et
$$MU \times MV = (MH - HU)(MH + HU) = MH^2 - HU^2 = MK^2 - \rho^2.$$
Ce produit est le même pour toutes les droites passant par $M$.

**Étape 1 : la position des points.** Les angles en $B$ et en $C$ sont aigus, donc $D$ est strictement entre $B$ et $C$. Le point $P$ est aussi strictement entre $B$ et $C$. De plus $D \neq P$ : sinon la hauteur serait aussi la bissectrice, les triangles $ABD$ et $ACD$ auraient un côté commun $[AD]$ entre deux angles égaux, ils seraient superposables, et l'on aurait $AB = AC$.

Le point $P$ est à l'intérieur du disque, donc il est strictement entre $A$ et $S$. Ainsi $S$ est de l'autre côté de $(BC)$ par rapport à $A$ : sur le cercle, les points se suivent dans l'ordre $A$, $B$, $S$, $C$.

**Étape 2 : un lemme sur le point $S$.** Soit $Q$ un point du segment $[BC]$, différent de $B$ et de $C$. La droite $(SQ)$ recoupe $\Omega$ en un point $Q'$. Montrons que
$$SQ \times SQ' = SB^2.$$
Le point $Q$ est à l'intérieur du disque, donc il est strictement entre $S$ et $Q'$. Ainsi $Q'$ est du même côté de $(BC)$ que $A$ : il est sur l'arc $BC$ qui contient $A$.

- Les points $A$ et $B$ sont du même côté de $(SC)$, donc par l'angle inscrit $\widehat{SBC} = \widehat{SAC}$. Comme $(AS)$ est la bissectrice, $\widehat{SAC} = \widehat{SAB}$. Donc $\widehat{SBQ} = \widehat{SBC} = \widehat{SAB}$.
- Les points $A$ et $Q'$ sont tous les deux sur l'arc qui va de $B$ à $S$ en passant par $A$ et $C$, donc du même côté de $(SB)$. Par l'angle inscrit, $\widehat{SQ'B} = \widehat{SAB}$.

Ainsi $\widehat{SBQ} = \widehat{SQ'B}$. Les triangles $SBQ$ et $SQ'B$ ont aussi le même angle en $S$, car $Q$ est sur le segment $[SQ']$. Ils sont donc semblables, et
$$\frac{SB}{SQ'} = \frac{SQ}{SB}, \qquad \text{c'est-à-dire} \qquad SQ \times SQ' = SB^2.$$

**Étape 3 : deux applications.** Avec $Q = P$, la droite $(SP)$ est la bissectrice, qui recoupe $\Omega$ en $A$ : on obtient $SP \times SA = SB^2$.

Avec $Q = D$, on appelle $X$ le second point d'intersection de la droite $(SD)$ avec $\Omega$. On obtient $SD \times SX = SB^2$, et $D$ est strictement entre $S$ et $X$. Donc
$$SD \times SX = SP \times SA. \qquad (\star)$$

**Étape 4 : le point $X$ est sur le cercle de diamètre $[AP]$.** Soit $\Gamma$ le cercle de diamètre $[AP]$. L'angle $\widehat{ADP}$ est droit, donc $D$ est sur $\Gamma$.

Le point $S$ est sur la droite $(AP)$, en dehors du segment $[AP]$ : il est extérieur à $\Gamma$. La droite $(SA)$ coupe $\Gamma$ en $P$ et $A$. La droite $(SD)$ coupe $\Gamma$ en $D$ et en un second point $Y$ (avec $Y = D$ si elle est tangente). La puissance du point $S$ donne
$$SD \times SY = SP \times SA = SD \times SX,$$
d'après $(\star)$. Donc $SY = SX$. Les points $Y$ et $X$ sont tous les deux sur la demi-droite $[SD)$ : le point $Y$ parce que $S$ n'est pas entre $D$ et $Y$, et le point $X$ parce que $D$ est entre $S$ et $X$. Ils sont à la même distance de $S$, donc $Y = X$. Ainsi $X$ est sur $\Gamma$.

**Étape 5 : conclusion.** Le point $X$ est différent de $A$ : sinon $D$ serait sur la droite $(AS)$, donc $D = P$, ce qui est exclu. Il est aussi différent de $P$, qui est à l'intérieur du disque. Comme $X$ est sur le cercle de diamètre $[AP]$, l'angle $\widehat{AXP}$ est droit.

Si $X = A'$, le point $X$ est évidemment sur la droite $(A'P)$. Sinon, l'angle $\widehat{AXA'}$ est droit, car $[AA']$ est un diamètre de $\Omega$. Les droites $(XP)$ et $(XA')$ sont alors toutes les deux perpendiculaires à $(XA)$ et passent par $X$ : elles sont confondues. Donc $X$, $P$ et $A'$ sont alignés.

Enfin, les droites $(SD)$ et $(A'P)$ sont distinctes : une droite qui contient $D$ et $P$ est la droite $(BC)$, qui ne passe pas par $S$.

Ainsi **les droites $(SD)$ et $(A'P)$ se coupent au point $X$, qui est sur le cercle $\Omega$.**

## Going further

- L'idée clé s'appelle parfois l'astuce du « point fantôme ». Au lieu de travailler avec le point d'intersection des deux droites, dont on ne sait rien, on part du point $X$ où l'une des droites recoupe le cercle, et on montre qu'il est sur l'autre droite. Attention à ne pas confondre avec le raisonnement faux qui suppose dès le départ que le point d'intersection est sur le cercle.
- Le corrigé officiel prend $X$ sur $(A'P)$ et utilise des angles orientés de droites. Il montre d'abord que $A$, $X$, $D$, $P$ sont sur un même cercle, puis que $(XA', XS) = (AP, AD)$, en utilisant que la bissectrice $(AS)$ fait le même angle avec la hauteur $(AD)$ qu'avec le diamètre $(AO)$. Les angles orientés permettent de traiter aussi les triangles qui ont un angle obtus en $B$ ou en $C$, pour lesquels le résultat reste vrai.
- Le lemme de l'étape 2 sert souvent. En échangeant les rôles de $B$ et de $C$, le même raisonnement donne $SQ \times SQ' = SC^2$, donc $SB = SC$ : le point $S$ est le milieu de l'arc $BC$ qui ne contient pas $A$.
