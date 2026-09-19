---
id: "4402"
title: "Le jardin transformé en carré"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [perimetre, aire, rectangle, carre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, AMC Prep"
  reference: "Handout-572-699.pdf, AMC 8 1999, problème 5 (réponse dans Handout-573-699.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-572-699.pdf"
---

## Statement

Un jardin rectangulaire mesure $50$ m de long et $10$ m de large. Il est entouré d'une clôture.

Pour agrandir le jardin sans acheter un seul mètre de clôture en plus, on démonte la clôture et
on la remonte en formant un carré.

De combien de mètres carrés l'aire du jardin augmente-t-elle ?

## Hints

1. Ce qui ne change pas, c'est la longueur de la clôture, c'est-à-dire le périmètre.
2. Calcule d'abord ce périmètre.
3. Un carré de périmètre $P$ a un côté de longueur $\dfrac{P}{4}$.

## Solution

**Le périmètre.** Le rectangle a pour périmètre

$$2 \times (50 + 10) = 120 \text{ m}.$$

C'est la longueur de la clôture, et elle ne change pas.

**Le carré.** Le carré a le même périmètre $120$ m, donc son côté mesure
$120 \div 4 = 30$ m. Son aire vaut

$$30 \times 30 = 900 \text{ m}^2.$$

**La comparaison.** L'aire du rectangle de départ valait $50 \times 10 = 500$ m².

$$900 - 500 = 400.$$

**L'aire du jardin augmente de $400$ m².**

## Going further

Avec une clôture de $120$ m, le carré est la forme rectangulaire qui enferme la plus grande aire
possible. Essaie d'autres rectangles de périmètre $120$ m ($40 \times 20$, $35 \times 25$…) :
l'aire est toujours plus petite que $900$ m².
