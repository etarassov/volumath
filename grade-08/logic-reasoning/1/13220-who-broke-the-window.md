---
id: "13220"
title: "Qui a cassé la vitre ?"
grade: 8
theme: logic-reasoning
difficulty: 1
duration_min: 10
tags: [menteurs, logique, raisonnement-par-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices collège, exercice 1 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Alice, Bernard, Cédric et Diane jouaient au tennis dans la cour. Soudain, la balle brisa la fenêtre du voisin. Furieux, celui-ci s'approcha des quatre enfants.

- Alice dit : « Ce n'est pas moi ! »
- Bernard dit : « C'était Diane. »
- Cédric dit : « Non, c'était Bernard. »
- Diane dit : « Bernard a menti. »

On suppose qu'exactement un des quatre enfants a dit la vérité. Lequel d'entre eux a cassé la vitre du voisin ?

## Hints

1. Compare les phrases de Bernard et de Diane. Peuvent-elles être vraies toutes les deux ? Fausses toutes les deux ?
2. Parmi Bernard et Diane, exactement un dit la vérité. Qu'en déduis-tu pour Alice et Cédric ?

## Solution

**Bernard et Diane.** Diane dit que Bernard a menti. Si Bernard dit la vérité, Diane ment ; si Bernard ment, Diane dit la vérité. Donc exactement un des deux dit la vérité.

**Alice et Cédric.** Comme un seul enfant dit la vérité en tout, et qu'il est déjà parmi Bernard et Diane, Alice et Cédric mentent tous les deux. Alice ment en disant « Ce n'est pas moi » : c'est donc elle qui a cassé la vitre.

**Vérification.** Si c'est Alice : Alice ment, Bernard ment (ce n'est pas Diane), Cédric ment (ce n'est pas Bernard), et Diane dit vrai (Bernard a bien menti). Un seul enfant dit la vérité, comme demandé.

**Conclusion.** C'est Alice qui a cassé la vitre.
