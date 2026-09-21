---
id: "7736"
title: "Exactement vingt et une parties d'affilée"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [principe des tiroirs, suite croissante, cumul, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Un grand maître d'échecs s'entraîne pendant six semaines d'affilée, soit $42$ jours.

- Chaque jour, il joue **au moins une** partie.
- Chaque semaine, il joue **au plus dix** parties.

Montrer qu'il existe une suite de jours consécutifs pendant laquelle il a joué **exactement $21$ parties**.

## Hints

1. Ne compte pas les parties jour par jour : compte le **total depuis le début**. Note $a_j$ le nombre total de parties jouées du premier jour jusqu'au jour $j$ compris.
2. Pourquoi la suite $a_1, a_2, \ldots, a_{42}$ est-elle strictement croissante ? Et pourquoi $a_{42} \leqslant 60$ ?
3. « Jouer exactement $21$ parties entre le jour $i+1$ et le jour $j$ » se traduit par une égalité toute simple entre $a_i$ et $a_j$. Laquelle ?
4. Considère les $84$ nombres $a_1, \ldots, a_{42}$ et $a_1 + 21, \ldots, a_{42} + 21$. Entre quelles bornes sont-ils tous compris ?

## Solution

**L'idée : regarder les totaux cumulés, et leur ajouter $21$.**

**Les totaux cumulés.** Pour $j$ allant de $1$ à $42$, notons $a_j$ le nombre total de parties jouées du premier jour jusqu'au jour $j$ compris.

- Comme il joue **au moins une** partie chaque jour, on a $a_{j+1} \geqslant a_j + 1$, donc la suite est **strictement croissante** :

$$1 \leqslant a_1 < a_2 < \cdots < a_{42} .$$

- Comme il joue **au plus dix** parties par semaine et qu'il y a six semaines,

$$a_{42} \leqslant 6 \times 10 = 60 .$$

Tous les $a_j$ sont donc des entiers compris entre $1$ et $60$.

**La traduction de l'énoncé.** Jouer exactement $21$ parties du jour $i+1$ au jour $j$ (avec $i < j$) signifie

$$a_j - a_i = 21, \qquad \text{c'est-à-dire} \qquad a_j = a_i + 21 .$$

Il suffit donc de trouver deux indices $i < j$ vérifiant cette égalité.

**Le principe des tiroirs.** Considérons les $84$ nombres suivants :

$$a_1, \; a_2, \; \ldots, \; a_{42}, \qquad a_1 + 21, \; a_2 + 21, \; \ldots, \; a_{42} + 21 .$$

Ce sont tous des entiers compris entre $1$ et $60 + 21 = 81$. Il n'y a donc que $81$ valeurs possibles pour $84$ nombres : d'après le principe des tiroirs, deux de ces $84$ nombres sont **égaux**.

**Quels deux nombres peuvent être égaux ?**

- Deux nombres de la première liste ne peuvent pas être égaux, car la suite $(a_j)$ est strictement croissante.
- Deux nombres de la seconde liste non plus, pour la même raison.

L'égalité a donc lieu entre un nombre de la première liste et un nombre de la seconde :

$$a_j = a_i + 21 \qquad \text{pour certains indices } i \text{ et } j .$$

Comme $21 > 0$, on a $a_j > a_i$, donc $j > i$.

**Conclusion : du jour $i+1$ au jour $j$, le grand maître a joué exactement $a_j - a_i = 21$ parties.**

## Going further

Six semaines suffisent tout juste : le calcul demande $84 > 81$, c'est-à-dire qu'il ne reste que trois de marge. Avec cinq semaines, on aurait $70$ nombres pour $50 + 21 = 71$ valeurs possibles, et l'argument tomberait.

La méthode est très générale. Elle montre, avec les mêmes hypothèses, qu'on trouve aussi une période de jours consécutifs totalisant exactement $22$ parties, ou $19$, ou bien d'autres nombres : il suffit que le décalage choisi laisse assez de place pour le comptage.
