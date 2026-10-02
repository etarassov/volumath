---
id: "8101"
title: "La sauterelle et les douze chaises"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [graphe, parcours, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, Coupe Animath de printemps 2018"
  reference: "stage_ete_2018.pdf, chapitre II « Coupe Animath de printemps 2018 », énoncés destinés aux élèves de collège, exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Douze chaises sont alignées et numérotées de $1$ à $12$.

Une sauterelle se pose sur une chaise, puis saute de chaise en chaise. Elle ne sait faire que deux sortes de sauts : passer d'une chaise à une chaise située $5$ places plus loin, ou à une chaise située $8$ places plus loin. Dans les deux cas elle peut sauter vers la droite ou vers la gauche.

On sait qu'elle a fini par se poser sur chacune des douze chaises, et sur chacune une seule fois.

De quelle chaise a-t-elle pu partir ?

## Hints

1. Dessine les douze chaises et relie deux chaises par un trait quand la sauterelle peut aller de l'une à l'autre.
2. Pour chaque chaise, compte combien de traits en partent. Tu trouveras presque toujours le même nombre.
3. Deux chaises ne sont reliées qu'à une seule autre. Que se passe-t-il si la sauterelle arrive sur une telle chaise au milieu de son voyage ?

## Solution

**Le dessin des sauts possibles.**

Deux chaises $k$ et $n$ sont reliées quand $|k - n| = 5$ ou $|k - n| = 8$. Faisons la liste :

- écart $5$ : $1 \!-\! 6$, $2 \!-\! 7$, $3 \!-\! 8$, $4 \!-\! 9$, $5 \!-\! 10$, $6 \!-\! 11$, $7 \!-\! 12$ ;
- écart $8$ : $1 \!-\! 9$, $2 \!-\! 10$, $3 \!-\! 11$, $4 \!-\! 12$.

Cela fait onze liaisons en tout. Comptons maintenant, pour chaque chaise, le nombre de liaisons qui y aboutissent :

| Chaise | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Liaisons | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 2 |

Seules les chaises $5$ et $8$ n'ont qu'une voisine : la chaise $5$ n'est reliée qu'à la $10$, et la chaise $8$ n'est reliée qu'à la $3$.

**Les liaisons forment une seule file.**

En partant de la chaise $8$ et en suivant les liaisons, on obtient :

$$8 - 3 - 11 - 6 - 1 - 9 - 4 - 12 - 7 - 2 - 10 - 5.$$

On y retrouve bien les douze chaises et les onze liaisons : le dessin est donc une simple file, avec la chaise $8$ à un bout et la chaise $5$ à l'autre.

**Conclusion.**

Imaginons que la sauterelle parte d'une chaise autre que la $5$ et la $8$. Elle devra bien, à un moment, se poser sur la chaise $5$, puisqu'elle passe par toutes les chaises. Ce ne sera pas son premier saut ; elle y arrive donc depuis la chaise $10$, la seule voisine de la $5$. Et pour en repartir, elle n'a de nouveau que la chaise $10$ comme destination : elle y retournerait une deuxième fois, ce qui est interdit. La seule échappatoire est que la chaise $5$ soit la dernière du voyage. Le même raisonnement vaut pour la chaise $8$.

Donc les chaises $5$ et $8$ sont, dans un ordre ou dans l'autre, le départ et l'arrivée du voyage.

Réciproquement, la file écrite plus haut est un voyage qui convient : parcourue de $8$ vers $5$, ou de $5$ vers $8$, elle visite chaque chaise exactement une fois.

**Les positions de départ possibles sont donc la chaise $5$ et la chaise $8$.**
