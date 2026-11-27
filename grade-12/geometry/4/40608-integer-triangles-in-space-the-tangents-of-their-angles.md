---
id: "40608"
title: "Les tangentes des angles d'un triangle à sommets entiers"
grade: 12
theme: geometry
difficulty: 4
duration_min: 55
tags: [geometrie-dans-l-espace, produit-scalaire, projete-orthogonal, coordonnees, rationnels, trigonometrie, partie-sans-facteur-carre, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: ["40606", "40607", "40609"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème III « Dans l'espace tout entier », partie A question 1 c), puis partie B questions 1 et 2 (a, b, c)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

L'espace est muni d'un repère orthonormé. Un point $M(x ; y ; z)$ est dit *entier* lorsque ses
trois coordonnées sont des entiers. On rappelle qu'un nombre *rationnel* est un quotient
$\frac{a}{b}$ de deux entiers, avec $b \neq 0$ ; la somme, la différence, le produit et le
quotient de deux rationnels sont des rationnels. Les triangles sont supposés non aplatis.

Si $\theta$ est un angle non droit d'un triangle, $\tan \theta = \frac{\sin \theta}{\cos \theta}$.
Un entier $k \geq 1$ est dit *sans facteur carré* si $k = 1$ ou si $k$ est un produit de nombres
premiers deux à deux distincts.

On admet les deux résultats suivants.

- Si $n$ est un entier naturel et si $\sqrt{n}$ est rationnel, alors $n$ est le carré d'un
  entier.
- Dans le plan, si $H$ est le pied de la hauteur issue de $A$ d'un triangle $ABC$ (le point
  d'intersection de la droite $(BC)$ et de sa perpendiculaire passant par $A$), alors
  $$\overrightarrow{AH} = \overrightarrow{AB} + \frac{\overrightarrow{BA} \cdot \overrightarrow{BC}}{BC^2}\,\overrightarrow{BC} .$$

1. Soit $ABC$ un triangle de l'espace et $H$ le pied de sa hauteur issue de $A$. Montrer que la
   formule ci-dessus reste vraie, et que si $A$, $B$ et $C$ sont des points entiers, alors les
   coordonnées de $H$ sont rationnelles.
2. Donner un triangle équilatéral dont les trois sommets sont des points entiers de l'espace.
3. Soit $T$ un triangle dont les trois sommets sont des points entiers de l'espace.

   a) Montrer que, pour tout angle $\theta$ non droit de $T$, le nombre $\tan^2 \theta$ est
   rationnel.

   b) Montrer qu'il existe un unique entier $k \geq 1$ sans facteur carré tel que, pour tout
   angle $\theta$ non droit de $T$, on puisse écrire $\tan \theta = r\sqrt{k}$ avec $r$ rationnel
   non nul.

   c) En utilisant la question 1, montrer qu'il existe des entiers $a_1, a_2, a_3, u_1, u_2, u_3$,
   non tous nuls, tels que
   $$k\left(a_1^2 + a_2^2 + a_3^2\right) = u_1^2 + u_2^2 + u_3^2 \qquad \text{et} \qquad a_1 u_1 + a_2 u_2 + a_3 u_3 = 0 ,$$
   où $k$ est l'entier trouvé en b). On note $E(3, k)$ ce système de deux équations.

## Hints

1. **Question 1.** La démonstration dans le plan n'utilise que des propriétés du produit
   scalaire. Restent-elles vraies dans l'espace ?
2. **Question 3.** Pour a), exprimer $\cos \theta$ avec un produit scalaire, puis utiliser
   $\tan^2 \theta = \frac{1}{\cos^2 \theta} - 1$.
3. **Question 3.** Pour b), écrire $\tan^2 \theta = \frac{m}{n} = \frac{mn}{n^2}$, puis séparer,
   dans la décomposition de $mn$ en facteurs premiers, les exposants pairs et impairs.
4. **Question 3.** Pour comparer les tangentes des angles en deux sommets $X$ et $Y$, mener la
   hauteur issue du troisième sommet $Z$, de pied $H$. Les tangentes valent, au signe près,
   $\frac{ZH}{XH}$ et $\frac{ZH}{YH}$. Que dit la question 1 du rapport $\frac{XH}{YH}$ ?
5. **Question 3.** Pour l'unicité dans b), si $r\sqrt{k} = r'\sqrt{k'}$, montrer que
   $\sqrt{kk'}$ est rationnel.
6. **Question 3.** Pour c), prendre un angle non droit en $B$ et le pied $H$ de la hauteur issue
   de $A$. Les vecteurs $\overrightarrow{BH}$ et $\overrightarrow{HA}$ sont orthogonaux, à
   coordonnées rationnelles, et $\tan^2 \widehat{B} = \frac{HA^2}{BH^2}$.

## Solution

**1.** Le produit scalaire de l'espace a les mêmes propriétés que celui du plan : il est
distributif, $\vec{u} \cdot \vec{u} = \lVert \vec{u} \rVert^2$, et il est nul exactement quand les vecteurs
sont orthogonaux. Le raisonnement du plan s'applique donc mot pour mot : $H \in (BC)$ donne un réel
$t$ tel que $\overrightarrow{BH} = t\,\overrightarrow{BC}$ ; la condition
$\overrightarrow{AH} \cdot \overrightarrow{BC} = 0$ s'écrit
$\left(\overrightarrow{AB} + t\,\overrightarrow{BC}\right) \cdot \overrightarrow{BC} = 0$, d'où
$$t = \frac{\overrightarrow{BA} \cdot \overrightarrow{BC}}{BC^2}$$
et la formule. Si $A$, $B$, $C$ sont entiers, $\overrightarrow{BA} \cdot \overrightarrow{BC} = xx' + yy' + zz'$
et $BC^2 = x'^2 + y'^2 + z'^2$ sont des entiers (le second non nul), donc $t$ est rationnel, et
les coordonnées de $H$, $x_H = x_B + t\,(x_C - x_B)$ et de même pour $y_H$ et $z_H$, sont
rationnelles.

**2.** Les points $(1 ; 0 ; 0)$, $(0 ; 1 ; 0)$ et $(0 ; 0 ; 1)$ : les trois côtés mesurent
$\sqrt{1 + 1 + 0} = \sqrt{2}$.

**3.** a) Soit $\theta$ l'angle de $T$ en un sommet $X$, les deux autres sommets étant $Y$ et
$Z$. Alors
$$\cos \theta = \frac{\overrightarrow{XY} \cdot \overrightarrow{XZ}}{XY \times XZ} , \qquad \text{donc} \qquad \cos^2 \theta = \frac{\left(\overrightarrow{XY} \cdot \overrightarrow{XZ}\right)^2}{XY^2 \times XZ^2} .$$
Les sommets étant entiers, le numérateur et le dénominateur sont des entiers : $\cos^2 \theta$ est
rationnel. Il n'est pas nul car $\theta$ n'est pas droit. Avec $\sin^2 \theta = 1 - \cos^2 \theta$,
$$\tan^2 \theta = \frac{1 - \cos^2 \theta}{\cos^2 \theta} = \frac{1}{\cos^2 \theta} - 1$$
est rationnel.

b) *Un rationnel positif est un carré fois un entier sans facteur carré.* Soit $q > 0$
rationnel, $q = \frac{m}{n}$ avec $m, n$ entiers strictement positifs. Alors
$q = \frac{mn}{n^2}$. Décomposons $mn = p_1^{e_1} \cdots p_\ell^{e_\ell}$ en facteurs premiers. Notons
$k$ le produit des $p_i$ dont l'exposant $e_i$ est impair ($k = 1$ s'il n'y en a pas) et $s$ le
produit des $p_i^{\lfloor e_i / 2 \rfloor}$, où $\lfloor e_i / 2 \rfloor$ est la partie entière de
$\frac{e_i}{2}$. Alors $mn = k s^2$, avec $k$ sans facteur carré, et $q = k \left(\frac{s}{n}\right)^2$.

*Existence pour un angle.* Un triangle a au plus un angle droit ; soit $\theta_0$ un angle non
droit de $T$, au sommet $X$. D'après a), $\tan^2 \theta_0$ est un rationnel, strictement positif
car $\sin \theta_0 \neq 0$. On l'écrit $k \left(\frac{s}{n}\right)^2$, donc
$\tan \theta_0 = r_0 \sqrt{k}$ avec $r_0 = \pm\frac{s}{n}$ rationnel non nul.

*Les autres angles.* Soit $\theta$ un autre angle non droit, au sommet $Y$, et $Z$ le troisième
sommet. Soit $H$ le pied de la hauteur issue de $Z$ sur $(XY)$. D'après la question 1,
$\overrightarrow{XH} = t\,\overrightarrow{XY}$ avec $t$ rationnel. On a $H \neq X$, sinon $(ZX)$
serait perpendiculaire à $(XY)$ et $\theta_0$ serait droit ; de même $H \neq Y$. Donc $t \neq 0$,
$t \neq 1$, et $\overrightarrow{YH} = \overrightarrow{XH} - \overrightarrow{XY} = (t - 1)\,\overrightarrow{XY}$.

Dans le triangle $ZHX$, rectangle en $H$, l'angle $\widehat{ZXH}$ est aigu et
$\tan \widehat{ZXH} = \frac{ZH}{XH}$. Cet angle vaut $\theta_0$ si $H$ est sur la demi-droite
$[XY)$, et $\pi - \theta_0$ sinon. Comme $\sin(\pi - x) = \sin x$ et $\cos(\pi - x) = -\cos x$,
on a $\tan(\pi - \theta_0) = -\tan \theta_0$. Dans les deux cas,
$|\tan \theta_0| = \frac{ZH}{XH}$. De même, $|\tan \theta| = \frac{ZH}{YH}$. Donc
$$\frac{|\tan \theta|}{|\tan \theta_0|} = \frac{XH}{YH} = \frac{|t|\,XY}{|t - 1|\,XY} = \frac{|t|}{|t - 1|} ,$$
un rationnel non nul. Ainsi $\tan \theta = \pm\frac{|t|}{|t - 1|}\,r_0 \sqrt{k}$ s'écrit aussi
$r \sqrt{k}$ avec $r$ rationnel non nul. Le même $k$ convient pour tous les angles non droits.

*Unicité.* Supposons que $k$ et $k'$, sans facteur carré, conviennent tous les deux. Pour un angle
non droit $\theta$ : $r\sqrt{k} = \tan \theta = r'\sqrt{k'}$, avec $r, r'$ rationnels non nuls.
En élevant au carré, $r^2 k = r'^2 k'$, puis en multipliant par $\frac{k'}{r^2}$ :
$kk' = \left(\frac{r' k'}{r}\right)^2$. Donc $\sqrt{kk'} = \frac{|r'|\,k'}{|r|}$ est
rationnel, et d'après le résultat admis, $kk'$ est le carré d'un entier : dans sa décomposition en
facteurs premiers, tous les exposants sont pairs. Or un nombre premier apparaît dans $k$ avec
l'exposant $0$ ou $1$, de même dans $k'$ ; la somme des deux exposants est paire, donc ils sont
égaux. Les entiers $k$ et $k'$ ont les mêmes facteurs premiers, chacun avec l'exposant $1$ :
$k = k'$.

c) Quitte à renommer les sommets $A$, $B$, $C$ de $T$, l'angle en $B$ n'est pas droit. Soit $H$ le
pied de la hauteur issue de $A$. D'après la question 1, $\overrightarrow{BH} = t\,\overrightarrow{BC}$
avec $t$ rationnel, et $H$ a des coordonnées rationnelles. Posons
$$\vec{a} = \overrightarrow{BH} \qquad \text{et} \qquad \vec{w} = \overrightarrow{HA} .$$
Ces deux vecteurs ont des coordonnées rationnelles. $\vec{a} \neq \vec{0}$ car $H \neq B$ (l'angle
en $B$ n'est pas droit), et $\vec{a} \cdot \vec{w} = 0$ car $(AH)$ est perpendiculaire à $(BC)$.
Comme en b), $|\tan \widehat{B}| = \frac{HA}{BH}$, donc
$\tan^2 \widehat{B} = \frac{\lVert \vec{w} \rVert^2}{\lVert \vec{a} \rVert^2}$. D'après b),
$\tan \widehat{B} = r\sqrt{k}$, donc $\lVert \vec{w} \rVert^2 = r^2 k\,\lVert \vec{a} \rVert^2$.

Posons $\vec{u} = \frac{1}{r}\,\vec{w}$ : ses coordonnées sont rationnelles,
$\vec{a} \cdot \vec{u} = 0$ et $\lVert \vec{u} \rVert^2 = k\,\lVert \vec{a} \rVert^2$. Soit $D$ un entier strictement
positif, multiple des dénominateurs des six coordonnées de $\vec{a}$ et $\vec{u}$. Les vecteurs
$D\vec{a}$ et $D\vec{u}$ ont des coordonnées entières, notées $(a_1, a_2, a_3)$ et
$(u_1, u_2, u_3)$. Alors
$$a_1 u_1 + a_2 u_2 + a_3 u_3 = D^2\,\vec{a} \cdot \vec{u} = 0 , \qquad u_1^2 + u_2^2 + u_3^2 = D^2 \lVert \vec{u} \rVert^2 = k\,D^2 \lVert \vec{a} \rVert^2 = k\left(a_1^2 + a_2^2 + a_3^2\right) .$$
Ces entiers ne sont pas tous nuls car $\vec{a} \neq \vec{0}$.

**Conclusion :** le système $E(3, k)$ a une solution en entiers non tous nuls.

**Bilan.** Pour un triangle à sommets entiers de l'espace, il existe un unique entier $k$ sans
facteur carré tel que la tangente de chaque angle non droit soit un rationnel non nul fois
$\sqrt{k}$. De plus, il existe alors deux vecteurs non nuls à coordonnées entières, orthogonaux,
dont les carrés des longueurs sont dans le rapport $k$ : c'est une solution non nulle de
$E(3, k)$.

## Going further

- Pour le triangle équilatéral de la question 2, que vaut $k$ ? Trouver une solution non nulle de
  $E(3, k)$ pour cette valeur.
- Dans la suite du sujet, on montrait la réciproque : si $E(3, k)$ a une solution non nulle, tout
  triangle dont les tangentes des angles non droits sont des rationnels fois $\sqrt{k}$ a les
  mêmes angles qu'un triangle à sommets entiers. On en déduisait qu'aucun triangle à sommets
  entiers n'a les angles du triangle isocèle de côtés $2$, $2$, $3$ : voir l'exercice 40609.
