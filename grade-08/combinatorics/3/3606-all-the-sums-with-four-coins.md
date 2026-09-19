---
id: "3606"
title: "Toutes les sommes avec quatre pièces"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [sous-ensembles, sommes, monnaie, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 10 de l'Individual Round (corrigé dans Handout-5092-5540.pdf) ; pièces converties en euros"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Arthur a exactement quatre pièces dans sa poche : une pièce de $1$ centime, une de $5$ centimes, une de $10$ centimes et une de $20$ centimes.

Il dresse la liste de toutes les sommes d'argent différentes qu'il peut payer en utilisant certaines de ses pièces, ou toutes (au moins une pièce à chaque fois).

Il additionne ensuite tous les nombres de sa liste.

Quel total obtient-il, en centimes ?

## Hints

1. Une « façon de payer » revient à décider, pour chacune des quatre pièces, si on la donne ou non. Combien de décisions différentes cela fait-il en tout ?
2. Vérifie d'abord que deux choix de pièces différents donnent toujours des sommes différentes : sinon il faudrait retirer des doublons de la liste.
3. Plutôt que d'additionner les sommes une par une, demande-toi dans combien de façons de payer la pièce de $20$ centimes apparaît. Puis fais de même pour chacune des autres.

## Solution

**Étape 1. Compter les façons de payer.**

Pour chaque pièce, Arthur a deux possibilités : la donner ou la garder. Comme il y a quatre pièces, cela fait

$$2 \times 2 \times 2 \times 2 = 16 \text{ choix}$$

Un de ces choix consiste à ne donner aucune pièce ; il ne compte pas. Il reste donc $15$ façons de payer.

**Étape 2. Vérifier qu'aucune somme n'apparaît deux fois.**

Voici les $15$ sommes, rangées dans l'ordre croissant :

$$1,\; 5,\; 6,\; 10,\; 11,\; 15,\; 16,\; 20,\; 21,\; 25,\; 26,\; 30,\; 31,\; 35,\; 36$$

Elles sont toutes différentes. La liste d'Arthur contient donc bien $15$ nombres, un par façon de payer.

**Étape 3. Additionner astucieusement.**

Au lieu d'additionner ces quinze nombres, comptons la contribution de chaque pièce.

Regardons la pièce de $20$ centimes. Les façons de payer où elle apparaît sont obtenues en décidant librement du sort des trois autres pièces, ce qui fait $2 \times 2 \times 2 = 8$ façons. (Celle où on ne donne que la pièce de $20$ centimes en fait partie, et aucune de ces $8$ façons n'est la façon vide, puisque la pièce de $20$ y figure.)

Le même raisonnement vaut pour chacune des quatre pièces : chacune apparaît dans exactement $8$ des $15$ façons de payer.

Dans le grand total, chaque pièce est donc comptée $8$ fois :

$$8 \times 1 + 8 \times 5 + 8 \times 10 + 8 \times 20 = 8 \times (1 + 5 + 10 + 20) = 8 \times 36 = 288$$

**Réponse.** Arthur obtient $288$ centimes, c'est-à-dire $\text{2,88}$ euros.

On peut vérifier en additionnant directement la liste de l'étape 2 : $1+5+6+10+11+15+16+20+21+25+26+30+31+35+36 = 288$.

## Going further

L'argument de l'étape 3 ne dépend pas des valeurs des pièces, seulement de leur nombre. Avec $n$ pièces de valeurs $v_1, v_2, \ldots, v_n$ toutes différentes, chaque pièce apparaît dans $2^{n-1}$ des façons de payer, et le total vaut

$$2^{n-1} \times (v_1 + v_2 + \dots + v_n)$$

En revanche, l'étape 2 est indispensable : si Arthur avait deux pièces de $10$ centimes et une de $20$, la somme $20$ apparaîtrait deux fois et la liste serait plus courte.
