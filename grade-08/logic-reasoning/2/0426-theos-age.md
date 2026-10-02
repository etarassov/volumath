---
id: "0426"
title: "L'âge de Théo"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 10
tags: [logique, affirmations, disjonction-de-cas, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 1 «Логика», задача 1"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

C'est l'anniversaire de Théo, et le facteur voudrait bien savoir quel âge il a.

Camille affirme : « Théo a plus de 11 ans. »
Lucas affirme : « Théo a plus de 10 ans. »

L'âge de Théo est un nombre entier d'années, et une seule des deux affirmations est vraie.

Quel âge a Théo ?

## Hints

1. Ne cherche pas tout de suite l'âge. Compare d'abord les deux affirmations entre elles : si celle de Camille est vraie, que peut-on dire de celle de Lucas ?
2. Il est donc impossible que Camille soit celle qui dit vrai. Lequel des deux dit vrai, alors ?
3. Écris ce que cela donne : l'affirmation de Lucas est vraie, celle de Camille est fausse. Quels âges entiers restent possibles ?

## Solution

**L'idée : une des deux affirmations est plus forte que l'autre.**

Un nombre qui est plus grand que $11$ est en particulier plus grand que $10$. Donc :

> si l'affirmation de Camille est vraie, alors celle de Lucas l'est aussi.

**Qui dit vrai ?**

Supposons que Camille dise vrai. D'après ce qu'on vient de voir, Lucas dirait vrai lui aussi, et les deux affirmations seraient vraies. C'est impossible, car une seule des deux est vraie.

Donc Camille dit faux, et c'est Lucas qui dit vrai.

**L'âge.**

Notons $a$ l'âge de Théo, en années entières.

- Lucas dit vrai : $a > 10$.
- Camille dit faux : il est faux que $a > 11$, donc $a \leqslant 11$.

On a donc $10 < a \leqslant 11$. Le seul entier qui convient est $a = 11$.

**Vérification.** Si Théo a $11$ ans : « plus de 11 ans » est faux, « plus de 10 ans » est vrai. Une seule affirmation est vraie, tout va bien.

**Conclusion.** Théo a $11$ ans.

**Une autre façon de rédiger : séparer les cas.**

On peut aussi examiner les trois cas possibles.

| Âge de Théo | « plus de 11 » | « plus de 10 » | Nombre d'affirmations vraies |
| --- | --- | --- | --- |
| $a \geqslant 12$ | vrai | vrai | 2 |
| $a = 11$ | faux | vrai | 1 |
| $a \leqslant 10$ | faux | faux | 0 |

Seule la ligne du milieu convient : $a = 11$.

## Going further

1. Même question si Camille avait dit « plus de 11 ans » et Lucas « plus de 12 ans ».
2. Et si Camille dit « plus de 11 ans » et Lucas « moins de 13 ans » ? Combien d'âges sont alors possibles ?
3. Invente deux affirmations sur l'âge de Théo telles qu'il soit **impossible** qu'une seule des deux soit vraie.
