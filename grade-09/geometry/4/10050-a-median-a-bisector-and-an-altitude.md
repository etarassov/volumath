---
id: "10050"
title: "Une médiane, une bissectrice et une hauteur"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [mediane, bissectrice, hauteur, triangle isocele, triangle rectangle, triangles egaux, angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf (même méthode que le corrigé ; la dernière ligne du corrigé écrit « JH = HM » au lieu de JH = JM, et le corrigé ne discute pas la position du point H, ce qui est fait ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle et $M$ le milieu du côté $[AC]$. La médiane $[BM]$ et la bissectrice $[CD]$ de l'angle $\widehat{ACB}$, avec $D$ sur $[AB]$, se coupent en un point $J$. On suppose que $JB = JC$.

Soit $H$ le pied de la hauteur issue de $A$.

![Le triangle ABC, la médiane [BM], la bissectrice [CD] de l'angle en C, qui se coupent en J, et la hauteur [AH] en tirets](10050-figure-1.svg)

Montrer que $JM = JH$.

## Hints

1. Note $\gamma = \widehat{ACB}$. Montre que $\widehat{MBC} = \frac{\gamma}{2}$.
2. Le triangle $AHC$ est rectangle en $H$. Que peux-tu dire de la longueur $MH$ ?
3. Calcule les angles du triangle $BHM$. Tu dois trouver qu'il est isocèle en $H$.
4. Compare les triangles $JBH$ et $JCM$.

## Solution

On note $\gamma = \widehat{ACB}$. Les segments $[BM]$ et $[CD]$ partent de deux sommets et aboutissent sur les côtés opposés, donc ils se coupent à l'intérieur du triangle : $J$ est sur $[BM]$ et sur $[CD]$.

### Étape 1 : l'angle $\widehat{MBC}$

Comme $(CD)$ est la bissectrice, $\widehat{JCB} = \frac{\gamma}{2}$. Le triangle $JBC$ est isocèle en $J$, car $JB = JC$, donc $\widehat{JBC} = \widehat{JCB} = \frac{\gamma}{2}$. Le point $J$ est sur $[BM]$, donc
$$\widehat{MBC} = \frac{\gamma}{2} .$$

### Étape 2 : la longueur $MH$

Le triangle $AHC$ est rectangle en $H$, et $M$ est le milieu de son hypoténuse $[AC]$. Le point $H$ est donc sur le cercle de diamètre $[AC]$, et
$$MH = MA = MC .$$
(Si $H = C$, c'est évident.)

### Étape 3 : où est le point $H$ ?

Le point $H$ est sur la droite $(BC)$. Montrons qu'il est sur la demi-droite $[BC)$, et différent de $B$.

- **Si $H = B$**, alors $MB = MH = MC$. Le triangle $MBC$ est isocèle en $M$, donc $\widehat{MBC} = \widehat{MCB} = \gamma$. C'est impossible, car $\widehat{MBC} = \frac{\gamma}{2}$.
- **Si $B$ est entre $H$ et $C$**, alors $\widehat{MHB} = \widehat{MHC}$. Le triangle $MHC$ est isocèle en $M$ et $\widehat{MCH} = \gamma$, donc $\widehat{MHB} = \gamma$. D'autre part, $\widehat{HBM} = 180° - \widehat{MBC} = 180° - \frac{\gamma}{2}$. La somme de ces deux angles du triangle $BHM$ vaut $180° + \frac{\gamma}{2}$, plus que $180°$ : c'est impossible.

Donc $H$ est sur la demi-droite $[BC)$, et $H \neq B$. En particulier $\widehat{HBM} = \widehat{CBM} = \frac{\gamma}{2}$.

### Étape 4 : l'angle $\widehat{BHM}$ vaut $180° - \gamma$

Il reste trois cas.

- **$H$ est entre $B$ et $C$.** Le triangle $MHC$ est isocèle en $M$, donc $\widehat{MHC} = \widehat{MCH} = \gamma$, et $\widehat{BHM} = 180° - \gamma$.
- **$H = C$.** Alors l'angle $\gamma$ est droit, et $\widehat{BHM} = \widehat{BCA} = 90° = 180° - \gamma$.
- **$C$ est entre $B$ et $H$.** Alors $\widehat{MCH} = 180° - \gamma$, et le triangle $MHC$ est isocèle en $M$, donc $\widehat{MHC} = 180° - \gamma$. Comme $B$ et $C$ sont du même côté de $H$, $\widehat{BHM} = \widehat{MHC} = 180° - \gamma$.

### Étape 5 : le triangle $BHM$ est isocèle

Dans le triangle $BHM$, on connaît maintenant deux angles : $\widehat{HBM} = \frac{\gamma}{2}$ et $\widehat{BHM} = 180° - \gamma$. Donc
$$\widehat{BMH} = 180° - \frac{\gamma}{2} - (180° - \gamma) = \frac{\gamma}{2} = \widehat{HBM} .$$
Le triangle $BHM$ est isocèle en $H$, donc $HB = HM$. Avec l'étape 2, on obtient
$$HB = MC .$$

### Étape 6 : deux triangles égaux

Comparons les triangles $JBH$ et $JCM$.

- $JB = JC$, par hypothèse.
- $BH = CM$, d'après l'étape 5.
- $\widehat{JBH} = \frac{\gamma}{2}$, d'après l'étape 3, car $J$ est sur $[BM]$. Et $\widehat{JCM} = \widehat{DCA} = \frac{\gamma}{2}$, car $(CD)$ est la bissectrice et $M$ est sur $[CA]$.

Les deux triangles ont un angle égal compris entre deux côtés égaux deux à deux. Ils sont donc égaux, et leurs troisièmes côtés aussi : **$JH = JM$.**

## Going further

- L'étape 3 montre que l'angle $\widehat{ABC}$ est forcément aigu. Mais l'angle $\gamma$ peut être aigu, droit ou obtus : dessine les trois cas de l'étape 4.
- L'énoncé impose $\widehat{MBC} = \frac{\gamma}{2}$ et $\widehat{MCB} = \gamma$, donc $\frac{3\gamma}{2} < 180°$. Pour quelles valeurs de $\gamma$ un tel triangle existe-t-il ? Que se passe-t-il pour $\gamma = 60°$ ?
