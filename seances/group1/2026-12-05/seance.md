---
title: "Inégalités : un carré est toujours positif"
group: "Groupe 1 : 3e"
date: 2026-12-05
blocks:
  1:
    title: "Un carré est toujours positif"
    exercises: ["0677", "4203", "22031", "0678", "0880", "0888", "13828", "8422"]
  2:
    title: "Faire apparaître des carrés"
    exercises: ["8423", "0152", "10637", "4217", "8111", "8515", "22037", "11830", "0890"]
  3:
    title: "Le lemme du tourniquet"
    exercises: ["8421", "8622", "41121", "10455", "13044", "8516"]
---

## Overview

**Organisation.** La séance a trois parties, chacune autour d'une idée sur les inégalités.
Dans chaque partie, des rappels d'arithmétique (séance du 3 octobre sur la divisibilité) sont
mélangés aux exercices d'algèbre, et l'ensemble va du plus facile au plus difficile. Les
exercices d'arithmétique sont courts : ils servent de respiration entre deux inégalités et
font revenir les outils de la séance précédente.

Il n'est pas nécessaire de tout faire. Chaque note de partie dit quels exercices sont pour
tout le monde, lesquels sont pour ceux qui avancent, et lequel est un bonus.

**L'introduction : ce qu'il faut montrer.**

1. Comparer deux nombres $A$ et $B$, c'est étudier le signe de la différence $A - B$.
2. Un carré est toujours positif ou nul, et il est nul seulement quand le nombre élevé au
   carré est nul. Une somme de carrés est donc positive ou nulle, et elle est nulle
   seulement quand chacun des carrés est nul.
3. Les règles de calcul :
   - on peut additionner deux inégalités de même sens ;
   - multiplier les deux membres par un nombre strictement positif garde le sens, par un
     nombre strictement négatif le change ;
   - on ne peut **pas** soustraire ni diviser deux inégalités membre à membre. Contre-exemple :
     $3 \geqslant 2$ et $3 \geqslant 0$, mais $3 - 3 \geqslant 2 - 0$ est faux.
4. Le cas d'égalité : il y a égalité à la fin seulement si chaque inégalité utilisée en
   route est une égalité. Puis on vérifie que les valeurs trouvées donnent bien l'égalité.
5. La rédaction : on part de ce qui est vrai (un carré est positif) pour arriver au résultat.
   On ne part jamais de la conclusion avec des flèches « donc ».

**Le fil rouge.** Les sept exercices du cours de Valbonne (stage POFM 2022, « Inégalités 2 »)
servent de jalons. Le premier, $x + \frac{1}{x} \geqslant 2$, est l'exemple fait au tableau
au début de la partie 1. Les six autres sont sur la feuille :

| Cours | Feuille | Idée |
|---|---|---|
| exemple 2 | n° 5 | multiplier par $x > 0$, puis reconnaître $(x-y)^2$ |
| exemple 3 | n° 14 | deux carrés cachés |
| exemple 4 | n° 17 | trois carrés cachés |
| exemple 5 | n° 18 | le lemme du tourniquet |
| exemple 6 | n° 20 | le tourniquet déguisé |
| exemple 7 | n° 23 | le tourniquet comme outil |

**Les rappels d'arithmétique.** Rappeler en deux minutes, au début ou au premier exercice
d'arithmétique, les outils du 3 octobre dont on aura besoin :

- si $d$ divise $a$ et $b$, il divise $a + b$ et $a - b$ (n° 12, 15, 22) ;
- un diviseur d'un entier $n$ non nul est au plus égal à $n$ en valeur absolue (n° 3, 12, 22).
  Une inégalité au service de l'arithmétique : c'est le pont entre les deux sujets du jour ;
- le reste d'une somme ou d'un produit ne dépend que des restes ; le chiffre des unités est
  le reste dans la division par $10$ (n° 7) ;
- $a^2 - b^2 = (a - b)(a + b)$, et un nombre premier ne s'écrit comme produit de deux entiers
  positifs que sous la forme $1 \times p$ (n° 9, 16) ;
- la parité et le principe des tiroirs (n° 19) ;
- l'écriture d'un nombre avec ses chiffres (n° 2).

## Block 1

**Déroulement.** Après l'introduction, laisser les élèves chercher le n° 1 tout de suite
($a^2 + b^2 \geqslant 2ab$). Le corriger au tableau, puis l'écrire dans un coin, où il
restera toute la séance :

$$a^2 + b^2 \geqslant 2ab \quad \text{pour tous } a, b, \quad \text{avec égalité seulement si } a = b.$$

**L'exemple au tableau : $x + \frac{1}{x} \geqslant 2$ pour $x > 0$.** Rédaction modèle :

$$x + \frac{1}{x} - 2 = \frac{x^2 - 2x + 1}{x} = \frac{(x-1)^2}{x}.$$

Le numérateur est un carré, donc positif ou nul, et $x > 0$, donc la fraction est positive ou
nulle. Égalité seulement si $(x - 1)^2 = 0$, c'est-à-dire $x = 1$, et on vérifie :
$1 + \frac{1}{1} = 2$. Faire remarquer qu'on aurait aussi pu multiplier les deux membres par
$x$, ce qui est permis parce que $x > 0$.

**Pour tout le monde :** n° 1, 2, 3, 4 et 5. **Pour ceux qui avancent :** n° 6, 7 et 8.

**Les liens.**

- n° 4 : les cinq inégalités sont $a^2 + b^2 \geqslant 2ab$ avec autre chose à la place de
  $a$ et $b$ ($a^2$ et $b^2$, $a^2$ et $b$, $2a$ et $b$...). La question 3,
  $4a^2 + b^2 \geqslant 4ab$, resservira au n° 14, et la question 5 annonce la partie 2.
- n° 5 : c'est l'exemple du tableau avec $y$ à la place de $1$. Pour $y = 1$ on le retrouve.
- n° 6 : même méthode que l'exemple. Après avoir multiplié par $x$, le carré caché est
  $(x^2 - 1)^2$.
- n° 8 : en développant, $(x+1)(y+1) = 2 + x + y$, et comme $y = \frac{1}{x}$ on retombe
  sur l'exemple du tableau.
- n° 3 : $n^2 + 1 > n$ dès que $n \geqslant 1$, donc $n^2 + 1$ ne peut pas diviser $n$.
  Il reste $n = 0$, qui marche, car tout entier divise $0$.
- n° 7 : seul le chiffre des unités compte. Les chiffres des unités des puissances de $3$
  reviennent tous les $4$ : $3, 9, 7, 1, 3, \ldots$

## Block 2

**L'idée.** Quand l'expression n'est pas directement de la forme $a^2 - 2ab + b^2$, on
regroupe les termes pour faire apparaître des carrés.

**À montrer au tableau : compléter un carré.** Sur un exemple qui n'est pas sur la feuille :

$$x^2 - 6x + 10 = (x^2 - 6x + 9) + 1 = (x - 3)^2 + 1 \geqslant 1.$$

Donc $x^2 - 6x + 10$ vaut toujours au moins $1$, et vaut $1$ seulement pour $x = 3$. On
cherche le carré qui donne le bon terme « croisé » ($-6x$ vient de $(x-3)^2$), puis on
regarde ce qui reste.

**Pour tout le monde :** n° 9, 10, 11 et 13. **Pour ceux qui avancent :** n° 12, 14, 15 et 16.
**Bonus :** n° 17, l'exemple 4 du cours. La décomposition
$(a + 4b)^2 + (a - 2c)^2 + (2b - c)^2$ est difficile à trouver seul. Si un élève bloque, lui
dire de partir du seul terme en $ab$, $+8ab$, qui vient de $(a + 4b)^2$, puis de regarder ce
qui reste.

**Les liens.**

- n° 14 (exemple 3 du cours) : on coupe $5x^2 = 4x^2 + x^2$. Alors
  $4x^2 + y^2 \geqslant 4xy$ (n° 4, question 3) et $x^2 + 1 \geqslant 2x$. En additionnant
  on obtient le résultat. Autre écriture : $(2x - y)^2 + (x - 1)^2$.
- n° 13 : avec $s = a + b$, le membre de gauche vaut $s^2 - 2s + 2 = (s - 1)^2 + 1$.
  C'est l'exemple du tableau.
- n° 10 : un rectangle de côtés $x$ et $y$ a une aire $xy$ au plus égale à
  $\left(\frac{x+y}{2}\right)^2$, l'aire du carré de même périmètre. C'est le n° 1 vu sur
  un dessin. La question a) est le n° 1 lui-même : les élèves peuvent la sauter.
- n° 11 : après développement, deux fois la forme du n° 5, car $y + \frac{4}{y} = y + \frac{2^2}{y} \geqslant 2 \times 2$.
- n° 9 et n° 16 : $a^2 - b^2 = (a - b)(a + b)$. Pour qu'un produit d'entiers positifs soit
  premier, un des facteurs doit valoir $1$.
- n° 12 : le $\mathrm{PGCD}$ divise $a$ et $b$, donc $a - b$, qui est strictement positif. Un
  diviseur d'un entier strictement positif ne le dépasse pas.
- n° 15 : $n + 1$ divise $(n - 1)(n + 1) = n^2 - 1$, donc il divise la différence
  $(n^2 + 1) - (n^2 - 1) = 2$.

## Block 3

**À faire au tableau après le n° 18.** Laisser les élèves chercher le n° 18, puis le corriger
et lui donner son nom :

$$\text{Lemme du tourniquet :} \quad a^2 + b^2 + c^2 \geqslant ab + bc + ca, \quad \text{égalité seulement si } a = b = c.$$

Montrer les deux preuves : additionner $a^2 + b^2 \geqslant 2ab$, $b^2 + c^2 \geqslant 2bc$
et $c^2 + a^2 \geqslant 2ca$, ou bien développer $(a-b)^2 + (b-c)^2 + (c-a)^2$. L'écrire à
côté de $a^2 + b^2 \geqslant 2ab$ dans le coin du tableau.

Puis annoncer les deux usages : le reconnaître sous un déguisement (n° 20) et s'en servir
comme outil (n° 23).

**Pour tout le monde :** n° 18, 19 et 20. **Pour ceux qui avancent :** n° 21 et 22.
**Bonus :** n° 23.

**Les liens.**

- n° 20 (exemple 6 du cours) : on pose $a = x$, $b = y^2$, $c = z^3$, et c'est le
  tourniquet. Le cas d'égalité est $x = y^2 = z^3$, et pas seulement $x = y = z$.
- n° 21 : le même jeu de substitution, mais avec $a^2 + b^2 \geqslant 2ab$. On développe et
  on fait trois paires : $a^2 + (bc)^2 \geqslant 2abc$, et de même pour les deux autres.
- n° 19 : les mêmes trois différences $a - b$, $b - c$, $c - a$ que dans la deuxième preuve
  du tourniquet, mais multipliées au lieu d'être élevées au carré, et la question porte sur
  la parité. Deux des trois nombres ont la même parité, donc une
  des différences est paire.
- n° 22 : $n - 2015$ divise $n$ et se divise lui-même, donc il divise la différence $2015$.
  Comme $2015 = 5 \times 13 \times 31$ a $8$ diviseurs, il y a $8$ entiers qui conviennent.
- n° 23 (exemple 7 du cours) : $(a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca)$, puis le
  tourniquet donne $(a+b+c)^2 \geqslant 3(ab + bc + ca) = 3$.
