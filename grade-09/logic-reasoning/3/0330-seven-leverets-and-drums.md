---
id: "0330"
title: "Les sept lapereaux et leurs tambours"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [cas-extreme, maximum, comparaison, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 14, задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Une maman lapine a acheté, pour ses sept lapereaux, sept tambours de tailles toutes différentes et sept paires de baguettes de longueurs toutes différentes. Chaque lapereau reçoit un tambour et une paire de baguettes.

Un lapereau se met à tambouriner dès qu'il voit qu'il a **à la fois** un tambour plus grand **et** des baguettes plus longues qu'un de ses frères.

Quel est le plus grand nombre de lapereaux qui peuvent se mettre à tambouriner ?

## Hints

1. Pour une question du type « quel est le plus grand nombre... », il faut répondre à deux questions : d'abord « ce nombre ne peut pas être dépassé », ensuite « ce nombre est bien atteignable ».
2. Les sept tambours ont des tailles différentes : il y en a donc un qui est le plus petit de tous. Le lapereau qui l'a reçu peut-il tambouriner ?
3. Conclusion de l'indication précédente : les sept lapereaux ne peuvent pas tambouriner tous ensemble. Six, est-ce possible ?
4. Essaie de donner le plus petit tambour et les baguettes les plus courtes au **même** lapereau. Que se passe-t-il pour les six autres ?

## Solution

**L'idée : regarder le cas extrême, c'est-à-dire le plus petit tambour.**

**Étape 1. Les sept lapereaux ne peuvent pas tambouriner.**

Les sept tambours sont de tailles toutes différentes, il y en a donc un qui est strictement plus petit que tous les autres. Appelons Lucas le lapereau qui l'a reçu.

Pour tambouriner, Lucas devrait trouver un frère qui a un tambour **plus petit** que le sien. Or aucun frère n'a de tambour plus petit que le sien. Donc Lucas ne tambourine pas, quelles que soient les baguettes distribuées.

Il y a donc **au plus $6$** lapereaux qui tambourinent.

**Étape 2. Six lapereaux peuvent tambouriner.**

Il reste à montrer que $6$ est réellement possible, en donnant un exemple de distribution.

Donnons à Lucas **le plus petit tambour et les baguettes les plus courtes**, et répartissons les six autres tambours et les six autres paires de baguettes n'importe comment entre ses frères.

Prenons alors n'importe lequel des six autres lapereaux. Son tambour n'est pas le plus petit, il est donc plus grand que celui de Lucas. Ses baguettes ne sont pas les plus courtes, elles sont donc plus longues que celles de Lucas. Il a donc à la fois un tambour plus grand et des baguettes plus longues qu'un de ses frères, Lucas : il se met à tambouriner.

Les six frères de Lucas tambourinent donc tous.

**Réponse : au plus six lapereaux peuvent tambouriner, et six est bien possible. Le plus grand nombre cherché est donc $6$.**

*Ce qu'il faut retenir : pour une question « quel est le plus grand nombre ? », une réponse complète comporte toujours deux morceaux : une borne (« on ne peut pas faire mieux ») et un exemple (« on peut faire aussi bien »).*

## Going further

1. Et si la maman lapine avait $n$ lapereaux, $n$ tambours de tailles différentes et $n$ paires de baguettes de longueurs différentes ? Quel est le plus grand nombre de lapereaux qui tambourinent ?
2. Quel est au contraire le plus **petit** nombre de lapereaux qui peuvent tambouriner ? Trouve une distribution où personne ne tambourine.
3. Un lapereau tambourine maintenant dès qu'il a un tambour plus grand **ou** des baguettes plus longues qu'un de ses frères. Quel est alors le plus grand nombre de tambourineurs ? Et le plus petit ?
