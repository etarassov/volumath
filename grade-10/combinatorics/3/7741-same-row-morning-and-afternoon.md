---
id: "7741"
title: "Même rangée le matin et l'après-midi"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, couples, comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 après-midi (Margaret Bilu), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Une salle de classe contient $7$ rangées de $10$ places.

Un groupe de $50$ stagiaires y suit un cours le matin, puis un autre cours l'après-midi. Entre les deux, chacun se rassoit où il veut.

Montrer qu'il existe deux stagiaires qui étaient dans la même rangée le matin **et** qui sont de nouveau dans la même rangée l'après-midi.

## Hints

1. On te demande deux personnes qui coïncident **deux fois**. Attache donc à chaque stagiaire les deux informations d'un coup.
2. À chaque stagiaire, associe le couple (rangée du matin ; rangée de l'après-midi).
3. Combien de couples différents existe-t-il ? Compare ce nombre au nombre de stagiaires.

## Solution

**L'idée : ne pas traiter le matin et l'après-midi séparément, mais attacher à chaque personne le couple de ses deux rangées.**

**On étiquette chaque stagiaire.** À chaque stagiaire, associons le couple

$$(\text{numéro de sa rangée le matin} \; ; \; \text{numéro de sa rangée l'après-midi}) .$$

Chaque coordonnée est un nombre entre $1$ et $7$.

**On compte les couples possibles.** Il y a $7$ choix pour la première coordonnée et $7$ choix pour la seconde, donc

$$7 \times 7 = 49$$

couples possibles.

**Le principe des tiroirs.** On range $50$ stagiaires dans $49$ tiroirs (les couples). Comme $50 > 49$, deux stagiaires au moins reçoivent le **même couple**.

**On conclut.** Notons $X$ et $Y$ ces deux stagiaires. Ils ont la même première coordonnée, donc ils étaient dans la même rangée le matin. Et ils ont la même seconde coordonnée, donc ils sont dans la même rangée l'après-midi.

**Conclusion : il existe bien deux stagiaires qui se sont retrouvés dans la même rangée le matin et dans la même rangée l'après-midi.**

## Going further

Le nombre de places par rangée n'intervient jamais dans le raisonnement : il sert seulement à garantir que $50$ personnes tiennent dans la salle, puisque $7 \times 10 = 70 \geqslant 50$.

Avec $49$ stagiaires seulement, l'argument tomberait, et il existe effectivement une manière de les placer pour que la conclusion soit fausse : il suffit de donner à chacun un couple différent. Mais cela demande que chaque rangée accueille exactement $7$ personnes le matin, ce qui est possible ici.
