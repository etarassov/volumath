---
id: "0579"
title: "Le photographe et les oiseaux"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [pire-cas, denombrement, strategie, certitude]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 2 «Птичка вылетает!», задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Cinquante oiseaux se sont installés dans un studio de photographie : $18$ étourneaux, $17$ bergeronnettes et $15$ pics.

Chaque fois que le photographe déclenche son appareil, un oiseau s'envole et ne revient pas. On ne sait pas lequel : cela peut être n'importe quel oiseau encore présent.

Quel est le plus grand nombre de photos que le photographe peut prendre en étant **certain** qu'il restera dans le studio au moins $10$ oiseaux d'une même espèce ?

## Hints

1. « Être certain » veut dire : quoi qu'il arrive, même si les oiseaux s'envolent de la façon la plus gênante possible.
2. Mets-toi du côté des oiseaux, qui voudraient faire échouer le photographe. Que doit-il rester à la fin pour que sa condition soit fausse ?
3. Pour que la condition soit fausse, il doit rester au plus $9$ oiseaux de chaque espèce. Combien d'étourneaux doivent partir pour cela ? Combien de bergeronnettes ? Combien de pics ?
4. Tu obtiens le nombre minimum de départs qui feraient échouer le photographe. Le nombre cherché est juste en dessous.

## Solution

**L'idée : se mettre du côté des oiseaux.**

Le photographe veut être **certain**. Il ne suffit pas qu'il reste $10$ oiseaux d'une même espèce dans un cas favorable : il faut que ce soit vrai dans tous les cas, même le pire. Retournons donc la question et demandons-nous : combien d'oiseaux doivent s'envoler pour que la condition du photographe soit **fausse** ?

**Ce que les oiseaux doivent réussir.**

La condition du photographe est fausse lorsqu'il reste au plus $9$ oiseaux de chaque espèce. Regardons espèce par espèce :

- étourneaux : il y en a $18$, il faut descendre à $9$ au plus, donc au moins $18 - 9 = 9$ doivent partir ;
- bergeronnettes : il y en a $17$, il faut descendre à $9$ au plus, donc au moins $17 - 9 = 8$ doivent partir ;
- pics : il y en a $15$, il faut descendre à $9$ au plus, donc au moins $15 - 9 = 6$ doivent partir.

Au total, il faut qu'au moins
$$9 + 8 + 6 = 23$$
oiseaux s'envolent pour que la condition du photographe soit mise en défaut.

**Avec 23 photos, le photographe n'est plus certain.**

S'il prend $23$ photos, il se peut que ce soient justement $9$ étourneaux, $8$ bergeronnettes et $6$ pics qui s'envolent. Il resterait alors $9$ oiseaux de chaque espèce, et la condition ne serait pas remplie. Donc $23$ photos, c'est déjà trop pour être sûr.

**Avec 22 photos, le photographe est certain.**

S'il prend au plus $22$ photos, au plus $22$ oiseaux s'envolent. Or il en faudrait au moins $23$ pour faire descendre les trois espèces à $9$ ou moins. Donc c'est impossible : il restera forcément au moins $10$ oiseaux d'au moins une espèce.

**Conclusion.**

Le photographe peut prendre au plus $\mathbf{22}$ photos en étant certain qu'il restera au moins $10$ oiseaux d'une même espèce.

## Going further

1. Question plus facile, à faire d'abord si celle-ci résiste : avec les mêmes $50$ oiseaux, combien de photos le photographe peut-il prendre en étant certain qu'il restera des oiseaux des **trois** espèces ?
2. Toujours avec les mêmes oiseaux : combien de photos peut-il prendre en étant certain qu'il restera au moins $11$ oiseaux d'une espèce **et** au moins $10$ oiseaux d'une autre ? La réponse est beaucoup plus petite que $22$ : pourquoi cela n'est-il pas absurde ?
3. Dans une boîte se trouvent $10$ boules rouges, $15$ bleues et $20$ vertes. Quel est le plus grand nombre de boules que l'on peut sortir sans regarder, en étant certain qu'il restera dans la boîte au moins $5$ boules d'une même couleur ?
