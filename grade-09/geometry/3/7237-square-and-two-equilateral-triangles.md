---
id: "7237"
title: "Le carré et ses deux triangles équilatéraux"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [carre, triangle-equilateral, triangle-isocele, alignement, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Première journée », exercices d'échauffement, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

$ABCD$ est un carré, les sommets étant nommés dans cet ordre en tournant.

- On construit le triangle équilatéral $ABE$ **à l'intérieur** du carré, sur le côté $[AB]$ ;
- on construit le triangle équilatéral $BCF$ **à l'extérieur** du carré, sur le côté $[BC]$.

Montrer que les points $D$, $E$ et $F$ sont alignés.

## Hints

1. Fais une figure soignée, à la règle et au compas si possible.
2. Pour montrer que trois points sont alignés, il suffit de montrer que deux angles de sommet $D$
   sont égaux : ici $\widehat{CDE}$ et $\widehat{CDF}$.
3. Le triangle $DAE$ est isocèle. Pourquoi ? Quel est son angle en $A$ ?
4. Même travail avec le triangle $CDF$ : il est isocèle lui aussi, et tu peux calculer son angle
   en $C$.

## Solution

Notons $a$ la longueur du côté du carré. Tous les côtés des deux triangles équilatéraux valent
aussi $a$, donc
$$AE = AB = a \qquad \text{et} \qquad CF = CB = a .$$

**Le triangle $DAE$.**

L'angle du carré en $A$ vaut $\widehat{DAB} = 90^\circ$, et le triangle $ABE$ est équilatéral,
donc $\widehat{BAE} = 60^\circ$. Comme $E$ est à l'intérieur du carré, il est à l'intérieur de
l'angle $\widehat{DAB}$, donc
$$\widehat{DAE} = \widehat{DAB} - \widehat{BAE} = 90^\circ - 60^\circ = 30^\circ .$$

Or $AD = a$ (côté du carré) et $AE = a$ : le triangle $DAE$ est isocèle en $A$. Ses deux angles à
la base sont donc égaux et valent
$$\widehat{ADE} = \widehat{AED} = \frac{180^\circ - 30^\circ}{2} = 75^\circ .$$

On en déduit
$$\widehat{CDE} = \widehat{ADC} - \widehat{ADE} = 90^\circ - 75^\circ = 15^\circ .$$

**Le triangle $CDF$.**

L'angle du carré en $C$ vaut $\widehat{DCB} = 90^\circ$, et le triangle $BCF$ est équilatéral,
donc $\widehat{BCF} = 60^\circ$. Comme $F$ est à l'extérieur du carré, de l'autre côté de $(BC)$
par rapport à $D$, les deux angles s'ajoutent :
$$\widehat{DCF} = \widehat{DCB} + \widehat{BCF} = 90^\circ + 60^\circ = 150^\circ .$$

Or $CD = a$ (côté du carré) et $CF = a$ : le triangle $CDF$ est isocèle en $C$. Ses deux angles à
la base valent donc
$$\widehat{CDF} = \widehat{CFD} = \frac{180^\circ - 150^\circ}{2} = 15^\circ .$$

**Conclusion.**

Nous avons obtenu
$$\widehat{CDE} = 15^\circ = \widehat{CDF} .$$

Les points $E$ et $F$ sont tous les deux du même côté de la droite $(DC)$, à savoir du côté de
$B$. Les demi-droites $[DE)$ et $[DF)$ font donc le même angle avec $[DC)$ et sont du même côté :
elles sont confondues.

**Les points $D$, $E$ et $F$ sont donc alignés.**

## Going further

On peut préciser : le point $E$ est-il entre $D$ et $F$ ? Un calcul de longueurs le confirme. Dans
le triangle isocèle $DAE$ d'angle au sommet $30^\circ$ et de côtés $a$, la base vaut
$DE = 2a\sin(15^\circ) \approx 0{,}518\,a$, tandis que dans le triangle isocèle $CDF$ d'angle au
sommet $150^\circ$, la base vaut $DF = 2a\sin(75^\circ) \approx 1{,}932\,a$. Comme
$DE < DF$, le point $E$ est bien entre $D$ et $F$.
