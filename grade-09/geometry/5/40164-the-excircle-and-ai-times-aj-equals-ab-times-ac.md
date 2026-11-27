---
id: "40164"
title: "Le cercle exinscrit : AI × AJ = AB × AC"
grade: 9
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle-inscrit, cercle-exinscrit, bissectrice, bissectrice-exterieure, triangles-semblables, homothetie, chasse-aux-angles, distance, tangente]
adapted_from: null
see_also: ["40162", "40163", "40165", "40166", "40167", "17822"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie II, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Dans le plan, on considère un triangle $ABC$ et on note $h$ la longueur de la hauteur issue de
$A$. On note $\Gamma$ le cercle inscrit dans le triangle, $I$ son centre et $r$ son rayon.

On rappelle que $I$ est le point d'intersection des bissectrices intérieures du triangle,
c'est-à-dire le point intérieur au triangle tel que $\widehat{IAB} = \widehat{IAC}$,
$\widehat{IBC} = \widehat{IBA}$ et $\widehat{ICA} = \widehat{ICB}$.

On note $\Delta_B$ la droite qui passe par $B$ et qui est perpendiculaire à $(BI)$, et $\Delta_C$
la droite qui passe par $C$ et qui est perpendiculaire à $(CI)$.

1. Soit $J$ le point d'intersection de $\Delta_B$ et $\Delta_C$.
   Montrer que $J$ est à la même distance des trois droites $(AB)$, $(BC)$ et $(CA)$. En déduire
   que $J$ appartient à la droite $(AI)$ et qu'il est le centre d'un cercle $\Gamma'$ tangent
   aux droites $(AB)$, $(BC)$ et $(CA)$.
   (Le cercle $\Gamma'$ s'appelle le *cercle exinscrit* dans l'angle $\widehat{A}$ du triangle
   $ABC$.)
2. En examinant leurs angles, montrer que le triangle $AIC$ est semblable au triangle $ABJ$, et
   que le triangle $AIB$ est semblable au triangle $ACJ$. En déduire que
$$AI \times AJ = AB \times AC .$$
3. Soit $f$ l'homothétie de centre $A$ qui envoie $J$ sur $I$. Préciser l'image par $f$ du cercle
   $\Gamma'$, puis celle de la droite $(BC)$. En déduire que
$$\frac{AI}{AJ} = \frac{h - 2r}{h} .$$

## Hints

1. **Question 1.** Commencer par une figure soignée. Notons $\widehat{B} = 2\beta$. Quel angle la
   droite $\Delta_B$ fait-elle avec $(BC)$ ? avec le prolongement de $[AB]$ au-delà de $B$ ?
2. **Question 1.** La droite $\Delta_B$ est la bissectrice de l'angle formé par $[BC)$ et le
   prolongement de $[AB]$ au-delà de $B$. Or un point d'une bissectrice est à la même distance des
   deux côtés de l'angle.
3. **Question 1.** Un point à égale distance de $(AB)$ et $(AC)$, situé à l'intérieur de l'angle
   $\widehat{BAC}$, est sur la bissectrice $(AI)$. Pourquoi $J$ est-il à l'intérieur de cet angle ?
4. **Question 2.** Notons $\widehat{A} = 2\alpha$, $\widehat{B} = 2\beta$, $\widehat{C} = 2\gamma$.
   Calculer $\widehat{AIC}$ et $\widehat{ABJ}$ en fonction de $\beta$ (on a $\alpha + \beta + \gamma = 90°$).
5. **Question 3.** Une homothétie de centre $A$ ne change pas les droites $(AB)$ et $(AC)$. Le
   cercle image est donc tangent à ces deux droites : quel est son centre ?
6. **Question 3.** L'image de $(BC)$ est parallèle à $(BC)$ et tangente à $\Gamma$. Le cercle
   $\Gamma$ a deux tangentes parallèles à $(BC)$ : à quelles distances de $A$ sont-elles ?

## Solution

Notons $\widehat{A} = 2\alpha$, $\widehat{B} = 2\beta$ et $\widehat{C} = 2\gamma$ les angles du
triangle, de sorte que $\alpha + \beta + \gamma = 90°$. On a $\widehat{IAB} = \widehat{IAC} = \alpha$,
$\widehat{IBA} = \widehat{IBC} = \beta$ et $\widehat{ICA} = \widehat{ICB} = \gamma$.

**1.** *Le point $J$ existe.* Les droites $\Delta_B$ et $\Delta_C$ sont perpendiculaires
respectivement à $(BI)$ et à $(CI)$. Si elles étaient parallèles, $(BI)$ et $(CI)$ le seraient
aussi ; or ces deux droites sont distinctes et se coupent en $I$. Donc $\Delta_B$ et $\Delta_C$ se
coupent en un point $J$.

*$\Delta_B$ est une bissectrice.* Soit $[Bx)$ le prolongement de $[AB]$ au-delà de $B$. L'angle
$\widehat{CBx}$ vaut $180° - 2\beta$. Notons $[Bd)$ la demi-droite de $\Delta_B$ située du même
côté de $(BI)$ que $C$. Comme $\widehat{IBd} = 90°$ et $\widehat{IBC} = \beta$, on a
$\widehat{dBC} = 90° - \beta$ ; comme $\widehat{IBx} = 180° - \beta$, on a
$\widehat{dBx} = 90° - \beta$. Donc $[Bd)$ coupe l'angle $\widehat{CBx}$ en deux angles égaux :
$\Delta_B$ est la bissectrice de l'angle formé par les droites $(BC)$ et $(BA)$ qui ne contient pas
le triangle (on l'appelle *bissectrice extérieure* en $B$).

Un point d'une bissectrice est à la même distance des deux droites qui forment l'angle (la symétrie
par rapport à la bissectrice échange ces deux droites et ne bouge pas le point). Donc tout point de
$\Delta_B$ est à la même distance de $(AB)$ et de $(BC)$. De même, tout point de $\Delta_C$ est à la
même distance de $(CA)$ et de $(CB)$. Le point $J$ est sur les deux droites, donc
$$d(J, (AB)) = d(J, (BC)) = d(J, (CA)).$$
Notons $\rho$ cette distance commune.

*$J$ est sur $(AI)$.* Les demi-droites $[Bd)$ et $[Ce)$ (définie de même en $C$) partent de $B$ et
de $C$, du côté de $(BC)$ opposé à $A$, en faisant avec $[BC]$ des angles $90° - \beta$ et
$90° - \gamma$, dont la somme $180° - \beta - \gamma$ est inférieure à $180°$. Elles se coupent
donc de ce côté : $J$ est le point commun de $[Bd)$ et $[Ce)$. Comme $[Bd)$ est à l'intérieur de
l'angle $\widehat{CBx}$, le point $J$ est du même côté de $(AB)$ que $C$ ; de même, $J$ est du
même côté de $(AC)$ que $B$. Ainsi $J$ est à l'intérieur de l'angle $\widehat{BAC}$. Un point de
l'intérieur de cet angle qui est à la même distance de $(AB)$ et de $(AC)$ est sur sa bissectrice,
la demi-droite $[AI)$. Donc $J \in (AI)$, et plus précisément $J$ est sur $[AI)$, au-delà de $(BC)$.

*Le cercle $\Gamma'$.* Le cercle de centre $J$ et de rayon $\rho$ est tangent aux trois droites
$(AB)$, $(BC)$ et $(CA)$, puisque sa distance à chacune est égale à son rayon.

**2.** *Triangles $AIC$ et $ABJ$.*

- En $A$ : $\widehat{IAC} = \alpha$ et $\widehat{BAJ} = \widehat{BAI} = \alpha$, car $J$ est sur
  $[AI)$.
- Dans le triangle $AIC$ : $\widehat{AIC} = 180° - \alpha - \gamma = 90° + \beta$.
- En $B$ : $\widehat{ABJ} = 180° - \widehat{JBx} = 180° - (90° - \beta) = 90° + \beta$.

Les deux triangles ont deux angles égaux, donc ils sont semblables, avec la correspondance
$A \leftrightarrow A$, $I \leftrightarrow B$, $C \leftrightarrow J$. Les côtés correspondants sont
proportionnels :
$$\frac{AI}{AB} = \frac{AC}{AJ}, \qquad \text{donc} \qquad AI \times AJ = AB \times AC .$$

*Triangles $AIB$ et $ACJ$.* De la même façon, $\widehat{IAB} = \widehat{CAJ} = \alpha$, et
$\widehat{AIB} = 180° - \alpha - \beta = 90° + \gamma = \widehat{ACJ}$. Ces triangles sont
semblables ($A \leftrightarrow A$, $I \leftrightarrow C$, $B \leftrightarrow J$), ce qui redonne
$\frac{AI}{AC} = \frac{AB}{AJ}$, la même relation.

**3.** Les points $I$ et $J$ sont sur la demi-droite $[AI)$, et $I$ est entre $A$ et $J$ ($I$ est
dans le triangle, $J$ au-delà de $(BC)$). L'homothétie $f$ a donc pour rapport
$k = \frac{AI}{AJ}$, avec $0 < k < 1$.

*Image de $\Gamma'$.* L'image de $\Gamma'$ est le cercle de centre $f(J) = I$ et de rayon
$k\rho$. Les droites $(AB)$ et $(AC)$ passent par le centre $A$, donc $f$ les envoie sur
elles-mêmes. Comme $\Gamma'$ est tangent à $(AB)$, son image est tangente à l'image de $(AB)$,
c'est-à-dire à $(AB)$. Un cercle de centre $I$ tangent à $(AB)$ a pour rayon la distance de $I$ à
$(AB)$, c'est-à-dire $r$. Donc $f(\Gamma') = \Gamma$ (et au passage $k\rho = r$).

*Image de $(BC)$.* La droite $(BC)$ est tangente à $\Gamma'$, donc $f\big((BC)\big)$ est une droite
parallèle à $(BC)$ et tangente à $f(\Gamma') = \Gamma$.

Soit $H$ le pied de la hauteur issue de $A$, de sorte que $AH = h$. L'image $H'$ de $H$ est sur
$[AH]$ avec $AH' = k\,h$, et $f\big((BC)\big)$ est la parallèle à $(BC)$ passant par $H'$. Elle est
donc à la distance $k\,h < h$ de $A$ : ce n'est pas $(BC)$.

Or $\Gamma$ a exactement deux tangentes parallèles à $(BC)$ : la droite $(BC)$ elle-même, et sa
symétrique par rapport à $I$, située à la distance $2r$ de $(BC)$, du côté de $A$, donc à la
distance $h - 2r$ de $A$. Donc $f\big((BC)\big)$ est cette seconde tangente, et
$$k\,h = h - 2r, \qquad \text{c'est-à-dire} \qquad \frac{AI}{AJ} = \frac{h - 2r}{h} .$$

**Bilan.** Les bissectrices extérieures en $B$ et en $C$ se coupent en un point $J$ de la
bissectrice $(AI)$, centre d'un cercle tangent aux trois côtés : le cercle exinscrit. Deux paires
de triangles semblables donnent $AI \times AJ = AB \times AC$, et l'homothétie de centre $A$ qui
envoie le cercle exinscrit sur le cercle inscrit donne $\frac{AI}{AJ} = \frac{h - 2r}{h}$.

## Going further

- Montrer de même que $\frac{r}{\rho} = \frac{h - 2r}{h}$, où $\rho$ est le rayon du cercle
  exinscrit, puis que $\frac{1}{r} = \frac{1}{\rho} + \frac{2}{h}$.
- Dans la suite du sujet, on coupait le triangle en deux par un point $D$ de $[BC]$, en notant
  $r_1$ et $r_2$ les rayons inscrits des triangles $ABD$ et $ACD$, et on montrait que
  $h(h - 2r) = (h - 2r_1)(h - 2r_2)$ : voir l'exercice 40165.
