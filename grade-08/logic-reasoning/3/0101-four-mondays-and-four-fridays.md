---
id: "0101"
title: "Quatre lundis et quatre vendredis"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [calendrier, semaine, disjonction-de-cas, reste]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 1, задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Au mois de juillet d'une certaine année, il y a eu exactement quatre lundis et exactement quatre vendredis.

Quel jour de la semaine pouvait être le 15 juillet de cette année-là ?

Donner tous les jours possibles, et montrer qu'il n'y en a pas d'autres.

## Hints

1. Combien de jours y a-t-il en juillet ? Combien cela fait-il de semaines entières, et combien de jours en plus ?
2. Un mois de 31 jours contient 4 semaines entières et 3 jours en plus. Dans un tel mois, certains jours de la semaine reviennent 5 fois et les autres 4 fois. Lesquels reviennent 5 fois ?
3. Les jours qui reviennent 5 fois sont exactement ceux du 1er, du 2 et du 3 juillet. Si juillet ne contient que quatre lundis, où le lundi ne peut-il pas se trouver ?
4. Essaie les sept jours possibles pour le 1er juillet et élimine ceux qui donnent cinq lundis ou cinq vendredis. Ensuite, compare le 15 juillet au 1er juillet.

## Solution

**L'idée : compter les jours qui reviennent cinq fois.**

Juillet a $31$ jours, et

$$31 = 4 \times 7 + 3$$

Juillet contient donc $4$ semaines entières, plus $3$ jours.

Chaque jour de la semaine revient donc au moins $4$ fois. Les $3$ jours qui restent sont le 29, le 30 et le 31 juillet, et ils tombent aux mêmes jours de la semaine que le 1er, le 2 et le 3 juillet (parce que $29 = 1 + 28$, $30 = 2 + 28$, $31 = 3 + 28$, et que $28 = 4 \times 7$).

**Conclusion de cette première étape.** Les jours de la semaine du 1er, du 2 et du 3 juillet reviennent $5$ fois dans le mois. Les quatre autres jours de la semaine reviennent exactement $4$ fois.

**On élimine les possibilités.**

Appelons $J$ le jour de la semaine du 1er juillet. Les trois jours qui reviennent cinq fois sont alors $J$, le lendemain de $J$, et le surlendemain de $J$.

L'énoncé dit qu'il y a seulement quatre lundis. Le lundi ne doit donc pas faire partie de ces trois jours :

- si $J$ est un lundi, il y a cinq lundis : impossible ;
- si $J$ est un dimanche, le lendemain est un lundi : impossible ;
- si $J$ est un samedi, le surlendemain est un lundi : impossible.

L'énoncé dit aussi qu'il y a seulement quatre vendredis. De la même façon :

- si $J$ est un vendredi : impossible ;
- si $J$ est un jeudi : impossible ;
- si $J$ est un mercredi : impossible.

Il ne reste qu'une seule possibilité : **le 1er juillet est un mardi**.

**On vérifie que ce cas marche vraiment.**

Si le 1er juillet est un mardi, les jours qui reviennent cinq fois sont le mardi, le mercredi et le jeudi. Le lundi et le vendredi reviennent donc bien quatre fois chacun. Ce cas est possible.

**Le 15 juillet.**

On a $15 = 1 + 14$ et $14 = 2 \times 7$. Le 15 juillet tombe donc le même jour de la semaine que le 1er juillet.

**Conclusion.** Le 15 juillet était un mardi, et c'est le seul jour possible.

## Going further

1. Dans ce même mois de juillet, quel jour de la semaine était le 31 ?
2. Un mois de $30$ jours contient quatre samedis et quatre dimanches. Quels jours de la semaine le 1er de ce mois peut-il être ? Ici la réponse n'est plus unique : combien y a-t-il de possibilités ?
3. Peut-il exister un mois contenant cinq samedis, cinq dimanches et cinq lundis ?
