---
id: "8811"
title: "Une racine sous les racines"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [racine-carree, calcul, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 8 (lycéens), p. 27"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Calculer, sans calculatrice,
$$\sqrt{\sqrt{27} \times \sqrt{75} \; + \; \sqrt{3} \times \sqrt{8} \times \sqrt{54}} \; .$$

La réponse attendue est un seul nombre, écrit le plus simplement possible.

## Hints

1. Un produit de racines carrées est la racine carrée du produit : $\sqrt{a} \times \sqrt{b} = \sqrt{ab}$. Commence par regrouper.
2. Sous la grande racine, il y a une **somme**. On ne peut rien faire avec une somme de racines tant qu'on ne les a pas calculées : occupe-toi d'abord séparément de $\sqrt{27}\times\sqrt{75}$ et de $\sqrt{3}\times\sqrt{8}\times\sqrt{54}$.
3. $27 \times 75$ et $3 \times 8 \times 54$ sont tous les deux des carrés parfaits. Décompose-les en facteurs premiers pour t'en convaincre.
4. Attention : $\sqrt{a+b}$ n'est **pas** égal à $\sqrt{a} + \sqrt{b}$. Additionne d'abord, prends la racine ensuite.

## Solution

**Le premier morceau.** Un produit de racines carrées de nombres positifs est la racine carrée du produit :
$$\sqrt{27} \times \sqrt{75} = \sqrt{27 \times 75} = \sqrt{2025}.$$
Reste à reconnaître $2025$. En décomposant, $27 = 3^3$ et $75 = 3 \times 5^2$, donc
$$27 \times 75 = 3^4 \times 5^2 = (3^2 \times 5)^2 = 45^2 ,$$
et par conséquent
$$\sqrt{27} \times \sqrt{75} = 45 .$$

**Le second morceau.** De la même façon,
$$\sqrt{3} \times \sqrt{8} \times \sqrt{54} = \sqrt{3 \times 8 \times 54} = \sqrt{1296}.$$
Décomposons : $3 = 3$, $8 = 2^3$ et $54 = 2 \times 3^3$, donc
$$3 \times 8 \times 54 = 2^4 \times 3^4 = (2^2 \times 3^2)^2 = 36^2 ,$$
et donc
$$\sqrt{3} \times \sqrt{8} \times \sqrt{54} = 36 .$$

**On rassemble.** Sous la grande racine il reste
$$45 + 36 = 81 ,$$
donc l'expression vaut
$$\sqrt{81} = 9 .$$

**Conclusion.** Le nombre cherché est $\boxed{9}$.

Un mot de méthode : la grande racine porte sur une **somme**, et il n'existe aucune règle qui simplifie $\sqrt{a+b}$. C'est la raison pour laquelle il fallait calculer les deux morceaux avant de s'occuper de la racine extérieure.

## Going further

Calculer de la même manière
$$\sqrt{\sqrt{8} \times \sqrt{32} \; + \; \sqrt{3} \times \sqrt{27}} \; .$$
