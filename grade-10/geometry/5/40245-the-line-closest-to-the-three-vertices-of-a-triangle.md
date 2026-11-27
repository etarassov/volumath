---
id: "40245"
title: "La droite la plus proche des trois sommets d'un triangle"
grade: 10
theme: geometry
difficulty: 5
duration_min: 50
tags: [optimisation, minimum, distance-a-une-droite, hauteur, aire, pythagore, coordonnees, cas-d-egalite]
adapted_from: null
see_also: ["40244"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2008, mathématiques, série S"
  reference: "cg-2008-s-sujet.pdf, exercice II, question 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2008.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2008-s-sujet.pdf"
---

## Statement

Soit $ABC$ un triangle. Pour toute droite $D$ du plan, on note $s_1$ la somme des distances des
trois sommets $A$, $B$ et $C$ à la droite $D$. (La distance d'un point $P$ à une droite $D$ est la
longueur $PH$, où $H$ est le pied de la perpendiculaire à $D$ menée par $P$.)

1. Montrer qu'il existe une droite $D$ pour laquelle $s_1$ est la plus petite possible.
2. Montrer que cette droite est unique si le triangle $ABC$ n'est pas isocèle, et dire quelle est
   cette droite.

## Hints

1. **Question 1.** Commencer par les droites qui portent un côté. Si $D = (BC)$, que vaut $s_1$ ?
   Laquelle des trois est la meilleure ? On rappelle que la hauteur issue de $A$ vaut
   $\frac{2 \times \text{aire}}{BC}$.
2. **Question 1.** Soit $D$ une droite quelconque. Choisir un repère orthonormé dont l'axe des
   abscisses est $D$ : la distance d'un point à $D$ est alors la valeur absolue de son ordonnée.
   Nommer $P$, $Q$, $R$ les trois sommets de sorte que $y_P \leqslant y_Q \leqslant y_R$, et
   montrer que $s_1 \geqslant y_R - y_P$.
3. **Question 1.** La parallèle à $D$ passant par $Q$ coupe le segment $[PR]$ en un point $K$.
   Exprimer l'aire du triangle à l'aide de $QK$ et de $y_R - y_P$.
4. **Question 1.** Montrer que $QK$ est au plus égal au plus grand côté du triangle. On pourra
   utiliser le pied $H$ de la perpendiculaire à $(PR)$ menée par $Q$ et le théorème de Pythagore.
5. **Question 2.** Si $s_1$ atteint sa valeur minimale, toutes les inégalités utilisées sont des
   égalités. Qu'est-ce que cela impose à la droite $D$ ?

## Solution

Notons $\mathcal{A}$ l'aire du triangle et $L$ la longueur de son plus grand côté.

*Les droites qui portent un côté.* Si $D = (BC)$, les distances de $B$ et $C$ à $D$ sont nulles,
et $s_1$ est la distance de $A$ à $(BC)$, c'est-à-dire la hauteur issue de $A$, qui vaut
$\frac{2\mathcal{A}}{BC}$. De même pour les deux autres côtés. La plus petite des trois hauteurs
est donc celle qui tombe sur le plus grand côté, et elle vaut $\frac{2\mathcal{A}}{L}$. On va
montrer qu'aucune droite ne fait mieux.

**1.** Soit $D$ une droite quelconque. On choisit un repère orthonormé dont l'axe des abscisses est
$D$. La distance d'un point de coordonnées $(x ; y)$ à $D$ est alors $|y|$. On nomme $P$, $Q$,
$R$ les trois sommets, rangés de sorte que $y_P \leqslant y_Q \leqslant y_R$. Les trois sommets
ne sont pas alignés, donc ils ne sont pas tous sur une même parallèle à $D$ : $y_P < y_R$. On pose
$w = y_R - y_P > 0$.

*Étape 1 : $s_1 \geqslant w$.* Comme $y_R \leqslant |y_R|$ et $-y_P \leqslant |y_P|$,
$$s_1 = |y_P| + |y_Q| + |y_R| \geqslant |y_P| + |y_R| \geqslant y_R - y_P = w .$$

*Étape 2 : $w = \frac{2\mathcal{A}}{QK}$.* La droite $\Delta$ parallèle à $D$ passant par $Q$ a
pour équation $y = y_Q$. Comme $y_P \leqslant y_Q \leqslant y_R$, elle coupe le segment $[PR]$ en
un point $K$. Le segment $[QK]$ est horizontal et partage le triangle $PQR$ en deux triangles
$PQK$ et $RQK$ (l'un des deux est réduit à un segment si $K = P$ ou $K = R$). La hauteur du
triangle $PQK$ relative à la base $[QK]$ est l'écart vertical $y_Q - y_P$, et celle de $RQK$ est
$y_R - y_Q$. Donc
$$\mathcal{A} = \frac{1}{2}\,QK\,(y_Q - y_P) + \frac{1}{2}\,QK\,(y_R - y_Q) = \frac{1}{2}\,QK \times w,
\qquad \text{d'où} \qquad w = \frac{2\mathcal{A}}{QK} .$$

*Étape 3 : $QK \leqslant L$.* Soit $H$ le pied de la perpendiculaire à $(PR)$ menée par $Q$. Le
théorème de Pythagore donne
$$QK^2 = QH^2 + HK^2, \qquad QP^2 = QH^2 + HP^2, \qquad QR^2 = QH^2 + HR^2 .$$
Les points $H$, $P$, $K$, $R$ sont sur la droite $(PR)$, et $K$ est entre $P$ et $R$. Repérons-les
par leurs abscisses $h$, $p$, $k$, $r$ sur cette droite, avec $p \leqslant k \leqslant r$. Alors
$k - h \leqslant r - h$ et $h - k \leqslant h - p$, donc $HK = |k - h| \leqslant$ la plus grande des
deux longueurs $HP$ et $HR$. Ces inégalités sont même strictes quand $K$ est strictement entre $P$
et $R$. Par Pythagore, $QK$ est donc au plus égal au plus grand des côtés $QP$ et $QR$, donc
$QK \leqslant L$, et $QK < L$ quand $K$ est différent de $P$ et de $R$.

*Conclusion de la question 1.* Pour toute droite $D$,
$$s_1 \geqslant w = \frac{2\mathcal{A}}{QK} \geqslant \frac{2\mathcal{A}}{L} .$$
Et la droite qui porte le plus grand côté donne exactement $s_1 = \frac{2\mathcal{A}}{L}$. Donc
cette droite rend $s_1$ minimale, et le minimum est la plus petite hauteur du triangle.

**2.** Soit $D$ une droite pour laquelle $s_1 = \frac{2\mathcal{A}}{L}$. Reprenons le repère et
les notations de la question 1. Toutes les inégalités de la chaîne sont des égalités :

- $s_1 = |y_P| + |y_R|$ impose $y_Q = 0$ : la droite $D$ passe par $Q$, et donc $\Delta = D$ ;
- $QK = L$ impose, d'après l'étape 3, que $K = P$ ou $K = R$. Si $K = P$, le point $P$ est sur
  $\Delta = D$, donc $D = (PQ)$, et $PQ = QK = L$ : $D$ porte un plus grand côté. De même si
  $K = R$.

Ainsi une droite qui rend $s_1$ minimale porte toujours un côté de longueur maximale. Si $ABC$
n'est pas isocèle, ses trois côtés ont des longueurs différentes, il n'y a qu'un plus grand côté,
et donc une seule droite qui rend $s_1$ minimale.

**Conclusion :** la somme des distances des trois sommets à une droite est minimale pour la droite
qui porte le plus grand côté du triangle, et ce minimum est la plus petite des trois hauteurs.
Cette droite est unique dès que le plus grand côté est unique, en particulier quand le triangle
n'est pas isocèle.

**Bilan.** Pour se placer au plus près des trois sommets, une droite doit longer le plus grand côté.
La preuve passe par la « largeur » du triangle perpendiculairement à la droite, qui est toujours au
moins égale à la plus petite hauteur.

## Going further

- Que se passe-t-il pour un triangle isocèle dont les deux côtés égaux sont les plus grands ? Et
  pour un triangle équilatéral ? Pour un triangle isocèle dont la base est le plus grand côté, la
  droite est-elle unique ?
- Comparer avec l'exercice 40244, où l'on mesurait les écarts verticalement, et non en
  perpendiculaire : la meilleure droite n'est en général pas la même.
- L'étape 2 montre que la largeur du triangle, mesurée perpendiculairement à une direction, est au
  moins égale à la plus petite hauteur. Pour quelle direction la largeur est-elle la plus grande ?
