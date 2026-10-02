---
id: "13013"
title: "Des matins et des après-midis de pluie"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [mise en equation, denombrement, raisonnement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 2 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

Pendant un certain nombre de jours, on a noté le temps qu'il faisait le matin et l'après-midi. On a remarqué que :

- chaque jour où il a plu le matin, il a fait beau l'après-midi ;
- chaque jour où il a plu l'après-midi, il avait fait beau le matin.

Pendant cette période, il a plu au cours de $15$ jours, et il a fait beau $8$ matins et $13$ après-midis.

Combien de matins a-t-il plu ?

## Hints

1. Peut-il avoir plu à la fois le matin et l'après-midi d'une même journée ?
2. Coupe chaque journée en deux demi-journées. Combien y a-t-il eu de demi-journées de pluie ? De demi-journées de beau temps ?
3. Déduis-en le nombre de jours de la période d'observation.

## Solution

**Il n'a jamais plu toute une journée.** S'il avait plu un matin, l'après-midi aurait été beau. Donc aucune journée n'a eu de pluie le matin et l'après-midi. Chacun des $15$ jours de pluie a donc eu exactement une demi-journée de pluie, et on a compté en tout $15$ demi-journées de pluie.

**La durée de la période.** Il a fait beau $8$ matins et $13$ après-midis, soit $8 + 13 = 21$ demi-journées de beau temps. Chaque demi-journée est soit pluvieuse, soit belle, donc la période compte
$$15 + 21 = 36 \text{ demi-journées}, \qquad \text{c'est-à-dire} \qquad \frac{36}{2} = 18 \text{ jours}.$$

**Les matins de pluie.** Sur ces $18$ matins, $8$ ont été beaux. Les autres ont été pluvieux :
$$18 - 8 = 10 .$$

**Vérification.** Il a plu $10$ matins et $18 - 13 = 5$ après-midis. Cela fait bien $10 + 5 = 15$ jours de pluie, puisqu'il n'a jamais plu deux fois le même jour.

**Conclusion.** Il a plu $10$ matins.

## Going further

1. Refaire le problème avec des inconnues : on note $n$ le nombre de jours, $m$ le nombre de matins pluvieux et $a$ le nombre d'après-midis pluvieux. Écrire trois égalités entre $n$, $m$ et $a$, et les résoudre.
