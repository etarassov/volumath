---
id: "0761"
title: "Le rectangle allongé puis rétréci"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [pourcentage, aire, coefficient-multiplicateur, rectangle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 21"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

La longueur d'un rectangle est augmentée de $25\ \%$ et sa largeur est réduite de $15\ \%$. L'aire du rectangle se modifie alors de $375$ m².

Quelle était l'aire du rectangle au départ ?

## Hints

1. Tu ne connais ni la longueur ni la largeur, alors appelle-les $L$ et $\ell$. L'aire de départ vaut $L \times \ell$.
2. Augmenter de $25\ \%$, c'est multiplier par $\dfrac{125}{100} = \dfrac{5}{4}$. Réduire de $15\ \%$, c'est multiplier par $\dfrac{85}{100} = \dfrac{17}{20}$.
3. Multiplie les deux coefficients entre eux : par combien l'aire est-elle multipliée ? Compare ce nombre à $1$.
4. La nouvelle aire vaut $\dfrac{17}{16}$ de l'ancienne. De combien l'aire a-t-elle donc augmenté, en fonction de l'aire de départ ?

## Solution

**On donne des noms.** Soient $L$ la longueur et $\ell$ la largeur du rectangle de départ. Son aire vaut

$$A = L \times \ell.$$

**Les deux coefficients multiplicateurs.**

- Augmenter la longueur de $25\ \%$ : la nouvelle longueur vaut $\dfrac{125}{100} L = \dfrac{5}{4} L$.
- Réduire la largeur de $15\ \%$ : la nouvelle largeur vaut $\dfrac{85}{100} \ell = \dfrac{17}{20} \ell$.

**La nouvelle aire.** C'est le produit des deux :

$$A' = \frac{5}{4} L \times \frac{17}{20} \ell = \frac{5 \times 17}{4 \times 20} \, L\ell = \frac{85}{80} A = \frac{17}{16} A.$$

Comme $\dfrac{17}{16} > 1$, l'aire a **augmenté**.

**De combien ?** La variation d'aire vaut

$$A' - A = \frac{17}{16} A - A = \frac{1}{16} A.$$

L'énoncé dit que cette variation vaut $375$ m², donc

$$\frac{A}{16} = 375, \qquad \text{d'où} \qquad A = 375 \times 16 = 6000.$$

**Vérification.** Si l'aire de départ vaut $6000$ m², la nouvelle aire vaut
$6000 \times \dfrac{17}{16} = 6375$ m², et $6375 - 6000 = 375$ m². C'est bien la variation annoncée.

**Réponse.** L'aire du rectangle au départ valait $6000$ m².

## Going further

Pourquoi n'a-t-on pas eu besoin de connaître $L$ et $\ell$ séparément ? Peut-on d'ailleurs les retrouver ?
