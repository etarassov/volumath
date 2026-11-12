---
id: "22041"
title: "Le dragon aux cent têtes"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [invariant, restes, modulo-3, operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Invariants, pavages, coloriages » (Maena), exercice 7 (sans corrigé dans la source)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Un dragon a $100$ têtes. D'un coup d'épée, un chevalier peut couper exactement $15$ têtes, ou exactement $17$, ou exactement $20$, ou exactement $5$. Après le coup, de nouvelles têtes repoussent :

| Têtes coupées | 15 | 17 | 20 | 5 |
|---|---|---|---|---|
| Têtes qui repoussent | 24 | 2 | 14 | 17 |

Si un coup coupe toutes les têtes qui restent, le dragon meurt, et rien ne repousse.

Le chevalier peut-il tuer le dragon ?

## Hints

1. Calculez, pour chacun des quatre coups, de combien le nombre de têtes augmente ou diminue au total.
2. Ces quatre nombres ont un diviseur commun. Lequel ?
3. Regardez le reste de la division par $3$ du nombre de têtes. Que devient-il après un coup qui ne tue pas le dragon ?
4. Pour tuer le dragon, le dernier coup doit trouver exactement $15$, $17$, $20$ ou $5$ têtes. Quels sont les restes de ces nombres dans la division par $3$ ?

## Solution

**Ce que fait chaque coup.** Quand le dragon survit, le nombre de têtes change de :

- $-15 + 24 = +9$ ;
- $-17 + 2 = -15$ ;
- $-20 + 14 = -6$ ;
- $-5 + 17 = +12$.

Les quatre nombres $9$, $15$, $6$ et $12$ sont tous des multiples de $3$.

**Ce qui ne change jamais.** Ajouter ou retirer un multiple de $3$ ne change pas le reste de la division par $3$. Tant que le dragon vit, le reste du nombre de têtes dans la division par $3$ reste donc le même qu'au départ. Or $100 = 3 \times 33 + 1$ : ce reste vaut $1$. Le dragon a donc toujours un nombre de têtes de la forme $3k + 1$.

**Le coup fatal.** Pour tuer le dragon, le chevalier doit couper toutes les têtes d'un coup. Juste avant ce coup, le dragon a donc exactement $15$, $17$, $20$ ou $5$ têtes. Or :

- $15 = 3 \times 5$, reste $0$ ;
- $17 = 3 \times 5 + 2$, reste $2$ ;
- $20 = 3 \times 6 + 2$, reste $2$ ;
- $5 = 3 \times 1 + 2$, reste $2$.

Aucun de ces nombres n'a pour reste $1$. Le dragon n'a donc jamais le bon nombre de têtes pour le coup fatal.

**Conclusion.** Non, le chevalier ne peut pas tuer le dragon, quels que soient ses coups.

## Going further

1. Les mêmes règles, mais le dragon a $99$ têtes au départ. Peut-il mourir ? Si oui, donnez une suite de coups qui le tue.
2. On change seulement la dernière règle : quand on coupe $5$ têtes, il en repousse $16$. Le raisonnement marche-t-il encore avec $100$ têtes ?
