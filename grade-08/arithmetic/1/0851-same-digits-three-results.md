---
id: "0851"
title: "Les mêmes chiffres, trois résultats"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [priorite-des-operations, calcul, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 1, section « Calculer avec des nombres, priorité des opérateurs »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Calcule :

**a)** $1 + 2 + 3 + 4 + 5 + 6 + 7 + 8$

**b)** $1 + 2 \times 3 + 4 + 5 \times 6 + 7 + 8$

**c)** $1 \times 2 \times 3 + 4 \times 5 \times 6 + 7 + 8$

Les trois lignes contiennent les mêmes chiffres, dans le même ordre. Seuls les signes changent.

## Hints

1. Il n'y a aucune parenthèse. Souviens-toi de la règle : dans un calcul sans parenthèses, les multiplications se font **avant** les additions.
2. Pour ne pas te tromper, commence par entourer tous les produits au crayon. Calcule-les, puis additionne ce qui reste.
3. Ligne c) : entoure $1 \times 2 \times 3$ et $4 \times 5 \times 6$. Il ne reste alors que trois nombres à additionner.

## Solution

**a)** Il n'y a que des additions, on additionne dans l'ordre.

Une façon rapide : regroupe les termes deux à deux en partant des deux bouts.

$$(1+8) + (2+7) + (3+6) + (4+5) = 9 + 9 + 9 + 9 = 36.$$

Le résultat est $\mathbf{36}$.

**b)** On calcule d'abord les deux produits :

$$2 \times 3 = 6, \qquad 5 \times 6 = 30.$$

Le calcul devient

$$1 + 6 + 4 + 30 + 7 + 8 = 56.$$

Le résultat est $\mathbf{56}$.

**c)** On calcule d'abord les deux produits :

$$1 \times 2 \times 3 = 6, \qquad 4 \times 5 \times 6 = 120.$$

Le calcul devient

$$6 + 120 + 7 + 8 = 141.$$

Le résultat est $\mathbf{141}$.

**Conclusion.** $36$, $56$ et $141$. Les mêmes chiffres, écrits dans le même ordre, donnent trois
résultats très différents : ce sont les signes, et la priorité des multiplications, qui décident.

## Going further

1. À la ligne b), si on calculait bêtement de gauche à droite sans respecter la priorité des
   multiplications, on trouverait $123$ au lieu de $56$. Vérifie-le : c'est l'erreur la plus
   fréquente, et elle ne prévient pas.
2. Combien de résultats différents peux-tu obtenir en remplaçant, dans
   $1 \; ? \; 2 \; ? \; 3 \; ? \; 4$, chaque point d'interrogation par $+$ ou par $\times$ ?
