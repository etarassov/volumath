---
id: "4605"
title: "Le grand et le petit"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [chevaliers, menteurs, cas, information]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Knights and Knaves"
  reference: "Handout-1472-1397.pdf, exercice 7"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1472-1397.pdf"
---

## Statement

Sur une île vivent des **chevaliers**, qui disent toujours la vérité, et des **menteurs**, qui
mentent toujours. Rien ne les distingue de l'extérieur.

Je rencontre deux habitants, un grand et un petit.

Je demande d'abord au **grand** : « Êtes-vous tous les deux des chevaliers ? » Il répond par oui
ou par non. Sa réponse ne me permet pas de savoir qui est quoi.

Je demande alors au **petit** : « Le grand est-il un chevalier ? » Il répond par oui ou par non,
et cette fois je sais avec certitude ce que sont les deux habitants.

Que sont-ils ?

## Hints

1. Tu ne connais pas les réponses, mais tu sais quelque chose de très fort : la première réponse
   ne m'a rien appris, et la seconde m'a tout appris. Ce sont là tes deux vraies données.
2. Commence par dresser la liste des quatre situations possibles : grand chevalier ou menteur,
   petit chevalier ou menteur. Pour chacune, quelle est la réponse du grand à la première
   question ?
3. Remarque qu'un menteur, à qui l'on demande « Êtes-vous tous les deux des chevaliers ? »,
   répond toujours la même chose. Pourquoi ?
4. Une des deux réponses possibles du grand désigne une seule situation : ce n'est donc pas
   celle qu'il a donnée. Recommence ensuite le même travail avec la seconde question.

## Solution

Notons $G$ le grand et $P$ le petit. Il y a quatre situations possibles, que nous allons passer
en revue.

**Étape 1 : que répond le grand ?**

Question posée à $G$ : « Êtes-vous tous les deux des chevaliers ? »

- $G$ chevalier, $P$ chevalier : c'est vrai, et $G$ dit la vérité. Il répond **oui**.
- $G$ chevalier, $P$ menteur : c'est faux, et $G$ dit la vérité. Il répond **non**.
- $G$ menteur, $P$ chevalier : c'est faux (puisque $G$ est menteur), mais $G$ ment. Il répond
  **oui**.
- $G$ menteur, $P$ menteur : c'est faux, et $G$ ment. Il répond **oui**.

Un menteur répond donc toujours oui à cette question : la phrase « nous sommes tous les deux des
chevaliers » est forcément fausse quand il la prononce, donc il l'affirme.

**Étape 2 : la première réponse était « oui ».**

Si $G$ avait répondu **non**, je saurais immédiatement que $G$ est un chevalier et $P$ un
menteur : c'est la seule situation qui donne cette réponse. Or l'énoncé dit que la première
réponse ne m'a rien appris.

Donc $G$ a répondu **oui**, et il reste trois situations :

$$(\text{chevalier},\ \text{chevalier}), \quad (\text{menteur},\ \text{chevalier}), \quad
(\text{menteur},\ \text{menteur}).$$

**Étape 3 : que répond le petit ?**

Question posée à $P$ : « Le grand est-il un chevalier ? »

- $G$ chevalier, $P$ chevalier : c'est vrai, $P$ dit la vérité. Il répond **oui**.
- $G$ menteur, $P$ chevalier : c'est faux, $P$ dit la vérité. Il répond **non**.
- $G$ menteur, $P$ menteur : c'est faux, mais $P$ ment. Il répond **oui**.

**Étape 4 : la seconde réponse était « non ».**

Si $P$ avait répondu **oui**, deux situations resteraient possibles, et je ne saurais toujours
pas qui est quoi. Or l'énoncé dit qu'après cette réponse je sais tout.

Donc $P$ a répondu **non**, ce qui ne correspond qu'à une seule situation.

**Conclusion.** Le grand est un **menteur** et le petit est un **chevalier**.

## Going further

Ce problème illustre une idée qu'on retrouve souvent : une réponse qui n'apprend rien est
elle-même une information. Ici, c'est en sachant que je n'ai rien appris de la première réponse
que l'on parvient à tout déduire.
