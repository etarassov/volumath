---
id: "40041"
title: "La relation d'Euler et les orthocentres des triangles inscrits dans un cercle"
grade: 11
theme: geometry
difficulty: 4
duration_min: 60
tags: [orthocentre, produit-scalaire, vecteurs, relation-d-euler, cercle-circonscrit, symetrie-centrale, disque, lieu-geometrique]
adapted_from: null
see_also: ["40042", "40043", "40044", "40045", "40046", "40047", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », questions préliminaires 1 et 2, puis première partie, questions 3 et 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

On appelle **triangle** tout ensemble de trois points non alignés du plan.

Pour une partie $X$ du plan qui n'est pas incluse dans une droite, on note $\mathcal{H}(X)$
l'ensemble des orthocentres des triangles dont les trois sommets appartiennent à $X$.

1. Soit $ABC$ un triangle et $M$ un point quelconque du plan. Montrer que
$$\overrightarrow{MA} \cdot \overrightarrow{BC} + \overrightarrow{MB} \cdot \overrightarrow{CA} + \overrightarrow{MC} \cdot \overrightarrow{AB} = 0.$$
En déduire que les trois hauteurs du triangle $ABC$ sont concourantes. Leur point commun $H$
est l'**orthocentre** du triangle.

2. Soit $ABC$ un triangle, $\Omega$ le centre de son cercle circonscrit et $H$ le point tel que
$$\overrightarrow{\Omega H} = \overrightarrow{\Omega A} + \overrightarrow{\Omega B} + \overrightarrow{\Omega C}.$$
Démontrer que $H$ est l'orthocentre du triangle $ABC$.

3. Soit $X$ un ensemble de quatre points distincts d'un cercle de centre $O$, et
$Y = \mathcal{H}(X)$.
   a) Montrer que $Y$ se déduit de $X$ par une transformation simple, que l'on précisera.
   b) Déterminer $\mathcal{H}(Y)$.

4. a) Soit $\Gamma$ un cercle de centre $O$ et de rayon $R > 0$. Déterminer $\mathcal{H}(\Gamma)$.
   b) Soit $D$ un disque de rayon strictement positif. Déterminer $\mathcal{H}(D)$.

## Hints

1. **Question 1.** Écrire chaque vecteur du deuxième facteur à partir de $M$ : par exemple
   $\overrightarrow{BC} = \overrightarrow{MC} - \overrightarrow{MB}$, puis développer.
2. **Question 1.** Les hauteurs issues de $A$ et de $B$ se coupent en un point $H$. Appliquer
   l'égalité avec $M = H$.
3. **Question 2.** Exprimer $\overrightarrow{AH}$ à l'aide de $\overrightarrow{\Omega B}$ et
   $\overrightarrow{\Omega C}$, puis calculer $\overrightarrow{AH} \cdot \overrightarrow{BC}$.
4. **Question 3.** Noter $X = \{A, B, C, D\}$ et
   $\vec{s} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} + \overrightarrow{OD}$.
   Que vaut $\overrightarrow{OH_D}$, si $H_D$ est l'orthocentre de $ABC$ ? Calculer le milieu de
   $[DH_D]$.
5. **Question 3.** Les quatre points de $Y$ sont eux aussi sur un cercle. Lequel ? Appliquer la
   question 3 a) à $Y$.
6. **Question 4.** Exprimer $OH^2$ à l'aide des longueurs $AB$, $BC$ et $CA$, en remarquant que
   $AB^2 = \lVert \overrightarrow{OB} - \overrightarrow{OA} \rVert^2$.
7. **Question 4.** Pour la réciproque, partir d'un point $P$ tel que $OP < 3R$. Choisir $C$ sur la
   demi-droite $[OP)$, puis chercher $A$ et $B$ sur $\Gamma$ tels que
   $\overrightarrow{OA} + \overrightarrow{OB} = \overrightarrow{OP} - \overrightarrow{OC}$ : penser
   au milieu de $[AB]$.
8. **Question 4.** Pour le disque : un triangle très aplati peut avoir son orthocentre très loin.
   Placer $A$ sur l'axe des ordonnées, $B$ et $C$ sur l'axe des abscisses, et calculer
   l'orthocentre.

## Solution

**1.** Posons $\vec{a} = \overrightarrow{MA}$, $\vec{b} = \overrightarrow{MB}$ et
$\vec{c} = \overrightarrow{MC}$. Alors $\overrightarrow{BC} = \vec{c} - \vec{b}$,
$\overrightarrow{CA} = \vec{a} - \vec{c}$ et $\overrightarrow{AB} = \vec{b} - \vec{a}$. La somme
vaut
$$\vec{a} \cdot \vec{c} - \vec{a} \cdot \vec{b} + \vec{b} \cdot \vec{a} - \vec{b} \cdot \vec{c} + \vec{c} \cdot \vec{b} - \vec{c} \cdot \vec{a} = 0.$$

*Les hauteurs.* La hauteur issue de $A$ est perpendiculaire à $(BC)$, celle issue de $B$ est
perpendiculaire à $(CA)$. Ces deux droites $(BC)$ et $(CA)$ ne sont pas parallèles, donc les deux
hauteurs ne le sont pas non plus : elles se coupent en un point $H$. On a alors
$\overrightarrow{HA} \cdot \overrightarrow{BC} = 0$ et $\overrightarrow{HB} \cdot \overrightarrow{CA} = 0$,
et l'égalité avec $M = H$ donne $\overrightarrow{HC} \cdot \overrightarrow{AB} = 0$. Donc $H = C$ ou
$(HC) \perp (AB)$ : dans les deux cas $H$ est sur la hauteur issue de $C$. Les trois hauteurs sont
concourantes en $H$.

**2.** On a $\overrightarrow{AH} = \overrightarrow{\Omega H} - \overrightarrow{\Omega A} = \overrightarrow{\Omega B} + \overrightarrow{\Omega C}$,
et $\overrightarrow{BC} = \overrightarrow{\Omega C} - \overrightarrow{\Omega B}$. Donc
$$\overrightarrow{AH} \cdot \overrightarrow{BC} = \left(\overrightarrow{\Omega C} + \overrightarrow{\Omega B}\right) \cdot \left(\overrightarrow{\Omega C} - \overrightarrow{\Omega B}\right) = \Omega C^2 - \Omega B^2 = 0,$$
car $\Omega B = \Omega C$ (c'est le rayon du cercle circonscrit). Ainsi $H$ est sur la hauteur
issue de $A$. Le même calcul, en échangeant les rôles des sommets, montre que $H$ est sur la
hauteur issue de $B$. Donc $H$ est l'orthocentre de $ABC$.

**3. a)** Notons $X = \{A, B, C, D\}$. Une droite coupe un cercle en au plus deux points, donc trois
points de $X$ ne sont jamais alignés, et les quatre triplets de $X$ sont des triangles. Ils ont tous
pour cercle circonscrit le cercle de centre $O$.

Posons $\vec{s} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} + \overrightarrow{OD}$
et notons $I$ le point tel que $\overrightarrow{OI} = \frac{1}{2}\vec{s}$. Soit $H_D$ l'orthocentre
de $ABC$. D'après la question 2,
$$\overrightarrow{OH_D} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} = \vec{s} - \overrightarrow{OD}.$$
Le milieu de $[DH_D]$ est donc le point $K$ tel que
$\overrightarrow{OK} = \frac{1}{2}\left(\overrightarrow{OD} + \overrightarrow{OH_D}\right) = \frac{1}{2}\vec{s}$,
c'est-à-dire $K = I$ : $H_D$ est le symétrique de $D$ par rapport à $I$. De même, l'orthocentre de
$BCD$ est le symétrique de $A$, et ainsi de suite.

**Conclusion :** $Y$ est l'image de $X$ par la symétrie centrale de centre $I$, où
$\overrightarrow{OI} = \frac{1}{2}\left(\overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} + \overrightarrow{OD}\right)$.
En particulier $Y$ a quatre points distincts.

**b)** La symétrie de centre $I$ envoie le cercle de centre $O$ sur un cercle de même rayon, de
centre $O'$, symétrique de $O$, c'est-à-dire $\overrightarrow{OO'} = 2\overrightarrow{OI} = \vec{s}$.
Les quatre points de $Y$ sont sur ce cercle. Une symétrie centrale change chaque vecteur en son
opposé : si $Y_P$ désigne le symétrique d'un point $P$ de $X$, alors
$\overrightarrow{O'Y_P} = -\overrightarrow{OP}$. La somme des quatre vecteurs $\overrightarrow{O'Y_P}$
vaut donc $-\vec{s}$.

Appliquons la question a) à $Y$, sur le cercle de centre $O'$ : $\mathcal{H}(Y)$ est l'image de $Y$
par la symétrie de centre $I'$, où $\overrightarrow{O'I'} = -\frac{1}{2}\vec{s}$. Alors
$\overrightarrow{OI'} = \overrightarrow{OO'} + \overrightarrow{O'I'} = \vec{s} - \frac{1}{2}\vec{s} = \frac{1}{2}\vec{s}$,
donc $I' = I$.

**Conclusion :** $\mathcal{H}(Y)$ est l'image de $Y$ par la même symétrie de centre $I$, donc
$\mathcal{H}(Y) = X$.

**4. a)** *Tout orthocentre est dans le disque ouvert de rayon $3R$.* Soit $A$, $B$, $C$ trois
points distincts de $\Gamma$ (ils ne sont pas alignés) et $H$ l'orthocentre de $ABC$. Son cercle
circonscrit est $\Gamma$, donc d'après la question 2,
$\overrightarrow{OH} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC}$. Or
$AB^2 = \lVert \overrightarrow{OB} - \overrightarrow{OA} \rVert^2 = 2R^2 - 2\,\overrightarrow{OA} \cdot \overrightarrow{OB}$,
donc $\overrightarrow{OA} \cdot \overrightarrow{OB} = R^2 - \frac{1}{2}AB^2$, et de même pour les
autres paires. En développant le carré :
$$OH^2 = 3R^2 + 2\left(\overrightarrow{OA} \cdot \overrightarrow{OB} + \overrightarrow{OB} \cdot \overrightarrow{OC} + \overrightarrow{OC} \cdot \overrightarrow{OA}\right) = 9R^2 - \left(AB^2 + BC^2 + CA^2\right).$$
Les points sont distincts, donc $OH^2 < 9R^2$, soit $OH < 3R$.

*Réciproquement, tout point $P$ tel que $OP < 3R$ est un orthocentre.* Commençons par un lemme.

*Lemme.* Si $\vec{w}$ est un vecteur de norme $\lVert \vec{w} \rVert < 2R$, il existe deux points distincts
$A$ et $B$ de $\Gamma$ tels que $\overrightarrow{OA} + \overrightarrow{OB} = \vec{w}$. En effet, si
$\vec{w} = \vec{0}$, on prend pour $[AB]$ un diamètre. Sinon, soit $N$ le point tel que
$\overrightarrow{ON} = \frac{1}{2}\vec{w}$. Comme $ON < R$, la perpendiculaire à $(ON)$ en $N$
coupe $\Gamma$ en deux points $A$ et $B$, symétriques par rapport à $(ON)$, donc $N$ est le milieu
de $[AB]$, et $\overrightarrow{OA} + \overrightarrow{OB} = 2\overrightarrow{ON} = \vec{w}$.

Soit maintenant $P$ tel que $OP < 3R$.

- Si $OP = R$, le point $P$ est sur $\Gamma$. On prend $C = P$, et pour $A$, $B$ les extrémités
  d'un diamètre qui ne passe pas par $C$. Alors
  $\overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} = \overrightarrow{OC} = \overrightarrow{OP}$.
- Sinon, on choisit $C$ sur $\Gamma$ : sur la demi-droite $[OP)$ si $P \neq O$, n'importe où si
  $P = O$. Le vecteur $\vec{w} = \overrightarrow{OP} - \overrightarrow{OC}$ est colinéaire à
  $\overrightarrow{OC}$ et de norme $|OP - R|$, qui est $< 2R$ puisque $0 \leq OP < 3R$. Le lemme
  donne $A \neq B$ sur $\Gamma$ avec $\overrightarrow{OA} + \overrightarrow{OB} = \vec{w}$.
  Vérifions que $A \neq C$ : si $A = C$, alors
  $\overrightarrow{OB} = \overrightarrow{OP} - 2\overrightarrow{OC}$, vecteur de norme $|OP - 2R|$.
  Il faudrait $|OP - 2R| = R$, c'est-à-dire $OP = R$ ou $OP = 3R$, deux cas exclus. De même
  $B \neq C$.

Dans les deux cas $A$, $B$, $C$ sont trois points distincts de $\Gamma$ et
$\overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} = \overrightarrow{OP}$ : d'après la
question 2, $P$ est l'orthocentre de $ABC$.

**Conclusion :** $\mathcal{H}(\Gamma)$ est le disque **ouvert** de centre $O$ et de rayon $3R$.

**b)** *Un calcul d'orthocentre.* Dans un repère orthonormé, soit $A(0\,;\,a)$, $B(b\,;\,0)$ et
$C(c\,;\,0)$ avec $a \neq 0$ et $b \neq c$. La hauteur issue de $A$ est l'axe des ordonnées. Un
point $M(0\,;\,y)$ de cet axe est sur la hauteur issue de $B$ lorsque
$\overrightarrow{BM} \cdot \overrightarrow{AC} = 0$, soit $(-b)\,c + y\,(-a) = 0$, soit
$y = -\frac{bc}{a}$. L'orthocentre de $ABC$ est donc le point $\left(0\,;\,-\frac{bc}{a}\right)$.

*Tout point est un orthocentre.* Soit $\rho > 0$ le rayon de $D$ et $P$ un point du plan. On prend
un repère orthonormé d'origine le centre $O$ de $D$, dont l'axe des ordonnées passe par $P$ :
$P(0\,;\,p)$.

- Si $p = 0$, on choisit $\delta$ avec $0 < \delta < \rho$ et le triangle $A(0\,;\,\delta)$,
  $O$, $C(\delta\,;\,0)$, rectangle en $O$ : son orthocentre est $O = P$.
- Si $p \neq 0$, on choisit $\delta > 0$ assez petit pour que $\delta < \rho$ et
  $\frac{\delta^2}{|p|} < \rho$, puis $A\left(0\,;\,\frac{\delta^2}{p}\right)$, $B(\delta\,;\,0)$ et
  $C(-\delta\,;\,0)$. Ces trois points sont dans $D$, ne sont pas alignés, et l'orthocentre est le
  point d'ordonnée $-\frac{\delta \times (-\delta)}{\delta^2 / p} = p$, c'est-à-dire $P$.

**Conclusion :** $\mathcal{H}(D)$ est le plan tout entier (que le disque soit ouvert ou fermé).

**Bilan.** Le centre $\Omega$ du cercle circonscrit et l'orthocentre $H$ sont liés par la relation
d'Euler $\overrightarrow{\Omega H} = \overrightarrow{\Omega A} + \overrightarrow{\Omega B} + \overrightarrow{\Omega C}$.
Elle montre que les quatre orthocentres de quatre points d'un cercle sont leurs symétriques par
rapport à un même point, de sorte que recommencer l'opération ramène aux points de départ. Elle
montre aussi que les orthocentres des triangles inscrits dans un cercle de rayon $R$ remplissent
exactement le disque ouvert de rayon $3R$, alors que ceux des triangles pris dans un disque
remplissent tout le plan.

## Going further

- Dans la suite du sujet, on appelait **orthocentrique** une partie $X$, non incluse dans une
  droite, qui contient les orthocentres de tous ses triangles. Quelles sont les parties
  orthocentriques à trois points ? à quatre points ? (Exercice 40042.)
- Le point $I$ de la question 3 est le milieu du segment qui joint $O$ au point $O'$. On peut
  vérifier que les quatre cercles d'Euler des triangles $ABC$, $BCD$, $CDA$, $DAB$ passent tous
  par $I$.
