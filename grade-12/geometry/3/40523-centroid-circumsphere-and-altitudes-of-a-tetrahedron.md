---
id: "40523"
title: "Centre de gravité, sphère circonscrite et hauteurs d'un tétraèdre"
grade: 12
theme: geometry
difficulty: 3
duration_min: 60
tags: [espace, tetraedre, vecteurs, centre-de-gravite, sphere, hauteur, projete-orthogonal, produit-scalaire, pythagore, contre-exemple]
adapted_from: null
see_also: ["40524"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème II « Tétraèdres », questions 1° à 3°. La caractérisation vectorielle du centre de gravité d'un triangle est rappelée dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

On appelle *tétraèdre* la donnée, dans l'espace, de quatre points non coplanaires $A$, $B$,
$C$, $D$. Ses *arêtes* sont les six segments $[AB]$, $[AC]$, $[AD]$, $[BC]$, $[BD]$, $[CD]$.
Dans tout l'exercice, $ABCD$ est un tétraèdre.

On rappelle que le centre de gravité d'un triangle $BCD$ est l'unique point $G_A$ tel que
$\overrightarrow{G_A B} + \overrightarrow{G_A C} + \overrightarrow{G_A D} = \vec{0}$.

1. a) Montrer qu'il existe un unique point $G$ tel que
   $\overrightarrow{GA} + \overrightarrow{GB} + \overrightarrow{GC} + \overrightarrow{GD} = \vec{0}$.

   b) Montrer que $\overrightarrow{AG} = \frac{3}{4} \overrightarrow{AG_A}$, où $G_A$ est le
   centre de gravité du triangle $BCD$.

   c) On appelle *médiane issue de $A$* la droite qui joint $A$ au centre de gravité du
   triangle $BCD$, et on définit de même les médianes issues de $B$, de $C$ et de $D$. Montrer
   que les quatre médianes passent par $G$.

2. Montrer qu'il existe une unique sphère qui passe par $A$, $B$, $C$ et $D$. On l'appelle
   *sphère circonscrite* au tétraèdre et on note $O$ son centre.

3. On appelle *hauteur issue de $A$* la droite qui passe par $A$ et qui est orthogonale au plan
   $(BCD)$. On définit de même les hauteurs issues de $B$, de $C$ et de $D$. Un tétraèdre est
   dit *régulier* si ses six arêtes ont la même longueur.

   a) Est-il vrai que les quatre hauteurs passent par un même point, égal à $O$, si et
   seulement si le tétraèdre est régulier ?

   b) Les quatre hauteurs d'un tétraèdre passent-elles toujours par un même point ?

   c) Est-il vrai que les quatre hauteurs passent par $G$ si et seulement si le tétraèdre est
   régulier ?

## Hints

1. **Question 1 a).** Faire apparaître le point $A$ dans chacun des vecteurs grâce à la
   relation de Chasles, et exprimer $\overrightarrow{AG}$.
2. **Question 2.** L'ensemble des points $M$ tels que $MA = MB$ est un plan. Lequel ? Le
   centre d'une sphère qui passe par les quatre points est dans trois de ces plans.
3. **Question 2.** Deux de ces plans se coupent suivant une droite. Si cette droite était
   parallèle au troisième plan, son vecteur directeur serait orthogonal à
   $\overrightarrow{AB}$, $\overrightarrow{AC}$ et $\overrightarrow{AD}$. Pourquoi est-ce
   impossible ?
4. **Question 3 a).** Si un point $P$ est à la même distance de $B$, $C$ et $D$, que dire de
   son projeté orthogonal sur le plan $(BCD)$ ? Utiliser le théorème de Pythagore.
5. **Question 3 b).** Chercher un contre-exemple dans un repère orthonormé, avec des sommets
   simples comme $A(0, 0, 0)$, $B(1, 0, 0)$, $C(0, 1, 0)$ et un quatrième sommet bien choisi.
6. **Question 3 c).** Pour le sens réciproque, prendre $G$ comme origine et noter
   $\vec{a} = \overrightarrow{GA}$, $\vec{b} = \overrightarrow{GB}$, etc. Traduire « la
   hauteur issue de $A$ passe par $G$ » par des produits scalaires nuls, puis comparer les six
   produits scalaires $\vec{a} \cdot \vec{b}$, $\vec{a} \cdot \vec{c}$, …

## Solution

**1. a)** Par la relation de Chasles, $\overrightarrow{GB} = \overrightarrow{GA} + \overrightarrow{AB}$,
et de même pour $C$ et $D$. Donc

$$\overrightarrow{GA} + \overrightarrow{GB} + \overrightarrow{GC} + \overrightarrow{GD} = 4\,\overrightarrow{GA} + \overrightarrow{AB} + \overrightarrow{AC} + \overrightarrow{AD} .$$

Cette somme est nulle si et seulement si
$\overrightarrow{AG} = \frac{1}{4}\left(\overrightarrow{AB} + \overrightarrow{AC} + \overrightarrow{AD}\right)$.
Il existe exactement un point $G$ qui vérifie cette égalité.

**b)** De même, avec la caractérisation rappelée,
$\overrightarrow{G_A B} + \overrightarrow{G_A C} + \overrightarrow{G_A D} = 3\,\overrightarrow{G_A A} + \overrightarrow{AB} + \overrightarrow{AC} + \overrightarrow{AD} = \vec{0}$,
donc $\overrightarrow{AG_A} = \frac{1}{3}\left(\overrightarrow{AB} + \overrightarrow{AC} + \overrightarrow{AD}\right)$.
En comparant avec a), $\overrightarrow{AG} = \frac{3}{4}\,\overrightarrow{AG_A}$.

**c)** D'après b), $G$ est sur la droite $(AG_A)$, la médiane issue de $A$. La définition de
$G$ ne dépend pas de l'ordre des quatre points, donc le même calcul, fait à partir de $B$, de
$C$ ou de $D$, montre que $G$ est aussi sur les trois autres médianes.

**2.** *Points à égale distance de deux points.* Soit $I$ le milieu de $[AB]$. Pour tout point
$M$,

$$MA^2 - MB^2 = \left(\overrightarrow{MA} - \overrightarrow{MB}\right) \cdot \left(\overrightarrow{MA} + \overrightarrow{MB}\right) = \overrightarrow{BA} \cdot 2\,\overrightarrow{MI} .$$

Donc $MA = MB$ si et seulement si $\overrightarrow{IM} \cdot \overrightarrow{AB} = 0$ : c'est le
plan $P_{AB}$ qui passe par $I$ et admet $\overrightarrow{AB}$ pour vecteur normal (le *plan
médiateur* de $[AB]$). On définit de même $P_{AC}$ et $P_{AD}$.

*Le centre.* Une sphère de centre $M$ passe par $A$, $B$, $C$, $D$ si et seulement si
$MA = MB = MC = MD$, c'est-à-dire si $M$ est dans les trois plans $P_{AB}$, $P_{AC}$,
$P_{AD}$. Il suffit donc de montrer que ces trois plans ont exactement un point commun : ce
sera le centre $O$, et le rayon sera forcément $OA$.

Les vecteurs normaux $\overrightarrow{AB}$ et $\overrightarrow{AC}$ ne sont pas colinéaires
($A$, $B$, $C$ ne sont pas alignés), donc $P_{AB}$ et $P_{AC}$ ne sont pas parallèles : ils se
coupent suivant une droite $\Delta$, dirigée par un vecteur $\vec{u} \neq \vec{0}$ orthogonal
à $\overrightarrow{AB}$ et à $\overrightarrow{AC}$.

Si $\Delta$ était parallèle à $P_{AD}$, $\vec{u}$ serait aussi orthogonal à
$\overrightarrow{AD}$. Or $A$, $B$, $C$, $D$ ne sont pas coplanaires, donc tout vecteur de
l'espace s'écrit $\alpha\,\overrightarrow{AB} + \beta\,\overrightarrow{AC} + \gamma\,\overrightarrow{AD}$ ;
en particulier $\vec{u}$, et alors
$\vec{u} \cdot \vec{u} = \alpha\,\vec{u} \cdot \overrightarrow{AB} + \beta\,\vec{u} \cdot \overrightarrow{AC} + \gamma\,\vec{u} \cdot \overrightarrow{AD} = 0$,
donc $\vec{u} = \vec{0}$, ce qui est absurde. La droite $\Delta$ n'est donc pas parallèle au
plan $P_{AD}$ : elle le coupe en exactement un point.

**Conclusion :** il existe une unique sphère passant par $A$, $B$, $C$, $D$ ; son centre $O$
est l'unique point équidistant des quatre sommets.

**3.** Un fait utile. *Si un point $P$ vérifie $PB = PC = PD$, son projeté orthogonal $P'$ sur
le plan $(BCD)$ vérifie aussi $P'B = P'C = P'D$*, car par Pythagore
$P'B^2 = PB^2 - PP'^2$, et de même pour $C$ et $D$. Le seul point du plan $(BCD)$ équidistant
de $B$, $C$, $D$ est le centre $O_A$ du cercle circonscrit au triangle $BCD$. Donc $P' = O_A$.

**a)** C'est vrai.

*Si les hauteurs passent par $O$.* La hauteur issue de $A$ est orthogonale au plan $(BCD)$ et
passe par $O$ : elle coupe donc ce plan au projeté orthogonal de $O$, qui est $O_A$ d'après le
fait utile ($OB = OC = OD$). Ainsi $O_A$ est le pied de la hauteur issue de $A$, et par
Pythagore $AB^2 = AO_A^2 + O_A B^2$, de même pour $C$ et $D$ ; comme
$O_A B = O_A C = O_A D$, on obtient $AB = AC = AD$. Le même raisonnement à partir de $B$ donne
$BA = BC = BD$, et à partir de $C$, $CA = CB = CD$. Les six arêtes ont donc la même longueur.

*Si le tétraèdre est régulier.* Comme $AB = AC = AD$, le fait utile (appliqué à $P = A$)
montre que le pied de la hauteur issue de $A$ est $O_A$. Il s'applique aussi à $P = O$ : le
projeté de $O$ sur $(BCD)$ est aussi $O_A$. Donc $A$ et $O$ sont tous deux sur la droite
orthogonale à $(BCD)$ passant par $O_A$, qui est la hauteur issue de $A$. Ainsi $O$ est sur la
hauteur issue de $A$, et de même sur les trois autres.

**b)** Non. Dans un repère orthonormé, prenons $A(0, 0, 0)$, $B(1, 0, 0)$, $C(0, 1, 0)$,
$D(0, 1, 1)$. Ces points ne sont pas coplanaires, car $D$ n'est pas dans le plan $(ABC)$
d'équation $z = 0$.

- Le plan $(ABC)$ a pour équation $z = 0$, donc la hauteur issue de $D$ est la droite formée
  des points $(0, 1, z)$.
- Les points $A$, $C$, $D$ ont tous une abscisse nulle, donc le plan $(ACD)$ a pour équation
  $x = 0$, et la hauteur issue de $B$ est la droite formée des points $(x, 0, 0)$.

Les points de la première droite ont pour ordonnée $1$, ceux de la seconde pour ordonnée $0$ :
ces deux hauteurs n'ont aucun point commun. Les quatre hauteurs ne sont donc pas concourantes.

**c)** C'est vrai.

*Si le tétraèdre est régulier.* Le triangle $BCD$ est équilatéral, donc le centre $O_A$ de son
cercle circonscrit est aussi son centre de gravité $G_A$. On a vu en a) que le pied de la
hauteur issue de $A$ est $O_A = G_A$ : la hauteur issue de $A$ est la droite $(AG_A)$, qui
passe par $G$ d'après 1. De même pour les trois autres hauteurs.

*Si les quatre hauteurs passent par $G$.* Posons $\vec{a} = \overrightarrow{GA}$,
$\vec{b} = \overrightarrow{GB}$, $\vec{c} = \overrightarrow{GC}$,
$\vec{d} = \overrightarrow{GD}$, de sorte que $\vec{a} + \vec{b} + \vec{c} + \vec{d} = \vec{0}$.
Le point $G$ est distinct de $A$ (sinon, d'après 1 b), $G_A = A$ et $A$ serait dans le plan
$(BCD)$). La hauteur issue de $A$ passe par $A$ et $G$, c'est donc la droite $(AG)$, et
$\vec{a}$ est orthogonal au plan $(BCD)$, en particulier aux vecteurs
$\overrightarrow{CB} = \vec{b} - \vec{c}$ et $\overrightarrow{DB} = \vec{b} - \vec{d}$ :

$$\vec{a} \cdot \vec{b} = \vec{a} \cdot \vec{c} = \vec{a} \cdot \vec{d} .$$

De même avec les hauteurs issues de $B$ et de $C$ :
$\vec{b} \cdot \vec{a} = \vec{b} \cdot \vec{c} = \vec{b} \cdot \vec{d}$ et
$\vec{c} \cdot \vec{a} = \vec{c} \cdot \vec{b} = \vec{c} \cdot \vec{d}$. Ces égalités enchaînées
montrent que les six produits scalaires $\vec{a} \cdot \vec{b}$, $\vec{a} \cdot \vec{c}$,
$\vec{a} \cdot \vec{d}$, $\vec{b} \cdot \vec{c}$, $\vec{b} \cdot \vec{d}$, $\vec{c} \cdot \vec{d}$
sont tous égaux à un même nombre $k$. Alors

$$GA^2 = \vec{a} \cdot \vec{a} = \vec{a} \cdot \left(-\vec{b} - \vec{c} - \vec{d}\right) = -3k ,$$

et de même $GB^2 = GC^2 = GD^2 = -3k$. Pour deux sommets quelconques, par exemple $A$ et $B$,

$$AB^2 = \left(\vec{b} - \vec{a}\right) \cdot \left(\vec{b} - \vec{a}\right) = GB^2 + GA^2 - 2\,\vec{a} \cdot \vec{b} = -3k - 3k - 2k = -8k .$$

Les six arêtes ont la même longueur $\sqrt{-8k}$ : le tétraèdre est régulier.

**Bilan.** Les quatre médianes d'un tétraèdre se coupent toujours en son centre de gravité $G$,
et un tétraèdre a toujours une unique sphère circonscrite, de centre $O$. En revanche ses
quatre hauteurs ne se coupent pas toujours ; elles passent toutes par $O$ exactement quand le
tétraèdre est régulier, et elles passent toutes par $G$ exactement quand il est régulier.

## Going further

- Dans un tétraèdre régulier, les points $O$ et $G$ sont donc confondus. Réciproquement, si
  $O = G$, le tétraèdre est-il forcément régulier ? (Penser à un tétraèdre dont les arêtes
  opposées ont deux à deux la même longueur.)
- Dans la suite du sujet, on cherchait à quelle condition sur les directions de quatre droites
  concourantes il existe un tétraèdre dont elles sont les hauteurs : voir l'exercice 40524.
