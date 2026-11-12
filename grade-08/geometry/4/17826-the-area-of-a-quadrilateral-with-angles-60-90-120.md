---
id: "17826"
title: "L'aire d'un quadrilatère d'angles 60°, 90° et 120°"
grade: 8
theme: geometry
difficulty: 4
duration_min: 40
tags: [aire, quadrilatere, cercle-de-diametre, pythagore, reciproque-de-pythagore, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mercredi matin (Vincent Jugé), exercice 6 (JBMO 2000, liste courte, G6), p.64 ; solution p.64-65 (Al-Kashi et puissance d'un point). La solution imprimée écrit « un cercle de rayon [AC] » pour « un cercle de diamètre [AC] ». La solution donnée ici n'utilise que Pythagore et des aires."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère tel que

$$\widehat{DAB} = 60^\circ, \qquad \widehat{ABC} = 90^\circ, \qquad \widehat{BCD} = 120^\circ .$$

Ses diagonales $[AC]$ et $[BD]$ se coupent en un point $M$, et l'on sait que $BM = 1$ et $DM = 2$.

Calculer l'aire du quadrilatère $ABCD$.

## Hints

1. Calculez le quatrième angle $\widehat{CDA}$. Que remarquez-vous sur les triangles $ABC$ et $ADC$ ? Sur quel cercle sont les quatre sommets ?
2. Soit $O$ le milieu de $[AC]$ et $R = OA$. Calculez l'angle $\widehat{BOD}$ à l'aide des triangles isocèles $OAB$ et $OAD$.
3. Dans le triangle isocèle $OBD$, tracez la hauteur issue de $O$. Déduisez $R$ de $BD = 3$, puis calculez la longueur $OM$.
4. Comparez $OM^2 + OD^2$ et $MD^2$. Que peut-on en déduire pour la droite $(OD)$ ?
5. Pour l'aire du triangle $ABC$, comparez-la à celle de $ADC$ en coupant chacun en deux le long de la diagonale $[BD]$.

## Solution

Les diagonales se coupent, donc le quadrilatère est convexe : $B$ et $D$ sont de part et d'autre de la droite $(AC)$, et la diagonale $[AC]$ est à l'intérieur de l'angle $\widehat{DAB}$. De plus $BD = BM + MD = 3$.

**Étape 1 : un cercle.** La somme des angles d'un quadrilatère convexe vaut $360^\circ$, donc

$$\widehat{CDA} = 360^\circ - 60^\circ - 90^\circ - 120^\circ = 90^\circ .$$

Les triangles $ABC$ et $ADC$ sont rectangles en $B$ et en $D$, avec la même hypoténuse $[AC]$. Les points $B$ et $D$ sont donc sur le cercle de diamètre $[AC]$. Notons $O$ son centre, le milieu de $[AC]$, et $R$ son rayon : $OA = OB = OC = OD = R$.

**Étape 2 : l'angle $\widehat{BOD}$.** Le triangle $OAB$ est isocèle en $O$, donc $\widehat{OBA} = \widehat{OAB}$. L'angle $\widehat{BOC}$ est un angle extérieur de ce triangle, il vaut la somme des deux autres angles :

$$\widehat{BOC} = 2\,\widehat{OAB} = 2\,\widehat{BAC} .$$

De même, avec le triangle isocèle $OAD$, $\widehat{COD} = 2\,\widehat{CAD}$. Comme $B$ et $D$ sont de part et d'autre de $(AC)$,

$$\widehat{BOD} = \widehat{BOC} + \widehat{COD} = 2\left(\widehat{BAC} + \widehat{CAD}\right) = 2\,\widehat{BAD} = 120^\circ .$$

**Étape 3 : le rayon.** Soit $K$ le pied de la hauteur issue de $O$ dans le triangle isocèle $OBD$. C'est aussi le milieu de $[BD]$, donc $BK = KD = \frac{3}{2}$, et la hauteur coupe l'angle en $O$ en deux : $\widehat{BOK} = 60^\circ$. Le triangle $OKB$, rectangle en $K$, est donc la moitié d'un triangle équilatéral de côté $OB = R$. Ainsi $OK = \frac{R}{2}$, et par le théorème de Pythagore,

$$BK^2 = R^2 - \frac{R^2}{4} = \frac{3R^2}{4} .$$

Avec $BK = \frac{3}{2}$, on obtient $\frac{3R^2}{4} = \frac{9}{4}$, donc $R^2 = 3$, puis $R = \sqrt{3}$ et $OK = \frac{\sqrt{3}}{2}$.

**Étape 4 : la longueur $OM$.** Le point $M$ est sur $[BD]$ avec $BM = 1 < BK = \frac{3}{2}$, donc $M$ est entre $B$ et $K$, et $KM = \frac{3}{2} - 1 = \frac{1}{2}$. Dans le triangle $OKM$, rectangle en $K$ :

$$OM^2 = OK^2 + KM^2 = \frac{3}{4} + \frac{1}{4} = 1 .$$

**Étape 5 : un angle droit.** Dans le triangle $OMD$, on a $OM^2 + OD^2 = 1 + 3 = 4 = MD^2$. D'après la réciproque du théorème de Pythagore, ce triangle est rectangle en $O$. Comme $M$ est sur $(AC)$, la droite $(OD)$ est perpendiculaire à $(AC)$ : **$[OD]$ est la hauteur du triangle $ACD$ issue de $D$.**

Donc

$$\mathcal{A}(ACD) = \frac{AC \times OD}{2} = \frac{2R \times R}{2} = R^2 = 3 .$$

**Étape 6 : l'aire du triangle $ABC$.** Les triangles $ABM$ et $ADM$ ont la même hauteur issue de $A$ (la distance de $A$ à la droite $(BD)$), et leurs bases mesurent $BM = 1$ et $DM = 2$. Donc $\mathcal{A}(ABM) = \frac{1}{2}\,\mathcal{A}(ADM)$. De même, $\mathcal{A}(CBM) = \frac{1}{2}\,\mathcal{A}(CDM)$. En additionnant,

$$\mathcal{A}(ABC) = \mathcal{A}(ABM) + \mathcal{A}(CBM) = \frac{1}{2}\left(\mathcal{A}(ADM) + \mathcal{A}(CDM)\right) = \frac{1}{2}\,\mathcal{A}(ACD) = \frac{3}{2} .$$

**Conclusion.** L'aire du quadrilatère est

$$\mathcal{A}(ABCD) = \mathcal{A}(ACD) + \mathcal{A}(ABC) = 3 + \frac{3}{2} = \frac{9}{2} .$$

## Going further

Vérifiez le résultat avec des coordonnées : $O = (0\,;\,0)$, $A = (-\sqrt{3}\,;\,0)$, $C = (\sqrt{3}\,;\,0)$, $D = (0\,;\,-\sqrt{3})$ et $B = \left(\frac{3}{2}\,;\,\frac{\sqrt{3}}{2}\right)$. Contrôlez que $B$ et $D$ sont sur le cercle de centre $O$ et de rayon $\sqrt{3}$, que $M = (1\,;\,0)$, et que les angles valent bien $60^\circ$, $90^\circ$ et $120^\circ$.
