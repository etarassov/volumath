---
id: "0613"
title: "Un nombre premier caché dans x² + x + y = 58"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [parite, nombres-premiers, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 20"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Déterminez les nombres naturels $x$ et $y$ tels que $x^2 + x + y = 58$ et que $y$ soit un
nombre premier.

## Hints

1. Isole $y$ : que vaut $y$ en fonction de $x$ ?
2. Factorise $x^2 + x$. Tu obtiens le produit de deux entiers qui se suivent. Que peut-on toujours dire de la parité d'un tel produit ?
3. Si $y$ est pair et premier, que vaut $y$ ?

## Solution

**On isole $y$.** L'égalité donne

$$y = 58 - (x^2 + x) = 58 - x(x+1).$$

**La parité.** Parmi deux entiers qui se suivent, l'un est toujours pair. Donc $x(x+1)$ est
pair, quel que soit le naturel $x$. Comme $58$ est pair lui aussi, la différence
$58 - x(x+1)$ est **paire** : $y$ est pair.

**On utilise « $y$ premier ».** Le seul nombre premier pair est $2$ : tout autre nombre pair
est divisible par $2$ et strictement plus grand que $2$, donc il a au moins trois diviseurs.
Donc

$$y = 2.$$

**On termine.** Il reste $x(x+1) = 58 - 2 = 56$. Or $56 = 7 \times 8$, donc $x = 7$
convient. C'est la seule possibilité : quand $x$ augmente, $x(x+1)$ augmente aussi
($0, 2, 6, 12, 20, 30, 42, 56, 72, \ldots$), donc la valeur $56$ n'est atteinte qu'une fois.

**Réponse : $x = 7$ et $y = 2$.**

**Vérification.** $7^2 + 7 + 2 = 49 + 7 + 2 = 58$, et $2$ est bien premier.
