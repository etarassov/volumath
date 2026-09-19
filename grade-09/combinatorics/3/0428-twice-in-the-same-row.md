---
id: "0428"
title: "Deux fois dans la même rangée"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, denombrement, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 3 «Принцип Дирихле», задача 1"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Une salle de cinéma compte $7$ rangées de $10$ places chacune.

Un groupe de $50$ enfants assiste à la séance de l'après-midi, puis revient le soir pour une seconde séance. Chacun s'assied où il veut, et les places changent d'une séance à l'autre.

Montrer qu'il existe deux enfants qui étaient dans la même rangée l'après-midi **et** dans la même rangée le soir.

## Hints

1. Rappel du principe des tiroirs : si on range $n$ objets dans $k$ tiroirs et que $n > k$, alors au moins un tiroir contient au moins deux objets. Ici, quels sont les objets et quels sont les tiroirs ?
2. L'après-midi, $50$ enfants se répartissent dans $7$ rangées. Est-il possible que chaque rangée contienne au plus $7$ enfants ?
3. Il existe donc une rangée qui contient au moins $8$ enfants l'après-midi. Oublie tous les autres enfants et ne suis plus que ces $8$-là.
4. Le soir, ces $8$ enfants se répartissent dans $7$ rangées. Applique le principe des tiroirs une seconde fois.

## Solution

**L'outil : le principe des tiroirs.**

> Si on range des objets dans des tiroirs et qu'il y a strictement plus d'objets que de tiroirs, alors au moins un tiroir contient au moins deux objets.

On s'en sert deux fois : une fois pour l'après-midi, une fois pour le soir.

**Étape 1. L'après-midi, une rangée contient au moins 8 enfants.**

Raisonnons par l'absurde. Supposons que chaque rangée contienne au plus $7$ enfants. Comme il y a $7$ rangées, le nombre total d'enfants serait au plus

$$7 \times 7 = 49$$

Or il y a $50$ enfants. C'est impossible.

Donc au moins une rangée contient au moins $8$ enfants l'après-midi. Appelons $R$ cette rangée. (C'est bien réalisable : une rangée a $10$ places.)

**Étape 2. Le soir, deux de ces huit enfants se retrouvent ensemble.**

Choisissons $8$ enfants assis dans la rangée $R$ l'après-midi, et ne nous occupons plus que d'eux.

Le soir, ces $8$ enfants s'assoient quelque part dans la salle : chacun est dans l'une des $7$ rangées. On range donc $8$ objets (les enfants) dans $7$ tiroirs (les rangées). Comme $8 > 7$, le principe des tiroirs donne deux de ces enfants dans une même rangée le soir.

**Conclusion.**

Ces deux enfants-là étaient dans la rangée $R$ l'après-midi, et dans une même rangée le soir. C'est exactement ce qu'il fallait démontrer.

**Ce qu'il faut retenir.** Quand une seule application du principe des tiroirs ne suffit pas, on l'applique une deuxième fois, mais sur un groupe plus petit et mieux choisi : ici, seulement les $8$ enfants de la rangée $R$.

## Going further

1. Montrer qu'avec $49$ enfants la conclusion peut être fausse. *Indication : imaginer les enfants rangés dans un tableau carré $7 \times 7$, l'après-midi selon les lignes du tableau, le soir selon les colonnes.*
2. On ajoute une troisième séance, le matin. Combien faut-il d'enfants au minimum pour être certain que deux d'entre eux ont été dans la même rangée aux trois séances ? *(Réponse : $7 \times 49 + 1 = 344$.)*
3. La salle a maintenant $12$ rangées. Combien d'enfants faut-il pour que la conclusion de l'exercice reste garantie avec deux séances ?
