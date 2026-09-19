---
id: "0403"
title: "Les requins du commandant Cousteau"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, puissances de deux, choix, maximum]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 11, задача 8"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Dans la gueule d'un requin il y a $6$ rangées de $6$ dents. Une dent arrachée ne repousse jamais.

Le commandant Cousteau a capturé plusieurs requins, et il n'y en a pas deux qui aient la même denture : si on en prend deux, il existe toujours un emplacement où l'un a une dent et l'autre non.

Quel est le plus grand nombre de requins qu'il a pu capturer ?

## Hints

1. Combien y a-t-il d'emplacements de dents dans la gueule d'un requin ?
2. Pour décrire un requin, que faut-il dire de chaque emplacement ? Combien de réponses possibles par emplacement ?
3. Imaginez une fiche par requin : une grille $6 \times 6$ où l'on coche les emplacements occupés par une dent. Deux requins capturés ont-ils la même fiche ?
4. Comptez les fiches possibles : le premier emplacement offre $2$ possibilités, et pour chacune d'elles le deuxième en offre encore $2$, etc.

## Solution

**L'idée : décrire un requin par une grille de cases cochées.**

La gueule d'un requin compte
$$6 \times 6 = 36$$
emplacements de dents. Pour chaque emplacement, il n'y a que deux situations : la dent est là, ou elle manque.

Un requin est donc entièrement décrit par une fiche : une grille de $36$ cases, dans laquelle on coche les emplacements où la dent est présente. Dire que deux requins n'ont pas la même denture, c'est dire qu'ils n'ont pas la même fiche.

**Compter les fiches.**

Remplissons une fiche case par case. Pour la première case, $2$ choix (cochée ou non). Pour chacun de ces $2$ choix, la deuxième case offre encore $2$ possibilités, ce qui fait $2 \times 2 = 4$ débuts de fiche. Avec la troisième case on arrive à $2 \times 2 \times 2 = 8$, et ainsi de suite.

Au bout des $36$ cases, le nombre de fiches possibles est
$$\underbrace{2 \times 2 \times \dots \times 2}_{36 \text{ facteurs}} = 2^{36} = 68\,719\,476\,736.$$

**Pourquoi c'est bien le maximum.**

Les requins capturés ont tous des fiches différentes, donc il ne peut pas y en avoir plus qu'il n'y a de fiches : au plus $2^{36}$.

Et ce nombre peut être atteint, puisque rien n'interdit une denture particulière : on peut imaginer un requin par fiche, y compris celui qui a toutes ses dents et celui qui n'en a plus aucune.

**Conclusion.** Le commandant Cousteau a pu capturer au plus $2^{36} = 68\,719\,476\,736$ requins, soit près de $69$ milliards. (Autant dire que le problème est plus facile à compter qu'à réaliser.)

## Going further

1. Un code informatique est une suite de $0$ et de $1$. Combien de symboles différents peut-on coder avec des codes de longueur $36$ ? Comparez avec le problème des requins : qu'ont-ils en commun ?
2. De combien de façons peut-on colorier un damier $6 \times 6$ avec deux couleurs ? Même question.
3. Combien de requins ont exactement une dent arrachée ? Exactement deux ?
