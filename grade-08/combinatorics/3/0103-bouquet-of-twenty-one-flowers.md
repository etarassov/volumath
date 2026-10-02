---
id: "0103"
title: "Un bouquet de vingt et une fleurs"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, principe-multiplicatif, cas-impossible]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 1, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Un fleuriste dispose de $20$ roses, $9$ tulipes et $8$ marguerites.

Il veut composer un bouquet de $21$ fleurs. Deux fleurs de la même sorte sont indiscernables : un bouquet est donc entièrement décrit par le nombre de roses, le nombre de tulipes et le nombre de marguerites qu'il contient.

Combien de bouquets différents le fleuriste peut-il composer ? Justifier la réponse.

## Hints

1. Un bouquet est décrit par trois nombres : combien de roses, combien de tulipes, combien de marguerites. Mais ces trois nombres sont-ils vraiment libres ?
2. Si tu as choisi le nombre de tulipes et le nombre de marguerites, le nombre de roses est-il encore au choix ? Il n'y a donc que deux décisions à prendre.
3. Combien de valeurs le nombre de tulipes peut-il prendre ? Et le nombre de marguerites ? Fais un tableau à deux entrées : pourquoi faut-il multiplier ces deux nombres, et non les additionner ?
4. Attention au piège : le fleuriste n'a que $20$ roses. Parmi tous les choix que tu as comptés, y en a-t-il un qui est en fait impossible à réaliser ?

## Solution

**L'idée : il n'y a que deux choix à faire, pas trois.**

**Étape 1. Deux nombres suffisent.**

Le bouquet doit contenir $21$ fleurs en tout. Si le fleuriste décide d'abord combien il met de tulipes et combien il met de marguerites, alors le nombre de roses est imposé : c'est ce qui manque pour arriver à $21$.

$$\text{nombre de roses} = 21 - \text{nombre de tulipes} - \text{nombre de marguerites}$$

Il n'y a donc que **deux** décisions à prendre : le nombre de tulipes, puis le nombre de marguerites.

**Étape 2. On compte les choix.**

- Le nombre de tulipes peut valoir $0, 1, 2, \dots, 9$, car le fleuriste en a $9$. Cela fait $10$ valeurs possibles.
- Le nombre de marguerites peut valoir $0, 1, 2, \dots, 8$, car le fleuriste en a $8$. Cela fait $9$ valeurs possibles.

Pour chacun des $10$ choix de tulipes, il y a $9$ choix de marguerites. On peut imaginer un tableau à $10$ lignes et $9$ colonnes : chaque case est un couple possible. Cela fait donc

$$10 \times 9 = 90 \text{ couples}$$

On multiplie, et on n'additionne pas, parce que chaque choix de tulipes se combine avec **tous** les choix de marguerites.

**Étape 3. On vérifie que chaque couple donne bien un bouquet.**

Le nombre de tulipes et de marguerites réunies vaut au plus $9 + 8 = 17$. Il faut donc au moins $21 - 17 = 4$ roses, et au plus $21$ roses.

Or le fleuriste n'a que $20$ roses. Le seul couple qui demanderait $21$ roses est celui où il n'y a ni tulipe ni marguerite. **Ce couple-là est impossible.**

Tous les autres couples demandent au plus $20$ roses, donc ils donnent bien un bouquet réalisable.

**Conclusion.**

$$90 - 1 = 89$$

Le fleuriste peut composer **$89$ bouquets différents**.

## Going further

1. Même question pour un bouquet de $22$ fleurs.
2. Combien de ces $89$ bouquets contiennent au moins une fleur de chaque sorte ?
3. Le fleuriste reçoit une rose de plus, et en a donc $21$. Combien de bouquets de $21$ fleurs peut-il alors composer ?
