---
id: "2414"
title: "Le problème des trois cartes"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 35
tags: [probabilite-conditionnelle, univers, equiprobabilite, intuition-trompeuse]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Conditional Probability"
  reference: "Handout-498-578.pdf, exercice 8 (réponse dans Handout-499-578.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-498-578.pdf"
---

## Statement

Un sac contient trois cartes de même format :

* la première est rouge des deux côtés ;
* la deuxième est verte des deux côtés ;
* la troisième est rouge d'un côté et verte de l'autre.

On tire une carte au hasard dans le sac et on la pose sur la table sans regarder quelle face se trouve dessous. La face visible est **rouge**.

Quelle est la probabilité que la face cachée soit rouge elle aussi ?

*Beaucoup de gens répondent $\tfrac{1}{2}$, en raisonnant ainsi : « la carte verte-verte est éliminée, il reste la carte rouge-rouge et la carte rouge-verte, donc une chance sur deux ». Ce raisonnement est faux. Trouver l'erreur fait partie de l'exercice.*

## Hints

1. Avant de calculer quoi que ce soit, décris précisément l'expérience : on tire une carte **et** l'une de ses deux faces se retrouve visible.
2. Prends comme issues les six faces du jeu, et non les trois cartes. Donne-leur un nom, par exemple $R_1$ et $R_2$ pour les deux faces de la carte rouge-rouge.
3. Ces six faces ont-elles toutes la même probabilité d'être la face visible ?
4. Parmi les faces rouges, combien appartiennent à la carte rouge-rouge ? C'est là que le raisonnement naïf se trompe : la carte rouge-rouge a deux façons de montrer du rouge, la carte mixte n'en a qu'une.

## Solution

### Choisir le bon univers

L'erreur du raisonnement naïf est de prendre pour issues les trois cartes. Or l'expérience ne consiste pas seulement à tirer une carte : elle consiste à tirer une carte **et** à la poser d'un côté ou de l'autre. L'univers naturel est donc formé des $6$ faces.

Nommons-les :

| carte | faces |
|---|---|
| rouge-rouge | $R_1$, $R_2$ |
| verte-verte | $V_1$, $V_2$ |
| rouge-verte | $R_3$ (rouge), $V_3$ (verte) |

Chaque carte a une probabilité $\tfrac{1}{3}$ d'être tirée, et une fois tirée, chacune de ses deux faces a une probabilité $\tfrac{1}{2}$ d'être visible. Chacune des six faces a donc la probabilité

$$\frac{1}{3} \times \frac{1}{2} = \frac{1}{6}$$

d'être la face visible. Les six issues sont équiprobables.

### Le calcul

Notons $A$ l'événement « la face visible est rouge » et $B$ l'événement « la face cachée est rouge ».

* $A = \{R_1, R_2, R_3\}$, donc $P(A) = \dfrac{3}{6} = \dfrac{1}{2}$.
* $A \cap B$ est l'événement « les deux faces sont rouges », c'est-à-dire « la carte tirée est la carte rouge-rouge » : $A \cap B = \{R_1, R_2\}$, donc $P(A \cap B) = \dfrac{2}{6} = \dfrac{1}{3}$.

D'où

$$P(B \mid A) = \frac{P(A \cap B)}{P(A)} = \frac{1/3}{1/2} = \frac{2}{3} .$$

**La probabilité cherchée vaut $\dfrac{2}{3}$**, et non $\dfrac{1}{2}$.

### Où est l'erreur du raisonnement naïf

Il est vrai qu'après avoir vu du rouge il ne reste que deux cartes possibles. Mais elles ne sont pas également probables : la carte rouge-rouge avait **deux** occasions de montrer une face rouge, la carte rouge-verte n'en avait qu'**une**. Voir du rouge est donc deux fois plus vraisemblable avec la carte rouge-rouge, et c'est exactement ce que dit le rapport $2 : 1$.

### Une vérification par le dénombrement

Imaginons que l'on répète l'expérience $600$ fois. En moyenne :

* $200$ fois on tire la carte rouge-rouge, et on voit du rouge à chaque fois : $200$ cas ;
* $200$ fois on tire la carte verte-verte, on ne voit jamais de rouge : $0$ cas ;
* $200$ fois on tire la carte mixte, on voit du rouge environ une fois sur deux : $100$ cas.

Sur les $300$ fois où l'on voit du rouge, $200$ correspondent à la carte rouge-rouge, soit bien une proportion de $\tfrac{2}{3}$.

## Going further

1. Reprendre l'exercice avec quatre cartes : deux rouge-rouge, une verte-verte, une rouge-verte.
2. On voit une face rouge. Quelle est la probabilité que la carte tirée soit la carte mixte ?
3. Ce problème est un cousin du « problème des trois portes » (ou problème de Monty Hall). Chercher en quoi les deux se ressemblent.
