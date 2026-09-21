---
id: "8501"
title: "Les trois angles du triangle ABC"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [angles, triangle-isocele, triangle-equilateral, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 2 (sujet collégiens) et exercice 9 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

$AMC$ est un triangle isocèle en $M$, et son angle $\widehat{AMC}$ est aigu.

On appelle $B$ le symétrique de $A$ par rapport au point $M$. Dans le triangle $ABC$, on
appelle $H$ le pied de la hauteur issue de $C$.

On observe que $AH = HM$.

Quelles sont les mesures des trois angles du triangle $ABC$ ?

## Hints

1. Fais une figure : place $A$, $M$, $C$, puis $B$ de l'autre côté de $M$ sur la droite $(AM)$, puis la hauteur issue de $C$.
2. La hauteur issue de $C$ dans le triangle $ABC$ est aussi une droite du petit triangle $AMC$. Que devient-elle dans ce triangle-là, si $AH = HM$ ?
3. Dans un triangle, une droite qui est à la fois hauteur et médiane issues du même sommet en dit long sur la forme du triangle.
4. Tu devrais trouver que $AMC$ est équilatéral. Il reste à s'occuper du triangle $MBC$, en se souvenant que $MB = MA$.

## Solution

**Étape 1 : le triangle $AMC$ est équilatéral.**

Comme $H$ est le pied de la hauteur issue de $C$ dans le triangle $ABC$, la droite $(CH)$ est
perpendiculaire à $(AB)$. Or $M$ est sur la droite $(AB)$, donc $(CH)$ est aussi la hauteur
issue de $C$ dans le triangle $AMC$.

Mais l'énoncé dit que $AH = HM$ : le point $H$ est donc le milieu de $[AM]$, et $(CH)$ est
aussi la médiane issue de $C$ dans le triangle $AMC$.

Dans un triangle, quand la hauteur et la médiane issues d'un même sommet sont la même
droite, le triangle est isocèle en ce sommet. Donc $AMC$ est isocèle en $C$, c'est-à-dire
$CA = CM$.

Par ailleurs $AMC$ était déjà isocèle en $M$, donc $MA = MC$. En mettant les deux ensemble :

$$CA = CM = MA .$$

Les trois côtés sont égaux : le triangle $AMC$ est équilatéral. Ses trois angles valent donc
$60°$. En particulier

$$\widehat{BAC} = \widehat{MAC} = 60° .$$

**Étape 2 : le triangle $MBC$.**

Les points $A$, $M$, $B$ sont alignés dans cet ordre, donc les angles $\widehat{AMC}$ et
$\widehat{CMB}$ sont supplémentaires :

$$\widehat{CMB} = 180° - 60° = 120° .$$

Comme $B$ est le symétrique de $A$ par rapport à $M$, on a $MB = MA$. Et $MA = MC$ d'après
l'étape 1. Donc $MB = MC$ : le triangle $MBC$ est isocèle en $M$.

Ses deux angles à la base sont donc égaux, et la somme des angles vaut $180°$ :

$$120° + 2\,\widehat{MBC} = 180° , \qquad \text{donc} \qquad \widehat{MBC} = 30° .$$

Comme $M$ est entre $A$ et $B$, l'angle $\widehat{ABC}$ est le même que $\widehat{MBC}$ :

$$\widehat{ABC} = 30° .$$

**Étape 3 : le troisième angle.**

La somme des angles du triangle $ABC$ vaut $180°$, donc

$$\widehat{ACB} = 180° - 60° - 30° = 90° .$$

**Conclusion.** Les angles du triangle $ABC$ mesurent

$$\widehat{BAC} = 60°, \qquad \widehat{ABC} = 30°, \qquad \widehat{ACB} = 90° .$$

C'est la moitié d'un triangle équilatéral.
