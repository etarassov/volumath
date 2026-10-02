---
id: "4822"
title: "Le coffre au trésor et les deux pythons"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [logique, vrai-ou-faux, disjonction-de-cas, inscriptions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 25 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Une archéologue déterre trois coffres anciens : un coffre d'**argent**, un coffre d'**or** et un coffre de **bronze**.

La légende dit que l'un des trois contient un trésor, et que les deux autres abritent chacun un python affamé. Un seul des trois coffres est donc à ouvrir.

Sur chaque coffre est gravée une inscription :

- **coffre d'argent** : « Le trésor est dans ce coffre. »
- **coffre d'or** : « Le trésor n'est pas dans ce coffre. »
- **coffre de bronze** : « Le trésor n'est pas dans le coffre d'or. »

L'archéologue se souvient d'un détail de la légende : parmi les trois inscriptions, **au moins une est vraie et au moins une est fausse**.

Quel coffre doit-elle ouvrir ?

## Hints

1. Il n'y a que trois possibilités : le trésor est dans l'argent, dans l'or, ou dans le bronze. Essaie-les une par une.
2. Pour chaque possibilité, remplis un petit tableau : l'inscription du coffre d'argent est-elle vraie ou fausse ? Celle de l'or ? Celle du bronze ?
3. Élimine les possibilités qui contredisent « au moins une vraie **et** au moins une fausse ».
4. Remarque que les inscriptions de l'or et du bronze disent exactement la même chose.

## Solution

**On essaie les trois cas.**

**Cas 1 : le trésor est dans le coffre d'argent.**

- Argent : « le trésor est ici » → **vrai**.
- Or : « le trésor n'est pas ici » → vrai, puisqu'il est dans l'argent → **vrai**.
- Bronze : « le trésor n'est pas dans l'or » → **vrai**.

Les trois inscriptions sont vraies. Mais la légende exige qu'au moins une soit fausse. **Ce cas est impossible.**

**Cas 2 : le trésor est dans le coffre d'or.**

- Argent : « le trésor est ici » → faux, il est dans l'or → **faux**.
- Or : « le trésor n'est pas ici » → faux → **faux**.
- Bronze : « le trésor n'est pas dans l'or » → faux → **faux**.

Les trois inscriptions sont fausses. Mais la légende exige qu'au moins une soit vraie. **Ce cas est impossible.**

**Cas 3 : le trésor est dans le coffre de bronze.**

- Argent : « le trésor est ici » → **faux**.
- Or : « le trésor n'est pas ici » → vrai, il est dans le bronze → **vrai**.
- Bronze : « le trésor n'est pas dans l'or » → **vrai**.

Il y a une inscription fausse et deux vraies : la condition de la légende est respectée. **Ce cas est possible.**

**Conclusion.** Les deux premiers cas sont exclus, le troisième convient, et c'est le seul.

$$\boxed{\text{L'archéologue doit ouvrir le coffre de bronze.}}$$

**Le point clé.** Les inscriptions de l'or et du bronze disent la même chose : « le trésor n'est pas dans l'or ». Elles sont donc toujours toutes les deux vraies, ou toutes les deux fausses. Comme il faut au moins une vraie et au moins une fausse, c'est l'inscription de l'argent qui doit être en désaccord avec les deux autres, ce qui ne laisse qu'une possibilité.

## Going further

1. Que pourrait-on conclure si la légende disait seulement « au moins une inscription est vraie » ?
2. Et si elle disait « exactement une inscription est vraie » ?
3. Invente trois inscriptions sur les trois coffres telles que la condition « au moins une vraie, au moins une fausse » ne permette pas de trancher, parce que deux coffres resteraient possibles.
