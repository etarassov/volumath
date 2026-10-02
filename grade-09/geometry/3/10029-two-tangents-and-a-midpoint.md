---
id: "10029"
title: "Deux tangentes et un milieu"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, tangente, triangle-rectangle, pythagore, hauteur, mediatrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé utilise des triangles semblables ; la solution est refaite ici avec le théorème de Pythagore seul, et le grand cercle, noté C dans la source comme le point C, est renommé ω)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Dans un cercle $\omega$ de centre $O$, on trace une corde $[CD]$. Soit $\Gamma$ le cercle de diamètre $[CD]$, et $O'$ son centre. La médiatrice de $[CD]$ coupe le cercle $\omega$ en deux points $A$ et $B$, avec $A$ à l'extérieur de $\Gamma$. On note $T$ et $T'$ les points de contact des deux tangentes à $\Gamma$ qui passent par $A$, et $F$ le milieu de $[TT']$.

![Le cercle ω, la corde [CD], le cercle Γ de diamètre [CD], les points A et B sur la médiatrice de [CD], et les deux tangentes à Γ issues de A](10029-figure-1.svg)

Montrer que $O'$ est le milieu de $[BF]$.

## Hints

1. Pourquoi $[AB]$ est-il un diamètre du cercle $\omega$ ? Que peux-tu en déduire pour le triangle $ACB$ ?
2. Dans un triangle rectangle, on trace la hauteur issue du sommet de l'angle droit. Avec le théorème de Pythagore, montre que le carré de cette hauteur est égal au produit des deux morceaux de l'hypoténuse.
3. Applique ce résultat au triangle $ACB$, puis un résultat du même genre au triangle $ATO'$. Tu dois obtenir $O'A \times O'B$ et $O'A \times O'F$.

## Solution

### Un résultat sur le triangle rectangle

Soit $XYZ$ un triangle rectangle en $Y$, et $H$ le pied de la hauteur issue de $Y$. Les angles en $X$ et en $Z$ sont aigus, donc $H$ est sur le segment $[XZ]$. Montrons que
$$HY^2 = HX \times HZ .$$
D'après le théorème de Pythagore dans les triangles $XYZ$, $XHY$ et $ZHY$,
$$XZ^2 = XY^2 + YZ^2 = (XH^2 + HY^2) + (ZH^2 + HY^2) .$$
D'autre part, $XZ = XH + HZ$, donc $XZ^2 = XH^2 + HZ^2 + 2\,XH \times HZ$. En comparant les deux expressions de $XZ^2$, on obtient $2\,HY^2 = 2\,XH \times HZ$, ce qui est le résultat.

On en déduit aussi une formule pour un côté de l'angle droit :
$$XY^2 = XH^2 + HY^2 = XH^2 + XH \times HZ = XH \times (XH + HZ) = XH \times XZ .$$

### Étape 1 : le triangle $ACB$

La médiatrice de la corde $[CD]$ passe par le centre $O$ du cercle $\omega$, car $OC = OD$. Les points $A$ et $B$ sont sur $\omega$ et sur une droite qui passe par $O$, donc $[AB]$ est un diamètre de $\omega$. Le point $C$ est sur le cercle de diamètre $[AB]$, donc le triangle $ACB$ est rectangle en $C$.

La droite $(CD)$ est perpendiculaire à $(AB)$ et la coupe en $O'$, le milieu de $[CD]$. Donc $O'$ est le pied de la hauteur issue de $C$ dans le triangle $ACB$. D'après le résultat ci-dessus,
$$O'C^2 = O'A \times O'B . \qquad (1)$$
En particulier, $O'$ est entre $A$ et $B$.

### Étape 2 : le triangle $ATO'$

La tangente en $T$ au cercle $\Gamma$ est perpendiculaire au rayon $[O'T]$, donc le triangle $ATO'$ est rectangle en $T$. De même, $AT'O'$ est rectangle en $T'$.

D'après le théorème de Pythagore, $AT^2 = AO'^2 - O'T^2$ et $AT'^2 = AO'^2 - O'T'^2$. Comme $O'T = O'T'$, on obtient $AT = AT'$. Les points $A$ et $O'$ sont donc tous les deux à la même distance de $T$ et de $T'$ : la droite $(AO')$ est la médiatrice de $[TT']$. Elle passe par le milieu $F$ de $[TT']$, et elle est perpendiculaire à $(TT')$.

Ainsi $F$ est le pied de la hauteur issue de $T$ dans le triangle $ATO'$, rectangle en $T$. La formule pour un côté de l'angle droit donne
$$O'T^2 = O'F \times O'A . \qquad (2)$$
De plus, $F$ est sur le segment $[O'A]$.

### Étape 3 : conclusion

Les points $T$ et $C$ sont sur le cercle $\Gamma$ de centre $O'$, donc $O'T = O'C$. Les égalités (1) et (2) donnent
$$O'F \times O'A = O'A \times O'B ,$$
et donc $O'F = O'B$, en divisant par $O'A$, qui n'est pas nul.

Sur la droite $(AB)$, le point $F$ est entre $O'$ et $A$, et le point $B$ est de l'autre côté de $O'$. Les points $F$ et $B$ sont donc de part et d'autre de $O'$, à la même distance de $O'$.

**Conclusion.** $O'$ est le milieu de $[BF]$.

## Going further

- Le corrigé passe par deux paires de triangles semblables, $AFT$ et $ATO'$ d'une part, $ACB$ et $AO'C$ d'autre part. Il trouve $AF = \dfrac{AO'^2 - O'C^2}{AO'}$ et $AB = \dfrac{AO'^2 + O'C^2}{AO'}$, puis fait la moyenne de ces deux longueurs : on obtient $AO'$.
