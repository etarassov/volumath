---
id: "7405"
title: "Seize litres à partager en deux fois huit"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [transvasement, recherche, strategie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, chasse au trésor"
  reference: "stage_ete_2010.pdf, « Activités ludiques », chasse au trésor, énigmes communes, exercice 3 (le sirop remplace le rhum de l'énoncé d'origine)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On dispose de trois pichets, sans aucune graduation, de contenances $7$, $9$ et $16$ litres. Au
départ, le pichet de $16$ litres est plein de sirop et les deux autres sont vides.

La seule opération autorisée est de verser du sirop d'un pichet dans un autre, en s'arrêtant soit
quand le pichet de départ est vide, soit quand le pichet d'arrivée est plein. On ne peut ni jeter
de sirop ni en ajouter.

Peux-tu arriver à la situation suivante : $8$ litres dans le pichet de $16$ litres, $8$ litres
dans le pichet de $9$ litres, et le pichet de $7$ litres vide ?

Si oui, écris la suite des versements.

## Hints

1. Note une situation par un triplet, par exemple $(16 \,;\, 0 \,;\, 0)$ pour « $16$ litres dans le
   grand, rien dans celui de $9$, rien dans celui de $7$ ».
2. Le pichet de $7$ litres sert de « mesure » : à chaque fois que tu le remplis à partir du pichet
   de $9$, tu peux fabriquer de petites quantités.
3. Cherche d'abord à obtenir $2$ litres quelque part. Ensuite, $9 - 2 = 7$ et $7 + 1 = 8$ : les
   petites quantités s'enchaînent.

## Solution

**C'est possible.** Voici une suite de versements qui marche. On note $(A \,;\, B \,;\, C)$ les
contenus des pichets de $16$, $9$ et $7$ litres.

| | $16$ L | $9$ L | $7$ L | ce qu'on vient de faire |
|---|---|---|---|---|
| départ | $16$ | $0$ | $0$ | |
| 1 | $7$ | $9$ | $0$ | on remplit le pichet de $9$ |
| 2 | $7$ | $2$ | $7$ | on remplit le pichet de $7$ à partir de celui de $9$ |
| 3 | $14$ | $2$ | $0$ | on vide le pichet de $7$ dans le grand |
| 4 | $14$ | $0$ | $2$ | on verse les $2$ litres dans le pichet de $7$ |
| 5 | $5$ | $9$ | $2$ | on remplit le pichet de $9$ à partir du grand |
| 6 | $5$ | $4$ | $7$ | on complète le pichet de $7$ à partir de celui de $9$ |
| 7 | $12$ | $4$ | $0$ | on vide le pichet de $7$ dans le grand |
| 8 | $12$ | $0$ | $4$ | on verse les $4$ litres dans le pichet de $7$ |
| 9 | $3$ | $9$ | $4$ | on remplit le pichet de $9$ à partir du grand |
| 10 | $3$ | $6$ | $7$ | on complète le pichet de $7$ à partir de celui de $9$ |
| 11 | $10$ | $6$ | $0$ | on vide le pichet de $7$ dans le grand |
| 12 | $10$ | $0$ | $6$ | on verse les $6$ litres dans le pichet de $7$ |
| 13 | $1$ | $9$ | $6$ | on remplit le pichet de $9$ à partir du grand |
| 14 | $1$ | $8$ | $7$ | on complète le pichet de $7$ à partir de celui de $9$ |
| 15 | $8$ | $8$ | $0$ | on vide le pichet de $7$ dans le grand |

À la dernière ligne, le grand pichet contient $8$ litres, celui de $9$ litres en contient $8$, et
celui de $7$ litres est vide : c'est exactement ce qu'on cherchait.

**Comment on trouve cette suite.**

Le mouvement de base est toujours le même, et il se répète quatre fois :

1. on remplit le pichet de $9$ litres à partir du grand ;
2. on complète le pichet de $7$ litres à partir de celui de $9$ ;
3. on vide le pichet de $7$ litres dans le grand.

Chaque tour de ce cycle **diminue de $2$** ce qui reste dans le pichet de $9$ litres : au départ il
reste $2$ litres, puis $4$, puis $6$, puis $8$. C'est le pas de $2$ qui vient de $9 - 7 = 2$.

À chaque tour on remet dans le grand pichet tout ce qui est passé par le pichet de $7$ litres, si
bien que la quantité totale ailleurs que dans le grand pichet augmente lentement. Au quatrième
tour, le pichet de $9$ litres contient $8$ litres : on s'arrête là.

**Conclusion.** En $15$ versements, on obtient $8$ litres d'un côté, $8$ litres de l'autre, et le
pichet de $7$ litres vide.

## Going further

Peut-on faire mieux que $15$ versements ? Et avec des pichets de $5$, $11$ et $16$ litres,
peut-on encore couper les $16$ litres en deux parts égales ?
