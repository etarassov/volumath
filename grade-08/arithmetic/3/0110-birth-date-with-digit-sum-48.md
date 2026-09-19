---
id: "0110"
title: "La date de naissance de Lucie"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [somme-de-chiffres, maximum, calendrier, unicite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 6, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Lucie a écrit sa date de naissance au format `jj.mm.aaaa`, c'est-à-dire avec deux chiffres pour le jour, deux chiffres pour le mois et quatre chiffres pour l'année. Par exemple, le 7 mars 2011 s'écrit `07.03.2011`.

Elle a ensuite additionné les huit chiffres de cette écriture, et elle a obtenu $48$.

On sait de plus que Lucie est née entre $1900$ et $2025$.

Quelle est la date de naissance de Lucie ?

## Hints

1. Le total $48$ est très grand pour seulement huit chiffres. Commence par chercher combien peut valoir, au maximum, la somme des deux chiffres du **jour**. Attention, un jour va de $01$ à $31$.
2. Fais la même chose pour le **mois**, qui va de $01$ à $12$. Puis pour l'**année**, comprise entre $1900$ et $2025$.
3. Additionne les trois maximums que tu viens de trouver. Compare ce résultat avec $48$.
4. Le total ne peut jamais dépasser ce maximum, et pourtant il l'atteint exactement. Cela veut dire qu'aucun des trois morceaux ne peut être en dessous de son propre maximum. Pourquoi ?

## Solution

**L'idée : le total atteint tout juste le maximum possible, donc rien ne peut être « perdu » nulle part.**

On coupe l'écriture en trois morceaux : le jour ($2$ chiffres), le mois ($2$ chiffres), l'année ($4$ chiffres). On cherche la plus grande somme de chiffres possible pour chacun.

**Étape 1. Le jour.**

Le jour s'écrit avec deux chiffres et vaut au plus $31$. Le chiffre des dizaines est donc $0$, $1$, $2$ ou $3$.

- S'il vaut $3$, le jour est $30$ ou $31$ : la somme des chiffres vaut au plus $3 + 1 = 4$.
- S'il vaut $2$, le meilleur cas est $29$, et la somme vaut $2 + 9 = 11$.
- S'il vaut $1$, le meilleur cas est $19$, et la somme vaut $1 + 9 = 10$.
- S'il vaut $0$, le meilleur cas est $09$, et la somme vaut $0 + 9 = 9$.

**La somme des chiffres du jour vaut au plus $11$, et uniquement pour le jour $29$.**

**Étape 2. Le mois.**

Le mois va de $01$ à $12$. Le chiffre des dizaines est $0$ ou $1$.

- S'il vaut $1$, le mois est $10$, $11$ ou $12$, et la somme des chiffres vaut au plus $1 + 2 = 3$.
- S'il vaut $0$, le meilleur cas est $09$, et la somme vaut $0 + 9 = 9$.

**La somme des chiffres du mois vaut au plus $9$, et uniquement pour le mois $09$, c'est-à-dire septembre.**

**Étape 3. L'année.**

L'année est comprise entre $1900$ et $2025$.

- Si elle commence par $2$, elle s'écrit $20 \square \square$ avec au plus $2025$ : la somme vaut au plus $2 + 0 + 1 + 9 = 12$.
- Si elle commence par $1$, elle s'écrit $19 \square \square$, et la somme vaut $1 + 9 + \square + \square$, donc au plus $1 + 9 + 9 + 9 = 28$, uniquement pour $1999$.

**La somme des chiffres de l'année vaut au plus $28$, et uniquement pour l'année $1999$.**

**Étape 4. On assemble.**

La somme totale des huit chiffres vaut donc au plus

$$11 + 9 + 28 = 48$$

Or Lucie a obtenu exactement $48$. Le maximum est donc atteint.

C'est le point important : si l'un des trois morceaux était strictement en dessous de son maximum, le total serait strictement inférieur à $48$, puisque les deux autres ne peuvent pas compenser (ils sont déjà au maximum possible). Chacun des trois morceaux est donc obligé d'être à son maximum.

Et comme chaque maximum n'est atteint que par une seule écriture :

- le jour est $29$ ;
- le mois est $09$ ;
- l'année est $1999$.

**Vérification.** Le 29 septembre existe bien, car septembre compte $30$ jours. Et

$$2 + 9 + 0 + 9 + 1 + 9 + 9 + 9 = 48$$

**Conclusion.** Lucie est née le 29 septembre 1999.

## Going further

1. Combien existe-t-il de dates (même format, année entre $1900$ et $2025$) dont la somme des chiffres vaut $47$ ?
2. Quelle est la plus **petite** somme de chiffres possible pour une date de ce format ? Combien de dates la réalisent ?
3. Lucie écrit maintenant sa date de naissance au format `jj.mm.aa`, avec seulement deux chiffres pour l'année. Une somme de chiffres égale à $48$ est-elle encore possible ?
