---
id: "0529"
title: "La passerelle et la lampe torche"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [optimisation, traversee, minimum, cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 6, задача 2 (le manuel donne sa solution sous le numéro 3)"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Le père, la mère, le fils et la grand-mère doivent traverser une passerelle branlante en pleine nuit. La passerelle ne supporte que **deux personnes à la fois**. De plus, la famille n'a qu'une seule lampe torche, et personne ne peut faire un pas sans elle.

Le père traverse en $1$ minute, la mère en $2$ minutes, le fils en $5$ minutes et la grand-mère en $10$ minutes. Quand deux personnes traversent ensemble, elles avancent à l'allure de la plus lente.

En combien de temps au minimum toute la famille peut-elle se retrouver sur l'autre rive ? Montrer qu'on ne peut pas faire mieux.

## Hints

1. La lampe doit toujours revenir. Combien faut-il de traversées vers l'autre rive, et combien de retours ?
2. La première idée qui vient est d'envoyer le père accompagner chacun, puis revenir à chaque fois. Calcule le temps que cela donne, puis essaie de faire mieux.
3. Regarde les deux plus lents, le fils et la grand-mère. Quand le fils traverse tout seul, ses $5$ minutes sont « perdues ». Et s'il traversait en même temps que la grand-mère ?
4. Pour la preuve du minimum : au moment où le fils et la grand-mère traversent ensemble, où doivent se trouver le père et la mère ? Souviens-toi que la lampe doit être avec le fils et la grand-mère au départ.

## Solution

**Combien de traversées ?**

Chaque traversée vers l'autre rive emmène au plus deux personnes, et chaque retour en ramène une, avec la lampe. Comme la lampe finit sur l'autre rive, il y a un retour de moins que d'allers. Pour faire passer quatre personnes, il faut donc au moins $3$ allers et $2$ retours, soit $5$ traversées en tout.

**Une première solution, qui n'est pas la meilleure.**

Le père, qui est le plus rapide, accompagne chacun puis revient chercher le suivant :

$$10 + 1 + 5 + 1 + 2 = 19 \text{ minutes.}$$

On peut faire mieux.

**L'idée : faire traverser les deux plus lents ensemble.**

Le fils met $5$ minutes et la grand-mère $10$. S'ils traversent séparément, cela coûte $15$ minutes. S'ils traversent **ensemble**, cela ne coûte que $10$ minutes : les $5$ minutes du fils se cachent derrière les $10$ minutes de la grand-mère. Voici comment s'organiser :

- le père et la mère traversent : $2$ minutes ;
- le père revient avec la lampe : $1$ minute ;
- le fils et la grand-mère traversent : $10$ minutes ;
- la mère revient avec la lampe : $2$ minutes ;
- le père et la mère traversent : $2$ minutes.

$$2 + 1 + 10 + 2 + 2 = 17 \text{ minutes.}$$

**Pourquoi on ne peut pas faire mieux.**

Supposons qu'on réussisse à faire moins de $17$ minutes, et voyons ce que cela impose.

*D'abord, ni le fils ni la grand-mère ne fait d'aller-retour.* Un aller-retour du fils coûterait au moins $5 + 5 = 10$ minutes, et celui de la grand-mère au moins $20$ minutes ; en ajoutant leur traversée finale, on dépasserait tout de suite $17$ minutes. Donc chacun d'eux traverse une seule fois et ne revient jamais : **tous les retours sont faits par le père ou la mère.**

*Ensuite, le fils et la grand-mère traversent ensemble.* S'ils traversaient séparément, leurs deux traversées coûteraient déjà $5 + 10 = 15$ minutes. Il resterait encore un aller et deux retours, soit trois traversées d'au moins $1$ minute chacune, donc au moins $15 + 3 = 18$ minutes. C'est trop.

*Au moment de leur traversée, le père et la mère sont sur des rives différentes.* Juste avant que le fils et la grand-mère partent, la lampe est avec eux, sur la rive de départ.

- Si le père et la mère étaient tous les deux sur la rive d'arrivée, la lampe serait là-bas avec eux, puisqu'ils n'ont pas pu traverser sans elle, et que personne d'autre n'a pu la rapporter. Le fils et la grand-mère ne pourraient donc pas partir.
- S'ils étaient tous les deux sur la rive de départ, alors après la traversée du fils et de la grand-mère, il n'y aurait sur l'autre rive que le fils et la grand-mère, avec la lampe. Il faudrait que l'un d'eux revienne, ce qu'on vient d'exclure.

Il y a donc bien un parent de chaque côté.

*Le compte final.* Avant la traversée du fils et de la grand-mère, il a fallu amener un parent sur l'autre rive et ramener la lampe : au minimum un aller et un retour, et seuls le père et la mère y participent. L'aller doit les emmener tous les deux, sinon la lampe ne pourrait pas revenir ; il coûte donc $2$ minutes. Puis l'un des deux revient. Deux cas :

- **le père revient** ($1$ minute) : la mère est sur l'autre rive, coût avant la grande traversée $2 + 1 = 3$ minutes. Après la traversée du fils et de la grand-mère, il faut ramener la lampe : la personne la plus rapide de l'autre rive est la mère, $2$ minutes, puis le père et la mère traversent, $2$ minutes. Coût après : $4$ minutes. Total : $3 + 10 + 4 = 17$.
- **la mère revient** ($2$ minutes) : le père est sur l'autre rive, coût avant $2 + 2 = 4$ minutes. Après, le père ramène la lampe en $1$ minute, puis le père et la mère traversent en $2$ minutes. Coût après : $3$ minutes. Total : $4 + 10 + 3 = 17$.

Dans les deux cas on retombe sur $17$ minutes, et toute autre organisation coûte davantage.

**Conclusion.** La famille peut traverser en **17 minutes**, et c'est le minimum.

## Going further

1. La passerelle supporte maintenant trois personnes à la fois, les temps ne changent pas. Quel est le nouveau minimum ?
2. Une cinquième personne se joint à la famille, elle traverse en $20$ minutes. La passerelle ne supporte de nouveau que deux personnes. Quel est le temps minimal ?
