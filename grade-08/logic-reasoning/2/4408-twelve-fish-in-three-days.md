---
id: "4408"
title: "Douze poissons en trois jours"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [entiers, encadrement, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 27 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Un pêcheur a attrapé $12$ poissons en trois jours consécutifs.

- Chaque jour, il en a attrapé strictement plus que la veille.
- Le troisième jour, il en a attrapé strictement moins que le total des deux premiers jours.

Combien de poissons a-t-il attrapés le troisième jour ?

## Hints

1. Note $a$, $b$, $c$ les nombres de poissons des trois jours. Écris toutes les conditions.
2. La deuxième condition dit $c < a + b$. Mais $a + b$ se calcule à partir de $c$ : combien
   vaut-il ?
3. Pour une borne dans l'autre sens : $a$ et $b$ sont tous les deux plus petits que $c$. Que
   peut-on dire alors de $a + b + c$ ?

## Solution

Notons $a$, $b$ et $c$ les nombres de poissons attrapés les premier, deuxième et troisième
jours. On sait que

$$a + b + c = 12, \qquad a < b < c, \qquad c < a + b.$$

**Une borne supérieure pour $c$.** Comme $a + b = 12 - c$, la condition $c < a + b$ s'écrit
$c < 12 - c$, c'est-à-dire $2c < 12$, donc $c < 6$ et finalement $c \leqslant 5$.

**Une borne inférieure pour $c$.** Comme $a < c$ et $b < c$, on a

$$12 = a + b + c < c + c + c = 3c,$$

donc $3c > 12$, c'est-à-dire $c > 4$ et finalement $c \geqslant 5$.

**Conclusion.** Les deux encadrements donnent $c = 5$.

On retrouve alors $a + b = 7$ avec $a < b < 5$ : la seule possibilité est $a = 3$ et $b = 4$.
On vérifie : $3 < 4 < 5$, $3 + 4 + 5 = 12$, et $5 < 3 + 4 = 7$. Tout est cohérent.

**Le pêcheur a attrapé $5$ poissons le troisième jour** (et $3$ puis $4$ les deux jours
précédents).
