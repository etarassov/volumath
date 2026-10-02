---
id: "4620"
title: "Cinq cents exercices dans l'année"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [tiroirs, sommes-partielles, demonstration, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 13 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

Pendant les $365$ jours d'une année, Léa fait au moins un exercice de mathématiques chaque jour.
Sur l'année entière, elle en a fait exactement $500$.

Montrer qu'il existe une suite de jours consécutifs pendant laquelle elle a fait exactement
$100$ exercices.

## Hints

1. On ne sait presque rien du détail des journées. Introduis les **totaux depuis le début de
   l'année** : note $s_k$ le nombre d'exercices faits du $1^\text{er}$ jour au jour $k$.
2. Que vaut le nombre d'exercices faits entre le jour $i+1$ et le jour $j$, en fonction des
   $s_k$ ? Que cherche-t-on à obtenir, exactement ?
3. La suite $s_1, s_2, \ldots, s_{365}$ est strictement croissante. Pourquoi ? Entre quelles
   valeurs se trouvent ses termes ?
4. Considère maintenant les $730$ nombres $s_1, \ldots, s_{365}$ **et** $s_1 + 100, \ldots,
   s_{365} + 100$. Combien de valeurs différentes peuvent-ils prendre au maximum ?

## Solution

**Étape 1 : les totaux depuis le début.**

Pour $k$ allant de $1$ à $365$, notons $s_k$ le nombre total d'exercices faits du premier jour au
jour $k$ inclus.

Le nombre d'exercices faits entre le jour $i+1$ et le jour $j$ inclus (avec $i < j$) vaut
$$s_j - s_i .$$

Notre but est donc de trouver deux indices $i < j$ tels que
$$s_j - s_i = 100, \qquad \text{c'est-à-dire} \qquad s_j = s_i + 100 .$$

**Étape 2 : ce que l'on sait des $s_k$.**

Léa fait au moins un exercice par jour, donc $s_k$ augmente strictement d'un jour au suivant :
$$1 \leqslant s_1 < s_2 < \cdots < s_{365} = 500 .$$

En particulier les $365$ nombres $s_1, \ldots, s_{365}$ sont deux à deux différents et tous
compris entre $1$ et $500$.

**Étape 3 : le principe des tiroirs.**

Considérons la liste des $730$ nombres suivants :
$$s_1, \ s_2, \ \ldots, \ s_{365}, \qquad s_1 + 100, \ s_2 + 100, \ \ldots, \ s_{365} + 100 .$$

Chacun de ces nombres est un entier compris entre $1$ et $500 + 100 = 600$. Il n'y a donc que
$600$ valeurs possibles, pour $730$ nombres.

Par le principe des tiroirs, deux de ces $730$ nombres sont égaux.

**Étape 4 : identifier les deux nombres égaux.**

Ces deux nombres ne peuvent pas être deux $s_k$, puisque les $s_k$ sont deux à deux différents.
Ils ne peuvent pas non plus être deux nombres de la forme $s_k + 100$, pour la même raison.

Il reste donc un seul cas possible : l'un des deux est un $s_j$ et l'autre est un $s_i + 100$,
c'est-à-dire
$$s_j = s_i + 100 .$$

Comme $s_j > s_i$ et que la suite est croissante, on a bien $j > i$.

**Conclusion.**

Entre le jour $i+1$ et le jour $j$ inclus, Léa a fait
$$s_j - s_i = 100$$
exercices. Ces jours se suivent, ce qui démontre le résultat.

## Going further

Les nombres ont été choisis pour que l'argument passe de justesse : $730$ nombres à ranger dans
$600$ cases, c'est tout juste plus.

Reprends la démonstration en visant un total $t$ au lieu de $100$. Les $730$ nombres sont alors
compris entre $1$ et $500 + t$, et le principe des tiroirs s'applique tant que
$$730 > 500 + t, \qquad \text{c'est-à-dire} \qquad t \leqslant 229 .$$

Le résultat est donc vrai pour tout total visé jusqu'à $229$ : il existe toujours une suite de
jours consécutifs totalisant exactement $37$ exercices, ou exactement $200$. Au-delà de $229$, ce
comptage-ci ne dit plus rien, ce qui ne veut pas dire que le résultat devienne faux : il faudrait
un autre argument.
