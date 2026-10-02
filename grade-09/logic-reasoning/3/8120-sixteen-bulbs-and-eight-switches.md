---
id: "8120"
title: "Seize ampoules et huit interrupteurs"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, parite, tableau]
adapted_from: null
see_also: ["7713"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Invariants », exercice 10"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Seize ampoules sont disposées en carré, $4$ lignes et $4$ colonnes.

Il y a un interrupteur par ligne et un interrupteur par colonne, soit huit interrupteurs en tout. Appuyer sur un interrupteur change l'état de **toutes** les ampoules de sa ligne (ou de sa colonne) : celles qui étaient allumées s'éteignent, celles qui étaient éteintes s'allument.

Au départ, seule l'ampoule du coin en haut à gauche est allumée ; les quinze autres sont éteintes.

1. Peut-on, en appuyant sur les interrupteurs, allumer les seize ampoules ?
2. Même question avec un carré de $3$ lignes et $3$ colonnes, toujours avec un interrupteur par ligne et un par colonne, et au départ seule l'ampoule du coin en haut à gauche allumée.

## Hints

1. Pour répondre « non », il faut trouver une quantité qui ne change jamais quand on appuie sur un interrupteur, et qui n'est pas la même au départ et à l'arrivée.
2. Pour la question 1, compte simplement le nombre d'ampoules allumées. Si une ligne en contient $t$ d'allumées avant, combien en contient-elle après ?
3. Pour la question 2, la même idée ne marche plus : vérifie-le. Il faut compter autre chose.
4. Question 2 : ne regarde que les quatre ampoules des coins. Combien d'entre elles une ligne contient-elle ? Et une colonne ?

## Solution

### 1. Le carré $4 \times 4$

**L'invariant : la parité du nombre d'ampoules allumées.**

Une ligne contient $4$ ampoules. Supposons qu'avant l'appui, $t$ d'entre elles soient allumées. Après l'appui, ce sont les $4-t$ autres qui sont allumées. Le nombre total d'ampoules allumées dans le carré a donc varié de

$$(4-t) - t = 4 - 2t,$$

qui est un nombre **pair**. Le même calcul vaut pour une colonne.

Donc, à chaque appui, le nombre d'ampoules allumées change d'une quantité paire : **sa parité ne change jamais.**

**Conclusion.**

Au départ, il y a $1$ ampoule allumée : un nombre impair. À l'arrivée, il en faudrait $16$ : un nombre pair. C'est impossible.

### 2. Le carré $3 \times 3$

**Pourquoi la première idée ne marche plus.**

Une ligne contient maintenant $3$ ampoules, et le nombre d'allumées varie de $3 - 2t$, qui est impair. La parité du nombre d'ampoules allumées change donc à chaque appui : elle ne sert plus à rien.

**Le bon invariant : les quatre coins.**

Regardons uniquement les quatre ampoules des coins du carré $3 \times 3$.

- La première ligne contient exactement $2$ coins, la troisième ligne aussi, et la ligne du milieu n'en contient aucun.
- De même, la première colonne contient $2$ coins, la troisième aussi, et la colonne du milieu aucun.

Ainsi, appuyer sur n'importe quel interrupteur change l'état de $0$ ou de $2$ ampoules de coin. Dans les deux cas, le nombre de coins allumés varie d'une quantité paire : **la parité du nombre de coins allumés ne change jamais.**

**Conclusion.**

Au départ, il y a exactement $1$ coin allumé (celui d'en haut à gauche) : nombre impair. Si les neuf ampoules étaient allumées, il y aurait $4$ coins allumés : nombre pair. C'est impossible.

**Dans les deux cas, la réponse est non.**
