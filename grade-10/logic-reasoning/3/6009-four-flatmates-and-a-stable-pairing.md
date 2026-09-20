---
id: "6009"
title: "Quatre colocataires et deux chambres"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 35
tags: [appariement, stabilite, preferences, cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « The Roommate Game » (Emily Dennett et Chris Bolognese)"
  reference: "2019-Spring-MTCircular.pdf, p. 8-12 : séance du Columbus Area MTC sur les appariements stables de Gale et Shapley ; la revue donne les listes de préférences mais pas le dénombrement complet"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/2019-Spring-MTCircular.pdf"
---

## Statement

Quatre étudiantes, Alice, Bérénice, Camille et Diane, emménagent dans deux chambres doubles. Il faut donc les répartir en deux paires.

Chacune a classé les trois autres, de celle avec qui elle aimerait le plus partager sa chambre à celle avec qui elle aimerait le moins :

| | premier choix | deuxième choix | troisième choix |
|---|---|---|---|
| **Alice** | Camille | Bérénice | Diane |
| **Bérénice** | Camille | Diane | Alice |
| **Camille** | Alice | Bérénice | Diane |
| **Diane** | Bérénice | Alice | Camille |

Une répartition est dite **instable** s'il existe deux étudiantes qui ne sont pas ensemble et qui, toutes les deux, préféreraient être ensemble plutôt qu'avec leur colocataire actuelle. Ces deux-là iraient se plaindre et échangeraient leurs chambres à la première occasion. Une répartition qui n'est pas instable est dite **stable**.

1. Combien y a-t-il de répartitions possibles des quatre étudiantes en deux paires ? Les écrire toutes.
2. Pour chacune, dire si elle est stable, en exhibant s'il y a lieu les deux étudiantes qui se plaindraient.
3. Combien y a-t-il de répartitions stables ?

## Hints

1. Pour la question 1, fixe la colocataire d'Alice : cela détermine tout le reste.
2. Pour tester une répartition, il faut passer en revue les couples d'étudiantes qui ne sont pas ensemble, et vérifier pour chacun si **les deux** y gagneraient. Il suffit qu'une seule des deux n'y gagne pas pour que le couple ne pose pas de problème.
3. Regarde d'abord les premiers choix. Deux étudiantes qui se sont mises mutuellement en tête de liste : que se passe-t-il si on ne les met pas ensemble ?
4. Une étudiante qui obtient son premier choix ne se plaindra jamais. Cela réduit beaucoup le travail.

## Solution

Notons les quatre étudiantes $A$, $B$, $C$, $D$.

### Question 1 : les répartitions possibles

La colocataire d'Alice est $B$, $C$ ou $D$, et les deux autres se retrouvent ensemble. Il y a donc exactement **trois** répartitions :
$$(1)\ AB \mid CD, \qquad (2)\ AC \mid BD, \qquad (3)\ AD \mid BC.$$

### Question 2 : test de chaque répartition

**Répartition (1) : $A$ avec $B$, $C$ avec $D$.**
Alice préfère Camille à Bérénice (Camille est son premier choix, Bérénice son deuxième). Camille préfère Alice à Diane (Alice est son premier choix, Diane son troisième). Alice et Camille préféreraient donc toutes les deux être ensemble : elles se plaindraient. Cette répartition est **instable**.

**Répartition (3) : $A$ avec $D$, $B$ avec $C$.**
Même chose : Alice préfère Camille à Diane, et Camille préfère Alice à Bérénice. Le couple Alice–Camille se plaindrait encore. **Instable**.

**Répartition (2) : $A$ avec $C$, $B$ avec $D$.**
Ici Alice et Camille se sont mises mutuellement en premier choix, et elles sont ensemble : aucune des deux ne voudra bouger, quoi qu'on lui propose.

Reste à examiner Bérénice et Diane. Pour qu'une plainte ait lieu, il faudrait que l'une d'elles s'entende avec Alice ou avec Camille. Mais ni Alice ni Camille n'accepterait : elles ont déjà ce qu'elles pouvaient espérer de mieux. Quant au couple Bérénice–Diane, il est déjà formé.

Aucune plainte n'est possible : cette répartition est **stable**.

*(On peut aussi vérifier que chacune s'en sort bien : Alice a son premier choix, Camille son premier choix, Diane son premier choix, et seule Bérénice doit se contenter de son deuxième.)*

### Question 3 : conclusion

Il y a exactement **une** répartition stable :
$$\text{Alice avec Camille, et Bérénice avec Diane.}$$

La méthode générale est visible dans la solution : deux personnes qui se choisissent mutuellement en premier doivent être ensemble dans toute répartition stable, car sinon elles se plaindraient. Une fois ce couple fixé, le reste suit tout seul.

## Going further

1. Combien y a-t-il de répartitions possibles pour six personnes en trois chambres doubles ? Et pour huit personnes ?
2. Construire des listes de préférences pour quatre personnes telles qu'**aucune** des trois répartitions ne soit stable. (Piste : arranger les trois premières pour qu'elles tournent en rond, chacune préférant la suivante, et donner à la quatrième la dernière place dans les trois listes.)
3. David Gale et Lloyd Shapley ont étudié en 1962 la version où l'on répartit non pas des colocataires, mais des garçons avec des filles, chacun classant seulement les personnes de l'autre groupe. Dans ce cas, une répartition stable existe **toujours**. Chercher l'algorithme qui la construit.
