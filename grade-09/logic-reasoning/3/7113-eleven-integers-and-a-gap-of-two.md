---
id: "7113"
title: "Onze entiers et un écart de deux"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [tiroirs, entiers, parite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Débutants : lundi, test final », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

On choisit onze entiers **différents** compris entre $1$ et $20$.

Montrer que deux d'entre eux ont une différence égale à $2$.

## Hints

1. Deux nombres dont la différence vaut $2$ ont la même parité. Commence donc par séparer
   les nombres pairs des nombres impairs.
2. Écris les impairs à la suite : $1, 3, 5, \ldots, 19$. Deux nombres **voisins** dans cette
   liste diffèrent de $2$. On cherche donc à éviter de prendre deux voisins.
3. Dans une liste de dix éléments, combien peut-on en choisir au maximum sans jamais en
   prendre deux qui soient voisins ?
4. Compte combien tu peux prendre d'impairs au maximum, puis combien de pairs, et additionne.

## Solution

**On sépare selon la parité.** Si deux entiers ont une différence égale à $2$, ils sont de
même parité. Rangeons donc les entiers de $1$ à $20$ en deux listes :

$$\text{les impairs :} \quad 1, \ 3, \ 5, \ 7, \ 9, \ 11, \ 13, \ 15, \ 17, \ 19$$

$$\text{les pairs :} \quad 2, \ 4, \ 6, \ 8, \ 10, \ 12, \ 14, \ 16, \ 18, \ 20$$

Chaque liste compte dix nombres, et dans chaque liste, **deux nombres voisins diffèrent
exactement de $2$**. Il s'agit donc de montrer qu'on ne peut pas choisir onze nombres sans
jamais en prendre deux voisins dans une même liste.

**Combien peut-on prendre dans une liste de dix ?** Prenons la liste des impairs et
groupons ses dix nombres en cinq paires de voisins :

$$\{1, 3\}, \quad \{5, 7\}, \quad \{9, 11\}, \quad \{13, 15\}, \quad \{17, 19\} .$$

Si l'on choisissait deux nombres d'une même paire, on aurait deux nombres de différence $2$
et le problème serait résolu. Supposons donc que ce ne soit pas le cas : on prend alors au
plus un nombre dans chacune des cinq paires, donc **au plus cinq nombres impairs**.

Le même découpage sur la liste des pairs, avec les paires $\{2,4\}$, $\{6,8\}$, $\{10,12\}$,
$\{14,16\}$, $\{18,20\}$, donne **au plus cinq nombres pairs**.

**On conclut.** Si aucune paire de nombres choisis n'avait une différence de $2$, on aurait
choisi au plus

$$5 + 5 = 10$$

nombres. Or on en a choisi onze. C'est impossible.

**Donc deux des onze nombres choisis ont bien une différence égale à $2$.**

## Going further

Le résultat est le meilleur possible : avec **dix** nombres on peut échouer. Il suffit de
prendre

$$1, \ 2, \ 5, \ 6, \ 9, \ 10, \ 13, \ 14, \ 17, \ 18 ,$$

c'est-à-dire un nombre dans chacune des dix paires, et l'on vérifie qu'aucune différence ne
vaut $2$ : les écarts entre nombres consécutifs de cette liste valent alternativement $1$ et
$3$.

Une question pour continuer : combien d'entiers faut-il choisir entre $1$ et $20$ pour être
sûr d'en avoir deux dont la différence vaut $3$ ?
