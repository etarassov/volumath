---
id: "40168"
title: "L'aire d'un polygone projeté : S′ = S |cos γ| et S² = S′² + S″² + S‴²"
grade: 12
theme: geometry
difficulty: 3
duration_min: 45
tags: [espace, projection-orthogonale, produit-scalaire, vecteurs, aire, plan, decoupage]
adapted_from: null
see_also: ["40169", "40170", "40171", "40172"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 3, partie I « Une formule pour calculer des aires planes », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

L'espace est rapporté à un repère orthonormé $(O\,;\vec{\imath}, \vec{\jmath}, \vec{k})$.

Soit $\mathcal{P}$ un plan et $\vec{n}$ un vecteur normal à $\mathcal{P}$ de norme $1$. On pose
$\vec{n} \cdot \vec{k} = \cos\gamma$, avec $\gamma \in [0, \pi]$, et on note $\mathcal{P}_0$ le
plan $(O\,;\vec{\imath}, \vec{\jmath})$.

1. Dans cette question, on suppose que les plans $\mathcal{P}$ et $\mathcal{P}_0$ ne sont pas
   parallèles. Soit $\mathcal{D}$ la droite d'intersection de $\mathcal{P}$ et $\mathcal{P}_0$,
   $A$ et $B$ deux points distincts de $\mathcal{D}$, $C$ un point de $\mathcal{P}$, $C'$ le projeté
   orthogonal de $C$ sur le plan $\mathcal{P}_0$, et $H$ le projeté orthogonal de $C$ sur la droite
   $(AB)$.
   a) Justifier que $H$ est aussi le projeté orthogonal de $C'$ sur la droite $(AB)$.
   b) En déduire une relation entre les longueurs $CH$ et $C'H$ et l'angle $\gamma$, puis entre
   les aires $S$ et $S'$ des triangles $ABC$ et $ABC'$.
   c) Soit $Q$ un polygone contenu dans le plan $\mathcal{P}$, et $Q'$ son projeté orthogonal sur
   le plan $\mathcal{P}_0$. On note $S$ et $S'$ leurs aires. Montrer que
$$S' = S\,\lvert\cos\gamma\rvert .$$
2. Que dire dans le cas particulier où $\mathcal{P}$ et $\mathcal{P}_0$ sont parallèles ?
3. On pose $\vec{n} \cdot \vec{\imath} = \cos\alpha$ et $\vec{n} \cdot \vec{\jmath} = \cos\beta$.
   a) Montrer que les valeurs absolues des coordonnées de $\vec{n}$ dans la base
   $(\vec{\imath}, \vec{\jmath}, \vec{k})$ sont $\lvert\cos\alpha\rvert$, $\lvert\cos\beta\rvert$
   et $\lvert\cos\gamma\rvert$.
   b) Soit $Q$ un polygone contenu dans le plan $\mathcal{P}$, $S$ son aire, et $S'$, $S''$, $S'''$
   les aires de ses projetés orthogonaux respectifs sur les plans $(O\,;\vec{\imath}, \vec{\jmath})$,
   $(O\,;\vec{\jmath}, \vec{k})$ et $(O\,;\vec{k}, \vec{\imath})$. Montrer que
$$S^2 = S'^2 + S''^2 + S'''^2 .$$

## Hints

1. **Question 1.** Pour a), le vecteur $\overrightarrow{CC'}$ est colinéaire à $\vec{k}$, et la
   droite $(AB)$ est dans $\mathcal{P}_0$. Calculer $\overrightarrow{HC'} \cdot \overrightarrow{AB}$.
2. **Question 1.** Pour b), si $C \notin \mathcal{D}$, prendre $\vec{u}$ unitaire dirigeant
   $\mathcal{D}$ et $\vec{w} = \frac{1}{CH}\overrightarrow{HC}$. Alors $(\vec{u}, \vec{w}, \vec{n})$
   est une base orthonormée : écrire $\vec{k}$ dans cette base.
3. **Question 1.** Toujours pour b), on a
   $\overrightarrow{HC'} = \overrightarrow{HC} - (\overrightarrow{HC} \cdot \vec{k})\,\vec{k}$.
   Calculer $HC'^2$.
4. **Question 1.** Pour c), traiter d'abord un triangle de $\mathcal{P}$ dont un côté est parallèle
   à $\mathcal{D}$ (une translation le ramène sur $\mathcal{D}$), puis un triangle quelconque (le
   couper en deux par une parallèle à $\mathcal{D}$), puis un polygone (le couper en triangles).
5. **Question 3.** Pour b), appliquer la question 1 en changeant le rôle des axes : la projection
   sur $(O\,;\vec{\jmath}, \vec{k})$ joue pour $\vec{\imath}$ le rôle que joue la projection sur
   $\mathcal{P}_0$ pour $\vec{k}$.

## Solution

On note $p$ la projection orthogonale sur $\mathcal{P}_0$. Elle conserve les milieux et
l'alignement, et pour tout point $M$ et tout vecteur $\vec{v}$, le projeté de $M + \vec{v}$ est
$p(M) + \vec{v}\,'$, où $\vec{v}\,' = \vec{v} - (\vec{v} \cdot \vec{k})\,\vec{k}$. En particulier,
pour $C$ et un point $H$ de $\mathcal{P}_0$, on a
$\overrightarrow{HC'} = \overrightarrow{HC} - (\overrightarrow{HC} \cdot \vec{k})\,\vec{k}$.

**1. a)** Le vecteur $\overrightarrow{CC'}$ est colinéaire à $\vec{k}$, et $\overrightarrow{AB}$
est un vecteur du plan $\mathcal{P}_0$, donc orthogonal à $\vec{k}$. D'où
$$\overrightarrow{HC'} \cdot \overrightarrow{AB} = \overrightarrow{HC} \cdot \overrightarrow{AB} + \overrightarrow{CC'} \cdot \overrightarrow{AB} = 0 + 0 = 0 ,$$
la première nullité venant de la définition de $H$. Comme $H$ est sur $(AB)$, c'est le projeté
orthogonal de $C'$ sur $(AB)$.

**b)** Si $C \in \mathcal{D}$, alors $C = C' = H$ et $CH = C'H = 0$. Sinon, soit $\vec{u}$ un
vecteur unitaire dirigeant $\mathcal{D}$ et $\vec{w} = \frac{1}{CH}\,\overrightarrow{HC}$. Les
vecteurs $\vec{u}$ et $\vec{w}$ sont dans $\mathcal{P}$, unitaires et orthogonaux, et $\vec{n}$ est
unitaire et orthogonal à $\mathcal{P}$ : $(\vec{u}, \vec{w}, \vec{n})$ est une base orthonormée.
Dans cette base,
$$\vec{k} = (\vec{k} \cdot \vec{u})\,\vec{u} + (\vec{k} \cdot \vec{w})\,\vec{w} + (\vec{k} \cdot \vec{n})\,\vec{n}, \qquad \text{avec } \vec{k} \cdot \vec{u} = 0$$
car $\vec{u}$ est dans $\mathcal{P}_0$. Comme $\lVert\vec{k}\rVert = 1$, on obtient
$(\vec{k} \cdot \vec{w})^2 + \cos^2\gamma = 1$. Alors
$$HC'^2 = HC^2 - (\overrightarrow{HC} \cdot \vec{k})^2 = HC^2\left(1 - (\vec{w} \cdot \vec{k})^2\right) = HC^2\cos^2\gamma ,$$
(la première égalité vient de Pythagore, $\overrightarrow{HC'}$ étant orthogonal à $\vec{k}$). Donc
$$C'H = CH\,\lvert\cos\gamma\rvert .$$
D'après a), $[CH]$ et $[C'H]$ sont des hauteurs des triangles $ABC$ et $ABC'$, relatives au même côté
$[AB]$. Donc
$$S' = \frac{AB \times C'H}{2} = \frac{AB \times CH}{2}\,\lvert\cos\gamma\rvert = S\,\lvert\cos\gamma\rvert .$$

**c)** *Un triangle $XYZ$ de $\mathcal{P}$ dont le côté $[XY]$ est parallèle à $\mathcal{D}$.*
Soit $X_1$ le projeté orthogonal de $X$ sur $\mathcal{D}$ dans le plan $\mathcal{P}$ et
$\vec{v} = \overrightarrow{XX_1}$, qui est un vecteur de $\mathcal{P}$. La translation de vecteur
$\vec{v}$ envoie $XYZ$ sur un triangle $X_1Y_1Z_1$ de $\mathcal{P}$, de même aire $S$, avec $X_1$
et $Y_1$ sur $\mathcal{D}$. Son projeté est le translaté du projeté de $XYZ$ par le vecteur
$\vec{v}\,'$, donc il a la même aire $S'$. D'après b) (avec $A = X_1$, $B = Y_1$, $C = Z_1$),
$S' = S\,\lvert\cos\gamma\rvert$.

*Un triangle quelconque $XYZ$ de $\mathcal{P}$.* Si aucun côté n'est parallèle à $\mathcal{D}$,
les droites parallèles à $\mathcal{D}$ passant par $X$, $Y$, $Z$ sont distinctes ; appelons $Y$ le
sommet dont la parallèle est située entre les deux autres. Cette parallèle coupe le côté $[XZ]$ en
un point $K$. Le triangle $XYZ$ est la réunion des triangles $XYK$ et $KYZ$, qui ont le côté $[YK]$
parallèle à $\mathcal{D}$. Le projeté $K'$ de $K$ est sur $[X'Z']$, donc le projeté de $XYZ$ est la
réunion des projetés de $XYK$ et de $KYZ$, qui ne se chevauchent pas. En ajoutant les aires :
$$S' = S'_1 + S'_2 = (S_1 + S_2)\,\lvert\cos\gamma\rvert = S\,\lvert\cos\gamma\rvert .$$

*Un polygone $Q$.* On le découpe en triangles (pour un polygone convexe, en joignant un sommet à
tous les autres). Les projetés de ces triangles découpent $Q'$ de la même façon, et en ajoutant
les égalités obtenues pour chaque triangle, $S' = S\,\lvert\cos\gamma\rvert$.

(Si $\mathcal{P}$ est perpendiculaire à $\mathcal{P}_0$, le projeté est un segment, d'aire nulle,
et $\cos\gamma = 0$ : la formule reste vraie.)

**2.** Si $\mathcal{P}$ est parallèle à $\mathcal{P}_0$, la projection sur $\mathcal{P}_0$ est,
pour les points de $\mathcal{P}$, une translation de vecteur colinéaire à $\vec{k}$. Le projeté de
$Q$ est un polygone superposable à $Q$, donc $S' = S$. Comme alors $\vec{n} = \pm\vec{k}$, on a
$\lvert\cos\gamma\rvert = 1$ : la formule $S' = S\,\lvert\cos\gamma\rvert$ est encore vraie.

**3. a)** Dans la base orthonormée $(\vec{\imath}, \vec{\jmath}, \vec{k})$, les coordonnées d'un
vecteur sont ses produits scalaires avec les vecteurs de base :
$$\vec{n} = (\vec{n} \cdot \vec{\imath})\,\vec{\imath} + (\vec{n} \cdot \vec{\jmath})\,\vec{\jmath} + (\vec{n} \cdot \vec{k})\,\vec{k} = \cos\alpha\,\vec{\imath} + \cos\beta\,\vec{\jmath} + \cos\gamma\,\vec{k} .$$
Les valeurs absolues de ses coordonnées sont donc $\lvert\cos\alpha\rvert$, $\lvert\cos\beta\rvert$,
$\lvert\cos\gamma\rvert$.

**b)** Les questions 1 et 2 donnent $S' = S\,\lvert\cos\gamma\rvert = S\,\lvert\vec{n} \cdot \vec{k}\rvert$.
Elles restent vraies dans n'importe quel repère orthonormé. Dans le repère
$(O\,;\vec{\jmath}, \vec{k}, \vec{\imath})$, le plan $(O\,;\vec{\jmath}, \vec{k})$ joue le rôle de
$\mathcal{P}_0$ et $\vec{\imath}$ celui de $\vec{k}$ : on obtient
$S'' = S\,\lvert\vec{n} \cdot \vec{\imath}\rvert = S\,\lvert\cos\alpha\rvert$. De même, avec le repère
$(O\,;\vec{k}, \vec{\imath}, \vec{\jmath})$, $S''' = S\,\lvert\cos\beta\rvert$. Donc
$$S'^2 + S''^2 + S'''^2 = S^2\left(\cos^2\gamma + \cos^2\alpha + \cos^2\beta\right) = S^2\,\lVert\vec{n}\rVert^2 = S^2 .$$

**Bilan.** Projeter orthogonalement une figure plane sur un plan multiplie son aire par
$\lvert\cos\gamma\rvert$, où $\gamma$ est l'angle entre les vecteurs normaux des deux plans. En
projetant sur les trois plans de coordonnées, on obtient un « théorème de Pythagore pour les
aires » : $S^2 = S'^2 + S''^2 + S'''^2$.

## Going further

- Vérifier la formule $S^2 = S'^2 + S''^2 + S'''^2$ sur le triangle de sommets $(1\,;0\,;0)$,
  $(0\,;1\,;0)$, $(0\,;0\,;1)$.
- Dans la suite du sujet, cette formule servait à calculer l'aire des sections d'un cube par un plan
  passant par son centre : voir les exercices 40169 à 40172.
