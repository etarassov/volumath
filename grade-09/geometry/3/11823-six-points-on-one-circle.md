---
id: "11823"
title: "Six points sur un même cercle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, triangle-isocele, bissectrice, mediatrice, centre-du-cercle-inscrit, cocyclicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 11 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle. On note $a = BC$, $b = CA$ et $c = AB$ les longueurs de ses côtés.

On prolonge chaque côté au-delà de ses deux extrémités :

- au-delà de $A$, on place le point $A_B$ sur la droite $(AB)$ et le point $A_C$ sur la droite $(AC)$, de sorte que $A$ soit sur les segments $[B A_B]$ et $[C A_C]$, et que $A A_B = A A_C = a$ (la longueur du côté opposé à $A$) ;
- de même, au-delà de $B$, les points $B_A$ sur $(BA)$ et $B_C$ sur $(BC)$, avec $B B_A = B B_C = b$ ;
- au-delà de $C$, les points $C_A$ sur $(CA)$ et $C_B$ sur $(CB)$, avec $C C_A = C C_B = c$.

Montrer que les six points $A_B$, $A_C$, $B_A$, $B_C$, $C_A$, $C_B$ sont sur un même cercle.

## Hints

1. Faire une figure exacte. Le centre du cercle semble être un point bien connu du triangle. Lequel ?
2. Le triangle $A A_B A_C$ est isocèle en $A$. Sa bissectrice issue de $A$ est aussi la médiatrice de $[A_B A_C]$. Que dire de cette bissectrice par rapport au triangle $ABC$ ?
3. Calculer $B A_B$ et $B C_B$. Quel autre triangle isocèle apparaît ?

## Solution

Soit $I$ le point d'intersection des trois bissectrices du triangle $ABC$ (le centre de son cercle inscrit). On va montrer que les six points sont tous à la même distance de $I$.

**Un rappel.** Dans un triangle isocèle, la bissectrice issue du sommet principal est aussi la médiatrice de la base. Donc tout point de cette bissectrice est à égale distance des deux extrémités de la base.

**Étape 1 : les petits triangles isocèles.** Le triangle $A A_B A_C$ est isocèle en $A$, car $A A_B = A A_C = a$. Les demi-droites $[A A_B)$ et $[A A_C)$ prolongent $[BA]$ et $[CA]$ au-delà de $A$ : l'angle $\widehat{A_B A A_C}$ est donc opposé par le sommet à l'angle $\widehat{BAC}$, et ces deux angles ont la même bissectrice (la même droite). Cette droite passe par $I$. D'après le rappel,

$$I A_B = I A_C.$$

De même, avec les triangles $B B_A B_C$ et $C C_A C_B$, isocèles en $B$ et en $C$ :

$$I B_A = I B_C \qquad \text{et} \qquad I C_A = I C_B.$$

**Étape 2 : les grands triangles isocèles.** Calculons deux longueurs issues de $B$. Comme $A$ est entre $B$ et $A_B$, on a $B A_B = BA + A A_B = c + a$. Comme $C$ est entre $B$ et $C_B$, on a $B C_B = BC + C C_B = a + c$. Le triangle $B A_B C_B$ est donc isocèle en $B$. De plus $A_B$ est sur la demi-droite $[BA)$ et $C_B$ sur la demi-droite $[BC)$, donc sa bissectrice issue de $B$ est celle de l'angle $\widehat{ABC}$, qui passe par $I$. D'après le rappel,

$$I A_B = I C_B.$$

De même, $C A_C = b + a = C B_C$ donne $I A_C = I B_C$, et $A B_A = c + b = A C_A$ donne $I B_A = I C_A$.

**Conclusion.** En enchaînant ces égalités :

$$I A_B = I A_C = I B_C = I B_A = I C_A = I C_B.$$

Les six points sont à la même distance de $I$ : **ils sont sur le cercle de centre $I$** passant par $A_B$.

*Attention à un piège.* Montrer que trois quadrilatères formés avec ces points sont chacun inscrits dans un cercle ne suffit pas : les trois cercles pourraient être différents. Ici, on évite le problème en trouvant un centre commun.

## Going further

- Ce cercle s'appelle le **cercle de Conway** du triangle. Soit $r$ le rayon du cercle inscrit et $p = \frac{a + b + c}{2}$ le demi-périmètre. Montrer que le rayon du cercle de Conway vaut $\sqrt{r^2 + p^2}$. (Indication : le cercle inscrit touche $[AB]$ en un point $F$ tel que $AF = p - a$.)
