---
id: "5411"
title: "Les huit enveloppes"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [puissances-de-deux, somme, partage, decomposition, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « Hopping Around », problème 3"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

Huit enveloppes se ressemblent comme des gouttes d'eau. Chacune contient un papier sur lequel est écrit un nombre, et les huit nombres sont

$$1, \quad 2, \quad 4, \quad 8, \quad 16, \quad 32, \quad 64, \quad 128 .$$

Ève choisit quelques enveloppes au hasard, et Alice prend toutes les autres. Chacune ouvre ses enveloppes et additionne les nombres qu'elle y trouve. Le total d'Ève dépasse celui d'Alice de $31$.

Combien d'enveloppes Alice a-t-elle prises ?

## Hints

1. Commencez par calculer la somme des huit nombres. Il y a une façon rapide de le faire.
2. Vous connaissez la somme des deux totaux, et leur différence. Cela suffit pour trouver chacun d'eux.
3. Il reste à savoir quelles enveloppes donnent le total d'Alice. Commencez par la plus grosse : l'enveloppe $128$ peut-elle être chez Alice ?
4. Sans l'enveloppe $64$, quel est le plus grand total qu'Alice pourrait atteindre ? Comparez-le à son total.

## Solution

### Les deux totaux

La somme des huit nombres vaut

$$1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 = 255 .$$

(On peut le calculer à la main, ou remarquer que chaque nombre est le double du précédent : la somme vaut alors $256 - 1 = 255$, car $1 + 2 + 4 + \cdots + 128$, augmenté de $1$, donne $2 \times 128 = 256$.)

Notons $a$ le total d'Alice et $e$ celui d'Ève. Toutes les enveloppes ont été prises, donc

$$a + e = 255, \qquad \text{et l'énoncé donne} \qquad e = a + 31 .$$

En remplaçant : $a + (a + 31) = 255$, donc $2a = 224$ et

$$a = 112 .$$

### Quelles enveloppes font $112$ ?

Allons de la plus grosse à la plus petite.

- **$128$ ?** Non : $128 > 112$, l'enveloppe ne peut pas être chez Alice.
- **$64$ ?** Oui, obligatoirement. Sans elle, Alice ne pourrait pas dépasser $1 + 2 + 4 + 8 + 16 + 32 = 63$, ce qui est bien moins que $112$. Il reste $112 - 64 = 48$ à obtenir.
- **$32$ ?** Oui, obligatoirement. Sans elle, il ne resterait que $1 + 2 + 4 + 8 + 16 = 31$, ce qui est moins que $48$. Il reste $48 - 32 = 16$.
- **$16$ ?** Oui : sans elle, il ne resterait que $1 + 2 + 4 + 8 = 15 < 16$. Il reste $16 - 16 = 0$.

Le compte est bon, et à chaque étape le choix était forcé. Alice a donc les enveloppes

$$16, \quad 32, \quad 64 ,$$

et Ève les cinq autres. Vérification : $16 + 32 + 64 = 112$ et $1 + 2 + 4 + 8 + 128 = 143$, avec $143 - 112 = 31$.

**Conclusion.** Alice a pris **trois** enveloppes.

**Ce qu'il faut retenir.** Chaque nombre de la liste est plus grand que la somme de tous ceux qui le précèdent. C'est pour cela que la décomposition est forcée à chaque étape : un total ne peut s'obtenir que d'une seule façon. C'est aussi le principe de l'écriture des nombres en base deux ; ici $112$ s'écrit $1110000$.

## Going further

1. Le total d'Ève aurait-il pu dépasser celui d'Alice de $30$ ? Plus généralement, quelles différences sont possibles ?
2. Pour quelles valeurs de la différence Alice se retrouve-t-elle avec exactement quatre enveloppes ?
3. Avec les huit enveloppes, combien de totaux différents peut-on fabriquer ?
