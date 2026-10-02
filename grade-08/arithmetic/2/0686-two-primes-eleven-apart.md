---
id: "0686"
title: "Deux nombres premiers qui diffèrent de 11"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [nombres-premiers, parite, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 34, d'après USA Contests 2008"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

La différence de deux nombres premiers est égale à $11$. Quelle est leur somme ?

## Hints

1. $11$ est un nombre impair. Que peut-on dire des deux nombres premiers : sont-ils tous les deux pairs ? tous les deux impairs ?
2. La différence de deux nombres impairs est paire, et la différence de deux nombres pairs aussi. Donc l'un des deux nombres premiers est pair et l'autre impair.
3. Combien y a-t-il de nombres premiers pairs ?

## Solution

**Étape 1. Un des deux nombres est pair.**

Notons $p$ et $q$ les deux nombres premiers, avec $p - q = 11$.

Si $p$ et $q$ étaient tous les deux impairs, leur différence serait paire. Si $p$ et $q$ étaient tous les deux pairs, leur différence serait encore paire. Or $11$ est impair. Donc l'un des deux est pair et l'autre impair.

**Étape 2. Le nombre pair ne peut être que $2$.**

Un nombre pair strictement plus grand que $2$ admet $2$ comme diviseur, et $2$ n'est ni $1$ ni ce nombre lui-même : il n'est donc pas premier. Le seul nombre premier pair est donc $2$.

**Étape 3. Identifier les deux nombres.**

Le nombre pair est $2$. Ce ne peut pas être $p$, car on aurait $q = p - 11 = 2 - 11 = -9$, qui n'est pas un nombre premier. Donc $q = 2$, et

$$p = q + 11 = 13.$$

Or $13$ est bien premier : il n'est divisible ni par $2$, ni par $3$, et $4 \times 4 = 16$ dépasse déjà $13$.

**Étape 4. Répondre.**

$$p + q = 13 + 2 = 15.$$

**Vérification.** $13 - 2 = 11$, et $13$ et $2$ sont tous deux premiers. C'est bien l'unique possibilité.

**Conclusion.** Les deux nombres premiers sont $2$ et $13$, et leur somme vaut $15$.

## Going further

1. Reprends le raisonnement avec une différence de $13$ au lieu de $11$. Combien de couples trouve-t-on ?
2. Et si la différence vaut $9$ ? Le raisonnement est le même, mais la réponse change.
3. Même question avec une différence de $2$. Pourquoi le raisonnement ci-dessus ne s'applique-t-il plus ?
