---
id: "40044"
title: "Des ensembles orthocentriques sur deux droites perpendiculaires"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [orthocentre, coordonnees, produit-scalaire, raisonnement-par-l-absurde, disjonction-de-cas, principe-des-tiroirs, ensembles]
adapted_from: null
see_also: ["40041", "40042", "40043", "40045", "40046", "40047", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », troisième partie, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $(O\,;\,\vec{u}, \vec{v})$. On appelle **triangle** tout
ensemble de trois points non alignés.

Pour une partie $X$ du plan qui n'est pas incluse dans une droite, on note $\mathcal{H}(X)$
l'ensemble des orthocentres des triangles dont les trois sommets appartiennent à $X$. On dit que
$X$ est **orthocentrique** si elle n'est pas incluse dans une droite et si
$\mathcal{H}(X) \subset X$, c'est-à-dire si l'orthocentre de tout triangle de points de $X$
appartient à $X$.

1. Soit $a$, $b$, $c$ trois réels tels que $a(b - c) \neq 0$, et $A(0\,;\,a)$, $B(b\,;\,0)$,
   $C(c\,;\,0)$. Calculer les coordonnées de l'orthocentre $D$ du triangle $ABC$.
2. Soit $X$ la réunion d'une droite $\Delta$ et d'un point $M$ qui n'est pas sur $\Delta$.
   Déterminer $\mathcal{H}(X)$. Montrer que $\mathcal{H}(X) \cup X$ est orthocentrique.
3. Soit $X$ une partie orthocentrique incluse dans la réunion des deux axes $(O\,;\,\vec{u})$ et
   $(O\,;\,\vec{v})$, et contenant au moins trois points de l'axe des abscisses distincts de $O$.
   a) Montrer que $X$ contient au moins trois points de l'axe des abscisses dont les abscisses sont
   non nulles et de même signe.
   b) Montrer que $X$ contient au moins trois points de l'axe des abscisses d'abscisses
   strictement positives.

## Hints

1. **Question 1.** La hauteur issue de $A$ est l'axe des ordonnées. Chercher sur cet axe le point
   $D$ tel que $\overrightarrow{BD} \cdot \overrightarrow{AC} = 0$.
2. **Question 2.** Choisir le repère : $\Delta$ est l'axe des abscisses, $M$ est sur l'axe des
   ordonnées. Quelles valeurs peut prendre le produit $bc$ quand $b \neq c$ ?
3. **Question 3.** Noter $P$ l'ensemble des abscisses non nulles des points de $X$ situés sur l'axe
   des abscisses, et $Q$ l'ensemble des ordonnées non nulles des points de $X$ situés sur l'axe des
   ordonnées. Traduire la question 1 en deux règles : comment obtenir un nouvel élément de $Q$ à
   partir d'un élément de $Q$ et de deux de $P$, et un nouvel élément de $P$ à partir d'un élément
   de $P$ et de deux de $Q$.
4. **Question 3.** Montrer que si $P$ contient trois nombres de même signe, alors $Q$ aussi (et
   inversement en échangeant les axes).
5. **Question 3 a).** Raisonner par l'absurde : $P$ contient alors au plus deux nombres positifs
   et au plus deux négatifs. Montrer d'abord que $Q$ contient deux nombres distincts de même signe,
   puis que $P$ contient deux nombres de chaque signe.
6. **Question 3 b).** Si les trois nombres trouvés sont négatifs, passer par $Q$ puis revenir dans
   $P$ avec un produit de deux éléments de $Q$ de même signe.

## Solution

**1.** La droite $(BC)$ est l'axe des abscisses, donc la hauteur issue de $A$ est l'axe des
ordonnées, et $D = (0\,;\,y)$. Le point $D$ est aussi sur la hauteur issue de $B$, perpendiculaire
à $(AC)$ : $\overrightarrow{BD} \cdot \overrightarrow{AC} = 0$, avec
$\overrightarrow{BD} = (-b\,;\,y)$ et $\overrightarrow{AC} = (c\,;\,-a)$. Cela s'écrit
$-bc - ay = 0$.

**Conclusion :** $D = \left(0\,;\,-\frac{bc}{a}\right)$.

En échangeant les rôles des deux axes (la symétrie par rapport à la droite d'équation $y = x$
conserve les angles droits), l'orthocentre du triangle formé par $(b\,;\,0)$, $(0\,;\,a)$ et
$(0\,;\,d)$, avec $b(a - d) \neq 0$, est le point $\left(-\frac{ad}{b}\,;\,0\right)$.

**2.** Prenons $\Delta$ comme axe des abscisses et l'axe des ordonnées passant par $M$, de sorte
que $M = (0\,;\,a)$ avec $a \neq 0$. Trois points de $\Delta$ sont alignés, donc un triangle de
points de $X$ est formé de $M$ et de deux points distincts $(b\,;\,0)$ et $(c\,;\,0)$ de $\Delta$.
Son orthocentre est $\left(0\,;\,-\frac{bc}{a}\right)$, sur l'axe des ordonnées.

Réciproquement, tout réel $t$ est un produit $bc$ avec $b \neq c$ : $t = t \times 1$ si $t \neq 1$,
et $1 = 2 \times \frac{1}{2}$. Donc $-\frac{bc}{a}$ prend toutes les valeurs réelles.

**Conclusion :** $\mathcal{H}(X)$ est la droite $\Delta'$ perpendiculaire à $\Delta$ passant par
$M$, et $\mathcal{H}(X) \cup X = \Delta \cup \Delta'$, réunion de deux droites perpendiculaires.

*$\Delta \cup \Delta'$ est orthocentrique.* Elle n'est pas incluse dans une droite. Trois points
d'une même droite sont alignés, donc un triangle de $\Delta \cup \Delta'$ a deux sommets sur l'une
des droites et le troisième sur l'autre, différent de $O$ (sinon les trois seraient sur la même
droite). Si les deux sommets sont sur $\Delta$, la question 1 place l'orthocentre sur $\Delta'$ ;
s'ils sont sur $\Delta'$, la formule avec les axes échangés le place sur $\Delta$. Dans les deux
cas il appartient à $\Delta \cup \Delta'$.

**3.** Notons $P$ l'ensemble des abscisses non nulles des points de $X$ situés sur l'axe des
abscisses, et $Q$ l'ensemble des ordonnées non nulles des points de $X$ situés sur l'axe des
ordonnées. Par hypothèse $P$ a au moins trois éléments. $X$ n'est pas inclus dans l'axe des
abscisses, donc il contient un point $(0\,;\,a)$ avec $a \neq 0$ : $Q$ n'est pas vide. La
question 1 et $X$ orthocentrique donnent deux règles :

- **(R1)** si $a \in Q$ et si $b$, $c$ sont deux éléments distincts de $P$, alors
  $-\frac{bc}{a} \in Q$ ;
- **(R2)** si $b \in P$ et si $a$, $d$ sont deux éléments distincts de $Q$, alors
  $-\frac{ad}{b} \in P$.

*Lemme.* Si $P$ contient trois nombres distincts $x_1$, $x_2$, $x_3$ de même signe, alors $Q$
contient trois nombres distincts de même signe. En effet, pour $a \in Q$, la règle (R1) met dans
$Q$ les nombres $-\frac{x_1x_2}{a}$, $-\frac{x_1x_3}{a}$, $-\frac{x_2x_3}{a}$. Ils ont tous le signe
de $-a$ (les produits $x_ix_j$ sont positifs), et ils sont distincts : par exemple
$x_1x_2 \neq x_1x_3$ car $x_2 \neq x_3$. En échangeant les axes : si $Q$ contient trois nombres de
même signe, $P$ aussi.

**a)** Raisonnons par l'absurde : supposons que $P$ contienne au plus deux nombres positifs et au
plus deux nombres négatifs. Comme $P$ en contient au moins trois, il contient deux nombres d'un
signe et au moins un de l'autre. Quitte à changer $x$ en $-x$ (la symétrie par rapport à l'axe des
ordonnées conserve tout le problème), $P$ contient $p_1 \neq p_2$ positifs et $n_1$ négatif.

- *$Q$ contient deux nombres distincts de même signe.* Soit $a \in Q$. D'après (R1),
  $-\frac{p_1n_1}{a}$ et $-\frac{p_2n_1}{a}$ sont dans $Q$ ; ils sont distincts et du signe de $a$.
  L'un des deux est différent de $a$ ; notons-le $a'$.
- *$P$ contient deux négatifs.* Comme $aa' > 0$, la règle (R2) met dans $P$ les nombres
  $-\frac{aa'}{p_1}$ et $-\frac{aa'}{p_2}$, distincts et négatifs. Avec l'hypothèse, $P$ contient
  donc exactement deux nombres négatifs $n_1 \neq n_2$ et deux positifs $p_1 \neq p_2$.
- *$Q$ contient trois nombres de même signe.* D'après (R1), les quatre nombres
  $-\frac{p_in_j}{a}$ sont dans $Q$, tous du signe de $a$. Parmi les produits $p_1n_1$, $p_1n_2$,
  $p_2n_1$, $p_2n_2$, deux produits qui ont un facteur commun sont distincts. Les seules égalités
  possibles sont donc $p_1n_1 = p_2n_2$ et $p_1n_2 = p_2n_1$, et elles ne peuvent pas avoir lieu
  toutes les deux : en divisant, on aurait $\frac{n_1}{n_2} = \frac{n_2}{n_1}$, soit
  $n_1^2 = n_2^2$, donc $n_1 = n_2$ puisqu'ils sont de même signe. Il y a donc au moins trois
  produits distincts, et trois éléments de $Q$ de même signe.

Le lemme (axes échangés) donne alors trois éléments de $P$ de même signe, ce qui contredit
l'hypothèse.

**Conclusion :** $X$ contient trois points de l'axe des abscisses d'abscisses non nulles et de
même signe.

**b)** D'après a), $P$ contient trois nombres distincts $x_1$, $x_2$, $x_3$ de même signe. S'ils
sont positifs, c'est fini. Sinon ils sont négatifs. Le lemme donne trois éléments de $Q$ de même
signe ; prenons-en deux, $c_1 \neq c_2$, de sorte que $c_1c_2 > 0$. D'après (R2), les nombres
$-\frac{c_1c_2}{x_1}$, $-\frac{c_1c_2}{x_2}$, $-\frac{c_1c_2}{x_3}$ sont dans $P$ ; ils sont
distincts et strictement positifs.

**Conclusion :** $X$ contient au moins trois points de l'axe des abscisses d'abscisses strictement
positives.

**Bilan.** L'orthocentre du triangle $(0\,;\,a)$, $(b\,;\,0)$, $(c\,;\,0)$ est
$\left(0\,;\,-\frac{bc}{a}\right)$. Il en découle que deux droites perpendiculaires forment un
ensemble orthocentrique, et qu'un ensemble orthocentrique posé sur les deux axes,
dès qu'il a trois points sur l'axe des abscisses en dehors de $O$, en a forcément trois du même
côté de $O$, et même trois d'abscisses strictement positives.

## Going further

- Dans la suite du sujet (exercice 40045), on montrait qu'un ensemble orthocentrique contenu dans
  les deux axes et ayant au moins six points est forcément infini : ses abscisses contiennent une
  suite qui tend vers $+\infty$ et une suite qui tend vers $0$. Pouvez-vous le prouver avec les
  règles (R1) et (R2) ?
- Les ensembles orthocentriques finis contenus dans les deux axes ont au plus cinq points.
  Lesquels sont-ils ?
