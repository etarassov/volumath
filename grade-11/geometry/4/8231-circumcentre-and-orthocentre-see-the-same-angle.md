---
id: "8231"
title: "Le centre du cercle circonscrit et l'orthocentre, vus du sommet A"
grade: 11
theme: geometry
difficulty: 4
duration_min: 30
tags: [orthocentre, cercle circonscrit, angle au centre, triangle isocele]
adapted_from: null
see_also: ["8131"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, TD de géométrie (Auguste de Lambilly, Andrei Barbu), exercice 4. L'énoncé imprimé dit « centre du cercle inscrit », mais sa propre solution utilise le théorème de l'angle au centre et le triangle isocèle OAB : il s'agit du cercle CIRCONSCRIT. Avec le cercle inscrit l'énoncé est faux dès que le triangle n'est pas isocèle en A."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

$ABC$ est un triangle **acutangle** (ses trois angles sont aigus). On note :

- $O$ le centre de son cercle **circonscrit** ;
- $H$ son orthocentre, c'est-à-dire le point où se coupent ses trois hauteurs.

Montrer que

$$\widehat{OAB} = \widehat{HAC} .$$

Autrement dit : vues du sommet $A$, les deux droites $(AO)$ et $(AH)$ font le même angle avec les deux côtés, mais du côté opposé.

## Hints

1. Il y a deux angles à calculer. Calcule-les séparément, en fonction des angles du triangle, puis compare.
2. Commence par le plus facile, $\widehat{HAC}$. La droite $(AH)$ est une hauteur : quel triangle rectangle cela crée-t-il, et que valent ses angles aigus ?
3. Passe à $\widehat{OAB}$. Que peux-tu dire des longueurs $OA$ et $OB$ ? Quelle est la nature du triangle $OAB$ ?
4. Pour connaître le troisième angle de ce triangle isocèle, il te faut $\widehat{AOB}$. C'est un angle au centre : à quel angle inscrit se rattache-t-il ?
5. Attention : l'angle inscrit qui correspond à l'angle au centre $\widehat{AOB}$ est celui de sommet $C$, pas celui de sommet $A$.

## Solution

Notons $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$ et $\gamma = \widehat{BCA}$ les trois angles du triangle, de sorte que $\alpha + \beta + \gamma = 180°$.

**Premier calcul : $\widehat{HAC} = 90° - \gamma$.**

La droite $(AH)$ porte la hauteur issue de $A$. Notons $D$ son pied sur $[BC]$.

Dans le triangle $ADC$, l'angle en $D$ est droit, donc les deux autres sont complémentaires :

$$\widehat{DAC} + \widehat{ACD} = 90° .$$

Or $\widehat{ACD} = \widehat{ACB} = \gamma$ (le point $D$ est sur le segment $[BC]$, le triangle étant acutangle). Donc

$$\widehat{DAC} = 90° - \gamma .$$

Comme $H$ est sur le segment $[AD]$ (l'orthocentre est intérieur dans un triangle acutangle), l'angle $\widehat{HAC}$ est le même que $\widehat{DAC}$ :

$$\widehat{HAC} = 90° - \gamma . \qquad (1)$$

**Second calcul : $\widehat{OAB} = 90° - \gamma$.**

Le point $O$ est le centre du cercle circonscrit, donc $OA$ et $OB$ sont deux rayons :

$$OA = OB .$$

Le triangle $OAB$ est donc **isocèle en $O$**, et ses deux angles à la base sont égaux :

$$\widehat{OAB} = \widehat{OBA} .$$

La somme des angles de ce triangle donne alors

$$\widehat{OAB} = \frac{180° - \widehat{AOB}}{2} . \qquad (2)$$

Il reste à calculer $\widehat{AOB}$. C'est l'angle au centre qui intercepte l'arc $AB$ ne contenant pas $C$ ; l'angle inscrit correspondant est celui de sommet $C$, c'est-à-dire $\gamma$. Le théorème de l'angle au centre donne donc

$$\widehat{AOB} = 2\gamma .$$

*(Le triangle étant acutangle, $O$ est à l'intérieur et l'angle $\widehat{AOB}$ vaut bien $2\gamma$, sans passer par $360° - 2\gamma$.)*

En reportant dans $(2)$ :

$$\widehat{OAB} = \frac{180° - 2\gamma}{2} = 90° - \gamma . \qquad (3)$$

**Conclusion.**

Les égalités $(1)$ et $(3)$ donnent la même valeur :

$$\boxed{\widehat{OAB} = \widehat{HAC} = 90° - \gamma .}$$

**Ce que cela veut dire.** Les deux droites $(AO)$ et $(AH)$ sont dites **isogonales** par rapport à l'angle $\widehat{A}$ : elles sont symétriques l'une de l'autre par rapport à la bissectrice issue de $A$. En particulier, si le triangle est isocèle en $A$, cette bissectrice est un axe de symétrie de la figure, et les deux droites sont confondues : $A$, $O$ et $H$ sont alignés.

**Attention à l'énoncé du polycopié.** Le texte imprimé parle du centre du cercle **inscrit**. Avec ce point-là, l'égalité serait $\dfrac{\alpha}{2} = 90° - \gamma$, soit $\alpha + 2\gamma = 180°$, soit $\beta = \gamma$ : elle ne serait vraie que pour les triangles isocèles en $A$. C'est bien du cercle circonscrit qu'il s'agit, comme le confirme la solution du polycopié, qui invoque le théorème de l'angle au centre et le triangle isocèle $OAB$.

## Going further

Toujours dans un triangle acutangle, montrer que $AH = 2 \times OA'$, où $A'$ est le milieu de $[BC]$. *Indication : comparer $AH$ et $OA'$ à l'aide du rayon $R$ du cercle circonscrit et de l'angle $\alpha$.*
