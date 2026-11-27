---
id: "40609"
title: "Quels triangles ont les angles d'un triangle à sommets entiers ?"
grade: 12
theme: geometry
difficulty: 4
duration_min: 50
tags: [geometrie-dans-l-espace, produit-scalaire, trigonometrie, construction, homothetie, triangle-isocele, al-kashi, somme-de-carres]
adapted_from: null
see_also: ["40606", "40607", "40608"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème III « Dans l'espace tout entier », partie B, questions 3 et 4 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

L'espace est muni d'un repère orthonormé d'origine $O$. Un point $M(x ; y ; z)$ est dit *entier*
lorsque ses trois coordonnées sont des entiers. Les triangles sont supposés non aplatis. Si
$\theta$ est un angle non droit d'un triangle, $\tan \theta = \frac{\sin \theta}{\cos \theta}$.
Un entier $k \geq 1$ est dit *sans facteur carré* si $k = 1$ ou si $k$ est un produit de nombres
premiers deux à deux distincts. Pour un tel $k$, on note $E(3, k)$ le système
$$k\left(a_1^2 + a_2^2 + a_3^2\right) = u_1^2 + u_2^2 + u_3^2 \qquad \text{et} \qquad a_1 u_1 + a_2 u_2 + a_3 u_3 = 0 ,$$
d'inconnues entières $a_1, a_2, a_3, u_1, u_2, u_3$.

On admet les résultats suivants, établis dans des parties précédentes.

- **(R1)** Si $T$ est un triangle à sommets entiers de l'espace, il existe un entier $k \geq 1$
  sans facteur carré tel que la tangente de chaque angle non droit de $T$ s'écrive $r\sqrt{k}$
  avec $r$ rationnel non nul ; et le système $E(3, k)$ a alors une solution en entiers non tous
  nuls.
- **(R2)** Si $r\sqrt{k} = r'\sqrt{k'}$ avec $r$, $r'$ rationnels non nuls et $k$, $k'$ sans
  facteur carré, alors $k = k'$.
- **(R3)** Si $a$, $b$, $c$, $d$ sont des entiers tels que $7a^2 = b^2 + c^2 + d^2$, alors
  $a = b = c = d = 0$.

On pourra aussi utiliser librement l'identité suivante, vraie pour tous réels
$a, b, c, d, e, f$ :
$$\left(a^2 + b^2 + c^2\right)\left(d^2 + e^2 + f^2\right) - (ad + be + cf)^2 = (ae - bd)^2 + (af - cd)^2 + (bf - ce)^2 .$$

1. Soit $k$ un entier sans facteur carré. On suppose que $E(3, k)$ a une solution en entiers non
   tous nuls. Soit $T$ un triangle de l'espace tel que, pour tout angle $\theta$ non droit de
   $T$, $\tan \theta$ s'écrive $r\sqrt{k}$ avec $r$ rationnel non nul. Montrer qu'il existe un
   triangle à sommets entiers qui a les mêmes angles que $T$.
2. a) Soit $T$ un triangle isocèle dont les côtés mesurent $3$, $3$ et $2$. Existe-t-il un
   triangle à sommets entiers de l'espace qui a les mêmes angles que $T$ ?

   b) Même question pour un triangle isocèle dont les côtés mesurent $2$, $2$ et $3$.

## Hints

1. **Question 1.** Un triangle a au moins deux angles aigus. Une solution non nulle de
   $E(3, k)$ donne deux vecteurs entiers $\vec{a}$ et $\vec{u}$, orthogonaux, avec
   $\lVert \vec{u} \rVert = \sqrt{k}\,\lVert \vec{a} \rVert$ : ils peuvent servir de base et de hauteur d'un
   triangle.
2. **Question 1.** Placer le pied de la hauteur en $O$, le sommet principal au point
   $O + \vec{u}$, et les deux autres sommets aux points $O - \lambda\vec{a}$ et $O + \mu\vec{a}$.
   Calculer les tangentes des angles en ces deux sommets, puis choisir $\lambda$ et $\mu$.
3. **Question 1.** Les sommets obtenus ont des coordonnées rationnelles. Une homothétie de centre
   $O$ ne change pas les angles.
4. **Question 2.** Dans un triangle isocèle, la hauteur issue du sommet principal tombe au milieu
   de la base. Pour l'angle au sommet, le théorème d'Al-Kashi donne son cosinus.
5. **Question 2.** Pour a), on trouve $k = 2$ : chercher des vecteurs entiers très simples
   $\vec{a}$ et $\vec{u}$.
6. **Question 2.** Pour b), on trouve $k = 7$. Appliquer l'identité à une solution de $E(3, 7)$,
   avec $(a, b, c) = (a_1, a_2, a_3)$ et $(d, e, f) = (u_1, u_2, u_3)$.

## Solution

**1.** *Les deux vecteurs.* Soit $(a_1, a_2, a_3, u_1, u_2, u_3)$ une solution non nulle de
$E(3, k)$, et $\vec{a}(a_1 ; a_2 ; a_3)$, $\vec{u}(u_1 ; u_2 ; u_3)$. Si $\vec{a} = \vec{0}$, la
première équation donne $u_1^2 + u_2^2 + u_3^2 = 0$, donc $\vec{u} = \vec{0}$, et la solution
serait nulle. Donc $\vec{a} \neq \vec{0}$, puis $\lVert \vec{u} \rVert^2 = k\,\lVert \vec{a} \rVert^2 > 0$. Ainsi
$\vec{a}$ et $\vec{u}$ sont non nuls, orthogonaux, et $\lVert \vec{u} \rVert = \sqrt{k}\,\lVert \vec{a} \rVert$.

*Deux angles aigus de $T$.* La somme des angles de $T$ vaut $\pi$, donc au plus un angle n'est
pas aigu. Soient $\beta$ et $\gamma$ deux angles aigus de $T$. Ils ne sont pas droits, donc
$\tan \beta = r_\beta \sqrt{k}$ et $\tan \gamma = r_\gamma \sqrt{k}$, avec $r_\beta$ et $r_\gamma$
rationnels, strictement positifs car la tangente d'un angle aigu est positive.

*La construction.* Soient $A'$, $B'$, $C'$ les points définis par
$$\overrightarrow{OA'} = \vec{u} , \qquad \overrightarrow{OB'} = -\frac{1}{r_\beta}\,\vec{a} , \qquad \overrightarrow{OC'} = \frac{1}{r_\gamma}\,\vec{a} .$$
Leurs coordonnées sont rationnelles. Les points $B'$, $O$, $C'$ sont sur la droite passant par
$O$ de vecteur directeur $\vec{a}$, et $O$ est strictement entre $B'$ et $C'$. Comme
$\vec{u} \cdot \vec{a} = 0$ et $\vec{u} \neq \vec{0}$, la droite $(A'O)$ est perpendiculaire à
$(B'C')$ et $A'$ n'est pas sur $(B'C')$ : le triangle $A'B'C'$ n'est pas aplati, et $O$ est le
pied de sa hauteur issue de $A'$.

Dans le triangle $A'OB'$, rectangle en $O$,
$$\tan \widehat{A'B'O} = \frac{OA'}{OB'} = \frac{\sqrt{k}\,\lVert \vec{a} \rVert}{\frac{1}{r_\beta}\,\lVert \vec{a} \rVert} = r_\beta \sqrt{k} = \tan \beta .$$
Comme $O$ est sur la demi-droite $[B'C')$, l'angle $\widehat{A'B'C'}$ est égal à
$\widehat{A'B'O}$. Deux angles de $]0, \frac{\pi}{2}[$ qui ont la même tangente sont égaux (de
$1 + \tan^2 x = \frac{1}{\cos^2 x}$ et $\cos x > 0$, ils ont le même cosinus). Donc
$\widehat{A'B'C'} = \beta$. De même, $\widehat{A'C'B'} = \gamma$. Le troisième angle vaut
$\pi - \beta - \gamma$, comme celui de $T$. Le triangle $A'B'C'$ a donc les mêmes angles que $T$.

*Des sommets entiers.* Soit $D$ un entier strictement positif, multiple des dénominateurs des
coordonnées de $A'$, $B'$ et $C'$. L'homothétie de centre $O$ et de rapport $D$ envoie $A'B'C'$
sur un triangle dont les sommets ont des coordonnées entières, et elle conserve les angles.

**Conclusion :** il existe un triangle à sommets entiers qui a les mêmes angles que $T$.

**2.** a) Notons $T = ABC$ avec $AB = AC = 3$ et $BC = 2$, et $M$ le milieu de $[BC]$. Le
triangle étant isocèle en $A$, $(AM)$ est la hauteur issue de $A$. On a $BM = 1$ et, par
Pythagore, $AM = \sqrt{9 - 1} = 2\sqrt{2}$. Les angles en $B$ et $C$ sont aigus, et
$$\tan \widehat{B} = \tan \widehat{C} = \frac{AM}{BM} = 2\sqrt{2} .$$
Pour l'angle en $A$, le théorème d'Al-Kashi donne
$\cos \widehat{A} = \frac{9 + 9 - 4}{2 \times 9} = \frac{7}{9}$, donc
$\sin \widehat{A} = \sqrt{1 - \frac{49}{81}} = \frac{4\sqrt{2}}{9}$ et
$\tan \widehat{A} = \frac{4\sqrt{2}}{7}$. Les tangentes des trois angles sont de la forme $r\sqrt{2}$, et $2$ est
sans facteur carré.

Le système $E(3, 2)$ a la solution non nulle $\vec{a} = (1 ; 0 ; 0)$, $\vec{u} = (0 ; 1 ; 1)$ :
$2 \times 1 = 0 + 1 + 1$ et $1 \times 0 + 0 \times 1 + 0 \times 1 = 0$. D'après la question 1,
la réponse est **oui**.

On peut même suivre la construction : avec $r_\beta = r_\gamma = 2$, on obtient
$A'(0 ; 1 ; 1)$, $B'\left(-\frac{1}{2} ; 0 ; 0\right)$, $C'\left(\frac{1}{2} ; 0 ; 0\right)$, et
après une homothétie de rapport $2$, les points $(0 ; 2 ; 2)$, $(-1 ; 0 ; 0)$ et $(1 ; 0 ; 0)$.
Les côtés mesurent $\sqrt{1 + 4 + 4} = 3$, $3$ et $2$ : c'est le triangle $T$ lui-même, placé
sur des points entiers.

b) Notons $T = ABC$ avec $AB = AC = 2$ et $BC = 3$, et $M$ le milieu de $[BC]$. Alors
$BM = \frac{3}{2}$ et $AM = \sqrt{4 - \frac{9}{4}} = \frac{\sqrt{7}}{2}$, donc
$$\tan \widehat{B} = \frac{AM}{BM} = \frac{\sqrt{7}}{3} = \frac{1}{3}\sqrt{7} .$$

Supposons qu'un triangle $T'$ à sommets entiers ait les mêmes angles que $T$. D'après (R1), il
existe $k'$ sans facteur carré tel que la tangente de chaque angle non droit de $T'$ s'écrive
$r\sqrt{k'}$. L'angle $\widehat{B}$ est un angle de $T'$, non droit, donc
$\frac{1}{3}\sqrt{7} = r\sqrt{k'}$. Comme $7$ est premier, donc sans facteur carré, (R2) donne
$k' = 7$. D'après (R1), $E(3, 7)$ a une solution non nulle $(a_1, a_2, a_3, u_1, u_2, u_3)$.

Montrons que c'est impossible. Comme à la question 1, $(a_1, a_2, a_3) \neq (0, 0, 0)$ ; posons
$N = a_1^2 + a_2^2 + a_3^2 \geq 1$. Alors $u_1^2 + u_2^2 + u_3^2 = 7N$ et
$a_1 u_1 + a_2 u_2 + a_3 u_3 = 0$. L'identité donne
$$N \times 7N - 0^2 = X^2 + Y^2 + Z^2 , \qquad \text{c'est-à-dire} \qquad 7N^2 = X^2 + Y^2 + Z^2 ,$$
avec $X = a_1 u_2 - a_2 u_1$, $Y = a_1 u_3 - a_3 u_1$, $Z = a_2 u_3 - a_3 u_2$ entiers. D'après
(R3), $N = 0$ : contradiction.

**Conclusion :** la réponse est **non** : aucun triangle à sommets entiers de l'espace n'a les
angles du triangle isocèle de côtés $2$, $2$, $3$.

**Bilan.** Si $E(3, k)$ a une solution non nulle, tout triangle dont les tangentes des angles non
droits sont des rationnels fois $\sqrt{k}$ a les mêmes angles qu'un triangle à sommets entiers :
on le construit avec les deux vecteurs de la solution comme base et hauteur. Le triangle de
côtés $3$, $3$, $2$ ($k = 2$) se place ainsi sur des points entiers, mais pas celui de côtés $2$,
$2$, $3$ ($k = 7$), car $E(3, 7)$ n'a que la solution nulle.

## Going further

- Le même raisonnement montre que $E(3, k)$ n'a que la solution nulle dès que $k$ est de la
  forme $8t + 7$ : il suffit de refaire la démonstration de (R3) avec $k$ à la place de $7$.
  Que dire alors des triangles dont une tangente vaut $\sqrt{15}$ ?
- Trouver une solution non nulle de $E(3, 3)$ et de $E(3, 5)$. Quels triangles isocèles simples
  ont des angles dont les tangentes sont des rationnels fois $\sqrt{3}$, ou fois $\sqrt{5}$ ?
