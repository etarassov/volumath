---
id: "3602"
title: "Deux billes de la même couleur"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 10
tags: [tiroirs, pire-cas, couleurs, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 4 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Un sac contient six billes : deux rouges, deux bleues et deux vertes.

Richard tire les billes une par une, sans regarder dans le sac et sans remettre celles qu'il a tirées.

Combien de billes doit-il tirer au minimum pour être **certain** d'en avoir deux de la même couleur, quel que soit le hasard des tirages ?

## Hints

1. « Être certain » veut dire : même si la malchance s'acharne. Imagine que quelqu'un choisisse exprès les billes pour t'embêter le plus longtemps possible.
2. Combien de billes peut-on tirer au maximum sans jamais avoir deux fois la même couleur ?
3. Il y a trois couleurs. Que se passe-t-il à la bille suivante ?

## Solution

**Étape 1. Montrer que trois billes ne suffisent pas.**

Richard peut très bien tirer une rouge, puis une bleue, puis une verte. Il a alors trois billes, toutes de couleurs différentes. Donc trois tirages ne garantissent rien : il faut au moins quatre tirages.

**Étape 2. Montrer que quatre billes suffisent toujours.**

Supposons que Richard ait tiré quatre billes et qu'elles soient toutes de couleurs différentes. Il y aurait alors quatre couleurs différentes dans le sac. Or il n'y en a que trois : rouge, bleue, verte. C'est impossible.

Donc, parmi quatre billes, il y en a forcément au moins deux de la même couleur.

**Réponse.** Richard doit tirer $4$ billes.

Le raisonnement de l'étape 2 s'appelle le **principe des tiroirs** : si on range quatre objets dans trois tiroirs, un tiroir au moins contient deux objets. Ici les « tiroirs » sont les couleurs et les « objets » sont les billes tirées.

## Going further

Remarque que le nombre de billes de chaque couleur n'a presque pas servi : il a seulement fallu qu'il y ait au moins deux billes de chaque couleur pour que le pire cas de l'étape 1 soit réalisable.

Avec $n$ couleurs et au moins deux billes de chaque couleur, la même réponse devient $n + 1$ tirages.
