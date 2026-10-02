---
id: "10255"
title: "Deux tangentes et deux angles qui s'échangent"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [tangente, angle-tangentiel, angle-inscrit, cercle-de-diametre, corde, milieu, chasse-aux-angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 1 (géométrie)"
  reference: "2022-11_Sujet-envoi-1.pdf, Exercices Seniors, exercice 15 ; corrigé 2022-12_corrige-envoi-1.pdf (l'énoncé prend Y sur la droite (AX), mais quand BAX < XAC il y a deux points qui conviennent et la conclusion est fausse pour l'un d'eux ; il faut aussi l'angle en A aigu ; dans la solution alternative du corrigé, lire YC/YA = AC/AB et non AC/BC)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/11/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-11_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle dont l'angle en $A$ est aigu, et $\Omega$ son cercle circonscrit. Les tangentes au cercle $\Omega$ en $B$ et en $C$ se coupent en un point $X$. On note

$$\varphi = \widehat{BAX} \qquad \text{et} \qquad \mu = \widehat{XAC}.$$

Soit $Y$ le point de la demi-droite $[AX)$ tel que $\widehat{ACY} = \varphi$.

Montrer que $\widehat{ABY} = \mu$.

![Le triangle ABC, son cercle circonscrit Ω, les tangentes en B et C qui se coupent en X, et le point Y de la demi-droite issue de A qui passe par X, tel que l'angle ACY soit égal à φ](10255-figure-1.svg)

## Hints

1. Le point $Y$ est un point bien particulier de la droite $(AX)$. Notez $K$ le second point où $(AX)$ recoupe $\Omega$. Sur une figure soignée, où semble se trouver $Y$ sur le segment $[AK]$ ?
2. Soit $M$ le milieu de $[AK]$ et $O$ le centre de $\Omega$. Les angles $\widehat{OBX}$, $\widehat{OCX}$ et $\widehat{OMX}$ sont droits. Sur quel cercle se trouvent les points $B$, $C$ et $M$ ?
3. Dans ce cercle, comparez $\widehat{BMX}$ avec $\widehat{BCX}$, et utilisez la tangente en $C$ : $\widehat{BCX} = \widehat{BAC}$. Calculez ensuite les angles des triangles $ABM$ et $ACM$, et montrez que $M = Y$.

## Solution

*Rappels.*

- *Angle inscrit.* Si $U$ et $V$ sont deux points d'un cercle, tous les angles $\widehat{UPV}$, où $P$ parcourt le cercle d'un même côté de la droite $(UV)$, sont égaux.
- *Angle entre une tangente et une corde.* Si une droite est tangente en $U$ à un cercle et si $[UV]$ est une corde, l'angle entre la tangente et la corde est égal à l'angle inscrit $\widehat{UWV}$, pour tout point $W$ du cercle situé de l'autre côté de la corde.
- *Cercle de diamètre.* Si l'angle $\widehat{UPV}$ est droit, le point $P$ est sur le cercle de diamètre $[UV]$.
- Une tangente est perpendiculaire au rayon qui aboutit au point de contact. La droite qui joint le centre d'un cercle au milieu d'une corde est perpendiculaire à cette corde.

On note $O$ le centre de $\Omega$, $\alpha = \widehat{BAC}$ et $\beta = \widehat{ABC}$.

![La solution : le milieu M de la corde [AK] est sur le cercle γ de diamètre [OX], qui passe aussi par B et C, et ce point M est le point Y](10255-figure-2.svg)

**Étape 1 : la position du point $X$.** Comme l'angle inscrit $\widehat{BAC}$ est aigu, le centre $O$ est du même côté de $(BC)$ que $A$. La symétrie par rapport à la médiatrice de $[BC]$ conserve $\Omega$ et échange $B$ et $C$, donc elle échange les deux tangentes et laisse fixe leur point commun $X$. Ainsi $X$ est sur la médiatrice de $[BC]$, comme $O$. Soit $N$ le milieu de $[BC]$. Dans le triangle $OBX$, rectangle en $B$, le point $N$ est le pied de la hauteur issue de $B$, donc il est entre $O$ et $X$. Le point $X$ est donc de l'autre côté de $(BC)$ que $O$, et donc que $A$.

D'après le rappel sur la tangente, avec $A$ de l'autre côté de la corde $[BC]$ que $X$ :

$$\widehat{XBC} = \widehat{XCB} = \alpha.$$

Comme $A$ et $X$ sont de part et d'autre de $(BC)$, on passe de la demi-droite $[BA)$ à la demi-droite $[BX)$ en tournant autour de $B$ d'abord de $\beta$ jusqu'à $[BC)$, puis de $\alpha$. Le total $\alpha + \beta$ est inférieur à $180°$, donc $X$ est du même côté de $(AB)$ que $C$. De même, $X$ est du même côté de $(AC)$ que $B$. La demi-droite $[AX)$ est donc à l'intérieur de l'angle $\widehat{BAC}$, et

$$\varphi + \mu = \alpha.$$

Enfin le segment $[AX]$ coupe $(BC)$ en un point $L$ du segment $[BC]$, qui est à l'intérieur de $\Omega$. Le point $X$ est à l'extérieur de $\Omega$, puisqu'il est sur une tangente sans être le point de contact. La droite $(AX)$ recoupe donc $\Omega$ en un point $K$ situé entre $L$ et $X$. Les points $A$, $L$, $K$, $X$ sont dans cet ordre.

**Étape 2 : le cercle de diamètre $[OX]$.** Soit $M$ le milieu de la corde $[AK]$. Il est strictement entre $A$ et $K$, donc à l'intérieur de $\Omega$, et il est entre $A$ et $X$.

- Les tangentes sont perpendiculaires aux rayons : $\widehat{OBX} = \widehat{OCX} = 90°$.
- La droite $(OM)$ est perpendiculaire à la corde $[AK]$, donc $\widehat{OMX} = 90°$. (Si $M = O$, il n'y a rien à dire, $O$ étant une extrémité du diamètre.)

D'après le rappel sur le cercle de diamètre, les points $B$, $C$ et $M$ sont sur le cercle $\gamma$ de diamètre $[OX]$.

**Étape 3 : $\widehat{BMX} = \widehat{CMX} = \alpha$.** Les cercles $\gamma$ et $\Omega$ sont différents et passent tous les deux par $B$ et $C$, donc ils n'ont pas d'autre point commun. Les points $B$ et $C$, symétriques par rapport au diamètre $(OX)$, découpent $\gamma$ en deux arcs : l'un contient $O$, l'autre contient $X$. Chacun de ces arcs ne rencontre $\Omega$ qu'en $B$ et $C$, donc il est entièrement à l'intérieur de $\Omega$ ou entièrement à l'extérieur. L'arc qui contient $O$ est à l'intérieur, celui qui contient $X$ à l'extérieur. Le point $M$, intérieur à $\Omega$, est donc sur l'arc qui va de $B$ à $C$ en passant par $O$.

En particulier $M$ et $C$ sont du même côté de la corde $[BX]$ de $\gamma$. Avec l'angle inscrit dans $\gamma$, puis l'étape 1 :

$$\widehat{BMX} = \widehat{BCX} = \alpha.$$

De même, $M$ et $B$ sont du même côté de $[CX]$, et $\widehat{CMX} = \widehat{CBX} = \alpha$.

**Étape 4 : les angles des triangles $ABM$ et $ACM$.** Le point $M$ est entre $A$ et $X$, donc $\widehat{AMB} = 180° - \widehat{BMX} = 180° - \alpha$. Dans le triangle $ABM$, l'angle en $A$ est $\widehat{BAX} = \varphi$, donc

$$\widehat{ABM} = 180° - \varphi - (180° - \alpha) = \alpha - \varphi = \mu.$$

De même $\widehat{AMC} = 180° - \alpha$, l'angle en $A$ du triangle $ACM$ est $\mu$, et

$$\widehat{ACM} = \alpha - \mu = \varphi.$$

**Étape 5 : $M = Y$.** Les points de la demi-droite $[AX)$, autres que $A$, sont tous du même côté de $(AC)$, celui de $B$. Les points $Y$ et $M$ sont sur cette demi-droite et vérifient $\widehat{ACY} = \widehat{ACM} = \varphi$. Les demi-droites $[CY)$ et $[CM)$ sont donc du même côté de $(CA)$ et font le même angle avec $[CA)$ : elles sont confondues. Cette demi-droite ne coupe la droite $(AX)$ qu'en un point, donc $Y = M$.

**Conclusion.** D'après l'étape 4, **$\widehat{ABY} = \widehat{ABM} = \mu$.** Au passage, on a trouvé qui est $Y$ : c'est le milieu de la corde $[AK]$.

*Remarques.*

- L'énoncé d'origine prend $Y$ sur la *droite* $(AX)$. Quand $\varphi < \mu$, il existe un second point $Y'$ de cette droite, de l'autre côté de $A$, avec $\widehat{ACY'} = \varphi$. Pour lui la conclusion est fausse : dans le triangle $ABY'$, l'angle en $A$ vaut $180° - \varphi$, donc $\widehat{ABY'} < \varphi < \mu$. L'énoncé ne précise pas non plus que l'angle en $A$ est aigu : s'il est droit, les deux tangentes sont parallèles et $X$ n'existe pas.
- La droite $(AX)$ s'appelle la *symédiane* issue de $A$. Le corrigé officiel utilise une inversion, ou la loi des sinus. Les correcteurs signalent qu'il existait une solution élémentaire par chasse aux angles, qui avait échappé aux auteurs du sujet : c'est celle-ci.

## Going further

1. Montrer que les triangles $YBA$ et $YAC$ sont semblables, et en déduire que $YA^2 = YB \times YC$.
