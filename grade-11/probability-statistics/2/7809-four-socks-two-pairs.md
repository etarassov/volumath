---
id: "7809"
title: "Quatre chaussettes, deux paires"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [probabilite, denombrement, combinaisons]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Dans un tiroir se trouvent cinq paires de chaussettes, toutes différentes les unes des autres
(cinq couleurs différentes, disons). Cela fait dix chaussettes en tout.

On tire quatre chaussettes au hasard, toutes en même temps.

La probabilité d'obtenir exactement deux paires complètes vaut $\dfrac{1}{n}$. Déterminer $n$.

## Hints

1. On tire quatre chaussettes d'un coup, sans ordre : compte donc des **combinaisons**, pas des
   listes.
2. Combien y a-t-il de tirages possibles de quatre chaussettes parmi dix ?
3. Un tirage favorable, c'est deux paires complètes. Choisir un tel tirage, c'est simplement
   choisir quelles deux couleurs sont concernées : les quatre chaussettes sont alors imposées.

## Solution

**Étape 1 : le nombre de tirages possibles.**

On choisit $4$ chaussettes parmi $10$, sans tenir compte de l'ordre. Il y a donc
$$\binom{10}{4} = \frac{10 \times 9 \times 8 \times 7}{4 \times 3 \times 2 \times 1}
 = \frac{5040}{24} = 210$$
tirages possibles, tous aussi probables les uns que les autres.

**Étape 2 : le nombre de tirages favorables.**

Un tirage favorable est constitué de deux paires complètes. Pour en construire un, il suffit de
décider **quelles deux couleurs** on prend : une fois les deux couleurs choisies, les quatre
chaussettes sont entièrement déterminées (les deux chaussettes de chaque couleur).

Il y a donc autant de tirages favorables que de façons de choisir $2$ couleurs parmi $5$ :
$$\binom{5}{2} = \frac{5 \times 4}{2} = 10.$$

**Étape 3 : la probabilité.**

$$p = \frac{10}{210} = \frac{1}{21}.$$

**Conclusion.** $n = \boxed{21}$.

## Going further

Avec les mêmes cinq paires, quelle est la probabilité de tirer quatre chaussettes **toutes de
couleurs différentes** ? (Réponse : $\frac{80}{210} = \frac{8}{21}$.)
