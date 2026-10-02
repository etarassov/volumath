---
id: "10218"
title: "Quatre points autour de la hauteur d'un triangle rectangle"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle-rectangle, hauteur, bissectrice, cercle-inscrit, triangle-isocele, mediatrice, cercle-de-diametre, cocyclicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 1 (géométrie)"
  reference: "2020-10_Sujet-envoi-1.pdf, Exercices Juniors, exercice 8 ; corrigé 2020-11_corrige-envoi-1.pdf (le corrigé utilise la puissance d'un point ; la preuve ci-dessous n'utilise que des triangles isocèles)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-10_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $C$, et soit $N$ le pied de la hauteur issue de $C$.

La bissectrice de l'angle $\widehat{NCA}$ coupe la droite $(AB)$ en $K$, et la bissectrice de l'angle $\widehat{BCN}$ coupe la droite $(AB)$ en $L$. On note $S$ le centre du cercle inscrit dans le triangle $BCN$, et $T$ le centre du cercle inscrit dans le triangle $NCA$.

Montrer que les quatre points $S$, $K$, $T$ et $L$ sont sur un même cercle.

![Le triangle ABC rectangle en C, la hauteur [CN], les bissectrices [CK] et [CL], et les centres S et T des cercles inscrits dans BCN et NCA](10218-figure-1.svg)

## Hints

1. Notez $\alpha$ et $\beta$ les angles du triangle en $A$ et en $B$. Calculez les angles $\widehat{ACN}$ et $\widehat{NCB}$, puis l'angle $\widehat{KCL}$.
2. Calculez les angles $\widehat{BKC}$ et $\widehat{BCK}$. Que peut-on dire du triangle $BCK$ ?
3. Le point $S$ est sur la bissectrice de l'angle $\widehat{ABC}$. Dans le triangle isocèle $BCK$, cette bissectrice est aussi une autre droite remarquable. Laquelle ? Déduisez-en l'angle $\widehat{CSK}$.
4. Un angle droit qui « voit » le segment $[KL]$ : à quel cercle cela fait-il penser ?

## Solution

*Rappels.*

- Le centre du cercle inscrit dans un triangle est le point de rencontre des trois bissectrices de ce triangle.
- Dans un triangle isocèle en $B$, la bissectrice de l'angle au sommet $B$ est aussi la médiatrice de la base.
- Si $\widehat{KMN} = 90°$, le point $M$ est sur le cercle de diamètre $[KN]$ (le cercle circonscrit à un triangle rectangle a pour diamètre l'hypoténuse).

On note $\alpha = \widehat{BAC}$ et $\beta = \widehat{ABC}$. Le triangle est rectangle en $C$, donc $\alpha + \beta = 90°$.

**Étape 1 : les angles en $C$.** Dans le triangle $ACN$, rectangle en $N$, on a $\widehat{ACN} = 90° - \alpha = \beta$. De même, dans le triangle $BCN$, rectangle en $N$, $\widehat{NCB} = 90° - \beta = \alpha$.

La demi-droite $[CK)$ coupe l'angle $\widehat{NCA}$ en deux, donc $\widehat{NCK} = \frac{\beta}{2}$. La demi-droite $[CL)$ coupe l'angle $\widehat{BCN}$ en deux, donc $\widehat{NCL} = \frac{\alpha}{2}$. Ainsi

$$\widehat{KCL} = \frac{\beta}{2} + \frac{\alpha}{2} = \frac{90°}{2} = 45°.$$

**Étape 2 : le triangle $BCK$ est isocèle en $B$.** Dans ce triangle,

$$\widehat{BCK} = \widehat{BCN} + \widehat{NCK} = \alpha + \frac{\beta}{2} = 90° - \beta + \frac{\beta}{2} = 90° - \frac{\beta}{2}.$$

L'angle en $B$ vaut $\beta$, donc le troisième angle vaut

$$\widehat{BKC} = 180° - \beta - \left(90° - \frac{\beta}{2}\right) = 90° - \frac{\beta}{2}.$$

Les angles en $C$ et en $K$ sont égaux : le triangle $BCK$ est isocèle en $B$, et $BK = BC$.

**Étape 3 : l'angle $\widehat{KSL}$ est droit.** Le point $S$, centre du cercle inscrit dans $BCN$, est sur les bissectrices de ce triangle :

- sur la bissectrice de l'angle $\widehat{NBC}$, qui est l'angle $\widehat{ABC}$ du grand triangle ;
- sur la bissectrice de l'angle $\widehat{BCN}$, c'est-à-dire sur le segment $[CL]$.

Dans le triangle $BCK$ isocèle en $B$, la bissectrice de l'angle $\widehat{CBK}$ est la médiatrice de $[CK]$. Le point $S$ est dessus, donc $SC = SK$. Le triangle $SCK$ est isocèle en $S$, et son angle en $C$ est $\widehat{SCK} = \widehat{LCK} = 45°$ d'après l'étape 1. Son angle en $K$ vaut donc aussi $45°$, et

$$\widehat{CSK} = 180° - 45° - 45° = 90°.$$

Comme $S$ est entre $C$ et $L$, l'angle $\widehat{KSL}$ est le supplément de $\widehat{CSK}$ : $\widehat{KSL} = 90°$.

**Étape 4 : l'angle $\widehat{KTL}$ est droit.** On refait exactement la même chose de l'autre côté, en échangeant les rôles de $A$ et $B$, de $K$ et $L$. Dans le triangle $ACL$ :

$$\widehat{ACL} = \widehat{ACN} + \widehat{NCL} = \beta + \frac{\alpha}{2} = 90° - \frac{\alpha}{2}, \qquad \widehat{ALC} = 180° - \alpha - \left(90° - \frac{\alpha}{2}\right) = 90° - \frac{\alpha}{2}.$$

Le triangle $ACL$ est isocèle en $A$. Le point $T$ est sur la bissectrice de l'angle en $A$, qui est la médiatrice de $[CL]$, donc $TC = TL$. Il est aussi sur la bissectrice de $\widehat{NCA}$, c'est-à-dire sur $[CK]$, donc $\widehat{TCL} = \widehat{KCL} = 45°$. Le triangle $TCL$ est isocèle rectangle en $T$ : $\widehat{CTL} = 90°$, et donc $\widehat{KTL} = 90°$.

**Étape 5 : conclusion.** Les angles $\widehat{KSL}$ et $\widehat{KTL}$ sont droits. D'après le dernier rappel, les points $S$ et $T$ sont tous les deux sur le cercle de diamètre $[KL]$. Les quatre points $S$, $K$, $T$, $L$ sont donc sur un même cercle : le cercle de diamètre $[KL]$.

![Les deux angles droits en S et en T, et le cercle de diamètre [KL] qui passe par S et T](10218-figure-2.svg)

## Going further

1. Montrer que les droites $(KS)$ et $(LT)$ sont deux hauteurs du triangle $CKL$. Montrer ensuite que le centre du cercle inscrit dans le triangle $ABC$ est le centre du cercle circonscrit au triangle $CKL$.
2. Montrer que la longueur $KL$ est égale à $AC + BC - AB$.
