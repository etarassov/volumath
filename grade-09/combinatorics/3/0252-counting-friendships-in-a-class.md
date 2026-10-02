---
id: "0252"
title: "Trois, quatre ou cinq amis dans la classe"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [double-comptage, parite, amities, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, письменная работа, задача 5"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Une classe compte 25 élèves.

Est-il possible que, dans cette classe, 6 élèves aient exactement 3 amis, 10 élèves
exactement 4 amis, et les 9 autres exactement 5 amis ?

On ne compte que les amitiés à l'intérieur de la classe, et l'amitié est réciproque : si
Anne est amie avec Bruno, alors Bruno est ami avec Anne.

## Hints

1. Une amitié, c'est une paire d'élèves. Essaie de compter combien il y a d'amitiés dans la classe.
2. Additionne les nombres d'amis de tous les élèves : $6 \times 3 + 10 \times 4 + 9 \times 5$. Dans cette somme, une même amitié est-elle comptée une fois ou plusieurs fois ?
3. Chaque amitié est comptée deux fois, une fois par chacun des deux amis. Le nombre d'amitiés vaut donc la moitié de cette somme. Calcule la somme et regarde si sa moitié est un nombre entier.

## Solution

**L'idée : compter la même chose de deux façons, puis regarder la parité.**

**Étape 1. Compter les amitiés.**

Appelons *amitié* une paire d'élèves qui sont amis. Comptons le nombre total d'amitiés
dans la classe.

Demandons à chaque élève combien il a d'amis, et additionnons toutes les réponses :
$$6 \times 3 + 10 \times 4 + 9 \times 5 = 18 + 40 + 45 = 103 .$$

**Étape 2. Voir que chaque amitié est comptée deux fois.**

Prenons une amitié, par exemple entre Anne et Bruno. Anne l'a comptée dans son nombre
d'amis, et Bruno l'a comptée dans le sien. Elle apparaît donc exactement deux fois dans
la somme, et c'est vrai pour toutes les amitiés.

La somme 103 est donc le double du nombre d'amitiés :
$$\text{nombre d'amitiés} = \frac{103}{2} .$$

**Étape 3. Conclure.**

Un nombre d'amitiés est un nombre entier. Or 103 est impair, donc $\dfrac{103}{2}$ n'est
pas un entier. C'est impossible.

**Conclusion.** Non, une telle classe ne peut pas exister. La somme des nombres d'amis de
tous les élèves doit toujours être paire, et ici elle vaut 103.

**Remarque.** Le nombre 25 d'élèves n'a servi à rien : seuls comptent les nombres d'amis.
On retiendra la règle générale : *dans n'importe quel groupe, la somme des nombres d'amis
de tous les membres est toujours paire.*

## Going further

1. Modifie un seul des trois nombres de l'énoncé pour que la situation devienne possible.
2. Montre que, dans n'importe quel groupe de personnes, le nombre de personnes qui ont un
   nombre impair d'amis est toujours pair.
3. Dans une classe de 25 élèves, chacun peut-il avoir exactement 7 amis ? Et exactement 24 amis ?
