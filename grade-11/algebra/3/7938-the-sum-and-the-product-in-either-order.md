---
id: "7938"
title: "La somme et le produit, mais dans quel ordre ?"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [second-degre, somme-et-produit-des-racines, discriminant, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, cours de Groupe A"
  reference: "stage_ete_2016.pdf, « Groupe A : stratégies de base », vendredi 19 matin (Wassim Trabelsi), exercice 6 (p. 44). Les deux réponses imprimées dans le polycopié sont interverties : « 3 et 4 » y est attribué à l'équation X² − 12X + 7 = 0 et « 6 ± racine de 29 » à X² − 7X + 12 = 0, alors que c'est l'inverse."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Alice pense à deux nombres réels. Sur un papier, elle écrit leur somme et leur produit, mais sans préciser lequel est lequel. On lit sur le papier les deux nombres

$$12 \qquad \text{et} \qquad 7 .$$

Quels peuvent être les deux nombres d'Alice ?

## Hints

1. Il y a deux lectures possibles du papier. Lesquelles ?
2. Si deux nombres ont pour somme $S$ et pour produit $P$, ils sont les racines d'une équation du second degré. Laquelle ?
3. Traite les deux cas séparément et n'oublie pas de vérifier, à chaque fois, que les racines sont bien réelles.

## Solution

**La réponse : deux possibilités, $\{3\,;4\}$ et $\{6 - \sqrt{29}\,;\,6 + \sqrt{29}\}$.**

**Étape 0 : l'outil.**

Si deux nombres réels $u$ et $v$ ont pour somme $S$ et pour produit $P$, alors ils sont les deux racines de l'équation

$$X^2 - SX + P = 0 .$$

En effet, $(X - u)(X - v) = X^2 - (u+v)X + uv$.

Réciproquement, les racines réelles de cette équation, quand elles existent, conviennent.

Le papier ne dit pas quel nombre est la somme : il faut donc examiner les deux cas.

**Cas 1 : la somme vaut $7$ et le produit vaut $12$.**

L'équation est

$$X^2 - 7X + 12 = 0 .$$

Son discriminant vaut $\Delta = 49 - 48 = 1 > 0$, donc elle a deux racines réelles :

$$X = \frac{7 \pm 1}{2} , \qquad \text{c'est-à-dire} \qquad X = 3 \quad \text{ou} \quad X = 4 .$$

*Vérification :* $3 + 4 = 7$ et $3 \times 4 = 12$. ✓

**Cas 2 : la somme vaut $12$ et le produit vaut $7$.**

L'équation est

$$X^2 - 12X + 7 = 0 .$$

Son discriminant vaut $\Delta = 144 - 28 = 116 > 0$, donc elle a deux racines réelles. Comme $116 = 4 \times 29$, on a $\sqrt{116} = 2\sqrt{29}$ et

$$X = \frac{12 \pm 2\sqrt{29}}{2} = 6 \pm \sqrt{29} .$$

*Vérification :* la somme vaut $\left(6+\sqrt{29}\right) + \left(6 - \sqrt{29}\right) = 12$, et le produit vaut $6^2 - 29 = 36 - 29 = 7$. ✓

**Conclusion.** Les deux nombres d'Alice sont soit $3$ et $4$, soit $6 - \sqrt{29}$ et $6 + \sqrt{29}$ (c'est-à-dire environ $0{,}61$ et $11{,}39$). Le papier ne permet pas de trancher entre les deux.
