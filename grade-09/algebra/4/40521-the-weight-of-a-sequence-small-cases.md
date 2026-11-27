---
id: "40521"
title: "Le poids d'une suite : Isabelle cherche partout, Clara va au plus près"
grade: 9
theme: algebra
difficulty: 4
duration_min: 45
tags: [valeur-absolue, inegalite, algorithme-glouton, permutations, sommes-partielles, disjonction-de-cas, optimisation]
adapted_from: null
see_also: ["40522"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème I « Petits poids », questions 1° à 4°. La notation |x| est définie ici comme la distance de x à 0."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

Pour un nombre $x$, on note $|x|$ sa distance à $0$ : $|x| = x$ si $x \geqslant 0$, et
$|x| = -x$ si $x < 0$. Par exemple $|4| = 4$ et $|-9| = 9$.

Pour une liste de $n$ nombres $(x_1, x_2, \ldots, x_n)$, avec $n \geqslant 2$, on appelle *poids*
de la liste le plus grand des nombres

$$|x_1|, \quad |x_1 + x_2|, \quad \ldots, \quad |x_1 + x_2 + \cdots + x_n| .$$

Par exemple, le poids de $(4, 4, 0, -9)$ est $8$, car $|4| = 4$, $|4 + 4| = 8$,
$|4 + 4 + 0| = 8$ et $|4 + 4 + 0 - 9| = 1$. Le poids de $(-9, 4, 0, 4)$ est $9$, car les quatre
nombres à comparer sont $9$, $5$, $5$ et $1$. Les deux listes contiennent les mêmes nombres dans
un ordre différent, et leurs poids sont différents.

1. a) Déterminer le poids de la liste $(3, 5, -6, -8, 2)$.

   b) Déterminer le poids de la liste $(1, 2, 3, \ldots, 2015, -2015, -2014, \ldots, -2, -1)$, qui
   contient $4030$ nombres.

   c) Dans chacun de ces deux exemples, ranger les nombres dans un autre ordre de façon à
   obtenir un poids plus petit.

On donne à Isabelle et à Clara la même liste de $n$ nombres.

*Isabelle* essaie tous les ordres possibles de ces $n$ nombres, calcule le poids de chacun et
garde un ordre dont le poids est le plus petit. On note $I$ ce poids minimal.

*Clara*, plus pressée, procède ainsi. Elle choisit d'abord, parmi les $n$ nombres, un nombre
$c_1$ tel que $|c_1|$ soit le plus petit possible. Puis elle choisit $c_2$ parmi les $n - 1$
nombres restants de façon que $|c_1 + c_2|$ soit le plus petit possible. Et ainsi de suite :
après avoir choisi $c_1, \ldots, c_i$, elle choisit $c_{i+1}$ parmi les nombres restants de
façon que $|c_1 + \cdots + c_i + c_{i+1}|$ soit le plus petit possible. Quand plusieurs nombres
conviennent, elle prend n'importe lequel d'entre eux. Elle obtient une liste
$(c_1, \ldots, c_n)$, dont on note $C$ le poids.

2. Déterminer $I$ et $C$ dans les deux cas suivants.

   a) $n = 3$ et les nombres sont $1$, $2$, $-4$.

   b) $n = 4$ et les nombres sont $1$, $-1$, $2$, $-2$.

3. On suppose $n = 2$. Montrer que $I = C$.

4. On suppose $n = 3$. Montrer que $C \leqslant \frac{3}{2} I$, quels que soient les choix de
   Clara.

## Hints

1. **Question 1 b).** Les sommes $x_1$, $x_1 + x_2$, … augmentent tant qu'on ajoute des nombres
   positifs, puis diminuent. Où est la plus grande ?
2. **Question 1 c).** Pour que les sommes restent petites, faire suivre un nombre positif d'un
   nombre négatif, et inversement.
3. **Question 2.** Avec trois nombres, il n'y a que six ordres : les écrire tous. Avec quatre
   nombres, remarquer que le premier nombre de la liste a toujours une distance à $0$ au moins
   égale à $1$.
4. **Question 3.** Écrire les deux ordres possibles et leurs poids. Lequel des deux Clara
   choisit-elle ?
5. **Question 4.** Appeler $a$ le premier nombre choisi par Clara, et $b$, $d$ les deux autres.
   Montrer d'abord que $|c_1| \leqslant I$ et $|c_1 + c_2 + c_3| \leqslant I$. Il reste à
   majorer $|c_1 + c_2|$, qui est le plus petit des deux nombres $|a + b|$ et $|a + d|$.
6. **Question 4.** Regarder à quelle place se trouve $a$ dans l'ordre choisi par Isabelle. S'il
   est à la première ou à la deuxième place, la deuxième somme d'Isabelle est $a + b$ ou
   $a + d$.
7. **Question 4.** Sinon, Isabelle commence par $b$ (par exemple), donc $|b| \leqslant I$ et
   $|b + d| \leqslant I$. Si $a$ et $b$ sont de signes contraires, $a + b$ est compris entre
   $a$ et $b$. S'ils sont de même signe, écrire $a + d = (b + d) + (a - b)$.

## Solution

On utilisera deux remarques sur les distances à $0$.

- *(R1) Si $x$ et $y$ sont de signes contraires* (l'un $\geqslant 0$, l'autre $\leqslant 0$),
  alors $|x + y| \leqslant$ le plus grand des deux nombres $|x|$ et $|y|$. En effet, si par
  exemple $x \geqslant 0 \geqslant y$, alors $y \leqslant x + y \leqslant x$ : la somme est
  entre $y$ et $x$, donc elle n'est pas plus loin de $0$ que le plus éloigné des deux.
- *(R2) Si $x$ et $y$ sont de même signe*, alors $|x + y| = |x| + |y|$. Avec (R1), on obtient
  dans tous les cas $|x + y| \leqslant |x| + |y|$.

**1. a)** Les sommes successives sont $3$, $8$, $2$, $-6$, $-4$. Leurs distances à $0$ sont
$3$, $8$, $2$, $6$, $4$. Le poids est $8$.

**b)** Les sommes augmentent jusqu'à $1 + 2 + \cdots + 2015$, puis diminuent jusqu'à $0$. Elles
restent toutes positives, donc le poids est

$$1 + 2 + \cdots + 2015 = \frac{2015 \times 2016}{2} = 2\,031\,120 .$$

**c)** Pour la première liste, l'ordre $(2, -6, 5, 3, -8)$ donne les sommes $2$, $-4$, $1$, $4$,
$-4$, donc un poids $4$, plus petit que $8$. (On ne peut pas faire mieux : il faut bien ajouter
$-8$ à un moment, et passer d'une somme à la suivante en ajoutant $-8$ oblige l'une des deux à
être à distance au moins $4$ de $0$.)

Pour la seconde, l'ordre $(1, -1, 2, -2, 3, -3, \ldots, 2015, -2015)$ donne les sommes $1$,
$0$, $2$, $0$, $3$, $0$, …, $2015$, $0$, donc un poids $2015$, bien plus petit que
$2\,031\,120$.

**2. a)** Les six ordres et leurs sommes successives :

| ordre | sommes | poids |
|---|---|---|
| $(1, 2, -4)$ | $1, 3, -1$ | $3$ |
| $(2, 1, -4)$ | $2, 3, -1$ | $3$ |
| $(1, -4, 2)$ | $1, -3, -1$ | $3$ |
| $(2, -4, 1)$ | $2, -2, -1$ | $2$ |
| $(-4, 1, 2)$ | $-4, -3, -1$ | $4$ |
| $(-4, 2, 1)$ | $-4, -2, -1$ | $4$ |

Donc $I = 2$.

Clara commence par $c_1 = 1$, le nombre le plus proche de $0$. Ensuite $|1 + 2| = 3$ et
$|1 - 4| = 3$ : les deux choix sont à égalité, et dans les deux cas la deuxième somme vaut $3$
en distance à $0$. La dernière somme est $-1$. Donc $C = 3$, quel que soit son choix.

**b)** Pour Isabelle, l'ordre $(1, -2, 2, -1)$ donne les sommes $1$, $-1$, $1$, $0$, donc un
poids $1$. Aucun ordre ne fait mieux, car le premier nombre de la liste est toujours à
distance au moins $1$ de $0$. Donc $I = 1$.

Clara commence par $1$ ou par $-1$. Si elle prend $1$, le meilleur choix suivant est $-1$, qui
ramène la somme à $0$. Ensuite elle doit ajouter $2$ ou $-2$, et la somme passe à distance $2$
de $0$, puis revient à $0$. De même si elle commence par $-1$. Donc $C = 2$.

**3.** Avec deux nombres $x$ et $y$, il n'y a que deux ordres. Le poids de $(x, y)$ est le plus
grand des nombres $|x|$ et $|x + y|$, celui de $(y, x)$ le plus grand des nombres $|y|$ et
$|x + y|$. Le nombre $|x + y|$ est commun aux deux, donc le plus petit poids est obtenu en
commençant par celui des deux nombres qui est le plus proche de $0$. C'est exactement ce que
fait Clara.

**Conclusion :** pour $n = 2$, $C = I$.

**4.** Notons $(y_1, y_2, y_3)$ l'ordre choisi par Isabelle, de sorte que
$|y_1| \leqslant I$, $|y_1 + y_2| \leqslant I$ et $|y_1 + y_2 + y_3| \leqslant I$. Notons $a$
le premier nombre choisi par Clara et $b$, $d$ les deux autres.

- $|c_1| = |a| \leqslant |y_1| \leqslant I$, car Clara a pris le nombre le plus proche de $0$.
- $c_1 + c_2 + c_3 = y_1 + y_2 + y_3$ est la somme des trois nombres, donc
  $|c_1 + c_2 + c_3| \leqslant I$.
- Clara choisit $c_2$ parmi $b$ et $d$ de façon à rendre $|a + c_2|$ le plus petit possible,
  donc $|c_1 + c_2|$ est le plus petit des deux nombres $|a + b|$ et $|a + d|$.

Il reste à montrer que l'un au moins des nombres $|a + b|$ et $|a + d|$ est inférieur ou égal
à $\frac{3}{2} I$.

*Premier cas : $a$ est à la première ou à la deuxième place chez Isabelle.* Alors $y_1 + y_2$
est égal à $a + b$ ou à $a + d$, et $|y_1 + y_2| \leqslant I$. C'est terminé.

*Second cas : $a$ est à la dernière place.* Alors Isabelle commence par $b$ et $d$, dans un
certain ordre. Quitte à échanger les noms $b$ et $d$, on peut supposer $y_1 = b$ et
$y_2 = d$. On sait donc que $|b| \leqslant I$ et $|b + d| \leqslant I$. De plus
$|a| \leqslant |b|$, puisque Clara a commencé par $a$.

- Si $a$ et $b$ sont de signes contraires, (R1) donne $|a + b| \leqslant |b| \leqslant I$.
- Si $a$ et $b$ sont de même signe, (R2) donne $|a + b| = |a| + |b| \leqslant |a| + I$. D'autre
  part $a - b$ est à distance $|b| - |a|$ de $0$ (deux nombres de même signe, $b$ plus loin de
  $0$ que $a$), et $a + d = (b + d) + (a - b)$, donc
  $$|a + d| \leqslant |b + d| + |a - b| \leqslant I + I - |a| = 2I - |a| .$$
  Si $|a| \leqslant \frac{1}{2} I$, alors $|a + b| \leqslant \frac{1}{2} I + I = \frac{3}{2} I$.
  Sinon $|a| > \frac{1}{2} I$ et $|a + d| \leqslant 2I - |a| < \frac{3}{2} I$.

Dans tous les cas, le plus petit des deux nombres $|a + b|$ et $|a + d|$ est au plus
$\frac{3}{2} I$, donc $|c_1 + c_2| \leqslant \frac{3}{2} I$.

**Conclusion :** les trois sommes de Clara sont à distance au plus $\frac{3}{2} I$ de $0$, donc
$C \leqslant \frac{3}{2} I$. L'exemple de la question 2 a) ($I = 2$, $C = 3$) montre que ce
résultat ne peut pas être amélioré : le facteur $\frac{3}{2}$ est atteint.

**Bilan.** Ranger des nombres pour que leurs sommes successives restent proches de $0$ peut se
faire en essayant tous les ordres (Isabelle) ou en choisissant à chaque étape le nombre qui
ramène le plus près de $0$ (Clara). La méthode rapide de Clara donne le meilleur résultat pour
deux nombres, et pour trois nombres un poids au plus une fois et demie le meilleur, ce facteur
étant atteint par la liste $1$, $2$, $-4$.

## Going further

- Dans la suite du sujet, on montrait que pour $n \geqslant 4$ nombres, on a toujours
  $C \leqslant 2I$, et que le facteur $2$ peut être atteint : voir l'exercice 40522.
- Quel est le plus petit poids possible pour la liste de la question 1 b) ? On pourra
  commencer par montrer qu'il vaut au moins $1008$, en regardant le moment où l'on ajoute
  $2015$.
