---
id: "40522"
title: "L'ordre de Clara pèse au plus deux fois le meilleur"
grade: 9
theme: algebra
difficulty: 5
duration_min: 50
tags: [valeur-absolue, inegalite, algorithme-glouton, sommes-partielles, inegalite-triangulaire, disjonction-de-cas, majoration-et-exemple]
adapted_from: null
see_also: ["40521"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème I « Petits poids », question 5° (a à e). Les définitions du préambule sont reprises dans l'énoncé, et |x| y est défini comme la distance de x à 0."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

Pour un nombre $x$, on note $|x|$ sa distance à $0$ : $|x| = x$ si $x \geqslant 0$, et
$|x| = -x$ si $x < 0$.

Pour une liste de nombres $(x_1, x_2, \ldots, x_n)$, on appelle *poids* de la liste le plus
grand des nombres $|x_1|$, $|x_1 + x_2|$, …, $|x_1 + x_2 + \cdots + x_n|$. Par exemple, le
poids de $(4, 4, 0, -9)$ est $8$, car les sommes successives sont $4$, $8$, $8$, $-1$.

On donne à Isabelle et à Clara la même liste de $n$ nombres, avec $n \geqslant 4$.

*Isabelle* essaie tous les ordres possibles de ces $n$ nombres, calcule le poids de chacun et
garde un ordre dont le poids est le plus petit. On note $I$ ce poids minimal.

*Clara*, plus pressée, choisit d'abord un nombre $c_1$ tel que $|c_1|$ soit le plus petit
possible. Puis, après avoir choisi $c_1, \ldots, c_i$, elle choisit $c_{i+1}$ parmi les nombres
restants de façon que $|c_1 + \cdots + c_i + c_{i+1}|$ soit le plus petit possible. Quand
plusieurs nombres conviennent, elle prend n'importe lequel d'entre eux. Elle obtient une liste
$(c_1, \ldots, c_n)$, dont on note $C$ le poids.

On pose enfin

$$M = \text{le plus grand des nombres } |x_1|, |x_2|, \ldots, |x_n|, \qquad S = |x_1 + x_2 + \cdots + x_n| ,$$

et on note $N$ le plus grand des deux nombres $M$ et $S$.

1. Montrer que $S \leqslant I$.
2. Montrer que $M \leqslant 2I$.
3. Montrer que $C \leqslant N$, quels que soient les choix de Clara.
4. En déduire que $C \leqslant 2I$.
5. Trouver $n$ nombres $x_1, x_2, \ldots, x_n$, non tous nuls, pour lesquels $C = 2I$.

## Hints

1. **Question 1.** Dans n'importe quel ordre, que vaut la dernière somme ?
2. **Question 2.** Dans l'ordre d'Isabelle, chaque nombre est la différence de deux sommes
   successives. Et si $x$ et $y$ sont deux nombres, peut-on comparer $|x - y|$ et
   $|x| + |y|$ ?
3. **Question 3.** Commencer par une remarque : si $x$ et $y$ sont de signes contraires, la
   somme $x + y$ est comprise entre $x$ et $y$. Que peut-on en dire de $|x + y|$ ?
4. **Question 3.** Raisonner par l'absurde : si une somme de Clara est à distance plus grande
   que $N$ de $0$, regarder la *première* d'entre elles, $s_{i+1} = c_1 + \cdots + c_{i+1}$.
   La somme précédente $s_i$ (avec $s_0 = 0$) vérifie $|s_i| \leqslant N$.
5. **Question 3.** Séparer deux cas : ou bien il reste, au moment du choix de $c_{i+1}$, un
   nombre de signe contraire à $s_i$, ou bien tous les nombres restants sont du même signe que
   $s_i$. Dans le second cas, comment évoluent les sommes jusqu'à la fin ?
6. **Question 5.** Essayer avec $n = 4$ et les nombres $1$, $-1$, $2$, $-2$. Pour $n > 4$, on
   peut ajouter des nombres qui ne changent rien.

## Solution

On utilisera deux remarques sur les distances à $0$.

- *(R1) Si $x$ et $y$ sont de signes contraires* (l'un $\geqslant 0$, l'autre $\leqslant 0$),
  alors $|x + y|$ est au plus égal au plus grand des nombres $|x|$ et $|y|$. En effet, si par
  exemple $x \geqslant 0 \geqslant y$, alors $y \leqslant x + y \leqslant x$ : la somme est
  entre $y$ et $x$, donc pas plus loin de $0$ que le plus éloigné des deux.
- *(R2)* Pour tous nombres $x$ et $y$, $|x + y| \leqslant |x| + |y|$ et
  $|x - y| \leqslant |x| + |y|$. Si $x$ et $y$ sont de même signe, $|x + y| = |x| + |y|$ ; sinon
  (R1) donne mieux. Et $|x - y| = |x + (-y)|$ avec $|-y| = |y|$.

**1.** Quel que soit l'ordre, la dernière somme est $x_1 + x_2 + \cdots + x_n$, donc le poids de
n'importe quel ordre est au moins $S$. C'est vrai en particulier pour l'ordre d'Isabelle :
$S \leqslant I$.

**2.** Notons $(y_1, \ldots, y_n)$ l'ordre d'Isabelle et $P_k = y_1 + \cdots + y_k$ ses sommes
successives, avec $P_0 = 0$. Par définition de $I$, $|P_k| \leqslant I$ pour tout $k$ (et
aussi pour $k = 0$). Chaque nombre de la liste est l'un des $y_k = P_k - P_{k-1}$, et (R2) donne

$$|y_k| \leqslant |P_k| + |P_{k-1}| \leqslant I + I = 2I .$$

Donc $M \leqslant 2I$.

**3.** Notons $s_i = c_1 + \cdots + c_i$ les sommes de Clara, avec $s_0 = 0$. Supposons, par
l'absurde, que l'une d'elles vérifie $|s_k| > N$, et prenons la première : $s_{i+1}$, avec
$|s_{i+1}| > N$ et $|s_i| \leqslant N$ (c'est vrai aussi si $i = 0$, car $s_0 = 0$). Au moment
où Clara choisit $c_{i+1}$, il lui reste des nombres. Deux cas sont possibles.

*Premier cas : parmi les nombres restants, il y en a un, $r$, de signe contraire à $s_i$*
(c'est toujours le cas si $s_i = 0$). D'après (R1),
$|s_i + r| \leqslant$ le plus grand des nombres $|s_i|$ et $|r|$, donc $|s_i + r| \leqslant N$,
car $|s_i| \leqslant N$ et $|r| \leqslant M \leqslant N$. Clara choisit le nombre qui rend la
somme la plus proche de $0$, donc $|s_{i+1}| \leqslant |s_i + r| \leqslant N$.

*Second cas : tous les nombres restants sont du même signe que $s_i$*, par exemple tous
strictement positifs avec $s_i > 0$. Alors, quel que soit l'ordre dans lequel Clara les
ajoute, les sommes $s_{i+1}, s_{i+2}, \ldots, s_n$ sont positives et augmentent. Donc
$|s_{i+1}| \leqslant |s_n| = S \leqslant N$. Le cas négatif est symétrique.

Dans les deux cas, $|s_{i+1}| \leqslant N$, ce qui contredit le choix de $s_{i+1}$. Donc toutes
les sommes de Clara sont à distance au plus $N$ de $0$.

**Conclusion :** $C \leqslant N$.

**4.** D'après les questions 1 et 2, $S \leqslant I \leqslant 2I$ et $M \leqslant 2I$, donc
$N \leqslant 2I$. Avec la question 3, $C \leqslant N \leqslant 2I$.

**5.** Prenons les nombres $1$, $-1$, $2$, $-2$, complétés par $n - 4$ zéros.

*Isabelle.* L'ordre $(1, -2, 2, -1, 0, \ldots, 0)$ a pour sommes $1$, $-1$, $1$, $0$, $0$, …,
$0$, donc un poids $1$. Aucun ordre ne fait mieux : la première somme non nulle est égale au
premier nombre non nul de la liste, qui est à distance au moins $1$ de $0$. Donc $I = 1$.

*Clara.* Tant que la somme vaut $0$ et qu'il reste un zéro, elle prend un zéro : c'est le seul
choix qui laisse la somme à $0$. Quand les zéros sont épuisés, elle prend $1$ ou $-1$ (les plus
proches de $0$), puis le nombre opposé, seul choix qui ramène la somme à $0$ (les autres la
mettent à distance $1$ ou $3$). Il ne reste alors que $2$ et $-2$ : la somme suivante vaut $2$
ou $-2$, puis la dernière vaut $0$. Les sommes de Clara sont donc à distance $0$, $1$ ou $2$
de $0$, et $C = 2$, quels que soient ses choix.

**Conclusion :** pour cette liste, $C = 2 = 2I$.

**Bilan.** Quelle que soit la liste de nombres, la méthode rapide de Clara, qui choisit à
chaque étape le nombre qui ramène la somme le plus près de $0$, donne un poids au plus double
du meilleur poids possible. La clé est que ses sommes ne dépassent jamais le plus grand des
nombres $M$ et $S$, alors que le poids d'Isabelle est au moins $S$ et au moins la moitié de
$M$. Le facteur $2$ ne peut
pas être amélioré, car la liste $1$, $-1$, $2$, $-2$ (complétée par des zéros) l'atteint.

## Going further

- Pour $n = 2$, on a toujours $C = I$, et pour $n = 3$, $C \leqslant \frac{3}{2} I$ : voir
  l'exercice 40521. Pourquoi l'exemple de la question 5 demande-t-il au moins quatre nombres ?
- Trouver une liste de cinq nombres, *tous non nuls*, pour laquelle $C = 2I$.
