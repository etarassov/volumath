---
id: "8702"
title: "Une fraction avec des puissances de 3"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [puissances, factorisation, fraction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices lycéens, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Calculer

$$\frac{3^3 + 3^5}{54} .$$

## Hints

1. Tu peux tout calculer à la main : $3^3$ et $3^5$ ne sont pas de très grands nombres.
2. Il y a plus rapide. Au numérateur, $3^3$ et $3^5$ ont un facteur commun : lequel ?
3. Au dénominateur, $54 = 2 \times 27$. Et $27$, c'est justement $3^3$.

## Solution

**Méthode 1 : tout calculer.**

$$3^3 = 27 \qquad \text{et} \qquad 3^5 = 243 .$$

Donc

$$\frac{3^3 + 3^5}{54} = \frac{27 + 243}{54} = \frac{270}{54} = 5 .$$

**Méthode 2 : factoriser, ce qui est plus rapide et plus solide.**

Au numérateur, $3^5 = 3^3 \times 3^2$. Les deux termes ont donc $3^3$ en facteur :

$$3^3 + 3^5 = 3^3 \times 1 + 3^3 \times 3^2 = 3^3 \times (1 + 3^2) = 3^3 \times 10 .$$

Au dénominateur, $54 = 2 \times 27 = 2 \times 3^3$.

On peut alors simplifier par $3^3$ :

$$\frac{3^3 \times 10}{2 \times 3^3} = \frac{10}{2} = 5 .$$

**Conclusion.** La fraction vaut $\boxed{5}$.

## Going further

La deuxième méthode continue de marcher quand les nombres deviennent trop gros pour être calculés. Essaie par exemple :

$$\frac{3^{20} + 3^{22}}{2 \times 3^{21}} .$$

*Indication : mets $3^{20}$ en facteur au numérateur.*
