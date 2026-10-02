---
id: "8021"
title: "Un nombre plus son miroir"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, retenues, parite, raisonnement-par-l-absurde, demonstration]
adapted_from: null
see_also: []
same_as: ["0690"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath du 6 juin 2017, énoncés collège, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soit $n$ un nombre entier à cinq chiffres, et soit $m$ le nombre obtenu en renversant l'ordre
de ses chiffres. Par exemple, si $n = 34\,170$, alors $m = 07\,143$, c'est-à-dire $7\,143$.

Montrer que l'écriture de $n + m$ comporte au moins un chiffre pair.

## Hints

1. Raisonne par l'absurde : suppose que tous les chiffres de $n + m$ sont impairs.
2. Note $\overline{abcde}$ l'écriture de $n$. Pose l'addition en colonnes et regarde ce qui
   s'additionne dans chaque colonne. La colonne du milieu est particulière.
3. La colonne des centaines contient $c + c$, qui est pair. Que faut-il alors pour que le
   chiffre des centaines soit impair ?
4. Une fois que tu sais qu'il y a une retenue qui sort de la colonne des dizaines, remonte
   jusqu'à la colonne des dix milliers.

## Solution

**Mise en place.** Notons $a$, $b$, $c$, $d$, $e$ les chiffres de $n$, de gauche à droite, de
sorte que $n = \overline{abcde}$ et $m = \overline{edcba}$.

Posons l'addition en colonnes :

| | dix milliers | milliers | centaines | dizaines | unités |
|---|---|---|---|---|---|
| $n$ | $a$ | $b$ | $c$ | $d$ | $e$ |
| $m$ | $e$ | $d$ | $c$ | $b$ | $a$ |
| somme de la colonne | $a + e$ | $b + d$ | $2c$ | $b + d$ | $a + e$ |

Les colonnes symétriques portent donc la même somme, et la colonne du milieu porte $c + c = 2c$,
qui est **pair**.

Raisonnons par l'absurde : supposons que tous les chiffres de $n + m$ soient impairs.

**Première étape : la colonne des unités.** Le chiffre des unités de $n + m$ est le chiffre des
unités de $a + e$. Il est impair, donc

$$a + e \text{ est impair.}$$

Notons $r$ la retenue qui sort de la colonne des unités : $r$ vaut $0$ ou $1$.

**Deuxième étape : la colonne des centaines force une retenue.** Dans la colonne des centaines,
on additionne $2c$ et la retenue qui sort de la colonne des dizaines ; appelons-la $r'$. Le
chiffre des centaines a la même parité que $2c + r'$. Comme $2c$ est pair et que ce chiffre
doit être impair, on a nécessairement

$$r' = 1,$$

c'est-à-dire : **la colonne des dizaines déborde**, son total vaut au moins $10$.

**Troisième étape : $b + d \geqslant 10$.** Le total de la colonne des dizaines vaut $b + d + r$,
et l'on vient de voir qu'il vaut au moins $10$. Deux cas :

- *si $r = 0$* : alors $b + d \geqslant 10$ directement ;
- *si $r = 1$* : le chiffre des dizaines est le chiffre des unités de $b + d + 1$, et il est
  impair, donc $b + d + 1$ est impair, donc $b + d$ est **pair**. Par ailleurs
  $b + d + 1 \geqslant 10$, donc $b + d \geqslant 9$ ; étant pair, $b + d \geqslant 10$.

Dans les deux cas,

$$b + d \geqslant 10 .$$

**Quatrième étape : la retenue remonte jusqu'au bout.** La colonne des milliers porte encore
$b + d$, plus éventuellement une retenue entrante. Son total est donc au moins $10$ : elle
déborde à son tour, et une retenue de $1$ entre dans la colonne des dix milliers.

**Cinquième étape : la contradiction.** La colonne des dix milliers totalise $a + e + 1$. Or
$a + e$ est impair, donc $a + e + 1$ est **pair**, et le chiffre des dix milliers de $n + m$,
qui est le chiffre des unités de $a + e + 1$, est donc pair lui aussi.

*(Si $a + e + 1 \geqslant 10$, le résultat a six chiffres : le chiffre de tête est $1$ et celui
des dix milliers vaut $a + e + 1 - 10$, qui est encore pair. La conclusion ne change pas.)*

Cela contredit l'hypothèse que tous les chiffres de $n + m$ sont impairs.

**Conclusion : l'écriture de $n + m$ comporte toujours au moins un chiffre pair.**

## Going further

Le ressort du problème est la colonne du milieu : elle est la seule à porter deux fois le même
chiffre, donc la seule dont le total soit pair d'office. C'est elle qui oblige une retenue à
naître, et cette retenue se propage jusqu'au bout et empoisonne la dernière colonne.

Un nombre à quatre chiffres n'a pas de colonne du milieu, et l'énoncé y est faux : pour
$n = 1234$ on a $m = 4321$ et $n + m = 5555$.
