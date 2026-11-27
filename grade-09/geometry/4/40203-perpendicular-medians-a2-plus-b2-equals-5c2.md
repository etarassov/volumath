---
id: "40203"
title: "Deux médianes perpendiculaires : a² + b² = 5c²"
grade: 9
theme: geometry
difficulty: 4
duration_min: 50
tags: [mediane, centre-de-gravite, cercle-de-diametre, homothetie, pythagore, lieu-geometrique, inegalite-triangulaire]
adapted_from: null
see_also: ["40204", "40205", "40206", "40207", "0477"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2007, mathématiques, série S"
  reference: "cg-2007-s-sujet.pdf, exercice 3, partie I « Géométrie », questions 1, 2 a) à 2 c) et 4 a), 4 b). Les questions 2 d) et 3 sont dans l'exercice 40204."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2007.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2007-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $ABC$ est un triangle non aplati. On note $a = BC$, $b = CA$ et $c = AB$ les
longueurs de ses côtés. On dit que le triangle $ABC$ est **de type $\mathcal{W}$** si ses médianes
issues de $A$ et de $B$ sont perpendiculaires.

*Rappel.* Les trois médianes d'un triangle se coupent en un point $G$, le centre de gravité. Sur
chaque médiane, $G$ est situé aux deux tiers à partir du sommet. Par exemple, si $I$ est le milieu de
$[AB]$, le point $G$ est sur le segment $[CI]$ et $IG = \frac{1}{3}\,IC$.

1. Montrer qu'il existe des triangles $ABC$ tels que
   $$c^2 = \frac{b^2}{2} = \frac{a^2}{3} .$$
   Montrer qu'un tel triangle est rectangle en $A$ et qu'il est de type $\mathcal{W}$.

2. Dans cette question, on fixe deux points $A$ et $B$, on note $I$ le milieu de $[AB]$, et on
   considère l'ensemble $\Gamma$ des points $C$ tels que le triangle $ABC$ soit de type $\mathcal{W}$.

   a) Déterminer l'ensemble des centres de gravité $G$ des triangles $ABC$, lorsque $C$ décrit
   $\Gamma$.

   b) En déduire l'ensemble $\Gamma$.

   c) Déterminer toutes les valeurs que peut prendre le rapport $\frac{b}{c}$ lorsque $C$ décrit
   $\Gamma$.

3. a) Montrer qu'un triangle $ABC$ est de type $\mathcal{W}$ si et seulement si
   $$a^2 + b^2 = 5c^2 .$$

   b) On se donne trois nombres réels strictement positifs $a$, $b$ et $c$ tels que
   $a^2 + b^2 = 5c^2$. Trouver une condition nécessaire et suffisante, portant sur le rapport
   $\frac{a}{b}$, pour que $a$, $b$ et $c$ soient les longueurs des côtés d'un triangle de type
   $\mathcal{W}$.

## Hints

1. **Question 1.** Essayer $c = 1$. Pour l'angle droit, penser à la réciproque du théorème de
   Pythagore.
2. **Question 1.** Dans un triangle rectangle, la médiane issue du sommet de l'angle droit mesure la
   moitié de l'hypoténuse. Calculer $AG^2$ et $BG^2$, puis comparer $AG^2 + BG^2$ et $AB^2$.
3. **Question 2 a).** Si les médianes issues de $A$ et $B$ sont perpendiculaires, l'angle
   $\widehat{AGB}$ est droit. Sur quel cercle se trouve $G$ ? Il faut aussi vérifier la réciproque :
   tout point de ce cercle (sauf deux) est-il bien obtenu ?
4. **Question 2 b).** Le point $G$ est sur $[IC]$ avec $IG = \frac{1}{3}IC$. Comment obtient-on $C$
   à partir de $G$ ?
5. **Question 2 c).** Appeler $H$ le pied de la perpendiculaire à $(AB)$ passant par $C$, et repérer
   $H$ sur la droite $(AB)$ par son abscisse $h$, avec $I$ pour origine. Exprimer $b^2$ en fonction de
   $h$ et de $c$ grâce au théorème de Pythagore.
6. **Question 3 a).** Avec le même point $H$, montrer que pour tout point $C$,
   $a^2 + b^2 = 2\,CI^2 + \frac{c^2}{2}$.
7. **Question 3 b).** Il faut que $a$, $b$, $c$ vérifient les inégalités triangulaires strictes.
   L'une d'elles est toujours vraie. Pour les autres, factoriser $2a^2 - 5ab + 2b^2$.

## Solution

**1.** Prenons $c = 1$, $b = \sqrt{2}$ et $a = \sqrt{3}$ : on a bien $c^2 = 1$, $\frac{b^2}{2} = 1$ et
$\frac{a^2}{3} = 1$. Le plus grand des trois nombres est $a \approx \text{1,73}$, et
$b + c \approx \text{2,41} > a$ : les inégalités triangulaires sont strictes, donc il existe un
triangle non aplati de côtés $a$, $b$, $c$. Plus généralement, pour tout $c > 0$, les longueurs $c$,
$c\sqrt{2}$ et $c\sqrt{3}$ conviennent.

*L'angle droit.* Si $c^2 = \frac{b^2}{2} = \frac{a^2}{3}$, alors $b^2 = 2c^2$ et $a^2 = 3c^2$, donc
$b^2 + c^2 = 3c^2 = a^2$, soit $AC^2 + AB^2 = BC^2$. D'après la réciproque du théorème de Pythagore,
le triangle est rectangle en $A$.

*Les médianes.* Soit $A'$ le milieu de $[BC]$ et $B'$ le milieu de $[AC]$.

- Dans le triangle $ABC$ rectangle en $A$, la médiane $[AA']$ mesure la moitié de l'hypoténuse :
  $AA' = \frac{a}{2}$. Donc $AG = \frac{2}{3} \times \frac{a}{2} = \frac{a}{3}$ et
  $AG^2 = \frac{a^2}{9} = \frac{3c^2}{9} = \frac{c^2}{3}$.
- Le triangle $ABB'$ est rectangle en $A$, avec $AB' = \frac{b}{2}$, donc
  $BB'^2 = c^2 + \frac{b^2}{4} = c^2 + \frac{c^2}{2} = \frac{3c^2}{2}$. Donc
  $BG^2 = \frac{4}{9} \times \frac{3c^2}{2} = \frac{2c^2}{3}$.

Ainsi $AG^2 + BG^2 = \frac{c^2}{3} + \frac{2c^2}{3} = c^2 = AB^2$. D'après la réciproque du théorème
de Pythagore, le triangle $AGB$ est rectangle en $G$ : les médianes $(AG)$ et $(BG)$ sont
perpendiculaires.

**Conclusion :** ces triangles existent, ils sont rectangles en $A$ et de type $\mathcal{W}$.

**2. a)** Notons $\mathcal{C}$ le cercle de diamètre $[AB]$ : son centre est $I$ et son rayon
$\frac{c}{2}$.

*Si $C$ est dans $\Gamma$.* Les médianes issues de $A$ et de $B$ passent par $G$ et sont
perpendiculaires. Le point $G$ est à l'intérieur du triangle, donc distinct de $A$ et de $B$, et
l'angle $\widehat{AGB}$ est droit. Le point $G$ est donc sur le cercle $\mathcal{C}$, et ce n'est ni
$A$ ni $B$.

*Réciproquement*, soit $M$ un point de $\mathcal{C}$ autre que $A$ et $B$. Le cercle $\mathcal{C}$ ne
coupe la droite $(AB)$ qu'en $A$ et $B$, donc $M$ n'est pas sur $(AB)$. Plaçons le point $C$ sur la
demi-droite $[IM)$ tel que $IC = 3\,IM$. Ce point n'est pas sur $(AB)$, donc $ABC$ est un vrai
triangle. Sa médiane issue de $C$ est $[CI]$, et $M$ est sur $[CI]$ avec $IM = \frac{1}{3}IC$ : c'est
le centre de gravité de $ABC$. Comme $M$ est sur le cercle de diamètre $[AB]$, l'angle
$\widehat{AMB}$ est droit, donc les médianes $(AM)$ et $(BM)$ sont perpendiculaires : $C$ est dans
$\Gamma$.

**Conclusion :** l'ensemble des points $G$ est le cercle de diamètre $[AB]$, privé des points $A$ et
$B$.

**b)** Pour $C$ dans $\Gamma$, le point $C$ est sur la demi-droite $[IG)$ avec $IC = 3\,IG$ : il est
l'image de $G$ par l'homothétie de centre $I$ et de rapport $3$. Cette homothétie transforme le
cercle $\mathcal{C}$ (centre $I$, rayon $\frac{c}{2}$) en le cercle de centre $I$ et de rayon
$\frac{3c}{2}$, et les points $A$ et $B$ en les deux points $A_1$ et $B_1$ de la droite $(AB)$ situés
à la distance $\frac{3c}{2}$ de $I$.

**Conclusion :** $\Gamma$ est le cercle de centre $I$ (milieu de $[AB]$) et de rayon $\frac{3c}{2}$,
privé de ses deux points $A_1$ et $B_1$ situés sur la droite $(AB)$.

**c)** Repérons les points de la droite $(AB)$ par leur abscisse, avec $I$ pour origine et le sens de
$A$ vers $B$ : $A$ a pour abscisse $-\frac{c}{2}$ et $B$ a pour abscisse $\frac{c}{2}$. Pour un point
$C$ de $\Gamma$, soit $H$ le pied de la perpendiculaire à $(AB)$ passant par $C$, et $h$ l'abscisse
de $H$. Alors $AH = \lvert h + \frac{c}{2} \rvert$ et, par Pythagore dans le triangle $CHI$ (rectangle
en $H$), $CH^2 = IC^2 - h^2 = \frac{9c^2}{4} - h^2$. Par Pythagore dans le triangle $CHA$ :
$$b^2 = CH^2 + AH^2 = \frac{9c^2}{4} - h^2 + h^2 + hc + \frac{c^2}{4} = \frac{5c^2}{2} + hc .$$
(Les formules restent vraies quand $H = I$ ou $H = A$.)

Quand $C$ décrit $\Gamma$, l'abscisse $h$ prend toutes les valeurs telles que
$-\frac{3c}{2} < h < \frac{3c}{2}$ : pour chacune, la perpendiculaire à $(AB)$ en $H$ coupe le
cercle en deux points qui ne sont pas sur $(AB)$. Les bornes sont exclues, car elles correspondent à
$A_1$ et $B_1$. Alors $b^2 = \frac{5c^2}{2} + hc$ prend toutes les valeurs strictement comprises
entre $\frac{5c^2}{2} - \frac{3c^2}{2} = c^2$ et $\frac{5c^2}{2} + \frac{3c^2}{2} = 4c^2$. Donc $b$
prend toutes les valeurs strictement comprises entre $c$ et $2c$.

**Conclusion :** le rapport $\frac{b}{c}$ prend toutes les valeurs de l'intervalle $]1, 2[$, et
seulement celles-là.

**3. a)** *Une formule valable pour tout point $C$.* Gardons les notations de 2 c), sans supposer
cette fois que $C$ est dans $\Gamma$. On a $AH^2 = \left(h + \frac{c}{2}\right)^2$,
$BH^2 = \left(h - \frac{c}{2}\right)^2$ et $CI^2 = CH^2 + h^2$. Par Pythagore dans $CHA$ et $CHB$ :
$$a^2 + b^2 = 2\,CH^2 + \left(h - \frac{c}{2}\right)^2 + \left(h + \frac{c}{2}\right)^2 = 2\,CH^2 + 2h^2 + \frac{c^2}{2} = 2\,CI^2 + \frac{c^2}{2} .$$

*L'équivalence.* D'après la question 2, le triangle (non aplati) $ABC$ est de type $\mathcal{W}$ si
et seulement si $CI = \frac{3c}{2}$. Et d'après la formule,
$$CI = \frac{3c}{2} \iff CI^2 = \frac{9c^2}{4} \iff a^2 + b^2 = \frac{9c^2}{2} + \frac{c^2}{2} = 5c^2 .$$

**Conclusion :** $ABC$ est de type $\mathcal{W}$ si et seulement si $a^2 + b^2 = 5c^2$.

**b)** D'après 3 a), il suffit que $a$, $b$, $c$ soient les côtés d'un triangle non aplati : ce
triangle vérifiera $a^2 + b^2 = 5c^2$, donc sera de type $\mathcal{W}$. Il faut et il suffit donc que
les trois inégalités triangulaires strictes soient vraies :
$$c < a + b, \qquad a < b + c, \qquad b < a + c .$$

- La première est toujours vraie : $c^2 = \frac{a^2 + b^2}{5} < a^2 + b^2 < (a + b)^2$.
- Les deux autres reviennent à $\lvert a - b \rvert < c$, c'est-à-dire $(a - b)^2 < c^2$. En
  multipliant par $5$ :
  $$5(a - b)^2 < a^2 + b^2 \iff 4a^2 - 10ab + 4b^2 < 0 \iff 2a^2 - 5ab + 2b^2 < 0 .$$
  En développant, on vérifie que $2a^2 - 5ab + 2b^2 = (2a - b)(a - 2b)$. En divisant par $b^2 > 0$ et
  en posant $r = \frac{a}{b}$, la condition devient $(2r - 1)(r - 2) < 0$. Un produit de deux nombres
  est négatif quand ils sont de signes contraires. Le cas $2r - 1 < 0$ et $r - 2 > 0$ est impossible
  ($r$ ne peut pas être à la fois plus petit que $\frac{1}{2}$ et plus grand que $2$). Il reste
  $2r - 1 > 0$ et $r - 2 < 0$, c'est-à-dire $\frac{1}{2} < r < 2$.

**Conclusion :** $a$, $b$, $c$ sont les côtés d'un triangle de type $\mathcal{W}$ si et seulement si
$\frac{1}{2} < \frac{a}{b} < 2$.

**Bilan.** Quand on fixe $A$ et $B$, les triangles $ABC$ dont les médianes issues de $A$ et $B$ sont
perpendiculaires sont ceux dont le sommet $C$ est sur un cercle de centre le milieu $I$ de $[AB]$ et
de rayon $\frac{3}{2}AB$. En traduisant cela avec les longueurs, on obtient la relation simple
$a^2 + b^2 = 5c^2$, et des longueurs qui vérifient cette relation forment un triangle exactement
quand $\frac{a}{b}$ est entre $\frac{1}{2}$ et $2$.

## Going further

- La formule $a^2 + b^2 = 2\,CI^2 + \frac{c^2}{2}$ de la question 3 a) s'appelle le théorème de la
  médiane. Elle donne la longueur d'une médiane à partir des trois côtés.
- Trouver un triangle de type $\mathcal{W}$ dont les trois côtés sont des nombres entiers. (Il en
  existe un avec $c = 13$.) Dans la suite du sujet, on cherchait tous ces triangles : voir les
  exercices 40205 et 40206.
- Dans la question 3 du sujet, on fixait cette fois $A$ et $C$, et l'on cherchait où peut être $B$ :
  voir l'exercice 40204.
