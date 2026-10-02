---
id: "0552"
title: "Le chevalier, le menteur et l'espion"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [chevaliers-et-menteurs, vrai-ou-faux, disjonction-de-cas, deduction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 12 «Рыцари и лжецы», задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Sur une île vivent des **chevaliers**, qui disent toujours la vérité, et des **menteurs**, qui mentent toujours.

Un jour, on juge trois accusés. On sait que parmi eux se trouvent exactement un chevalier, un menteur, et un **espion** étranger, qui parle comme il veut : il dit parfois la vérité, parfois un mensonge. Mais on ne sait pas qui est qui.

Voici leurs déclarations :

- **Le premier :** « Le troisième accusé est un menteur. »
- **Le deuxième :** « Le premier accusé est un chevalier. »
- **Le troisième :** « Je suis l'espion. »

Qui est l'espion ?

## Hints

1. L'espion peut dire n'importe quoi : sa déclaration ne nous apprend rien de sûr. Il vaut donc mieux commencer par chercher **qui est le chevalier**, dont la parole, elle, est fiable.
2. Le troisième dit « Je suis l'espion ». Pourrait-il être le chevalier ?
3. Et le deuxième, pourrait-il être le chevalier ? Que faudrait-il alors penser du premier ?
4. Une fois le chevalier identifié, sa déclaration est vraie : elle donne aussitôt le rôle d'un deuxième accusé.

## Solution

**L'idée : chercher d'abord le chevalier.**

Il y a exactement un chevalier parmi les trois. Examinons chaque accusé tour à tour.

**Le troisième n'est pas le chevalier.**

S'il l'était, sa déclaration « Je suis l'espion » serait vraie, et il serait donc l'espion. Mais on ne peut pas être à la fois le chevalier et l'espion : il n'y a qu'un seul chevalier et un seul espion, et ce sont deux personnes différentes. C'est impossible.

**Le deuxième n'est pas le chevalier.**

S'il l'était, sa déclaration « Le premier accusé est un chevalier » serait vraie, et le premier serait donc lui aussi un chevalier. Cela ferait deux chevaliers, alors qu'il n'y en a qu'un. C'est impossible.

**Donc le chevalier est le premier accusé.**

Sa déclaration est donc vraie : **le troisième accusé est un menteur**.

Il ne reste qu'un rôle pour le deuxième accusé : **c'est lui l'espion**.

**Vérification.**

- Le premier est le chevalier et dit « le troisième est un menteur » : c'est vrai. $\checkmark$
- Le deuxième est l'espion et dit « le premier est un chevalier » : c'est vrai, et l'espion a le droit de dire la vérité. $\checkmark$
- Le troisième est le menteur et dit « Je suis l'espion » : c'est faux, et le menteur ment toujours. $\checkmark$

Tout est cohérent.

**Conclusion.** L'espion est le **deuxième accusé**. Au passage, on a même trouvé les trois rôles : le premier est le chevalier, le deuxième l'espion, le troisième le menteur.

## Going further

1. Reprendre le problème en remplaçant la déclaration du troisième par « Je suis un menteur », les deux autres déclarations restant les mêmes. Montrer qu'alors aucune répartition des rôles n'est possible : la situation décrite ne peut pas exister.
2. Reprendre le problème d'origine en remplaçant seulement la déclaration du deuxième par
   « Le premier accusé est un menteur ». Montrer que cette fois deux répartitions des rôles
   sont possibles, et qu'on ne peut donc plus dire qui est l'espion.
