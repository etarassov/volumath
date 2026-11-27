---
id: "40524"
title: "Quatre droites concourantes peuvent-elles être les hauteurs d'un tétraèdre ?"
grade: 12
theme: geometry
difficulty: 4
duration_min: 50
tags: [espace, tetraedre, hauteur, produit-scalaire, vecteurs, orthogonalite, systeme, disjonction-de-cas, construction]
adapted_from: null
see_also: ["40523"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème II « Tétraèdres », question 4° (a et b), avec les définitions du préambule et de la question 3°"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

On appelle *tétraèdre* $A_1 A_2 A_3 A_4$ la donnée, dans l'espace, de quatre points non
coplanaires. La *hauteur issue de $A_1$* est la droite qui passe par $A_1$ et qui est
orthogonale au plan $(A_2 A_3 A_4)$ ; on définit de même les hauteurs issues de $A_2$, $A_3$,
$A_4$. Le produit scalaire de deux vecteurs $\vec{v}$ et $\vec{w}$ est noté
$\vec{v} \cdot \vec{w}$.

Soit $\Delta_1$, $\Delta_2$, $\Delta_3$, $\Delta_4$ quatre droites distinctes, qui passent
toutes par un même point $H$ et ne sont pas contenues dans un même plan. Pour chaque $i$, on
choisit un vecteur directeur unitaire $\vec{u}_i$ de $\Delta_i$, et pour tous $i$, $j$ on pose
$c_{ij} = \vec{u}_i \cdot \vec{u}_j$ (on a donc $c_{ij} = c_{ji}$).

1. On suppose qu'il existe un tétraèdre $A_1 A_2 A_3 A_4$ dont les quatre hauteurs passent par
   $H$ et tel que $A_j$ soit sur $\Delta_j$ pour tout $j$. Montrer que

   $$c_{12}\, c_{34} = c_{13}\, c_{24} = c_{14}\, c_{23} .$$

2. Réciproquement, on suppose que $c_{12}\, c_{34} = c_{13}\, c_{24} = c_{14}\, c_{23}$ et que
   ce nombre n'est pas nul. Montrer qu'il existe un tétraèdre $A_1 A_2 A_3 A_4$ dont les quatre
   hauteurs passent par $H$ et tel que $A_j$ soit sur $\Delta_j$ pour tout $j$.

## Hints

1. **Question 1.** Écrire $\overrightarrow{HA_j} = t_j\,\vec{u}_j$ avec $t_j$ réel. Si
   $A_1 \neq H$, la hauteur issue de $A_1$ passe par $A_1$ et par $H$ : quelle droite est-ce ?
2. **Question 1.** Le vecteur $\vec{u}_1$ est alors orthogonal à
   $\overrightarrow{A_2 A_3}$ et à $\overrightarrow{A_2 A_4}$. Traduire en égalités entre les
   nombres $t_j\, c_{1j}$, et faire de même pour chaque sommet.
3. **Question 1.** Ne pas oublier le cas où l'un des sommets est $H$ lui-même.
4. **Question 2.** Il s'agit de trouver des nombres $t_j$ non nuls qui vérifient les égalités
   obtenues à la question 1. Celles qui concernent $\vec{u}_1$ suggèrent de prendre $t_j$
   proportionnel à $\frac{1}{c_{1j}}$ pour $j = 2, 3, 4$.
5. **Question 2.** Il faut aussi vérifier que les quatre points obtenus ne sont pas
   coplanaires. S'ils étaient dans un plan $\Pi$, combien des vecteurs $\vec{u}_i$ seraient
   normaux à $\Pi$ ?

## Solution

On écrit chaque point de $\Delta_j$ sous la forme $A_j$ avec
$\overrightarrow{HA_j} = t_j\,\vec{u}_j$, $t_j$ réel. Pour $j \neq k$,
$\overrightarrow{A_j A_k} = t_k\,\vec{u}_k - t_j\,\vec{u}_j$, donc pour un troisième indice $i$

$$\vec{u}_i \cdot \overrightarrow{A_j A_k} = t_k\, c_{ik} - t_j\, c_{ij} . \qquad (\star)$$

**1.** *Premier cas : aucun sommet n'est en $H$.* Alors tous les $t_j$ sont non nuls. La
hauteur issue de $A_1$ passe par $A_1$ et par $H$, deux points distincts de $\Delta_1$ : c'est
$\Delta_1$. Donc $\vec{u}_1$ est orthogonal au plan $(A_2 A_3 A_4)$, en particulier à
$\overrightarrow{A_2 A_3}$ et $\overrightarrow{A_2 A_4}$, et $(\star)$ donne
$t_2\, c_{12} = t_3\, c_{13} = t_4\, c_{14}$. En raisonnant de même pour chaque sommet :

- (sommet $A_1$) $t_2\, c_{12} = t_3\, c_{13} = t_4\, c_{14}$ ;
- (sommet $A_2$) $t_1\, c_{12} = t_3\, c_{23} = t_4\, c_{24}$ ;
- (sommet $A_3$) $t_1\, c_{13} = t_2\, c_{23} = t_4\, c_{34}$ ;
- (sommet $A_4$) $t_1\, c_{14} = t_2\, c_{24} = t_3\, c_{34}$.

Multiplions $t_2\, c_{12} = t_3\, c_{13}$ (sommet $A_1$) par $t_3\, c_{34} = t_2\, c_{24}$
(sommet $A_4$) : $t_2 t_3\, c_{12} c_{34} = t_3 t_2\, c_{13} c_{24}$, et comme
$t_2 t_3 \neq 0$, $c_{12} c_{34} = c_{13} c_{24}$.

Multiplions de même $t_2\, c_{12} = t_4\, c_{14}$ (sommet $A_1$) par
$t_4\, c_{34} = t_2\, c_{23}$ (sommet $A_3$) : $t_2 t_4\, c_{12} c_{34} = t_4 t_2\, c_{14} c_{23}$,
donc $c_{12} c_{34} = c_{14} c_{23}$.

*Second cas : un sommet est en $H$.* Il n'y en a qu'un, car les sommets sont distincts ; quitte
à renuméroter, c'est $A_1 = H$, qui est alors sur les quatre droites. La hauteur issue de $A_2$
passe par $A_2$ et par $H = A_1$ : c'est la droite $(A_1 A_2) = \Delta_2$, et elle est
orthogonale au plan $(A_1 A_3 A_4)$. Donc $\vec{u}_2$ est orthogonal à
$\overrightarrow{A_1 A_3}$ et $\overrightarrow{A_1 A_4}$, qui dirigent $\Delta_3$ et
$\Delta_4$ : $c_{23} = c_{24} = 0$. De même la hauteur issue de $A_3$ donne $c_{34} = 0$. Les
trois produits $c_{12} c_{34}$, $c_{13} c_{24}$, $c_{14} c_{23}$ sont alors tous nuls, donc
égaux.

**Conclusion :** dans tous les cas, $c_{12} c_{34} = c_{13} c_{24} = c_{14} c_{23}$.

**2.** Le produit commun n'est pas nul, donc aucun $c_{ij}$ (avec $i \neq j$) n'est nul.
Posons

$$t_1 = \frac{c_{23}}{c_{12}\, c_{13}}, \qquad t_2 = \frac{1}{c_{12}}, \qquad t_3 = \frac{1}{c_{13}}, \qquad t_4 = \frac{1}{c_{14}} ,$$

tous non nuls, et soit $A_j$ le point de $\Delta_j$ tel que
$\overrightarrow{HA_j} = t_j\,\vec{u}_j$.

*Les égalités de la question 1 sont vérifiées.*

Sommet $A_1$ : $t_2 c_{12} = t_3 c_{13} = t_4 c_{14} = 1$.

Sommet $A_2$ :

$$t_1 c_{12} = \frac{c_{23}}{c_{13}}, \qquad t_3 c_{23} = \frac{c_{23}}{c_{13}}, \qquad t_4 c_{24} = \frac{c_{24}}{c_{14}} = \frac{c_{23}}{c_{13}} ,$$

la dernière égalité venant de $c_{13} c_{24} = c_{14} c_{23}$.

Sommet $A_3$ :

$$t_1 c_{13} = \frac{c_{23}}{c_{12}}, \qquad t_2 c_{23} = \frac{c_{23}}{c_{12}}, \qquad t_4 c_{34} = \frac{c_{34}}{c_{14}} = \frac{c_{23}}{c_{12}} ,$$

la dernière égalité venant de $c_{12} c_{34} = c_{14} c_{23}$.

Sommet $A_4$ :

$$t_1 c_{14} = \frac{c_{14}\, c_{23}}{c_{12}\, c_{13}} = \frac{c_{13}\, c_{24}}{c_{12}\, c_{13}} = \frac{c_{24}}{c_{12}}, \qquad t_2 c_{24} = \frac{c_{24}}{c_{12}}, \qquad t_3 c_{34} = \frac{c_{34}}{c_{13}} = \frac{c_{24}}{c_{12}} ,$$

en utilisant $c_{14} c_{23} = c_{13} c_{24}$, puis $c_{12} c_{34} = c_{13} c_{24}$.

D'après $(\star)$, pour chaque $i$, le vecteur $\vec{u}_i$ est donc orthogonal à
$\overrightarrow{A_j A_k}$ pour tous les indices $j$, $k$ différents de $i$.

*Les quatre points ne sont pas coplanaires.* Ils sont distincts : chacun est sur sa droite
$\Delta_j$ et différent de $H$ (car $t_j \neq 0$), et deux droites distinctes passant par $H$
n'ont que $H$ en commun. Supposons-les dans un même plan $\Pi$.

- Si les quatre points sont alignés sur une droite $L$, chaque $\vec{u}_i$ est orthogonal à
  un vecteur directeur de $L$ ; les quatre droites $\Delta_i$ sont alors dans le plan passant
  par $H$ et orthogonal à $L$, ce qui est exclu.
- Sinon, au moins deux des quatre triplets de points ne sont pas alignés. (Si aucun triplet
  n'est aligné, c'est clair. Si trois points sont sur une droite $L$, le quatrième n'y est pas,
  et les trois triplets qui le contiennent ne sont pas alignés.) Si le triplet formé des points
  autres que $A_i$ n'est pas aligné, il fournit deux vecteurs non colinéaires de $\Pi$
  orthogonaux à $\vec{u}_i$, donc $\vec{u}_i$ est normal à $\Pi$. On obtient ainsi deux
  vecteurs $\vec{u}_i$ et $\vec{u}_{i'}$, avec $i \neq i'$, tous deux normaux à $\Pi$, donc
  colinéaires : les droites $\Delta_i$ et $\Delta_{i'}$, qui passent toutes deux par $H$,
  seraient confondues, ce qui est exclu.

Donc $A_1 A_2 A_3 A_4$ est un tétraèdre.

*Ses hauteurs passent par $H$.* Le vecteur $\vec{u}_1$ est orthogonal à deux vecteurs non
colinéaires du plan $(A_2 A_3 A_4)$, donc normal à ce plan. La hauteur issue de $A_1$ est donc
la droite passant par $A_1$ et dirigée par $\vec{u}_1$, c'est-à-dire $\Delta_1$, qui passe par
$H$. De même pour les trois autres hauteurs.

**Conclusion :** le tétraèdre $A_1 A_2 A_3 A_4$ convient.

**Bilan.** Quatre droites non coplanaires concourantes en $H$ portent les quatre hauteurs d'un
tétraèdre (avec un sommet sur chaque droite) seulement si
$c_{12} c_{34} = c_{13} c_{24} = c_{14} c_{23}$ ; et quand ce produit commun n'est pas nul,
cette condition suffit : on construit explicitement un tel tétraèdre.

## Going further

- Que se passe-t-il quand le produit commun est nul ? Par exemple, si $\Delta_2$, $\Delta_3$,
  $\Delta_4$ sont deux à deux orthogonales, montrer qu'en prenant $A_1 = H$ et $A_2$, $A_3$,
  $A_4$ quelconques (différents de $H$) sur ces droites, on obtient un tétraèdre dont les
  hauteurs passent par $H$.
- Dans le premier cas de la question 1 (aucun sommet en $H$), on a vu que
  $\vec{u}_1 \perp \overrightarrow{A_3 A_4}$ et $\vec{u}_2 \perp \overrightarrow{A_3 A_4}$.
  En déduire que les arêtes opposées $[A_1 A_2]$ et $[A_3 A_4]$ sont orthogonales.
- Les questions précédentes du sujet (centre de gravité, sphère circonscrite, hauteurs d'un
  tétraèdre régulier) forment l'exercice 40523.
