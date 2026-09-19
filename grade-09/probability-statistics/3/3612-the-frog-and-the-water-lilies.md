---
id: "3612"
title: "La grenouille et les cinq nénuphars"
grade: 9
theme: probability-statistics
difficulty: 3
duration_min: 20
tags: [probabilite, equiprobabilite, chemins, arbre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 8 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Lucie la grenouille vit sur un étang où flottent cinq nénuphars, numérotés de $1$ à $5$.

Elle part du nénuphar $1$. À chaque saut, elle choisit au hasard un nénuphar dont le numéro est strictement plus grand que celui où elle se trouve, tous ces nénuphars ayant la même chance d'être choisis.

Elle s'arrête dès qu'elle arrive sur le nénuphar $5$.

Quelle est la probabilité qu'il lui faille exactement deux sauts pour atteindre le nénuphar $5$ ?

## Hints

1. Un trajet en exactement deux sauts s'écrit $1 \to x \to 5$. Quelles sont les valeurs possibles de $x$ ?
2. Depuis le nénuphar $1$, combien de nénuphars la grenouille peut-elle choisir ? Et depuis le nénuphar $x$ ?
3. Attention : le nombre de choix change d'un nénuphar à l'autre, donc les trois trajets n'ont pas la même probabilité.

## Solution

**Étape 1. Lister les trajets en deux sauts.**

Un trajet en exactement deux sauts part de $1$, passe par un nénuphar intermédiaire $x$, puis arrive en $5$. Il faut $1 < x < 5$, donc

$$1 \to 2 \to 5, \qquad 1 \to 3 \to 5, \qquad 1 \to 4 \to 5$$

**Étape 2. Compter les choix depuis chaque nénuphar.**

Depuis le nénuphar $1$, les nénuphars de numéro plus grand sont $2$, $3$, $4$, $5$ : il y en a $4$, donc chacun a la probabilité $\dfrac{1}{4}$.

Depuis le nénuphar $2$ : trois possibilités ($3$, $4$, $5$), chacune de probabilité $\dfrac{1}{3}$.

Depuis le nénuphar $3$ : deux possibilités ($4$, $5$), chacune de probabilité $\dfrac{1}{2}$.

Depuis le nénuphar $4$ : une seule possibilité ($5$), de probabilité $1$.

**Étape 3. Probabilité de chaque trajet.**

Chaque trajet a pour probabilité le produit des probabilités de ses deux sauts :

$$P(1 \to 2 \to 5) = \frac{1}{4} \times \frac{1}{3} = \frac{1}{12}$$
$$P(1 \to 3 \to 5) = \frac{1}{4} \times \frac{1}{2} = \frac{1}{8}$$
$$P(1 \to 4 \to 5) = \frac{1}{4} \times 1 = \frac{1}{4}$$

**Étape 4. Additionner.**

Les trois trajets s'excluent l'un l'autre, donc on additionne. On met au même dénominateur $24$ :

$$\frac{1}{12} + \frac{1}{8} + \frac{1}{4} = \frac{2}{24} + \frac{3}{24} + \frac{6}{24} = \frac{11}{24}$$

**Réponse.** La probabilité vaut $\dfrac{11}{24}$, c'est-à-dire un peu moins d'une chance sur deux.

## Going further

Pour compléter le tableau, calculons les autres cas.

En un seul saut : $1 \to 5$, de probabilité $\dfrac{1}{4}$, soit $\dfrac{6}{24}$.

En trois sauts : $1 \to 2 \to 3 \to 5$, $1 \to 2 \to 4 \to 5$ et $1 \to 3 \to 4 \to 5$, de probabilités respectives $\frac{1}{4}\cdot\frac{1}{3}\cdot\frac{1}{2}$, $\frac{1}{4}\cdot\frac{1}{3}\cdot 1$ et $\frac{1}{4}\cdot\frac{1}{2}\cdot 1$, soit $\frac{1}{24} + \frac{1}{12} + \frac{1}{8} = \frac{1+2+3}{24} = \frac{6}{24}$.

En quatre sauts : $1 \to 2 \to 3 \to 4 \to 5$, de probabilité $\frac{1}{4}\cdot\frac{1}{3}\cdot\frac{1}{2}\cdot 1 = \frac{1}{24}$.

Total : $\dfrac{6 + 11 + 6 + 1}{24} = \dfrac{24}{24} = 1$. Tout est bien compté.
