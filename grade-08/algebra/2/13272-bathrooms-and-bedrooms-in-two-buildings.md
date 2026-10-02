---
id: "13272"
title: "Salles de bains et chambres dans deux immeubles"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [systeme, equation, mise-en-equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 2 (aussi exercice 9 des lycéens) ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Alexie et Baptiste possèdent chacun un immeuble. Chaque étage de l'immeuble d'Alexie a $3$ salles de bains et $2$ chambres. Chaque étage de l'immeuble de Baptiste a $4$ salles de bains et $3$ chambres. En tout, dans les deux immeubles, il y a $25$ salles de bains et $18$ chambres.

Combien d'étages a l'immeuble d'Alexie ? Et celui de Baptiste ?

## Hints

1. Appelle $a$ le nombre d'étages de l'immeuble d'Alexie et $b$ celui de l'immeuble de Baptiste. Écris une égalité pour les salles de bains et une pour les chambres.
2. Sur un étage d'Alexie, combien y a-t-il de salles de bains de plus que de chambres ? Et sur un étage de Baptiste ?
3. Soustrais les deux égalités : tu obtiens le nombre total d'étages.

## Solution

Notons $a$ le nombre d'étages de l'immeuble d'Alexie et $b$ celui de l'immeuble de Baptiste. En comptant les salles de bains, puis les chambres :

$$3a + 4b = 25 \qquad \text{et} \qquad 2a + 3b = 18.$$

**Le nombre total d'étages.** Sur chaque étage, que ce soit chez Alexie ou chez Baptiste, il y a exactement une salle de bains de plus que de chambres. En soustrayant la deuxième égalité de la première :

$$(3a + 4b) - (2a + 3b) = a + b = 25 - 18 = 7.$$

Les deux immeubles ont donc $7$ étages en tout.

**Chaque immeuble.** On écrit la deuxième égalité en faisant apparaître $a + b$ :

$$2a + 3b = 2(a + b) + b = 14 + b = 18,$$

donc $b = 4$, puis $a = 7 - 4 = 3$.

**Vérification.** $3 \times 3 + 4 \times 4 = 9 + 16 = 25$ salles de bains et $2 \times 3 + 3 \times 4 = 6 + 12 = 18$ chambres.

**Conclusion.** L'immeuble d'Alexie a $3$ étages et celui de Baptiste en a $4$.
