---
id: "7404"
title: "Quinze randonneurs et cent tiques"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [tiroirs, absurde, somme-des-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : stratégies de base"
  reference: "stage_ete_2011.pdf, « Première période », incontournable stratégies de base, premier TD, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Quinze randonneurs reviennent d'une promenade en forêt. À eux tous, ils ont attrapé $100$ tiques.

Montrer que deux d'entre eux au moins ont attrapé exactement le même nombre de tiques.

## Hints

1. Raisonne par l'absurde : suppose que les quinze nombres de tiques sont tous différents.
2. Range alors ces quinze nombres du plus petit au plus grand. Quelle est la plus petite valeur
   possible pour le plus petit ? pour le deuxième ? pour le troisième ?
3. Additionne les quinze plus petites valeurs possibles et compare à $100$.

## Solution

**Raisonnons par l'absurde.**

Supposons que les quinze randonneurs aient tous attrapé un nombre de tiques **différent**.

Rangeons-les du moins piqué au plus piqué, et notons $t_1 < t_2 < \dots < t_{15}$ leurs nombres
de tiques. Ce sont des entiers positifs ou nuls, tous distincts et rangés dans l'ordre croissant,
donc :

- $t_1 \geq 0$ ;
- $t_2 > t_1$, et comme ce sont des entiers, $t_2 \geq t_1 + 1 \geq 1$ ;
- $t_3 \geq t_2 + 1 \geq 2$ ;
- et ainsi de suite, jusqu'à $t_{15} \geq 14$.

En clair, le $k$-ième randonneur de la liste a attrapé au moins $k - 1$ tiques.

**On additionne.**

Le nombre total de tiques vérifie donc
$$t_1 + t_2 + \dots + t_{15} \geq 0 + 1 + 2 + \dots + 14.$$

Calculons cette somme. En regroupant les termes par paires depuis les deux bouts :
$$(0 + 14) + (1 + 13) + (2 + 12) + (3 + 11) + (4 + 10) + (5 + 9) + (6 + 8) + 7
= 7 \times 14 + 7 = 105.$$

(On peut aussi utiliser la formule $0 + 1 + \dots + 14 = \dfrac{14 \times 15}{2} = 105$.)

**La contradiction.**

Les quinze randonneurs auraient donc attrapé au moins $105$ tiques. Or ils en ont attrapé $100$,
et $105 > 100$ : c'est impossible.

**Conclusion.** Notre supposition était fausse : deux randonneurs au moins ont attrapé exactement
le même nombre de tiques.

## Going further

Avec quinze randonneurs, quel est le plus grand nombre total de tiques qui **force** encore deux
randonneurs à avoir le même score ?
