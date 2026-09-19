---
id: "0766"
title: "Les côtés dans le rapport 2 sur 3"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [pythagore, triangle-rectangle, proportion, racine-carree]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 39 (section « Théorème de Pythagore »)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Le triangle $ABC$ est rectangle en $A$. On sait que

$$BC = 4\sqrt{13} \qquad \text{et} \qquad \frac{AB}{AC} = \frac{2}{3}.$$

Calcule $AB$ et $AC$.

## Hints

1. Le rapport $\dfrac{AB}{AC} = \dfrac{2}{3}$ ne donne pas les longueurs, seulement leur proportion. Traduis-le en posant $AB = 2k$ et $AC = 3k$, où $k$ est un nombre strictement positif inconnu.
2. Écris maintenant le théorème de Pythagore avec ces deux expressions. Attention : $(2k)^2 = 4k^2$, et non $2k^2$.
3. Pense à calculer $\left(4\sqrt{13}\right)^2$ : c'est $4^2 \times \left(\sqrt{13}\right)^2$.

## Solution

**On traduit le rapport.** Dire que $\dfrac{AB}{AC} = \dfrac{2}{3}$, c'est dire qu'il existe un nombre $k > 0$ tel que

$$AB = 2k \qquad \text{et} \qquad AC = 3k.$$

(En effet, il suffit de poser $k = \dfrac{AC}{3}$.)

**Théorème de Pythagore.** Le triangle est rectangle en $A$, donc $[BC]$ est l'hypoténuse et

$$AB^2 + AC^2 = BC^2.$$

Calculons chaque morceau :

$$AB^2 = (2k)^2 = 4k^2, \qquad AC^2 = (3k)^2 = 9k^2, \qquad BC^2 = \left(4\sqrt{13}\right)^2 = 16 \times 13 = 208.$$

L'égalité devient

$$4k^2 + 9k^2 = 208, \qquad \text{c'est-à-dire} \qquad 13k^2 = 208.$$

**On termine.**

$$k^2 = \frac{208}{13} = 16, \qquad \text{donc} \qquad k = 4$$

(on garde la valeur positive, puisque $k$ est un rapport de longueurs). Par conséquent

$$AB = 2 \times 4 = 8 \qquad \text{et} \qquad AC = 3 \times 4 = 12.$$

**Vérification.** $\dfrac{8}{12} = \dfrac{2}{3}$, et

$$8^2 + 12^2 = 64 + 144 = 208 = \left(4\sqrt{13}\right)^2.$$

**Réponse.** $AB = 8$ et $AC = 12$.
