---
id: "4412"
title: "Dix-huit cartes marquées 4 ou 5"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, encadrement, somme]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 26 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Sur chacune de $18$ cartes est écrit un nombre : soit un $4$, soit un $5$.

La somme de tous les nombres écrits est un multiple de $17$.

Combien de cartes portent un $4$ ?

## Hints

1. Note $k$ le nombre de cartes portant un $4$. Combien de cartes portent un $5$ ? Écris la
   somme en fonction de $k$.
2. Simplifie l'expression obtenue : elle est plus simple qu'elle n'en a l'air.
3. Entre quelles valeurs cette somme peut-elle se trouver ? Quels multiples de $17$ sont dans
   cet intervalle ?

## Solution

**La somme en fonction de $k$.** Soit $k$ le nombre de cartes portant un $4$. Les $18 - k$
autres portent un $5$. La somme vaut

$$S = 4k + 5(18 - k) = 4k + 90 - 5k = 90 - k.$$

**Un encadrement.** Comme $0 \leqslant k \leqslant 18$, on a

$$72 \leqslant S \leqslant 90.$$

**Les multiples de $17$.** Les multiples de $17$ sont $\ldots,\ 68,\ 85,\ 102,\ \ldots$ Le seul
qui soit compris entre $72$ et $90$ est $85$.

**Conclusion.** Donc $S = 85$, c'est-à-dire $90 - k = 85$, donc $k = 5$.

**Cinq cartes portent un $4$** (et les treize autres portent un $5$). On vérifie :
$4 \times 5 + 5 \times 13 = 20 + 65 = 85 = 17 \times 5$.
