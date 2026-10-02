---
id: "13256"
title: "Des lapins qui remuent les moustaches"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [parite, cercle, raisonnement-par-l-absurde, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés communs, exercice 4 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Des lapins gris, blancs et bruns sont assis en cercle.

Alice demande à tous les lapins blancs qui ont au moins un voisin brun de remuer leurs moustaches : $20$ lapins remuent leurs moustaches. Elle demande ensuite à tous les lapins gris qui ont au moins un voisin brun de remuer leurs moustaches : $25$ lapins remuent leurs moustaches.

Montrer que l'un des lapins qui ont remué leurs moustaches a deux voisins bruns.

## Hints

1. Les lapins qui ont remué leurs moustaches sont exactement les lapins non bruns qui ont au moins un voisin brun. Combien sont-ils en tout ?
2. Regarde les lapins non bruns assis entre deux lapins bruns qui se suivent sur le cercle. Combien d'entre eux remuent leurs moustaches ?
3. Que se passe-t-il s'il n'y a qu'un seul lapin non brun entre deux lapins bruns ?

## Solution

Les lapins qui ont remué leurs moustaches sont les lapins blancs ou gris (donc non bruns) qui ont au moins un voisin brun. Ils sont $20 + 25 = 45$ en tout, un nombre **impair**. Il y a forcément des lapins bruns, sinon personne n'aurait remué ses moustaches.

**On découpe le cercle.** Les lapins bruns découpent le cercle en **trous** : un trou est une suite de lapins non bruns assis côte à côte entre deux lapins bruns qui se suivent sur le cercle. (S'il n'y a qu'un lapin brun, il y a un seul trou, formé de tous les autres lapins.) Un trou peut aussi être vide, quand deux lapins bruns sont voisins.

Un lapin non brun a un voisin brun seulement s'il est au bord de son trou. Regardons combien de lapins remuent leurs moustaches dans un trou, selon sa longueur :

- un trou vide : aucun ;
- un trou d'un seul lapin : ce lapin remue ses moustaches, et ses deux voisins sont bruns ;
- un trou d'au moins deux lapins : exactement deux, les deux lapins des bords, qui ont chacun un seul voisin brun.

**Par l'absurde.** Supposons qu'aucun lapin ayant remué ses moustaches n'ait deux voisins bruns. Alors il n'y a aucun trou d'un seul lapin, et chaque trou contient $0$ ou $2$ lapins qui remuent leurs moustaches. En additionnant sur tous les trous, le nombre total de lapins qui ont remué leurs moustaches est une somme de nombres pairs, donc il est pair. Or il vaut $45$, qui est impair : c'est impossible.

**Conclusion.** Il existe un trou d'un seul lapin : ce lapin, blanc ou gris, a remué ses moustaches et ses deux voisins sont bruns.
