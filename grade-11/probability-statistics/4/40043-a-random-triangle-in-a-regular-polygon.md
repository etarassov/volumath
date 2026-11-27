---
id: "40043"
title: "Un triangle au hasard parmi les sommets d'un polygone régulier à 2n côtés"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 60
tags: [probabilite, equiprobabilite, esperance, polygone-regulier, denombrement, produit-scalaire, orthocentre, triangle-rectangle]
adapted_from: null
see_also: ["40041", "40042", "40044", "40045", "40046", "40047", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », deuxième partie, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Soit $R > 0$ et $n \geqslant 2$ un entier. On considère un polygone régulier à $2n$ sommets, inscrit
dans le cercle $\Gamma$ de centre $O$ et de rayon $R$, et on note $X$ l'ensemble de ses $2n$
sommets.

On appelle $\mathcal{T}$ l'ensemble des triangles dont les trois sommets sont dans $X$ (trois
sommets distincts du polygone ne sont jamais alignés). On choisit au hasard un élément de
$\mathcal{T}$, tous les triangles ayant la même probabilité d'être choisis.

On admet la **relation d'Euler** : si $\Omega$ est le centre du cercle circonscrit à un triangle
$ABC$, l'orthocentre $H$ de ce triangle vérifie
$\overrightarrow{\Omega H} = \overrightarrow{\Omega A} + \overrightarrow{\Omega B} + \overrightarrow{\Omega C}$.

1. Quelle est la probabilité de choisir un triangle rectangle ?
2. Quelle est la probabilité de choisir un triangle dont les trois angles sont aigus ?
3. On note $L$ la variable aléatoire qui, à chaque triangle de $\mathcal{T}$, associe le carré de
   la distance de $O$ à son orthocentre. Calculer l'espérance de $L$ en fonction de $n$ et $R$.

## Hints

1. **Question 1.** Combien y a-t-il de triangles en tout ? Compter d'abord les choix ordonnés de
   trois sommets distincts.
2. **Question 1.** Un triangle inscrit dans un cercle est rectangle exactement quand l'un de ses
   côtés est un diamètre.
3. **Question 2.** En tournant autour du cercle, les trois sommets d'un triangle découpent le
   polygone en trois arcs de $p$, $q$ et $r$ « pas » (un pas va d'un sommet au suivant), avec
   $p + q + r = 2n$. Montrer que l'angle opposé à l'arc de $p$ pas est aigu si et seulement si
   $p < n$.
4. **Question 2.** Pour le montrer, prendre un repère où les deux extrémités de l'arc sont
   $(R\sin\frac{\varphi}{2}\,;\,R\cos\frac{\varphi}{2})$ et
   $(-R\sin\frac{\varphi}{2}\,;\,R\cos\frac{\varphi}{2})$, avec $\varphi = \frac{p\pi}{n}$,
   et calculer un produit scalaire.
5. **Question 2.** Compter les triplets $(p, q, r)$ d'entiers entre $1$ et $n - 1$ de somme $2n$ ;
   poser $p' = n - p$, etc. Chaque triangle correspond à trois choix (sommet de départ, triplet).
6. **Question 3.** Avec la relation d'Euler, $L = \lVert \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} \rVert^2$.
   Développer, puis additionner sur tous les triangles : combien de triangles contiennent un côté
   $[PQ]$ donné ?
7. **Question 3.** Les sommets vont par paires de points diamétralement opposés, donc la somme des
   $2n$ vecteurs $\overrightarrow{OP}$ est nulle. Calculer le carré de sa norme.

## Solution

Numérotons les sommets $P_0, P_1, \ldots, P_{2n-1}$ dans le sens direct. Le cercle circonscrit à
chaque triangle de $\mathcal{T}$ est $\Gamma$.

*Nombre de triangles.* Il y a $2n \times (2n-1) \times (2n-2)$ façons de choisir, dans l'ordre,
trois sommets distincts, et chaque triangle est obtenu de $6$ façons (les $6$ ordres de ses
sommets). Donc
$$|\mathcal{T}| = \frac{2n(2n-1)(2n-2)}{6} = \frac{2n(2n-1)(n-1)}{3}.$$

**1.** Le cercle circonscrit d'un triangle rectangle a pour diamètre l'hypoténuse, et un triangle
inscrit dans un cercle avec un côté diamètre est rectangle. Un triangle de $\mathcal{T}$ est donc
rectangle si et seulement si l'un de ses côtés est un diamètre de $\Gamma$.

Il y a $n$ diamètres joignant deux sommets opposés $P_k$ et $P_{k+n}$. Pour chacun, le troisième
sommet peut être n'importe lequel des $2n - 2$ autres. Un triangle ne peut pas avoir deux côtés
diamètres (ils auraient un sommet commun et passeraient tous deux par $O$, donc seraient égaux).
Il y a donc $n(2n-2) = 2n(n-1)$ triangles rectangles, et

$$P(\text{rectangle}) = \frac{2n(n-1) \times 3}{2n(2n-1)(n-1)} = \frac{3}{2n-1}.$$

Pour $n = 2$ (un carré), on trouve $1$ : les quatre triangles sont rectangles.

**2.** *Un critère.* Soit $A$, $B$ deux sommets et $C$ un troisième sommet. Notons $p$ le nombre de
pas de l'arc qui va de $A$ à $B$ sans passer par $C$, et $\varphi = \frac{p\pi}{n}$ l'angle au
centre correspondant, avec $0 < \varphi < 2\pi$. Montrons que l'angle $\widehat{ACB}$ est aigu si
$p < n$, droit si $p = n$ et obtus si $p > n$.

Prenons un repère orthonormé de centre $O$ dans lequel cet arc est symétrique par rapport à l'axe
des ordonnées : $A = R(\sin\frac{\varphi}{2}\,;\,\cos\frac{\varphi}{2})$ et
$B = R(-\sin\frac{\varphi}{2}\,;\,\cos\frac{\varphi}{2})$. Les points de l'arc sont ceux de
$\Gamma$ dont l'ordonnée est au moins $R\cos\frac{\varphi}{2}$ ; tous les autres points du cercle,
et en particulier $C = R(x\,;\,y)$ avec $x^2 + y^2 = 1$, vérifient $y < \cos\frac{\varphi}{2}$.
Notons $s = \sin\frac{\varphi}{2}$ et $c_0 = \cos\frac{\varphi}{2}$. Alors
$$\frac{\overrightarrow{CA} \cdot \overrightarrow{CB}}{R^2} = (s - x)(-s - x) + (c_0 - y)^2 = x^2 + y^2 - s^2 + c_0^2 - 2c_0 y = 2c_0\,(c_0 - y).$$
Comme $c_0 - y > 0$, ce produit scalaire a le signe de $c_0 = \cos\frac{\varphi}{2}$, où
$0 < \frac{\varphi}{2} < \pi$. Il est positif si $\varphi < \pi$ (soit $p < n$), nul si $p = n$,
négatif si $p > n$. C'est le critère annoncé.

*Le comptage.* Parcourons un triangle dans le sens direct en partant de l'un de ses sommets : les
arcs entre sommets consécutifs ont $p$, $q$, $r$ pas, avec $p, q, r \geqslant 1$ et
$p + q + r = 2n$. Le triangle est aigu exactement quand $p$, $q$ et $r$ sont tous $< n$.

Inversement, un sommet de départ et un triplet $(p, q, r)$ donnent un triangle. Chaque triangle
est obtenu exactement trois fois (une fois par sommet de départ). Le nombre de triangles aigus est
donc $\frac{2n \times N}{3}$, où $N$ est le nombre de triplets $(p, q, r)$ d'entiers compris entre
$1$ et $n - 1$ de somme $2n$.

Posons $p' = n - p$, $q' = n - q$, $r' = n - r$. Ce sont des entiers $\geqslant 1$ et
$p' + q' + r' = 3n - 2n = n$ ; réciproquement, trois entiers $\geqslant 1$ de somme $n$ sont
chacun $\leqslant n - 2$, donc redonnent un triplet valable. Pour compter les triplets
d'entiers $\geqslant 1$ de somme $n$ : si $p' = j$ (de $1$ à $n - 2$), il reste $n - j - 1$
choix pour $q'$, puis $r'$ est imposé. Donc
$$N = (n-2) + (n-3) + \cdots + 1 = \frac{(n-1)(n-2)}{2}.$$

Il y a donc $\frac{2n(n-1)(n-2)}{6} = \frac{n(n-1)(n-2)}{3}$ triangles aigus, et

$$P(\text{aigu}) = \frac{n(n-1)(n-2)}{2n(2n-1)(n-1)} = \frac{n-2}{2(2n-1)}.$$

Vérifications : pour le carré ($n = 2$), aucun triangle aigu ; pour l'hexagone ($n = 3$), on
trouve $\frac{1}{10}$, soit $2$ triangles sur $20$ : les deux triangles équilatéraux.

**3.** Pour un triangle $ABC$ de $\mathcal{T}$, la relation d'Euler avec $\Omega = O$ donne
$$L = \lVert \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC} \rVert^2 = 3R^2 + 2\left(\overrightarrow{OA} \cdot \overrightarrow{OB} + \overrightarrow{OB} \cdot \overrightarrow{OC} + \overrightarrow{OC} \cdot \overrightarrow{OA}\right).$$

Additionnons sur tous les triangles. Une paire de sommets $\{P, Q\}$ donnée est un côté de
exactement $2n - 2$ triangles (choix du troisième sommet). Donc
$$\sum_{\mathcal{T}} L = 3R^2\,|\mathcal{T}| + 2(2n-2)\,S, \qquad \text{où } S = \sum_{\{P, Q\}} \overrightarrow{OP} \cdot \overrightarrow{OQ},$$
la somme $S$ portant sur toutes les paires de sommets distincts.

Les sommets $P_k$ et $P_{k+n}$ sont diamétralement opposés, donc
$\overrightarrow{OP_0} + \overrightarrow{OP_1} + \cdots + \overrightarrow{OP_{2n-1}} = \vec{0}$. Le
carré de la norme de cette somme vaut $0$ ; en le développant, on obtient les $2n$ carrés
$OP_k^2 = R^2$ et deux fois chaque produit croisé :
$$0 = 2nR^2 + 2S, \qquad \text{donc} \qquad S = -nR^2.$$

L'espérance de $L$ est la moyenne de $L$ sur tous les triangles :
$$E(L) = 3R^2 + \frac{2(2n-2)(-nR^2) \times 3}{2n(2n-1)(n-1)} = 3R^2 - \frac{6R^2}{2n-1} = \frac{3(2n-3)}{2n-1}\,R^2.$$

Vérification : pour le carré, tous les triangles sont rectangles et leur orthocentre est un sommet,
à distance $R$ de $O$ ; la formule donne bien $R^2$.

**Bilan.** Parmi les triangles formés par trois sommets d'un polygone régulier à $2n$ côtés, la
proportion de triangles rectangles est $\frac{3}{2n-1}$ et celle de triangles aigus est
$\frac{n-2}{2(2n-1)}$, qui tend vers $\frac{1}{4}$ quand $n$ grandit. Le carré moyen de la distance
du centre à l'orthocentre vaut $\frac{3(2n-3)}{2n-1}R^2$, qui tend vers $3R^2$.

## Going further

- Le critère de la question 2 découle d'un résultat plus précis, le théorème de l'angle inscrit :
  l'angle $\widehat{ACB}$ vaut la moitié de l'angle au centre $\varphi$. Pouvez-vous le démontrer ?
- Quand $n$ devient grand, on choisit presque trois points au hasard sur le cercle. La probabilité
  d'obtenir un triangle aigu tend vers $\frac{1}{4}$ : c'est un résultat classique de
  probabilités géométriques.
- Que deviennent les questions 1 et 2 pour un polygone régulier à un nombre **impair** de sommets ?
