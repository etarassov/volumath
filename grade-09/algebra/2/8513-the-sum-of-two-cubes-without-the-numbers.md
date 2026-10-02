---
id: "8513"
title: "La somme de deux cubes sans connaître les nombres"
grade: 9
theme: algebra
difficulty: 2
duration_min: 20
tags: [identites-remarquables, factorisation, somme-et-produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels tels que

$$a + b = 7 \qquad \text{et} \qquad ab = 3 .$$

Combien vaut $a^3 + b^3$ ?

On ne cherchera pas à calculer $a$ et $b$ séparément.

## Hints

1. On connaît la factorisation $a^3 + b^3 = (a+b)(a^2 - ab + b^2)$. Tu peux la vérifier en développant le membre de droite.
2. Dans $a^2 - ab + b^2$, il manque de quoi faire une identité remarquable. Que vaut $(a+b)^2$ ?
3. Écris $a^2 - ab + b^2$ en n'utilisant que $(a+b)^2$ et $ab$.

## Solution

**La factorisation d'une somme de cubes.** On a l'identité

$$a^3 + b^3 = (a + b)\left(a^2 - ab + b^2\right) .$$

*(Vérification : en développant,
$(a+b)(a^2 - ab + b^2) = a^3 - a^2 b + ab^2 + a^2 b - ab^2 + b^3 = a^3 + b^3$.)*

**On fait apparaître la somme et le produit.** Comme $(a+b)^2 = a^2 + 2ab + b^2$, on a

$$a^2 - ab + b^2 = \left(a^2 + 2ab + b^2\right) - 3ab = (a+b)^2 - 3ab .$$

**Le calcul.** Donc

$$a^3 + b^3 = (a+b)\left[(a+b)^2 - 3ab\right] = 7 \times \left(7^2 - 3 \times 3\right)
= 7 \times (49 - 9) = 7 \times 40 = 280 .$$

**Conclusion.** $a^3 + b^3 = 280$.

## Going further

Les nombres $a$ et $b$ existent bien : ce sont les deux solutions de $x^2 - 7x + 3 = 0$,
dont le discriminant $49 - 12 = 37$ est positif. Elles valent
$\frac{7 - \sqrt{37}}{2}$ et $\frac{7 + \sqrt{37}}{2}$. On peut vérifier le résultat avec
ces valeurs, mais le calcul est nettement plus pénible.
