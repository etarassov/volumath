---
id: "0536"
title: "Huit équipes, huit écoles"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [parite, denombrement, absurde, tournoi]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 8 «Чётность», задача 6"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Huit équipes, venant de huit écoles différentes, disputent un tournoi de joutes mathématiques. Chaque équipe rencontre chacune des sept autres exactement une fois. Chaque rencontre se déroule dans l'une des huit écoles du tournoi, pas forcément celle de l'une des deux équipes qui s'affrontent.

Se pourrait-il que chaque équipe ait joué dans **toutes les écoles sauf la sienne** ?

## Hints

1. Combien de rencontres une équipe dispute-t-elle en tout ? Et dans combien d'écoles différentes devrait-elle jouer ?
2. Compare ces deux nombres. Que peux-tu en conclure sur le nombre de fois où une équipe joue dans une école donnée ?
3. Place-toi maintenant dans une école et fais la liste de toutes les équipes qui viennent y jouer. Combien de fois chacune y apparaît-elle ? Et l'équipe de cette école ?
4. Chaque rencontre occupe deux équipes à la fois. Compte de deux façons différentes le nombre de places occupées par des équipes dans cette école.

## Solution

On raisonne **par l'absurde** : supposons que cela se soit produit, et cherchons une contradiction.

**Ce que fait une équipe.**

Chaque équipe rencontre les sept autres exactement une fois : elle dispute donc $7$ rencontres.

Par hypothèse, elle joue dans toutes les écoles sauf la sienne, soit $7$ écoles. Elle doit donc jouer au moins une fois dans chacune de ces $7$ écoles. Comme elle ne dispute que $7$ rencontres en tout, il ne peut pas y avoir de rabiot :

> chaque équipe joue **exactement une fois** dans chacune des sept écoles autres que la sienne, et jamais dans la sienne.

**Ce qui se passe dans une école donnée.**

Fixons une école et appelons-la $E$.

- L'équipe de l'école $E$ n'y joue jamais, puisqu'elle joue partout sauf chez elle.
- Chacune des $7$ autres équipes y joue exactement une fois.

Comptons les **places d'équipe** utilisées dans l'école $E$, c'est-à-dire le nombre de fois où une équipe y apparaît. D'après ce qui précède, ce nombre vaut

$$0 + \underbrace{1 + 1 + 1 + 1 + 1 + 1 + 1}_{\text{les sept autres équipes}} = 7.$$

**La contradiction.**

Comptons maintenant la même chose autrement. Chaque rencontre oppose **deux** équipes : elle occupe donc $2$ places. Si $k$ rencontres se déroulent dans l'école $E$, le nombre de places utilisées vaut $2k$.

Les deux comptes portent sur la même chose, donc

$$2k = 7.$$

C'est impossible : $2k$ est un nombre pair, et $7$ est impair. Aucun nombre entier $k$ ne convient.

**Conclusion.** Non, ce n'est pas possible. Quelle que soit la façon d'organiser le tournoi, il ne peut pas arriver que chaque équipe joue dans toutes les écoles sauf la sienne.

**L'idée à retenir.** On a compté **une même quantité de deux façons** — ici les places d'équipe dans une école donnée — et les deux résultats n'ont pas la même parité. C'est un des usages les plus fréquents de la parité : on ne calcule rien, on compare seulement un pair et un impair.

## Going further

1. Reprends le raisonnement avec neuf équipes venant de neuf écoles, tout le reste étant identique. L'argument de parité fonctionne-t-il encore ?
2. Plus généralement, pour quels nombres d'équipes l'argument de parité interdit-il la situation décrite ?
