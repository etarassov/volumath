---
id: "10015"
title: "Trois points alignés dans un hexagone régulier"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [hexagone, polygone-regulier, coordonnees, vecteurs, colinearite, determinant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 6 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi6.pdf, Exercices communs, exercice 6 (problème 5 des OIM 1982) ; corrigé 2017-10_ofm-2012-2013-envoi6-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi6.pdf"
---

## Statement

Soit $ABCDEF$ un hexagone régulier. On place un point $M$ sur la diagonale $[AC]$ et un point $N$ sur la diagonale $[CE]$, de sorte que
$$\frac{AM}{AC} = \frac{CN}{CE} = r,$$
où $r$ est un nombre strictement positif. On suppose de plus que les points $B$, $M$, $N$ sont alignés.

![L'hexagone régulier ABCDEF, ses diagonales [AC] et [CE], et la droite qui passe par B, M et N](10015-figure-1.svg)

Déterminer la valeur de $r$.

## Hints

1. Place l'hexagone dans un repère bien choisi : son centre à l'origine, et le sommet $A$ sur l'axe des ordonnées.
2. Un hexagone régulier de côté $1$ est formé de six triangles équilatéraux de côté $1$. Utilise la hauteur d'un triangle équilatéral pour trouver les coordonnées de $B$, $C$ et $E$.
3. Exprime les coordonnées de $M$ et de $N$ en fonction de $r$, puis écris que les vecteurs $\overrightarrow{BM}$ et $\overrightarrow{BN}$ sont colinéaires.

## Solution

### Étape 1 : un repère

On peut choisir l'hexagone de côté $1$, car le rapport $r$ ne dépend pas de la taille de la figure. On note $O$ son centre. L'hexagone est formé de six triangles équilatéraux de côté $1$ autour de $O$ : $OAB$, $OBC$, $OCD$, et ainsi de suite.

On prend un repère orthonormé d'origine $O$ avec $A = (0\,;\,1)$ et $D = (0\,;\,-1)$. Dans le triangle équilatéral $OAB$, la hauteur issue de $B$ tombe au milieu de $[OA]$ et mesure $\dfrac{\sqrt{3}}{2}$. Donc
$$B = \left(\frac{\sqrt{3}}{2}\,;\,\frac{1}{2}\right), \qquad C = \left(\frac{\sqrt{3}}{2}\,;\,-\frac{1}{2}\right), \qquad E = \left(-\frac{\sqrt{3}}{2}\,;\,-\frac{1}{2}\right),$$
les deux derniers de la même façon, avec les triangles $OCD$ et $ODE$.

### Étape 2 : les points $M$ et $N$

La condition $\dfrac{AM}{AC} = r$ avec $M \in [AC]$ s'écrit $\overrightarrow{AM} = r\,\overrightarrow{AC}$. Or $\overrightarrow{AC} = \left(\dfrac{\sqrt{3}}{2}\,;\,-\dfrac{3}{2}\right)$, donc
$$M = \left(\frac{\sqrt{3}}{2}\,r\,;\,1 - \frac{3}{2}\,r\right).$$
De même $\overrightarrow{CN} = r\,\overrightarrow{CE}$ avec $\overrightarrow{CE} = \left(-\sqrt{3}\,;\,0\right)$, donc
$$N = \left(\frac{\sqrt{3}}{2} - \sqrt{3}\,r\,;\,-\frac{1}{2}\right).$$

### Étape 3 : l'alignement

On en déduit
$$\overrightarrow{BM} = \left(\frac{\sqrt{3}}{2}(r - 1)\,;\,\frac{1 - 3r}{2}\right), \qquad \overrightarrow{BN} = \left(-\sqrt{3}\,r\,;\,-1\right).$$
Les points $B$, $M$, $N$ sont alignés si et seulement si ces deux vecteurs sont colinéaires, c'est-à-dire si leur déterminant est nul :
$$\frac{\sqrt{3}}{2}(r - 1) \times (-1) - \frac{1 - 3r}{2} \times \left(-\sqrt{3}\,r\right) = \frac{\sqrt{3}}{2}\left[(1 - r) + r(1 - 3r)\right] = \frac{\sqrt{3}}{2}\left(1 - 3r^2\right).$$
Ce déterminant est nul si et seulement si $r^2 = \dfrac{1}{3}$, et comme $r > 0$, si et seulement si $r = \dfrac{1}{\sqrt{3}}$. Cette valeur est bien plus petite que $1$, donc $M$ est bien sur $[AC]$ et $N$ sur $[CE]$.

**Conclusion.** $r = \dfrac{1}{\sqrt{3}} = \dfrac{\sqrt{3}}{3}$.

## Going further

Dans un hexagone de côté $1$, les diagonales $[AC]$ et $[CE]$ mesurent $\sqrt{3}$. La réponse dit donc que $AM = 1$ et $CN = 1$ : la distance $AM$ est égale au côté $AB$, et $CN$ au côté $CB$.

On peut le vérifier sans calcul. Si $AM = AB$, le triangle $ABM$ est isocèle en $A$, avec $\widehat{BAM} = \widehat{BAC} = 30°$, donc $\widehat{ABM} = 75°$ et $\widehat{MBC} = 120° - 75° = 45°$. Or $\widehat{BCE} = \widehat{BCD} - \widehat{DCE} = 120° - 30° = 90°$. Le triangle $BCN$ est donc rectangle en $C$ avec un angle de $45°$ en $B$ : il est isocèle, et $CN = CB = 1$. On retrouve que la droite $(BM)$ coupe $[CE]$ au point $N$ tel que $\dfrac{CN}{CE} = \dfrac{1}{\sqrt{3}} = \dfrac{AM}{AC}$.
