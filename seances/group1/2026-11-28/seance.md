---
title: "Inégalités : un carré est toujours positif"
group: "Groupe 1 : 3e"
date: 2026-11-28
blocks:
  1:
    title: "Un carré est toujours positif"
    exercises: ["0677", "41122", "41125", "0678", "41128", "0880", "41123", "0888", "41127", "8422"]
  2:
    title: "Faire apparaître des carrés"
    exercises: ["41124", "8423", "0152", "41126", "10637", "13828", "8111", "4217", "8515", "22037", "11830", "0890"]
  3:
    title: "Le lemme du tourniquet"
    exercises: ["8421", "8622", "41121", "4220", "10455", "41129", "13044", "8516"]
---

## Overview

**Organisation.** La séance a trois parties, chacune autour d'une idée sur les inégalités.
Dans chaque partie, des exercices d'arithmétique sont mélangés aux exercices d'algèbre, et
l'ensemble va du plus facile au plus difficile. Les exercices d'arithmétique sont courts : ils
servent de respiration entre deux inégalités et font revenir les outils de la séance du
3 octobre sur la divisibilité. Huit d'entre eux viennent de la feuille « Делимость » du stage
MathCool d'août 2026 (n° 2, 3, 5, 7, 9, 11, 14 et 28), et le n° 26 en est aussi, déjà présent
dans la base.

Il n'est pas nécessaire de tout faire : il y a trente exercices. Chaque note de partie dit
quels exercices sont pour tout le monde, lesquels sont pour ceux qui avancent, et lequel est
un bonus.

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
| exemple 2 | n° 6 | multiplier par $x > 0$, puis reconnaître $(x-y)^2$ |
| exemple 3 | n° 19 | deux carrés cachés |
| exemple 4 | n° 22 | trois carrés cachés |
| exemple 5 | n° 23 | le lemme du tourniquet |
| exemple 6 | n° 25 | le tourniquet déguisé |
| exemple 7 | n° 30 | le tourniquet comme outil |

**Les rappels d'arithmétique.** Rappeler en deux minutes, au début ou au premier exercice
d'arithmétique, les outils du 3 octobre dont on aura besoin :

- un nombre $d$ divise $n$ quand on retrouve tous les facteurs premiers de $d$ dans ceux de
  $n$, chacun au moins autant de fois (n° 2, 11, 14, 26, 28) ;
- si un nombre est divisible par $a$ et par $b$, et si $a$ et $b$ n'ont pas de facteur
  premier commun, il est divisible par $a \times b$ ; sinon, pas forcément (n° 3, 5) ;
- si $d$ divise $a$ et $b$, il divise $a + b$ et $a - b$ (n° 18, 20, 29) ;
- un diviseur d'un entier $n$ non nul est au plus égal à $n$ en valeur absolue (n° 7, 18, 29).
  Une inégalité au service de l'arithmétique : c'est le pont entre les deux sujets du jour ;
- les critères de divisibilité par $3$ et par $9$ (n° 9, 14) ;
- le reste d'une somme ou d'un produit ne dépend que des restes ; le chiffre des unités est
  le reste dans la division par $10$ (n° 16) ;
- $a^2 - b^2 = (a - b)(a + b)$, et un nombre premier ne s'écrit comme produit de deux entiers
  positifs que sous la forme $1 \times p$ (n° 12, 21) ;
- la parité et le principe des tiroirs (n° 24).

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

**Pour tout le monde :** n° 1 à 6. **Pour ceux qui avancent :** n° 7 à 10.

**Les liens.**

- n° 4 : les cinq inégalités sont $a^2 + b^2 \geqslant 2ab$ avec autre chose à la place de
  $a$ et $b$ ($a^2$ et $b^2$, $a^2$ et $b$, $2a$ et $b$...). La question 3,
  $4a^2 + b^2 \geqslant 4ab$, resservira au n° 19, et la question 5 annonce la partie 2.
- n° 6 : c'est l'exemple du tableau avec $y$ à la place de $1$. Pour $y = 1$ on le retrouve.
- n° 8 : même méthode que l'exemple. Après avoir multiplié par $x$, le carré caché est
  $(x^2 - 1)^2$.
- n° 10 : en développant, $(x+1)(y+1) = 2 + x + y$, et comme $y = \frac{1}{x}$ on retombe
  sur l'exemple du tableau.
- n° 2 : décomposer d'abord ($1001 = 7 \times 11 \times 13$, $256 = 2^8$), puis ranger les
  diviseurs par paires $d$ et $n \div d$ pour n'en oublier aucun.
- n° 3 : c'est l'exercice 2 de la séance du 3 octobre, un bon test de ce qui est resté. Non :
  $12$ est divisible par $4$ et par $6$, mais pas par $24$, car $4$ et $6$ ont le facteur $2$
  en commun.
- n° 5 : cette fois la règle s'applique : $2$, $3$ et $5$ n'ont pas de facteur commun, donc
  la prochaine journée chargée est dans $2 \times 3 \times 5 = 30$ jours.
- n° 7 : a) $1$, $2$, $3$ ; b) n'importe quels trois nombres, avec leur somme comme diviseur,
  puisqu'elle est plus grande que chacun d'eux. Encore une inégalité au service de la
  divisibilité.
- n° 9 : en cents, le total vaut $300 + 6p$, un multiple de $3$ quel que soit le prix $p$ des
  allumettes. Or la somme des chiffres de $1180$ vaut $10$.

## Block 2

**L'idée.** Quand l'expression n'est pas directement de la forme $a^2 - 2ab + b^2$, on
regroupe les termes pour faire apparaître des carrés.

**À montrer au tableau : compléter un carré.** Sur un exemple qui n'est pas sur la feuille :

$$x^2 - 6x + 10 = (x^2 - 6x + 9) + 1 = (x - 3)^2 + 1 \geqslant 1.$$

Donc $x^2 - 6x + 10$ vaut toujours au moins $1$, et vaut $1$ seulement pour $x = 3$. On
cherche le carré qui donne le bon terme « croisé » ($-6x$ vient de $(x-3)^2$), puis on
regarde ce qui reste.

**Pour tout le monde :** n° 11, 12, 13, 15 et 17. **Pour ceux qui avancent :** n° 14, 16,
18, 19, 20 et 21. **Bonus :** n° 22, l'exemple 4 du cours. La décomposition
$(a + 4b)^2 + (a - 2c)^2 + (2b - c)^2$ est difficile à trouver seul. Si un élève bloque, lui
dire de partir du seul terme en $ab$, $+8ab$, qui vient de $(a + 4b)^2$, puis de regarder ce
qui reste.

**Les liens.**

- n° 19 (exemple 3 du cours) : on coupe $5x^2 = 4x^2 + x^2$. Alors
  $4x^2 + y^2 \geqslant 4xy$ (n° 4, question 3) et $x^2 + 1 \geqslant 2x$. En additionnant
  on obtient le résultat. Autre écriture : $(2x - y)^2 + (x - 1)^2$.
- n° 17 : avec $s = a + b$, le membre de gauche vaut $s^2 - 2s + 2 = (s - 1)^2 + 1$.
  C'est l'exemple du tableau.
- n° 13 : un rectangle de côtés $x$ et $y$ a une aire $xy$ au plus égale à
  $\left(\frac{x+y}{2}\right)^2$, l'aire du carré de même périmètre. C'est le n° 1 vu sur
  un dessin. La question a) est le n° 1 lui-même : les élèves peuvent la sauter.
- n° 15 : après développement, deux fois la forme du n° 6, car $y + \frac{4}{y} = y + \frac{2^2}{y} \geqslant 2 \times 2$.
- n° 11 : les chiffres n'utilisent que les nombres premiers $2$, $3$, $5$ et $7$. Donc
  $630 = 2 \times 5 \times 7 \times 9$ marche (par exemple $2579$), mais pas $5500$, qui
  contient $11$, ni $2014 = 2 \times 19 \times 53$.
- n° 14 : le produit vaut $3^2 \times 5 \times 7 \times 11^2 \times 61$, et
  $6039 = 3 \times 2013 = 3^2 \times 11 \times 61$. Il est divisible par $3$, $9$, $35$, $55$
  et $6039$, pas par $2$ ni par $80$.
- n° 12 et n° 21 : $a^2 - b^2 = (a - b)(a + b)$. Pour qu'un produit d'entiers positifs soit
  premier, un des facteurs doit valoir $1$.
- n° 16 : seul le chiffre des unités compte. Les chiffres des unités des puissances de $3$
  reviennent tous les $4$ : $3, 9, 7, 1, 3, \ldots$
- n° 18 : le $\mathrm{PGCD}$ divise $a$ et $b$, donc $a - b$, qui est strictement positif. Un
  diviseur d'un entier strictement positif ne le dépasse pas.
- n° 20 : $n + 1$ divise $(n - 1)(n + 1) = n^2 - 1$, donc il divise la différence
  $(n^2 + 1) - (n^2 - 1) = 2$.

## Block 3

**À faire au tableau après le n° 23.** Laisser les élèves chercher le n° 23, puis le corriger
et lui donner son nom :

$$\text{Lemme du tourniquet :} \quad a^2 + b^2 + c^2 \geqslant ab + bc + ca, \quad \text{égalité seulement si } a = b = c.$$

Montrer les deux preuves : additionner $a^2 + b^2 \geqslant 2ab$, $b^2 + c^2 \geqslant 2bc$
et $c^2 + a^2 \geqslant 2ca$, ou bien développer $(a-b)^2 + (b-c)^2 + (c-a)^2$. L'écrire à
côté de $a^2 + b^2 \geqslant 2ab$ dans le coin du tableau.

Puis annoncer les deux usages : le reconnaître sous un déguisement (n° 25) et s'en servir
comme outil (n° 30).

**Pour tout le monde :** n° 23, 24, 25 et 26. **Pour ceux qui avancent :** n° 27, 28 et 29.
**Bonus :** n° 30.

**Les liens.**

- n° 25 (exemple 6 du cours) : on pose $a = x$, $b = y^2$, $c = z^3$, et c'est le
  tourniquet. Le cas d'égalité est $x = y^2 = z^3$, et pas seulement $x = y = z$.
- n° 27 : le même jeu de substitution, mais avec $a^2 + b^2 \geqslant 2ab$. On développe et
  on fait trois paires : $a^2 + (bc)^2 \geqslant 2abc$, et de même pour les deux autres.
- n° 24 : les mêmes trois différences $a - b$, $b - c$, $c - a$ que dans la deuxième preuve
  du tourniquet, mais multipliées au lieu d'être élevées au carré, et la question porte sur
  la parité. Deux des trois nombres ont la même parité, donc une des différences est paire.
- n° 26 : chaque zéro final vient d'un facteur $10 = 2 \times 5$, et il y a plus de facteurs
  $2$ que de facteurs $5$. On compte donc les facteurs $5$ : $2$ zéros pour $10!$, et
  $20 + 4 = 24$ zéros pour $100!$ (les multiples de $25$ apportent un second $5$).
- n° 28 : $6 = 2 \times 3$, $10 = 2 \times 5$ et $15 = 3 \times 5$ conviennent. Chaque
  nombre partage un facteur premier avec chacun des deux autres, et aucun ne divise un autre.
- n° 29 : $n - 2015$ divise $n$ et se divise lui-même, donc il divise la différence $2015$.
  Comme $2015 = 5 \times 13 \times 31$ a $8$ diviseurs, il y a $8$ entiers qui conviennent.
- n° 30 (exemple 7 du cours) : $(a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca)$, puis le
  tourniquet donne $(a+b+c)^2 \geqslant 3(ab + bc + ca) = 3$.
