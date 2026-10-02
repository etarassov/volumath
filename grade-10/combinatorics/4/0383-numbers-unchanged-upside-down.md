---
id: "0383"
title: "Les nombres qui résistent au demi-tour"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [denombrement, chiffres, symetrie, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 8 «Сложить или умножить?», задача 9"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On écrit un nombre sur une feuille de papier, puis on fait faire à la feuille un demi-tour, c'est-à-dire qu'on la tourne de $180$ degrés dans son plan.

Les chiffres $0$, $1$ et $8$ restent alors inchangés, les chiffres $6$ et $9$ prennent la place l'un de l'autre, et tous les autres chiffres ne veulent plus rien dire.

Combien existe-t-il de nombres de neuf chiffres qui, après ce demi-tour, donnent exactement le même nombre ?

## Hints

1. Commence par la question la plus simple : quels chiffres peuvent apparaître dans un tel nombre ?
2. Après le demi-tour, quel chiffre vient prendre la place du premier ? Et celle du deuxième ? Fais un dessin avec neuf cases.
3. Le chiffre du milieu se retrouve à sa propre place : il doit donc se transformer en lui-même. Lesquels conviennent ?
4. Une fois les quatre premiers chiffres choisis, les quatre derniers sont-ils encore libres ?
5. Attention au piège classique : un nombre de neuf chiffres ne commence jamais par $0$.

## Solution

**Ce que fait le demi-tour.**

Quand on tourne la feuille d'un demi-tour, deux choses se produisent en même temps :

- chaque chiffre est remplacé par son image : $0 \mapsto 0$, $1 \mapsto 1$, $8 \mapsto 8$, $6 \mapsto 9$ et $9 \mapsto 6$ ; les autres chiffres perdent tout sens ;
- l'ordre des chiffres est inversé : le premier chiffre se retrouve à la dernière place, le deuxième à l'avant-dernière, et ainsi de suite.

Notons $d_1 d_2 d_3 d_4 d_5 d_6 d_7 d_8 d_9$ les neuf chiffres du nombre. Après le demi-tour, la première place est occupée par l'image de $d_9$, la deuxième par l'image de $d_8$, etc. Pour que le nombre soit inchangé, il faut donc

$$d_1 = \mathrm{im}(d_9), \quad d_2 = \mathrm{im}(d_8), \quad d_3 = \mathrm{im}(d_7), \quad d_4 = \mathrm{im}(d_6), \quad d_5 = \mathrm{im}(d_5),$$

où $\mathrm{im}$ désigne l'image d'un chiffre par le demi-tour.

**Ce que l'on a vraiment à choisir.**

*Les chiffres utilisables.* Tous les chiffres du nombre doivent appartenir à l'ensemble $\{0, 1, 6, 8, 9\}$, sinon le nombre retourné n'aurait aucun sens. Cela fait $5$ chiffres disponibles.

*Le chiffre du milieu.* Le chiffre $d_5$ ne bouge pas de place : il doit être sa propre image. Seuls $0$, $1$ et $8$ conviennent, ce qui fait $3$ possibilités. (Si on mettait un $6$ au milieu, on lirait un $9$ après le demi-tour.)

*Les quatre derniers chiffres.* Les égalités ci-dessus se relisent dans l'autre sens : $d_9 = \mathrm{im}(d_1)$, $d_8 = \mathrm{im}(d_2)$, $d_7 = \mathrm{im}(d_3)$, $d_6 = \mathrm{im}(d_4)$. Une fois $d_1$, $d_2$, $d_3$, $d_4$ choisis, les quatre derniers chiffres sont donc **imposés** : il n'y a rien à choisir pour eux.

*Le premier chiffre.* Un nombre de neuf chiffres ne commence pas par $0$, donc $d_1$ ne peut valoir que $1$, $6$, $8$ ou $9$ : $4$ possibilités.

*Les chiffres $d_2$, $d_3$, $d_4$.* Aucune contrainte : $5$ possibilités chacun.

**Le compte.**

D'après le principe multiplicatif :

$$4 \times 5 \times 5 \times 5 \times 3 = 4 \times 125 \times 3 = 1500 .$$

**Conclusion.** Il existe exactement $1500$ nombres de neuf chiffres qui restent les mêmes après un demi-tour de la feuille. Par exemple $111\,101\,111$, ou encore $618\,010\,819$.

## Going further

1. Reprendre la question pour les nombres de huit chiffres. Pourquoi le calcul est-il plus court ?
2. Combien y a-t-il de nombres de neuf chiffres qui sont des palindromes, c'est-à-dire qui se lisent de la même façon de gauche à droite et de droite à gauche ? Comparer avec la réponse trouvée.
3. Combien y a-t-il de nombres de neuf chiffres qui, après le demi-tour, donnent encore un nombre de neuf chiffres, sans exiger que ce soit le même ?
