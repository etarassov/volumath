---
id: "13826"
title: "Les chats tricolores"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [logique, implication, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices communs, exercice 10 ; corrigé dans le même fichier, solution 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Je sais deux choses :

- tous les chats au pelage tricolore sont des femelles ;
- tous les chats de mon voisin Raoul sont des mâles.

De plus, hier, j'ai vu dans mon jardin un chat tricolore à poils courts.

Parmi les affirmations numérotées ci-dessous, certaines se déduisent logiquement de ces trois
informations, et d'autres non.

- **(1)** Tous les chats à poils courts sont des femelles.
- **(2)** Toutes les femelles ont un pelage tricolore.
- **(4)** Si un chat a un pelage tricolore, il n'appartient pas à mon voisin Raoul.
- **(8)** Si un chat n'appartient pas à mon voisin Raoul, il a un pelage tricolore.
- **(16)** Le chat que j'ai vu hier était une femelle.
- **(32)** Il existe des chats à poils longs.
- **(64)** Il n'existe pas de chat à poils longs.

Quelle est la somme des numéros des affirmations qui se déduisent des trois informations ?

## Hints

1. Pour montrer qu'une affirmation **ne** se déduit **pas** des informations, il suffit
   d'imaginer un monde où les trois informations sont vraies, mais pas l'affirmation.
2. Est-il interdit, d'après les informations, qu'il existe un chat mâle noir à poils courts ?
   Une chatte blanche ?
3. Pour l'affirmation (4), enchaîne les deux règles : tricolore, donc femelle, donc...

## Solution

**Les affirmations qui se déduisent.**

- **(4)** Prenons un chat tricolore. D'après la première information, c'est une femelle. Ce
  n'est donc pas un mâle, et d'après la deuxième information il n'appartient pas à Raoul.
  L'affirmation (4) se déduit des informations.
- **(16)** Le chat vu hier est tricolore, donc d'après la première information c'est une
  femelle. L'affirmation (16) se déduit des informations.

**Les affirmations qui ne se déduisent pas.** Pour chacune, on imagine un monde où les trois
informations sont vraies et où l'affirmation est fausse. Partons d'un monde où il y a le chat
vu hier (une femelle tricolore à poils courts), et ajoutons-lui des chats.

- **(1)** Ajoutons un mâle noir à poils courts, qui n'appartient à personne. Les trois
  informations restent vraies : il n'est pas tricolore, et ce n'est pas un chat de Raoul. Mais
  ce chat à poils courts n'est pas une femelle, donc (1) est fausse dans ce monde.
- **(2)** Ajoutons une chatte blanche. Les informations restent vraies, mais (2) est fausse.
- **(8)** Le mâle noir de l'affirmation (1) n'appartient pas à Raoul et n'est pas tricolore,
  donc (8) est fausse dans ce monde-là aussi.
- **(32)** Dans le monde où le seul chat est celui vu hier, les trois informations sont vraies
  et il n'y a aucun chat à poils longs. L'affirmation (32) y est fausse.
- **(64)** Ajoutons un chat à poils longs, par exemple un mâle gris. Les informations restent
  vraies et (64) est fausse.

Aucune de ces cinq affirmations ne peut donc être déduite des informations.

**Conclusion.** Seules les affirmations (4) et (16) se déduisent des informations. **La somme
de leurs numéros vaut $4 + 16 = 20$.**

## Going further

Les affirmations (4) et (8) se ressemblent, mais la seconde échange les deux morceaux de la
première. Savoir qu'un chat tricolore n'est jamais à Raoul ne dit rien de la couleur des chats
qui ne sont pas à Raoul. En revanche, (4) dit exactement la même chose que l'affirmation
« aucun chat de Raoul n'est tricolore ».
