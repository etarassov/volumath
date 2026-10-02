---
id: "7328"
title: "Le point à quinze degrés dans le carré"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [carre, triangle-equilateral, angles, triangle-isocele, analyse-synthese]
adapted_from: null
see_also: ["0660"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, géométrie, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

$ABCD$ est un carré. À l'intérieur de ce carré, on place le point $E$ tel que
$$\widehat{EAB} = \widehat{EBA} = 15° .$$

![Un carré ABCD et le point E intérieur vu depuis A et depuis B sous un angle de 15 degrés](7328-figure-1.svg)

Montrer que le triangle $CDE$ est **équilatéral**.

## Hints

1. Le point $E$ est vu de $A$ et de $B$ sous le même angle : où se trouve-t-il nécessairement ?
2. Sur cette droite, $E$ est le **seul** point qui donne un angle de $15°$ : plus on s'éloigne de $[AB]$, plus l'angle grandit. Cette unicité est la clé.
3. On peut donc travailler à l'envers : appelle $F$ le sommet du triangle équilatéral construit sur $[DC]$ vers l'intérieur du carré, et montre que $\widehat{FAB} = 15°$. Tu auras alors $F = E$.
4. Dans le triangle $ADF$, que peux-tu dire des longueurs $DA$ et $DF$ ? Et de l'angle $\widehat{ADF}$ ?
5. Un triangle isocèle dont l'angle au sommet vaut $30°$ : que valent ses angles à la base ?

## Solution

**Étape 1 : où est $E$, et pourquoi il est unique.**

Comme $\widehat{EAB} = \widehat{EBA}$, le triangle $ABE$ est isocèle en $E$, donc $E$ appartient à la **médiatrice de $[AB]$**.

Sur cette médiatrice, prenons un point $P$ à l'intérieur du carré et notons $h$ sa distance à $(AB)$. Si $a$ est le côté du carré, on a
$$\tan \widehat{PAB} = \frac{h}{a/2} .$$
Quand $h$ augmente, cet angle augmente aussi. Il existe donc **un seul** point de la médiatrice, à l'intérieur du carré, pour lequel l'angle vaut $15°$ : c'est $E$.

Cette unicité autorise la méthode suivante : si nous trouvons un point $F$ qui rend $CDF$ équilatéral **et** qui vérifie $\widehat{FAB} = 15°$, alors $F = E$ et le problème est résolu.

**Étape 2 : on construit le triangle équilatéral, et on calcule.**

Notons $a$ le côté du carré. Soit $F$ le point intérieur au carré tel que le triangle $DCF$ soit équilatéral de côté $a$. Par symétrie de la figure par rapport à la médiatrice commune de $[AB]$ et $[DC]$, le point $F$ est sur cette médiatrice, donc $\widehat{FAB} = \widehat{FBA}$.

Regardons le triangle $ADF$.

- $DA = a$ (côté du carré) et $DF = a$ (côté du triangle équilatéral). Le triangle $ADF$ est donc **isocèle en $D$**.
- L'angle en $D$ vaut
$$\widehat{ADF} = \widehat{ADC} - \widehat{FDC} = 90° - 60° = 30° .$$

Les deux angles à la base sont donc égaux et valent
$$\widehat{DAF} = \widehat{DFA} = \frac{180° - 30°}{2} = 75° .$$

**Étape 3 : on conclut.**

$$\widehat{FAB} = \widehat{DAB} - \widehat{DAF} = 90° - 75° = 15° .$$

Le point $F$ est donc sur la médiatrice de $[AB]$, à l'intérieur du carré, et vérifie $\widehat{FAB} = 15°$. Par l'unicité de l'étape 1,
$$F = E .$$

Comme $DCF$ était équilatéral par construction, le triangle $CDE$ est équilatéral.

**Conclusion.** Le triangle $CDE$ est équilatéral, de côté égal à celui du carré.

**Remarque.** Cette façon de faire — construire la figure qu'on veut obtenir, puis vérifier qu'elle satisfait les hypothèses, et conclure par un argument d'unicité — s'appelle un raisonnement par **analyse et synthèse**. Elle est très utile quand l'énoncé donne des angles et demande des longueurs.

## Going further

1. Calcule $DE$ directement en plaçant le carré dans un repère, avec $A = (0,0)$ et $B = (1,0)$, et en utilisant $\tan 15° = 2 - \sqrt{3}$.
2. Où se trouve le centre du carré par rapport au triangle $CDE$ ? Est-il à l'intérieur ?
3. On construit de même les quatre triangles équilatéraux intérieurs appuyés sur les quatre côtés du carré. Leurs quatre sommets forment-ils un carré ?
