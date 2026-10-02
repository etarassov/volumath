---
id: "7623"
title: "Un polyèdre à 2013 faces pentagonales ?"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [polyedre, parite, double-comptage, aretes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 14 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Existe-t-il un polyèdre ayant exactement $2013$ faces, toutes pentagonales ?

*Un polyèdre est un solide dont la surface est faite de faces polygonales ; chaque arête du solide est commune à exactement deux faces. Une face pentagonale est un pentagone, c'est-à-dire un polygone à cinq côtés.*

## Hints

1. Ne cherchez pas à construire le solide. Comptez plutôt les **arêtes**, de deux façons différentes.
2. Combien de côtés portent au total les $2013$ pentagones, si on les compte face par face ?
3. Dans ce total, combien de fois chaque arête du polyèdre a-t-elle été comptée ?
4. Le nombre d'arêtes doit être un nombre entier.

## Solution

**Réponse : non, un tel polyèdre n'existe pas.**

Notons $A$ le nombre d'arêtes du polyèdre, et comptons les couples

$$(\text{une face}, \ \text{un côté de cette face})$$

de deux manières différentes.

**Premier comptage : face par face.**

Il y a $2013$ faces, et chacune est un pentagone, donc porte $5$ côtés. Le nombre de couples est donc

$$5 \times 2013 = 10\,065 .$$

**Deuxième comptage : arête par arête.**

Chaque côté d'une face est une arête du polyèdre. Et, par définition d'un polyèdre, chaque arête est commune à exactement **deux** faces : elle apparaît donc exactement deux fois dans notre liste de couples. Le nombre de couples vaut donc

$$2 \times A .$$

**La contradiction.**

Les deux comptages portent sur la même chose, donc

$$2A = 10\,065 , \qquad \text{c'est-à-dire} \qquad A = \frac{10\,065}{2} = \text{5 032,5} .$$

Or $10\,065$ est impair : le nombre $A$ ne serait pas entier. C'est impossible, puisqu'un nombre d'arêtes est un entier.

**Conclusion.** Il n'existe aucun polyèdre à $2013$ faces toutes pentagonales.

## Going further

Le raisonnement montre en fait beaucoup plus : **un polyèdre dont toutes les faces sont des pentagones a forcément un nombre pair de faces.** Le nombre $5F$ doit être pair, et comme $5$ est impair, c'est $F$ qui doit l'être.

Le dodécaèdre régulier, avec ses $12$ faces pentagonales et ses $30$ arêtes, en est le plus petit exemple. Le ballon de football, lui, mêle $12$ pentagones et $20$ hexagones.

Même argument, autres formes :

- Un polyèdre dont toutes les faces sont des triangles a forcément un nombre **pair** de faces.
- Un polyèdre dont toutes les faces sont des carrés peut avoir n'importe quel nombre de faces du point de vue de cette parité, puisque $4F$ est toujours pair : il faut alors un autre argument.

Cette technique, qui consiste à compter la même quantité de deux façons pour en tirer une information, s'appelle le **double comptage**. C'est l'un des outils les plus efficaces du dénombrement.
