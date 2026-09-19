---
id: "0785"
title: "L'heure et les minutes sont des carrés"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carres-parfaits, duree, recherche-de-cas, horloge]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 13, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

Pierre est un passionné des nombres. Il a dans sa voiture une horloge digitale à quatre chiffres qui indique l'heure de $00\!:\!00$ à $23\!:\!59$.

Au moment de partir pour un long déplacement, Pierre observe son horloge et constate que les deux nombres indiqués, celui des heures et celui des minutes, sont des carrés de nombres entiers (qui, sur une horloge digitale, s'écrivent sous la forme $00$, $01$, $04$, $09$, $16$, $25$, ...).

Au retour de son voyage, Pierre constate que son horloge affiche de nouveau deux carrés de nombres entiers. Son ordinateur de bord lui indique qu'il a parcouru $352$ km en $4$ heures et $20$ minutes.

Quand Pierre peut-il être rentré de son voyage ?

## Hints

1. Fais d'abord les deux listes : quels nombres d'heures, entre $00$ et $23$, sont des carrés ? Quels nombres de minutes, entre $00$ et $59$, sont des carrés ?
2. Le trajet dure $4$ h $20$ min. Occupe-toi des minutes en premier : elles ne dépendent pas des heures.
3. Pour chacune des minutes de départ possibles, calcule les minutes d'arrivée. Attention : quand la somme dépasse $59$, on enlève $60$ et on ajoute une heure.
4. Très peu de minutes de départ survivent. Pour chacune, regarde alors quelles heures de départ conviennent.
5. Les $352$ km ne servent à rien pour répondre. C'est la durée du trajet qui compte.

## Solution

**Étape 1. Les deux listes.**

Les heures affichées vont de $00$ à $23$. Les carrés parfaits dans cet intervalle sont

$$00 \quad 01 \quad 04 \quad 09 \quad 16$$

($25$ est déjà trop grand.)

Les minutes affichées vont de $00$ à $59$. Les carrés parfaits dans cet intervalle sont

$$00 \quad 01 \quad 04 \quad 09 \quad 16 \quad 25 \quad 36 \quad 49$$

**Étape 2. On règle les minutes.**

Le voyage dure $4$ h $20$ min. Pour les minutes, il faut donc ajouter $20$, et retirer $60$ (en ajoutant une heure de plus) si on dépasse $59$.

| minutes de départ | $00$ | $01$ | $04$ | $09$ | $16$ | $25$ | $36$ | $49$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| minutes d'arrivée | $20$ | $21$ | $24$ | $29$ | $\mathbf{36}$ | $45$ | $56$ | $\mathbf{09}$ |

Une seule ligne compte : les minutes d'arrivée doivent elles aussi être un carré. Il ne reste que deux possibilités :

- départ à $16$ minutes, arrivée à $36$ minutes, sans heure supplémentaire ;
- départ à $49$ minutes, arrivée à $09$ minutes, avec **une heure supplémentaire** (car $49 + 20 = 69 = 60 + 9$).

**Étape 3. On règle les heures.**

*Premier cas : départ à $16$ minutes.* L'heure d'arrivée est l'heure de départ augmentée de $4$.

| heure de départ | $00$ | $01$ | $04$ | $09$ | $16$ |
| --- | --- | --- | --- | --- | --- |
| heure d'arrivée | $\mathbf{04}$ | $05$ | $08$ | $13$ | $20$ |

Seule l'heure de départ $00$ convient, car $00 + 4 = 04$ est un carré. Le voyage va donc de $00\!:\!16$ à $04\!:\!36$.

*Second cas : départ à $49$ minutes.* L'heure d'arrivée est l'heure de départ augmentée de $5$.

| heure de départ | $00$ | $01$ | $04$ | $09$ | $16$ |
| --- | --- | --- | --- | --- | --- |
| heure d'arrivée | $05$ | $06$ | $\mathbf{09}$ | $14$ | $21$ |

Seule l'heure de départ $04$ convient. Le voyage va donc de $04\!:\!49$ à $09\!:\!09$.

(Dans les deux cas l'heure d'arrivée reste inférieure à $24$, il n'y a pas de passage à minuit à examiner.)

**Conclusion.** Il y a exactement deux possibilités :

- Pierre est parti à $00\!:\!16$ et il est rentré à $\mathbf{04\!:\!36}$ ;
- Pierre est parti à $04\!:\!49$ et il est rentré à $\mathbf{09\!:\!09}$.

La distance de $352$ km ne sert pas : c'est une information inutile, glissée dans l'énoncé pour brouiller les pistes.

## Going further

Que devient la réponse si l'ordinateur de bord indique $3$ heures et $20$ minutes de trajet au lieu de $4$ heures et $20$ minutes ?
