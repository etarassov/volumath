---
id: "40443"
title: "Prolonger une suite pour la rendre superbe"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, construction, multiples, puissances-de-deux, base-deux]
adapted_from: null
see_also: ["40441", "40442"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème I « De superbes suites », question 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2013-s-sujet.pdf"
---

## Statement

Dans cet exercice, une *suite finie* est une liste $(a_1, a_2, \ldots, a_n)$ d'entiers strictement
positifs. On dit qu'elle est **superbe** si chacun de ses termes divise la somme de tous ses
termes. Par exemple, $(3, 3, 6, 12)$ est superbe : la somme vaut $24$, qui est un multiple de
$3$, de $6$ et de $12$.

*Prolonger* une suite $(a_1, \ldots, a_n)$, c'est lui ajouter des termes à la fin, autant qu'on
veut : on obtient une suite $(a_1, \ldots, a_n, a_{n+1}, \ldots, a_m)$.

Soit $n \geq 4$ un entier, et soit $(a_1, a_2, \ldots, a_n)$ une suite d'entiers strictement
positifs tous différents, qui n'est pas forcément superbe.

1. Montrer qu'on peut prolonger cette suite de façon à obtenir une suite superbe.
2. Montrer qu'on peut la prolonger de façon à obtenir une suite superbe dont les termes sont tous
   différents.

## Hints

1. **Question 1.** Le nombre $1$ divise tous les entiers. Que se passe-t-il si l'on ajoute
   beaucoup de termes égaux à $1$ ?
2. **Question 1.** Il suffit que la nouvelle somme soit un multiple commun de $a_1, \ldots, a_n$,
   par exemple un multiple de leur produit $P$.
3. **Question 2.** Notons $S = a_1 + \cdots + a_n$. Pour que les nouveaux termes ne soient égaux à
   aucun des anciens, on peut les choisir tous multiples de $S$ : ils sont alors au moins égaux à
   $S$, qui est plus grand que chacun des $a_i$.
4. **Question 2.** Si les nouveaux termes sont $S c_1, \ldots, S c_m$, la somme totale vaut
   $S\,(1 + c_1 + \cdots + c_m)$. On cherche donc un multiple $K$ de $P$, et des diviseurs de $K$
   tous différents, $c_1, \ldots, c_m$, dont la somme vaut $K - 1$.
5. **Question 2.** Essayer $K = 2^t P$, avec $t$ assez grand pour que $2^t \geq P$. On a
   $P + 2P + 4P + \cdots + 2^{t-1}P = K - P$. Il reste à écrire $P - 1$ comme une somme de
   puissances de $2$ toutes différentes : c'est l'écriture de $P - 1$ en base deux.

## Solution

Dans toute la solution, $S = a_1 + a_2 + \cdots + a_n$ est la somme des termes et
$P = a_1 \times a_2 \times \cdots \times a_n$ leur produit. Chaque $a_i$ divise $P$.

**1.** On ajoute à la suite $PS - S$ termes égaux à $1$. Ce nombre est positif, car $P \geq 2$
(les termes sont différents, donc au moins un est supérieur ou égal à $2$). La nouvelle somme vaut
$$S + (PS - S) \times 1 = PS.$$
Chaque $a_i$ divise $P$, donc divise $PS$ ; et $1$ divise $PS$. La suite obtenue est superbe.

*Exemple.* Pour $(2, 3, 4, 5)$ : $S = 14$, $P = 120$, on ajoute $1666$ termes égaux à $1$, et
la somme devient $1680 = 14 \times 120$.

**2.** *Un outil : l'écriture en base deux.* Tout entier $m \geq 1$ est une somme de puissances
de $2$ toutes différentes. On prend la plus grande puissance de $2$ inférieure ou égale à $m$,
disons $2^j$, puis on recommence avec le reste $m - 2^j$. Ce reste est strictement plus petit
que $2^j$ (sinon $2^{j+1}$ serait encore inférieur ou égal à $m$), donc la puissance suivante sera
plus petite : on n'utilise jamais deux fois la même. Par exemple $23 = 16 + 4 + 2 + 1$.

*Choix de $K$.* Choisissons un entier $t$ tel que $2^t \geq P$, et posons $K = 2^t P$. C'est un
multiple de $P$. Considérons les nombres suivants :

- $P,\ 2P,\ 4P,\ \ldots,\ 2^{t-1}P$, dont la somme vaut $(1 + 2 + \cdots + 2^{t-1})\,P = (2^t - 1)\,P = K - P$ (en effet
  $1 = 2 - 1$, $1 + 2 = 4 - 1$, $1 + 2 + 4 = 8 - 1$, et quand on ajoute la puissance suivante
  $2^i$ à une somme égale à $2^i - 1$, on obtient $2^i - 1 + 2^i = 2^{i+1} - 1$) ;
- les puissances de $2$ de l'écriture en base deux de $P - 1$ (qui vaut au moins $1$), dont la
  somme vaut $P - 1$.

Appelons $c_1, \ldots, c_m$ tous ces nombres. Ils vérifient trois propriétés.

- *Ils sont tous différents.* Dans chaque groupe, c'est clair. Les nombres du premier groupe sont
  au moins égaux à $P$, ceux du second au plus égaux à $P - 1$.
- *Ils divisent tous $K$.* Le nombre $2^i P$ avec $i < t$ divise $2^t P$. Une puissance $2^i$ du
  second groupe vérifie $2^i \leq P - 1 < 2^t$, donc $i < t$, et $2^i$ divise $2^t$, qui divise
  $K$.
- *Leur somme vaut* $(K - P) + (P - 1) = K - 1$.

*Le prolongement.* On ajoute à la suite les termes $S c_1, S c_2, \ldots, S c_m$. La nouvelle
somme vaut
$$S + S\,(c_1 + \cdots + c_m) = S + S\,(K - 1) = S K.$$

- Chaque $a_i$ divise $P$, qui divise $K$, donc $a_i$ divise $SK$.
- Chaque nouveau terme $S c_j$ divise $SK$, puisque $c_j$ divise $K$.
- Les nouveaux termes sont différents entre eux, car les $c_j$ le sont. Ils sont au moins égaux à
  $S$, et $S$ est strictement plus grand que chaque $a_i$ (c'est une somme de plusieurs nombres
  strictement positifs). Ils sont donc différents des anciens termes, qui étaient déjà tous
  différents entre eux.

La suite prolongée est superbe et ses termes sont tous différents.

*Exemple.* Pour $(1, 2, 3, 4)$ : $S = 10$, $P = 24$, on prend $t = 5$ ($2^5 = 32 \geq 24$) et
$K = 768$. Les $c_j$ sont $24, 48, 96, 192, 384$ et $16, 4, 2, 1$ (car $23 = 16 + 4 + 2 + 1$). On
ajoute donc les termes
$$240,\ 480,\ 960,\ 1920,\ 3840,\ 160,\ 40,\ 20,\ 10,$$
et la somme totale vaut $7680 = 10 \times 768$, qui est divisible par chacun des treize termes.

**Bilan.** Une suite d'entiers strictement positifs tous différents, d'au moins quatre termes, se
prolonge toujours en une suite superbe. Avec des termes ajoutés égaux à $1$, c'est immédiat. Pour
que la suite prolongée ait elle aussi des termes tous différents, on ajoute des multiples de la
somme $S$, et l'écriture en base deux permet d'atteindre exactement un multiple commun de tous
les termes.

## Going further

- L'hypothèse $n \geq 4$ du sujet ne sert pas : la construction marche dès que la suite a au moins
  deux termes. Où a-t-on utilisé qu'il y en a au moins deux ?
- Peut-on toujours se contenter d'ajouter **un seul** terme ? Essayer avec $(1, 2, 3, 5)$.
  *Réponse : non. Le terme ajouté $x$ devrait diviser $11 + x$, donc diviser $11$, et la nouvelle
  somme $11 + x$ devrait être un multiple de $30$. Ni $x = 1$ ni $x = 11$ ne conviennent.*
- Le début du problème est dans les exercices 40441 et 40442.
