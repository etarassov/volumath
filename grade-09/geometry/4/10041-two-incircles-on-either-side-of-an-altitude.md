---
id: "10041"
title: "Deux cercles inscrits de part et d'autre d'une hauteur"
grade: 9
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle inscrit, tangente, longueurs des tangentes, hauteur, pythagore, reciproque de pythagore, triangle rectangle isocele]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (même calcul des longueurs que le corrigé ; l'angle droit est obtenu ici avec la réciproque du théorème de Pythagore)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et $P$ le pied de la hauteur issue de $A$. On note $I_1$ et $I_2$ les centres des cercles inscrits aux triangles $ABP$ et $ACP$. Le cercle inscrit au triangle $ABC$ touche le côté $[BC]$ en $D$.

![Le triangle ABC, la hauteur [AP], les cercles inscrits aux triangles ABP et ACP de centres I₁ et I₂, et en tirets le cercle inscrit à ABC, qui touche [BC] en D](10041-figure-1.svg)

Combien valent les angles du triangle $I_1I_2D$ ?

## Hints

1. Soient $E$ et $F$ les points où les cercles de centres $I_1$ et $I_2$ touchent $[BC]$, et $r_1$, $r_2$ leurs rayons. Montre que $PE = r_1$ et $PF = r_2$.
2. Dans un triangle, la longueur entre un sommet et le point de contact du cercle inscrit s'exprime avec les trois côtés. Utilise-la pour calculer $DE$ et $DF$.
3. Calcule $DI_1^2$, $DI_2^2$ et $I_1I_2^2$ en fonction de $r_1$ et $r_2$.

## Solution

**Rappel.** La tangente à un cercle en un point $T$ est perpendiculaire au rayon $[OT]$.

### Étape 1 : un outil sur le cercle inscrit

**Deux tangentes issues d'un même point ont la même longueur.** Si les tangentes menées d'un point $X$ à un cercle de centre $O$ et de rayon $r$ le touchent en $T$ et $T'$, les triangles $XTO$ et $XT'O$ sont rectangles en $T$ et $T'$. D'après le théorème de Pythagore, $XT^2 = XO^2 - r^2 = XT'^2$, donc $XT = XT'$.

**Conséquence.** Soit $XYZ$ un triangle dont le cercle inscrit touche $[YZ]$, $[ZX]$, $[XY]$. Notons $x$, $y$, $z$ les longueurs des tangentes issues de $X$, $Y$, $Z$. Alors $XY = x + y$, $YZ = y + z$ et $ZX = z + x$. En faisant $XY + YZ - ZX$, on obtient $2y$, donc la distance de $Y$ au point de contact sur $[YZ]$ vaut
$$y = \frac{XY + YZ - ZX}{2} .$$

### Étape 2 : deux carrés

Soient $r_1$ et $r_2$ les rayons des cercles de centres $I_1$ et $I_2$. Le cercle de centre $I_1$ touche $[BP]$ en un point $E$ et $[AP]$ en un point $G$. Le quadrilatère $PEI_1G$ a trois angles droits : en $P$ car $(AP) \perp (BC)$, en $E$ et en $G$ d'après le rappel. C'est donc un rectangle, et comme $I_1E = I_1G = r_1$, c'est un carré. Ainsi
$$PE = EI_1 = r_1 .$$
De même, le cercle de centre $I_2$ touche $[CP]$ en un point $F$, et $PF = FI_2 = r_2$.

Comme le triangle est acutangle, $P$ est entre $B$ et $C$. Sur la droite $(BC)$, les points sont donc dans l'ordre $B$, $E$, $P$, $F$, $C$, et $EF = r_1 + r_2$.

### Étape 3 : la position de $D$

D'après l'étape 1, dans le triangle $ABC$ puis dans le triangle $ABP$,
$$BD = \frac{BA + BC - AC}{2}, \qquad BE = \frac{BA + BP - AP}{2} .$$
Comme $BC - BP = PC$, on obtient
$$BD - BE = \frac{PC + AP - AC}{2} .$$
Dans le triangle $ACP$, d'après l'étape 1, le nombre $\frac{PA + PC - AC}{2}$ est la distance de $P$ au point de contact $F$, c'est-à-dire $PF = r_2$. Donc $BD - BE = r_2 > 0$ : le point $D$ est au-delà de $E$ en partant de $B$, et
$$ED = r_2 .$$
De la même façon, en partant de $C$, on trouve $FD = r_1$. Le point $D$ est donc entre $E$ et $F$, et on vérifie que $ED + DF = r_1 + r_2 = EF$.

### Étape 4 : les longueurs du triangle $I_1I_2D$

Le triangle $DEI_1$ est rectangle en $E$, et le triangle $DFI_2$ est rectangle en $F$. D'après le théorème de Pythagore,
$$DI_1^2 = ED^2 + EI_1^2 = r_2^2 + r_1^2, \qquad DI_2^2 = FD^2 + FI_2^2 = r_1^2 + r_2^2 .$$
Donc $DI_1 = DI_2$.

Soit $K$ le point de la droite $(FI_2)$ tel que $(I_1K)$ soit parallèle à $(BC)$. Le quadrilatère $EFKI_1$ est un rectangle, donc $I_1K = EF = r_1 + r_2$ et $FK = EI_1 = r_1$, d'où $KI_2 = |r_2 - r_1|$. Le triangle $I_1KI_2$ est rectangle en $K$ (si $r_1 = r_2$, le point $K$ est $I_2$), donc
$$I_1I_2^2 = (r_1 + r_2)^2 + (r_1 - r_2)^2 = 2r_1^2 + 2r_2^2 .$$

### Conclusion

On a $DI_1^2 + DI_2^2 = 2r_1^2 + 2r_2^2 = I_1I_2^2$. D'après la réciproque du théorème de Pythagore, le triangle $I_1I_2D$ est rectangle en $D$, et il est isocèle en $D$ car $DI_1 = DI_2$.

**Le triangle $I_1I_2D$ est rectangle isocèle en $D$ : ses angles valent $90°$ en $D$, et $45°$ en $I_1$ et en $I_2$.**

## Going further

- On peut aussi conclure sans la réciproque de Pythagore : les triangles $DEI_1$ et $I_2FD$ ont les mêmes côtés de l'angle droit, $r_2$ et $r_1$. Ils sont donc superposables, et $\widehat{EDI_1} + \widehat{FDI_2} = \widehat{EDI_1} + \widehat{EI_1D} = 90°$.
