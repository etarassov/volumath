---
id: "4418"
title: "Cent soldats, trois de garde"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [parite, denombrement, absurde]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Parity"
  reference: "Handout-1255-1270.pdf, problème 3 (réponse dans Handout-1264-1270.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1255-1270.pdf"
---

## Statement

Un détachement compte $100$ soldats. Chaque soir, trois d'entre eux montent la garde ensemble.

Est-il possible qu'au bout d'un certain temps, chaque soldat ait monté la garde exactement une
fois avec chacun des $99$ autres ?

## Hints

1. Ne regarde pas tout le détachement d'un coup : place-toi du point de vue d'**un seul**
   soldat, appelons-le Martin.
2. Les soirs où Martin est de garde, avec combien de camarades est-il de garde ?
3. Si chaque camarade de Martin doit apparaître exactement une fois, comment les $99$ autres
   soldats se répartissent-ils entre les soirs de garde de Martin ?

## Solution

Raisonnons par l'absurde : supposons qu'une telle organisation existe.

**Le point de vue d'un soldat.** Choisissons un soldat, appelons-le Martin. Chaque soir où
Martin est de garde, il est accompagné d'exactement **deux** autres soldats.

**Un comptage.** Par hypothèse, chacun des $99$ autres soldats a monté la garde avec Martin
exactement une fois. Chaque soir de garde de Martin lui fait rencontrer $2$ camarades, et un
camarade donné n'apparaît que lors d'un seul de ces soirs. Donc les $99$ camarades de Martin se
répartissent **en paires**, une paire par soir de garde de Martin.

Si Martin a monté la garde $s$ soirs, on a donc

$$2s = 99.$$

**La contradiction.** Le membre de gauche est pair, le membre de droite est impair. Il n'existe
pas d'entier $s$ vérifiant cette égalité.

**Non, une telle organisation est impossible.**

## Going further

Le nombre $100$ de soldats n'a servi à rien : seul compte le fait que chaque soldat a un nombre
**impair** de camarades. La même organisation serait possible avec un détachement de $7$ soldats
(chacun a $6$ camarades, soit $3$ paires) : c'est un objet classique appelé *plan de Fano*, où
les $7$ soldats se répartissent en $7$ gardes de trois.
