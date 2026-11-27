---
id: "40125"
title: "Centre du cercle inscrit, encore et encore"
grade: 12
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-inscrit, bissectrice, orthocentre, hauteur, limite, trigonometrie]
adapted_from: null
see_also: ["40042"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2005, mathématiques, série S"
  reference: "cg-2005-s-sujet.pdf, exercice 3, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2005.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2005-s-sujet.pdf"
---

## Statement

On considère dans le plan trois points $A_0$, $B$, $C$ non alignés.

1. On note $A_1$ le centre du cercle inscrit dans le triangle $A_0BC$, c'est-à-dire le point
   d'intersection des bissectrices intérieures de ce triangle. On recommence avec le triangle
   $A_1BC$ : $A_2$ est le centre de son cercle inscrit, et ainsi de suite. Pour tout entier
   naturel $i$, $A_{i+1}$ est donc le centre du cercle inscrit dans le triangle $A_iBC$.

   Démontrer qu'il existe un point $A$ tel que la distance $AA_n$ tende vers $0$ quand $n$ tend
   vers $+\infty$, et préciser la position de ce point.

2. Que devient ce résultat si, à chaque étape, on prend pour $A_{i+1}$ l'orthocentre du triangle
   $A_iBC$ au lieu du centre de son cercle inscrit ?

## Hints

1. **Question 1.** Notez $\beta$ et $\gamma$ les angles du triangle $A_0BC$ en $B$ et en $C$. Que
   valent les angles du triangle $A_nBC$ en $B$ et en $C$ ?
2. **Question 1.** Ces angles tendent vers $0$ : le point $A_n$ se rapproche de la droite $(BC)$.
   Pour savoir où, introduire le pied $H_n$ de la hauteur issue de $A_n$ et exprimer $BH_n$ avec
   des tangentes.
3. **Question 1.** On trouve $BH_n = \frac{a\tan\gamma_n}{\tan\beta_n + \tan\gamma_n}$, où $a = BC$.
   Pour passer à la limite, utiliser $\lim_{x \to 0} \frac{\sin x}{x} = 1$.
4. **Question 2.** Faire une figure et chercher l'orthocentre du triangle $HBC$, où $H$ est
   l'orthocentre de $A_0BC$.
5. **Question 2.** Penser aux cas particuliers : un triangle rectangle, en $A_0$, en $B$ ou en $C$.

## Solution

On note $a = BC$, et $\beta$, $\gamma$ les angles du triangle $A_0BC$ aux sommets $B$ et $C$. Comme
ce sont deux angles d'un triangle, $\beta > 0$, $\gamma > 0$ et $\beta + \gamma < \pi$.

**1.** *Les angles.* Notons $\beta_n$ et $\gamma_n$ les angles du triangle $A_nBC$ en $B$ et en $C$.
Le centre $A_{n+1}$ du cercle inscrit est intérieur au triangle $A_nBC$, donc du même côté de
$(BC)$ que $A_n$, et la droite $(BA_{n+1})$ est la bissectrice de l'angle en $B$. Donc
$\beta_{n+1} = \frac{\beta_n}{2}$, et de même $\gamma_{n+1} = \frac{\gamma_n}{2}$. Par récurrence,
$$\beta_n = \frac{\beta}{2^n}, \qquad \gamma_n = \frac{\gamma}{2^n}.$$
Tous les points $A_n$ sont du même côté de $(BC)$ que $A_0$.

*La position de $A_n$.* Soit $n \geq 1$. Comme $\beta < \pi$ et $\gamma < \pi$, on a
$\beta_n < \frac{\pi}{2}$ et $\gamma_n < \frac{\pi}{2}$ : les angles en $B$ et en $C$ du triangle
$A_nBC$ sont aigus, donc le pied $H_n$ de la hauteur issue de $A_n$ est sur le segment $[BC]$,
entre $B$ et $C$. Notons $h_n = A_nH_n$. Dans les triangles rectangles $A_nH_nB$ et $A_nH_nC$,
$$\tan\beta_n = \frac{h_n}{BH_n}, \qquad \tan\gamma_n = \frac{h_n}{H_nC}.$$
Comme $BH_n + H_nC = a$, on obtient $h_n\left(\frac{1}{\tan\beta_n} + \frac{1}{\tan\gamma_n}\right) = a$,
puis
$$BH_n = \frac{h_n}{\tan\beta_n} = \frac{a\tan\gamma_n}{\tan\beta_n + \tan\gamma_n}.$$

*Un lemme : $\frac{\tan x}{x}$ tend vers $1$ quand $x$ tend vers $0$.* En effet
$\frac{\tan x}{x} = \frac{\sin x}{x} \times \frac{1}{\cos x}$. Or $\frac{\sin x}{x} = \frac{\sin x - \sin 0}{x - 0}$
tend vers $\sin'(0) = \cos 0 = 1$, et $\cos x$ tend vers $1$.

*Passage à la limite.* Posons $u_n = \frac{\tan\beta_n}{\beta_n}$ et $v_n = \frac{\tan\gamma_n}{\gamma_n}$.
Comme $\beta_n$ et $\gamma_n$ tendent vers $0$, le lemme donne $u_n \to 1$ et $v_n \to 1$. En
multipliant le numérateur et le dénominateur par $2^n$,
$$BH_n = \frac{a\,v_n\gamma_n}{u_n\beta_n + v_n\gamma_n} = \frac{a\,v_n\gamma}{u_n\beta + v_n\gamma} \xrightarrow[n \to +\infty]{} \frac{a\gamma}{\beta + \gamma}.$$
Par ailleurs $h_n = BH_n \tan\beta_n \leq a\tan\beta_n$, et $\tan\beta_n$ tend vers $\tan 0 = 0$,
donc $h_n \to 0$.

*Le point limite.* Soit $A$ le point du segment $[BC]$ tel que $BA = \frac{a\gamma}{\beta + \gamma}$.
Les points $A$ et $H_n$ sont tous deux sur $[BC]$, donc $AH_n = |BH_n - BA|$, qui tend vers $0$. Le
triangle $AH_nA_n$ est rectangle en $H_n$ (ou aplati si $A = H_n$), donc
$$AA_n^2 = AH_n^2 + h_n^2 \xrightarrow[n \to +\infty]{} 0.$$

**Conclusion :** $A_n$ tend vers le point $A$ du segment $[BC]$ défini par
$$BA = \frac{\gamma}{\beta + \gamma}\, BC, \qquad \text{c'est-à-dire} \qquad \frac{BA}{AC} = \frac{\gamma}{\beta} = \frac{\widehat{A_0CB}}{\widehat{A_0BC}}.$$
Le point $A$ partage $[BC]$ dans le rapport des angles du triangle de départ : il est plus près du
sommet dont l'angle est le plus grand. Si $A_0BC$ est isocèle en $A_0$, c'est le milieu de $[BC]$.

![Les centres successifs des cercles inscrits descendent vers le point A du segment [BC]](40125-figure-1.svg)

**2.** Notons $H$ l'orthocentre du triangle $A_0BC$. Trois cas se présentent.

*Le triangle est rectangle en $A_0$.* Les droites $(A_0B)$ et $(A_0C)$ sont alors deux hauteurs,
qui se coupent en $A_0$ : $H = A_0$. La suite est constante, égale à $A_0$, et elle a bien une
limite, $A_0$ lui-même.

*Le triangle est rectangle en $B$ (ou en $C$).* De même, $H = B$ (ou $C$), et le « triangle »
$A_1BC$ est aplati : la construction s'arrête, $A_2$ n'est pas défini.

*Le triangle n'a pas d'angle droit.* Montrons d'abord que $H$ n'est pas sur la droite $(BC)$. Sinon,
$H$ serait sur la hauteur issue de $A_0$ et sur $(BC)$, donc égal au pied $K$ de cette hauteur. Si
$K = B$, l'angle en $B$ serait droit ; sinon la hauteur issue de $B$, qui passe par $K$, serait la
droite $(BC)$, et l'angle en $C$ serait droit. Les deux sont exclus. De même $H \neq A_0$, puisque
l'angle en $A_0$ n'est pas droit.

Montrons que l'orthocentre du triangle $HBC$ est $A_0$.

- La droite $(A_0H)$ est perpendiculaire à $(BC)$ et passe par $H$ : c'est la hauteur issue de $H$
  dans le triangle $HBC$, et elle contient $A_0$.
- La droite $(CH)$ est la hauteur issue de $C$ dans $A_0BC$, donc $(CH) \perp (A_0B)$. La hauteur
  issue de $B$ dans $HBC$ est la perpendiculaire à $(CH)$ passant par $B$ : c'est la droite
  $(BA_0)$, qui contient $A_0$.

Le point $A_0$ est sur deux hauteurs du triangle $HBC$ : c'est son orthocentre. Ainsi $A_1 = H$,
$A_2 = A_0$, $A_3 = H$, etc. : la suite alterne entre les deux points distincts $A_0$ et $H$.

Elle n'a pas de limite. Si $A_n$ tendait vers un point $L$, les termes de rang pair, tous égaux à
$A_0$, tendraient vers $L$, donc $L = A_0$ ; ceux de rang impair, tous égaux à $H$, donneraient
$L = H$. C'est impossible puisque $H \neq A_0$.

**Conclusion :** avec les orthocentres, la suite n'a de limite que dans le cas très particulier
où le triangle $A_0BC$ est rectangle en $A_0$ (elle est alors constante). S'il est rectangle en $B$
ou en $C$, elle s'arrête après un pas. Dans tous les autres cas, elle va et vient indéfiniment
entre $A_0$ et l'orthocentre $H$.

**Bilan.** Prendre le centre du cercle inscrit divise par deux les angles en $B$ et en $C$ : le
point descend vers $[BC]$ et converge vers le point qui partage $[BC]$ dans le rapport
$\widehat{C}/\widehat{B}$ des angles du triangle de départ. Prendre l'orthocentre, au contraire,
ramène au point de départ dès la deuxième étape, car $A_0$ est l'orthocentre de $HBC$.

## Going further

- Les quatre points $A_0$, $B$, $C$, $H$ forment ce qu'on appelle un système orthocentrique :
  chacun est l'orthocentre du triangle formé par les trois autres. Le vérifier pour le triangle
  $A_0BH$.
- Que se passe-t-il si l'on prend pour $A_{i+1}$ le centre de gravité du triangle $A_iBC$ ?
  (On trouve que $A_n$ tend vers le milieu de $[BC]$, quel que soit $A_0$.)
