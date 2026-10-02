---
id: "12806"
title: "Cinq points sur un cercle et trois milieux"
grade: 9
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle, tangente, symetrie, mediatrice, pythagore, cordes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test junior, exercice 2 ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

Soit $A$, $B$, $C$, $D$, $E$ cinq points placés dans cet ordre sur un cercle $\Omega$, de sorte que

- la droite $(CD)$ est parallèle à la droite $(BE)$,
- la droite $(AB)$ est parallèle à la droite $(DE)$.

On note $X$, $Y$ et $Z$ les milieux respectifs des segments $[BD]$, $[CE]$ et $[AE]$.

Démontrer que la droite $(AE)$ est tangente au cercle qui passe par $X$, $Y$ et $Z$.

## Hints

1. Faites une grande figure soignée, et tracez le cercle qui passe par $X$, $Y$ et $Z$. Où semble se trouver son centre ?
2. Notez $O$ le centre de $\Omega$ et $R$ son rayon. Exprimez la distance $OX$ en fonction de $R$ et de la longueur $BD$. Faites de même pour $OY$ et $OZ$.
3. Il suffit donc de montrer que $BD = CE = AE$. Regardez la médiatrice de $[BE]$ : passe-t-elle par $O$ ? Que fait la symétrie par rapport à cette droite aux points $C$ et $D$ ?

## Solution

Notons $O$ le centre du cercle $\Omega$ et $R$ son rayon. Sur une figure soignée, le cercle passant par $X$, $Y$, $Z$ semble avoir pour centre $O$. C'est ce que l'on va démontrer.

### Étape 1 : deux cordes parallèles se déduisent l'une de l'autre par une symétrie

Soit $\Delta$ la médiatrice du segment $[BE]$. Comme $OB = OE = R$, le point $O$ est sur $\Delta$. La droite $\Delta$ est perpendiculaire à $(BE)$, donc aussi à $(CD)$, qui lui est parallèle.

Or la médiatrice de $[CD]$ est, elle aussi, la droite qui passe par $O$ (car $OC = OD$) et qui est perpendiculaire à $(CD)$. C'est donc la même droite $\Delta$.

La symétrie d'axe $\Delta$ échange donc $B$ et $E$, et elle échange aussi $C$ et $D$. Elle transforme le segment $[BD]$ en le segment $[EC]$. Une symétrie conserve les longueurs, donc

$$BD = CE.$$

De la même façon, la médiatrice de $[AB]$ passe par $O$ et est perpendiculaire à $(AB)$, donc à $(DE)$ : c'est aussi la médiatrice de $[DE]$. La symétrie par rapport à cette droite échange $A$ et $B$, et échange $E$ et $D$. Elle transforme $[AE]$ en $[BD]$, donc

$$AE = BD.$$

Finalement $BD = CE = AE$. Notons $\ell$ cette longueur commune.

### Étape 2 : la distance du centre au milieu d'une corde

Le point $X$ est le milieu de la corde $[BD]$. Comme $OB = OD$, le point $O$ est sur la médiatrice de $[BD]$, qui passe par $X$ : la droite $(OX)$ est donc perpendiculaire à $(BD)$ (si $X \neq O$). Le théorème de Pythagore dans le triangle $OXB$, rectangle en $X$, donne

$$OX^2 = OB^2 - XB^2 = R^2 - \frac{\ell^2}{4}.$$

(Si $X = O$, cette égalité est encore vraie : $[BD]$ est alors un diamètre et $\ell = 2R$.) Le même calcul pour les cordes $[CE]$ et $[AE]$, qui ont la même longueur $\ell$, donne

$$OX = OY = OZ = \sqrt{R^2 - \frac{\ell^2}{4}}.$$

Notons $\rho$ cette distance commune.

### Étape 3 : le cercle passant par X, Y et Z

La distance $\rho$ n'est pas nulle. Sinon, les trois cordes $[BD]$, $[CE]$ et $[AE]$ seraient des diamètres, et $A$ comme $C$ seraient le point diamétralement opposé à $E$, ce qui est impossible puisque $A \neq C$.

Les points $X$, $Y$, $Z$ sont donc sur le cercle $\Gamma$ de centre $O$ et de rayon $\rho > 0$. Ils sont distincts : une corde qui n'est pas un diamètre est déterminée par son milieu (c'est la corde perpendiculaire à $(OX)$ en $X$), et nos trois cordes sont différentes. Par trois points distincts d'un cercle ne passe que ce cercle : le cercle passant par $X$, $Y$, $Z$ est donc $\Gamma$.

### Étape 4 : conclusion

Comme à l'étape 2, la droite $(AE)$ est perpendiculaire en $Z$ au rayon $[OZ]$ du cercle $\Gamma$. Une droite perpendiculaire à un rayon en son extrémité est tangente au cercle.

**La droite $(AE)$ est donc tangente en $Z$ au cercle passant par $X$, $Y$ et $Z$.** Pour la même raison, les droites $(BD)$ et $(CE)$ lui sont aussi tangentes, en $X$ et en $Y$.

