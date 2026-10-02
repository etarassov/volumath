---
id: "12014"
title: "Le plus grand parallélogramme dans un triangle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [aires, parallelogramme, triangle, thales, maximum, second degre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 4 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf (le corrigé déforme le parallélogramme par une suite d'opérations ; solution réécrite en coupant le triangle par des droites parallèles à un côté du parallélogramme)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

Soit $ABC$ un triangle d'aire $1$.

Quelle est la plus grande aire possible d'un parallélogramme dont les quatre sommets sont à l'intérieur du triangle $ABC$ ou sur ses côtés ?

## Hints

1. Essayez le parallélogramme dont les sommets sont $B$, le milieu de $[BC]$, le milieu de $[CA]$ et le milieu de $[AB]$. Quelle est son aire ?
2. Tournez la figure pour que deux côtés du parallélogramme soient horizontaux. Coupez le triangle et le parallélogramme par une droite horizontale : quelle est la longueur du morceau qui tombe dans le parallélogramme ?
3. Pour le triangle, regardez la droite horizontale qui passe par le sommet « du milieu », ni le plus haut ni le plus bas. Avec le théorème de Thalès, exprimez la longueur du morceau horizontal du triangle à chaque hauteur.
4. Si les côtés horizontaux du parallélogramme mesurent $L$, à quelles hauteurs le triangle est-il assez large pour contenir un segment horizontal de longueur $L$ ? Il restera à chercher le maximum de $x(1 - x)$.

## Solution

**Réponse.** L'aire maximale vaut $\dfrac{1}{2}$.

**Un parallélogramme d'aire $\frac{1}{2}$.** Notons $I$, $J$, $K$ les milieux de $[BC]$, $[CA]$ et $[AB]$. D'après le théorème des milieux, $(KJ)$ est parallèle à $(BC)$ et $KJ = \dfrac{BC}{2} = BI$. Le quadrilatère $BIJK$ a deux côtés opposés parallèles et de même longueur : c'est un parallélogramme.

Les trois segments $[IJ]$, $[JK]$, $[KI]$ découpent $ABC$ en quatre triangles qui sont des réductions de $ABC$ de rapport $\dfrac{1}{2}$ (toujours d'après le théorème des milieux). Chacun a donc pour aire $\left(\dfrac{1}{2}\right)^2 \times 1 = \dfrac{1}{4}$. Le parallélogramme $BIJK$ est formé de deux de ces triangles, $BIK$ et $IJK$ : son aire vaut $\dfrac{1}{2}$.

**On ne peut pas faire mieux.** Soit $EFGH$ un parallélogramme dont les sommets sont dans le triangle ou sur ses côtés. Comme le triangle est convexe, tout le parallélogramme est dans le triangle.

Plaçons-nous dans un repère orthonormé dont l'axe des abscisses est parallèle à $(EF)$ : les côtés $[EF]$ et $[HG]$ sont horizontaux. On appellera *hauteur* d'un point son ordonnée. Quitte à changer les noms des sommets du triangle, on suppose que $A$ est le plus bas, $C$ le plus haut et $B$ entre les deux :

$$y_A \le y_B \le y_C .$$

Posons $W = y_C - y_A$, la différence de hauteur entre le point le plus haut et le point le plus bas du triangle.

![Le triangle ABC avec le segment horizontal [BD] en pointillés, le parallélogramme EFGH grisé avec deux côtés horizontaux, et une droite horizontale qui coupe le triangle et le parallélogramme](12014-figure-1.svg)

**Étape 1 : la largeur du triangle à chaque hauteur.** La droite horizontale qui passe par $B$ coupe le côté $[AC]$ en un point $D$. Notons $M = BD$. Le segment $[BD]$ découpe $ABC$ en deux triangles $ABD$ et $CBD$ de même base $[BD]$, de hauteurs $y_B - y_A$ et $y_C - y_B$. Donc

$$1 = \text{aire}(ABC) = \frac{M\,(y_B - y_A)}{2} + \frac{M\,(y_C - y_B)}{2} = \frac{M\,W}{2}, \qquad \text{d'où} \qquad M\,W = 2 .$$

Pour une hauteur $t$ entre $y_A$ et $y_C$, la droite horizontale de hauteur $t$ coupe le triangle selon un segment ; notons $\ell(t)$ sa longueur.

- Si $y_A \le t \le y_B$, ce segment est parallèle à $[BD]$ dans le triangle $ABD$, et le théorème de Thalès donne $\ell(t) = M \times \dfrac{t - y_A}{y_B - y_A}$.
- Si $y_B \le t \le y_C$, de même dans le triangle $CBD$ : $\ell(t) = M \times \dfrac{y_C - t}{y_C - y_B}$.

(Si deux sommets ont la même hauteur, l'une des deux parties se réduit à une seule valeur de $t$, où $\ell(t) = M$, et la suite reste valable.) En particulier $\ell(t) \le M$ pour tout $t$.

**Étape 2 : là où le triangle est assez large.** Soit $L$ un nombre avec $0 < L \le M$, et posons $x = \dfrac{L}{M}$. D'après les formules de l'étape 1 :

- pour $y_A \le t \le y_B$, on a $\ell(t) \ge L$ si et seulement si $t \ge t_1 = y_A + x\,(y_B - y_A)$ ;
- pour $y_B \le t \le y_C$, on a $\ell(t) \ge L$ si et seulement si $t \le t_2 = y_C - x\,(y_C - y_B)$.

Les hauteurs $t$ où $\ell(t) \ge L$ forment donc l'intervalle $[t_1, t_2]$, dont la longueur vaut

$$t_2 - t_1 = (y_C - y_A) - x\,(y_B - y_A) - x\,(y_C - y_B) = W - xW = W\,(1 - x) .$$

**Étape 3 : la largeur du parallélogramme.** Notons $L = EF$, et $s_1 < s_2$ les hauteurs des côtés $[EF]$ et $[HG]$. Leur différence $h = s_2 - s_1$ est la distance entre les droites $(EF)$ et $(HG)$, donc

$$\text{aire}(EFGH) = L \times h .$$

Soit $t$ une hauteur entre $s_1$ et $s_2$. La droite horizontale de hauteur $t$ coupe $[EH]$ en $E'$ et $[FG]$ en $F'$. Le quadrilatère $EFF'E'$ a ses côtés opposés parallèles, c'est un parallélogramme, donc $E'F' = EF = L$. Ce segment $[E'F']$ est dans le triangle, sur la droite de hauteur $t$, donc $\ell(t) \ge L$.

Ainsi $\ell(t) \ge L$ pour toutes les hauteurs $t$ de $s_1$ à $s_2$. Cela montre d'abord que $L \le M$. Ensuite, d'après l'étape 2, l'intervalle $[s_1, s_2]$ est contenu dans $[t_1, t_2]$, donc

$$h \le W\,(1 - x), \qquad \text{avec } x = \frac{L}{M} .$$

**Étape 4 : la conclusion.** On en déduit, en écrivant $L = xM$ et en utilisant $MW = 2$,

$$\text{aire}(EFGH) = L\,h \le xM \times W\,(1 - x) = 2\,x\,(1 - x) .$$

Or $x\,(1 - x) = \dfrac{1}{4} - \left(x - \dfrac{1}{2}\right)^2 \le \dfrac{1}{4}$. Donc $\text{aire}(EFGH) \le 2 \times \dfrac{1}{4} = \dfrac{1}{2}$.

**Conclusion.** Un parallélogramme placé dans un triangle d'aire $1$ a une aire au plus égale à $\dfrac{1}{2}$, et la valeur $\dfrac{1}{2}$ est atteinte par le parallélogramme $BIJK$ construit sur un sommet et trois milieux. L'aire maximale vaut $\dfrac{1}{2}$.
