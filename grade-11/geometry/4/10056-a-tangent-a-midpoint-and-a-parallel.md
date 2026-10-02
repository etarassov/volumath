---
id: "10056"
title: "Une tangente, un milieu et une parallèle"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-circonscrit, tangente, puissance-d-un-point, produit-scalaire, determinant, vecteurs, parallelisme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 3 (géométrie)"
  reference: "2017-10_ofm-2016-2017-envoi-3.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2016-2017-envoi-3-solutions.pdf (le corrigé utilise la puissance d'un point puis une chasse aux angles qui dépend de la figure ; ici la puissance d'un point est démontrée avec le produit scalaire et la fin est un calcul de déterminant, valable dans toutes les positions. On a écrit l'hypothèse implicite AB ≠ AC, sans laquelle la tangente en A est parallèle à (BC))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-3.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB \neq AC$, et $\Gamma$ son cercle circonscrit. La tangente à $\Gamma$ en $A$ coupe la droite $(BC)$ en $P$. On note $M$ le milieu de $[AP]$.

La droite $(BM)$ recoupe $\Gamma$ en $R$, et la droite $(PR)$ recoupe $\Gamma$ en $S$.

![Le triangle ABC, son cercle circonscrit, la tangente en A qui coupe (BC) en P, le milieu M de [AP], et les points R et S](10056-figure-1.svg)

Montrer que les droites $(AP)$ et $(CS)$ sont parallèles.

## Hints

1. Soit $O$ le centre de $\Gamma$ et $\rho$ son rayon. Montre que, si une droite passant par un point $X$ coupe $\Gamma$ en $U$ et $V$, alors $\overrightarrow{XU} \cdot \overrightarrow{XV} = XO^2 - \rho^2$. Pour un point $X$ de la tangente en $A$, ce nombre vaut $XA^2$.
2. Déduis-en trois égalités de vecteurs, par exemple
$$\overrightarrow{PC} = \frac{PA^2}{PB^2}\,\overrightarrow{PB} ,$$
et les égalités semblables pour $\overrightarrow{PS}$ et pour $\overrightarrow{MR}$.
3. Prends $P$ comme origine et pose $\vec m = \overrightarrow{PM}$, $\vec b = \overrightarrow{PB}$. Exprime $\vec r = \overrightarrow{PR}$ à l'aide de $\vec m$ et $\vec b$, puis calcule $PR^2$ et $\det(\vec r, \vec m)$.
4. Il reste à montrer que $\det(\overrightarrow{CS}, \vec m) = 0$.

## Solution

On note $O$ le centre de $\Gamma$ et $\rho$ son rayon (la lettre $R$ désigne déjà un point).

**Rappel.** Pour deux vecteurs $\vec u(x\,;\,y)$ et $\vec v(x'\,;\,y')$, on pose $\det(\vec u, \vec v) = xy' - x'y$. Les vecteurs sont colinéaires si et seulement si $\det(\vec u, \vec v) = 0$. La formule montre que $\det(\vec u + \vec w, \vec v) = \det(\vec u, \vec v) + \det(\vec w, \vec v)$, que $\det(k\,\vec u, \vec v) = k\det(\vec u, \vec v)$ pour un réel $k$, et que $\det(\vec u, \vec u) = 0$.

### Étape 1 : la puissance d'un point

**Lemme.** Soit $X$ un point, et une droite passant par $X$ qui coupe $\Gamma$ en $U$ et $V$ (avec $U = V$ si la droite est tangente au cercle en $U$). Alors
$$\overrightarrow{XU} \cdot \overrightarrow{XV} = XO^2 - \rho^2 .$$

*Preuve.* Soit $K$ le pied de la perpendiculaire à la droite issue de $O$. Si $U \neq V$, le triangle $OUV$ est isocèle en $O$, donc $K$ est le milieu de $[UV]$. Si la droite est tangente en $U$, elle est perpendiculaire au rayon $[OU]$, donc $K = U = V$. Dans les deux cas $\overrightarrow{KV} = -\overrightarrow{KU}$, et
$$\overrightarrow{XU} \cdot \overrightarrow{XV} = (\overrightarrow{XK} + \overrightarrow{KU}) \cdot (\overrightarrow{XK} - \overrightarrow{KU}) = XK^2 - KU^2 .$$
Le théorème de Pythagore donne $XO^2 = XK^2 + KO^2$ et $\rho^2 = OU^2 = KU^2 + KO^2$. En faisant la différence, $XK^2 - KU^2 = XO^2 - \rho^2$. $\square$

**Deux conséquences.**

- Si $X$ est un point de la tangente en $A$, on applique le lemme avec $U = V = A$ : $XO^2 - \rho^2 = XA^2$.
- Si de plus $X$ n'est pas sur $\Gamma$, alors $U \neq X$, et $\overrightarrow{XV} = k\,\overrightarrow{XU}$ pour un réel $k$ car les trois points sont alignés. Le lemme donne $k\,XU^2 = XO^2 - \rho^2$.

### Étape 2 : quelques positions

Le point $A$ n'est pas sur $(BC)$, donc $P \neq A$. Les points $P$ et $M$ sont sur la tangente en $A$ et différents de $A$, donc ils sont à l'extérieur de $\Gamma$. Le point $M$ n'est pas sur $(BC)$ : la tangente coupe $(BC)$ seulement en $P$, et $M \neq P$.

**La droite $(BM)$ n'est pas tangente à $\Gamma$.** Sinon, le lemme avec $U = V = B$ et la première conséquence donneraient $MB^2 = MO^2 - \rho^2 = MA^2$, donc $MB = MA = MP$. Le point $B$ serait sur le cercle de diamètre $[AP]$, et l'angle $\widehat{ABP}$ serait droit. Comme $P$ est sur la droite $(BC)$, l'angle $\widehat{ABC}$ serait droit aussi (il est égal à $\widehat{ABP}$ ou à $180° - \widehat{ABP}$). C'est impossible, le triangle a ses trois angles aigus. Donc $(BM)$ recoupe bien $\Gamma$ en un point $R \neq B$.

### Étape 3 : trois égalités de vecteurs

On applique la deuxième conséquence trois fois.

- La droite $(PB)$ passe par $P$ et coupe $\Gamma$ en $B$ et $C$ :
$$\overrightarrow{PC} = \frac{PA^2}{PB^2}\,\overrightarrow{PB} .$$
- La droite $(PR)$ passe par $P$ et coupe $\Gamma$ en $R$ et $S$ :
$$\overrightarrow{PS} = \frac{PA^2}{PR^2}\,\overrightarrow{PR} .$$
- La droite $(MB)$ passe par $M$ et coupe $\Gamma$ en $B$ et $R$ :
$$\overrightarrow{MR} = \frac{MA^2}{MB^2}\,\overrightarrow{MB} .$$

### Étape 4 : le calcul

On pose $\vec m = \overrightarrow{PM}$, $\vec b = \overrightarrow{PB}$, $\vec u = \overrightarrow{MB} = \vec b - \vec m$ et $\vec r = \overrightarrow{PR}$. Comme $M$ est le milieu de $[AP]$, on a $MA = MP$. On pose
$$k = \frac{PM^2}{MB^2} ,$$
de sorte que $k\,MB^2 = PM^2$. La troisième égalité de l'étape 3 s'écrit $\overrightarrow{MR} = k\,\vec u$, donc
$$\vec r = \overrightarrow{PM} + \overrightarrow{MR} = \vec m + k\,\vec u .$$

**La longueur de $\vec r$.**
$$PR^2 = PM^2 + 2k\,\vec m \cdot \vec u + k^2\,MB^2 = k\,MB^2 + 2k\,\vec m \cdot \vec u + k\,PM^2 = k\left(MB^2 + 2\,\vec m \cdot \vec u + PM^2\right) .$$
On a utilisé deux fois $k\,MB^2 = PM^2$. La parenthèse est le carré de la longueur du vecteur $\vec u + \vec m = \vec b$, donc
$$PR^2 = k\,PB^2 .$$

**Le déterminant.**
$$\det(\vec r, \vec m) = \det(\vec m, \vec m) + k\det(\vec u, \vec m) = k\det(\vec b - \vec m, \vec m) = k\det(\vec b, \vec m) .$$

En divisant, le nombre $k$ disparaît :
$$\frac{\det(\vec r, \vec m)}{PR^2} = \frac{\det(\vec b, \vec m)}{PB^2} .$$

### Étape 5 : conclusion

D'après les deux premières égalités de l'étape 3,
$$\overrightarrow{CS} = \overrightarrow{PS} - \overrightarrow{PC} = PA^2\left(\frac{1}{PR^2}\,\vec r - \frac{1}{PB^2}\,\vec b\right) ,$$
donc, avec l'étape 4,
$$\det(\overrightarrow{CS}, \vec m) = PA^2\left(\frac{\det(\vec r, \vec m)}{PR^2} - \frac{\det(\vec b, \vec m)}{PB^2}\right) = 0 .$$
Les vecteurs $\overrightarrow{CS}$ et $\overrightarrow{PM}$ sont colinéaires.

Il reste à voir que $C \neq S$. Si on avait $S = C$, la droite $(PR)$ passerait par $C$, donc ce serait la droite $(PC)$, c'est-à-dire $(BC)$. Le point $R$ serait sur $\Gamma$ et sur $(BC)$, donc $R = B$ ou $R = C$. Or $R \neq B$ (étape 2), et $R = C$ voudrait dire que $(BM)$ est la droite $(BC)$, donc que $M$ est sur $(BC)$, ce qui est faux (étape 2).

Le vecteur $\overrightarrow{CS}$ n'est donc pas nul, et il est colinéaire à $\overrightarrow{PM}$, qui dirige la droite $(AP)$. **Les droites $(AP)$ et $(CS)$ sont parallèles.**

## Going further

- Le corrigé officiel conclut autrement. De $MR \times MB = MA^2 = MP^2$, il déduit que les triangles $MRP$ et $MPB$ sont semblables, donc $\widehat{RPM} = \widehat{PBM}$, puis il enchaîne les angles inscrits jusqu'à deux angles alternes-internes égaux. Refais ce raisonnement sur la figure, et cherche pourquoi il dépend de la position des points : selon le triangle, $R$ est entre $M$ et $B$, ou bien $B$ est entre $M$ et $R$.
- L'étape 4 n'utilise que les égalités de l'étape 3. Elle montre que si l'on associe à chaque point $X \neq P$ le point $X'$ de la demi-droite $[PX)$ tel que $PX \times PX' = PA^2$, alors $C$ est associé à $B$ et $S$ à $R$. Cette transformation s'appelle une inversion de centre $P$.
