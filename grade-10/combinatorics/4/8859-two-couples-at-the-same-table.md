---
id: "8859"
title: "Deux couples à la même table"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, paires, couleurs, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de fin de parcours du Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Entraînement de fin de parcours », exercice 2, p. 150"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Martin invite $50$ couples à sa soirée. Il a dix couleurs préférées et impose que chaque personne choisisse la couleur de sa tenue parmi ces dix couleurs.

Montrer que Martin peut placer **deux couples** à une même table de façon qu'au plus **deux couleurs** soient présentes à cette table (une table accueille donc quatre personnes).

## Hints

1. Une table réunit quatre personnes. Pour qu'il n'y ait que deux couleurs au plus, il faut que ces quatre tenues n'utilisent que deux couleurs.
2. Appelons un couple **unicolore** si les deux partenaires portent la même couleur, et **bicolore** sinon. Que se passe-t-il si Martin met deux couples unicolores ensemble ?
3. À un couple bicolore, associe la **paire** de couleurs qu'il porte. Combien y a-t-il de paires de couleurs possibles parmi dix ?
4. Compare ce nombre au nombre de couples bicolores. Attention à bien traiter tous les cas.

## Solution

Appelons un couple **unicolore** si ses deux membres portent la même couleur, et **bicolore** sinon.

### Combien de paires de couleurs ?

À chaque couple bicolore, associons l'ensemble des deux couleurs qu'il porte. Le nombre de tels ensembles vaut
$$\binom{10}{2} = \frac{10 \times 9}{2} = 45 .$$

### Trois cas

**Cas 1 : il y a au moins deux couples unicolores.**

Martin place ces deux couples à la même table. Le premier couple porte une seule couleur, le second aussi : la table comporte donc au plus $2$ couleurs. C'est gagné.

**Cas 2 : il n'y a aucun couple unicolore.**

Les $50$ couples sont alors tous bicolores. À chacun est associée l'une des $45$ paires de couleurs. Comme
$$50 > 45 ,$$
le principe des tiroirs donne deux couples associés à la **même** paire de couleurs. Martin les place ensemble : les quatre personnes n'utilisent que ces deux couleurs. C'est gagné.

**Cas 3 : il y a exactement un couple unicolore.**

Les $49$ autres couples sont bicolores, et
$$49 > 45 ,$$
donc là encore deux d'entre eux portent la même paire de couleurs. Même conclusion.

### Conclusion

Dans les trois cas, Martin peut composer une table à deux couples et au plus deux couleurs.

### Pourquoi trois cas et pas deux

Il est tentant de dire simplement : « ou bien deux couples sont unicolores, ou bien tous sont bicolores ». Mais il reste la situation intermédiaire, avec exactement un couple unicolore, où l'argument des tiroirs ne porte que sur $49$ couples. Heureusement $49$ dépasse encore $45$, mais c'est justement le genre de vérification qu'il ne faut pas sauter.

## Going further

1. Avec combien de couples au minimum (et toujours dix couleurs) le raisonnement fonctionne-t-il encore ?
2. Avec $50$ couples et $n$ couleurs, pour quelles valeurs de $n$ la conclusion reste-t-elle valable ?
