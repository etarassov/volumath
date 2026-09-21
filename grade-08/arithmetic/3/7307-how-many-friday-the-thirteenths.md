---
id: "7307"
title: "Combien de vendredis 13 dans une année ?"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [calendrier, reste, division-euclidienne, modulo]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 44"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Une année **non bissextile** compte $365$ jours, répartis ainsi :

| mois | janv. | févr. | mars | avril | mai | juin | juil. | août | sept. | oct. | nov. | déc. |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| nombre de jours | 31 | 28 | 31 | 30 | 31 | 30 | 31 | 31 | 30 | 31 | 30 | 31 |

Combien une telle année peut-elle contenir de vendredis 13 ?

Peut-il n'y en avoir aucun ? Quel est le maximum possible ?

## Hints

1. Une semaine fait $7$ jours. Deux dates tombent le même jour de la semaine exactement quand le nombre de jours qui les sépare est un multiple de $7$.
2. Numérote les jours de l'année de $1$ (le 1er janvier) à $365$. Quel est le numéro du 13 janvier ? Du 13 février ? Continue pour les douze mois.
3. Tu obtiens douze numéros. Pour chacun, calcule le **reste de la division par 7**. Les 13 qui donnent le même reste tombent le même jour de la semaine.
4. Classe les douze mois selon ce reste. Combien de mois dans chaque classe ?
5. Si le vendredi correspond à un reste donné, le nombre de vendredis 13 est le nombre de mois dans cette classe. Regarde la plus petite et la plus grande de ces classes.

## Solution

**Numérotons les jours de l'année.**

Le 1er janvier porte le numéro $1$, le 2 janvier le numéro $2$, et ainsi de suite jusqu'au 31 décembre qui porte le numéro $365$.

Le 13 de chaque mois porte alors les numéros suivants : on part de $13$ pour janvier, et on ajoute la longueur du mois précédent à chaque fois.

| mois | janv. | févr. | mars | avril | mai | juin | juil. | août | sept. | oct. | nov. | déc. |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| numéro du 13 | 13 | 44 | 72 | 103 | 133 | 164 | 194 | 225 | 256 | 286 | 317 | 347 |

(Par exemple, $44 = 13 + 31$ puisque janvier a $31$ jours, puis $72 = 44 + 28$, etc.)

**On passe aux restes modulo 7.**

Deux jours tombent le même jour de la semaine exactement lorsque leurs numéros ont le même reste dans la division par $7$. Calculons ces restes :

| mois | janv. | févr. | mars | avril | mai | juin | juil. | août | sept. | oct. | nov. | déc. |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| numéro | 13 | 44 | 72 | 103 | 133 | 164 | 194 | 225 | 256 | 286 | 317 | 347 |
| reste modulo 7 | 6 | 2 | 2 | 5 | 0 | 3 | 5 | 1 | 4 | 6 | 2 | 4 |

(Par exemple $44 = 7 \times 6 + 2$, donc le reste est $2$ ; et $347 = 7 \times 49 + 4$, donc le reste est $4$.)

**On regroupe les mois par reste.**

| reste | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|---|
| mois | mai | août | févr., mars, nov. | juin | sept., déc. | avril, juil. | janv., oct. |
| combien | 1 | 1 | **3** | 1 | 2 | 2 | 2 |

**On conclut.**

Le vendredi correspond à un certain reste, qui dépend de l'année. Le nombre de vendredis 13 est alors exactement le nombre de mois figurant dans cette classe.

- **Aucune classe n'est vide.** Il y a donc **toujours au moins un vendredi 13** dans une année non bissextile.
- La classe la plus grosse compte **trois** mois. Le maximum est donc **trois** vendredis 13, et cela arrive lorsque le vendredi tombe sur le reste $2$, c'est-à-dire quand le 13 février est un vendredi : les vendredis 13 sont alors en février, en mars et en novembre.

**Conclusion.** Une année non bissextile contient $1$, $2$ ou $3$ vendredis 13. Jamais zéro, jamais plus de trois.

**Exemples.** En $1903$ il y a eu trois vendredis 13 ; en $1902$, un seul.

## Going further

1. Refais le tableau pour une année **bissextile** (février a $29$ jours). Combien de vendredis 13 peut-elle contenir ?
2. Combien de mois faut-il au maximum attendre entre deux vendredis 13 consécutifs, dans une année non bissextile ?
3. Le calendrier grégorien se répète à l'identique tous les $400$ ans. En moyenne, sur $400$ ans, y a-t-il plus de 13 qui tombent un vendredi que de 13 qui tombent un lundi ?
