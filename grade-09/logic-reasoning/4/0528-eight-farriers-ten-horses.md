---
id: "0528"
title: "Huit maréchaux-ferrants et dix chevaux"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [optimisation, planning, minoration, exemple]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 6, задача 1"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Huit maréchaux-ferrants doivent ferrer dix chevaux. Chaque cheval a besoin de quatre fers, et un maréchal-ferrant met $5$ minutes pour poser un fer.

Un cheval ne peut pas tenir sur deux jambes, mais il peut tenir sur trois : deux maréchaux-ferrants ne peuvent donc jamais travailler en même temps sur le même cheval.

Quel est le temps minimal nécessaire pour terminer tout le travail ?

## Hints

1. Commence par calculer le travail total à faire, exprimé en minutes de travail d'un maréchal-ferrant.
2. Huit personnes travaillent en même temps. Quel est le temps le plus court qu'on puisse espérer ? Attention, ce calcul ne donne qu'une limite : il restera à montrer qu'on peut vraiment l'atteindre.
3. Dans ce temps-là, combien de fers chaque maréchal-ferrant pose-t-il ? Ce nombre est-il un multiple de $4$ ? Qu'est-ce que cela t'oblige à faire ?
4. Coupe le problème en deux moitiés identiques : $4$ maréchaux-ferrants et $5$ chevaux. Cherche un planning découpé en cinq tranches de $5$ minutes.

## Solution

Une question de ce type se traite **toujours en deux temps** : on montre d'abord qu'on ne peut pas faire mieux qu'un certain temps (c'est la minoration), puis on donne un exemple qui atteint ce temps.

**Premier temps : on ne peut pas faire mieux que 25 minutes.**

Il y a $10$ chevaux et chacun a besoin de $4$ fers, soit

$$10 \times 4 = 40 \text{ fers.}$$

Chaque fer coûte $5$ minutes de travail, donc le travail total représente

$$40 \times 5 = 200 \text{ minutes de travail.}$$

Les huit maréchaux-ferrants travaillent en même temps. En $T$ minutes, même s'ils ne s'arrêtent jamais une seconde, ils ne peuvent fournir que $8 \times T$ minutes de travail. Il faut donc

$$8T \geqslant 200, \qquad \text{c'est-à-dire} \qquad T \geqslant 25.$$

**On ne peut donc pas descendre en dessous de 25 minutes.**

**Une remarque utile avant de chercher l'exemple.**

Si on veut vraiment tenir en $25$ minutes, personne ne doit chômer, et chaque maréchal-ferrant pose donc exactement $25 \div 5 = 5$ fers. Or $5$ n'est pas un multiple de $4$ : **aucun** maréchal-ferrant ne peut se contenter de ferrer des chevaux entiers. La méthode naïve, « chacun prend ses chevaux et les ferre du début à la fin », est donc condamnée d'avance. Il faut que les maréchaux-ferrants se partagent au moins un cheval.

**Second temps : un planning qui tient en 25 minutes.**

Coupons le travail en deux moitiés identiques : $4$ maréchaux-ferrants $A$, $B$, $C$, $D$ s'occupent de $5$ chevaux numérotés de $1$ à $5$, et les quatre autres font exactement pareil avec les cinq chevaux restants.

On découpe les $25$ minutes en cinq tranches de $5$ minutes. À chaque tranche, chacun pose un fer :

- tranche 1 : $A \to 1$, $B \to 2$, $C \to 3$, $D \to 4$ ;
- tranche 2 : $A \to 1$, $B \to 2$, $C \to 3$, $D \to 5$ ;
- tranche 3 : $A \to 1$, $B \to 2$, $C \to 5$, $D \to 4$ ;
- tranche 4 : $A \to 1$, $B \to 5$, $C \to 3$, $D \to 4$ ;
- tranche 5 : $A \to 5$, $B \to 2$, $C \to 3$, $D \to 4$.

**Vérifions que tout est correct.**

Chaque cheval reçoit bien ses quatre fers :

- cheval $1$ : ferré par $A$ aux tranches $1$, $2$, $3$, $4$ ;
- cheval $2$ : ferré par $B$ aux tranches $1$, $2$, $3$, $5$ ;
- cheval $3$ : ferré par $C$ aux tranches $1$, $2$, $4$, $5$ ;
- cheval $4$ : ferré par $D$ aux tranches $1$, $3$, $4$, $5$ ;
- cheval $5$ : ferré par $D$, puis $C$, puis $B$, puis $A$, aux tranches $2$, $3$, $4$, $5$.

Et à chaque tranche, les quatre maréchaux-ferrants sont sur quatre chevaux **différents** : aucun cheval ne se retrouve jamais sur deux jambes.

**Comment retenir ce planning.** Chaque maréchal-ferrant a « son » cheval ($A$ le $1$, $B$ le $2$, $C$ le $3$, $D$ le $4$) et le ferre entièrement, sauf qu'il saute une tranche pour aller poser un fer au cheval $5$. Il suffit que les quatre le fassent à des tranches différentes.

**Conclusion.** Le temps minimal est de **25 minutes**.

## Going further

1. Voici le même genre de question, en plus simple : une poêle ne peut contenir que deux steaks à la fois, et il faut $3$ minutes pour cuire une face. En combien de temps au minimum peut-on cuire trois steaks des deux côtés ?
2. Deux maréchaux-ferrants doivent ferrer trois chevaux, toujours dans les mêmes conditions. Quel est le temps minimal ?
