---
id: "2416"
title: "Garçons, filles et indépendance"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 35
tags: [independance, evenements, equiprobabilite, arbre, contre-exemple]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Random Variables"
  reference: "Handout-505-598.pdf, exercice 12 (réponses dans Handout-506-598.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-505-598.pdf"
---

## Statement

Dans une famille, chaque enfant est un garçon ou une fille avec la probabilité $\tfrac{1}{2}$, indépendamment des autres.

On considère les deux événements

* $A$ : « la famille compte au moins un garçon **et** au moins une fille » ;
* $B$ : « la famille compte au plus une fille ».

1. La famille a deux enfants. Les événements $A$ et $B$ sont-ils indépendants ?
2. La famille a trois enfants. Même question.
3. Commenter.

## Hints

1. Écris l'univers en entier. Avec deux enfants il y a $4$ issues, avec trois enfants $8$, toutes équiprobables.
2. Rappelle-toi la définition : $A$ et $B$ sont indépendants lorsque $P(A \cap B) = P(A) \times P(B)$.
3. Liste les issues qui réalisent $A$, celles qui réalisent $B$, puis celles qui réalisent les deux.
4. À la question 3 : l'indépendance de deux événements se lit-elle sur l'énoncé, ou faut-il calculer ?

## Solution

Notons une issue par un mot, $\mathrm{G}$ pour garçon et $\mathrm{F}$ pour fille, dans l'ordre des naissances.

### 1. Famille de deux enfants

L'univers est $\{\mathrm{GG},\ \mathrm{GF},\ \mathrm{FG},\ \mathrm{FF}\}$, quatre issues équiprobables de probabilité $\tfrac{1}{4}$.

* $A = \{\mathrm{GF},\ \mathrm{FG}\}$, donc $P(A) = \dfrac{2}{4} = \dfrac{1}{2}$.
* $B$ = « au plus une fille » $= \{\mathrm{GG},\ \mathrm{GF},\ \mathrm{FG}\}$, donc $P(B) = \dfrac{3}{4}$.
* $A \cap B = \{\mathrm{GF},\ \mathrm{FG}\}$, donc $P(A \cap B) = \dfrac{1}{2}$.

Comparons :

$$P(A)\times P(B) = \frac{1}{2}\times\frac{3}{4} = \frac{3}{8} \qquad \text{et} \qquad P(A\cap B) = \frac{1}{2} = \frac{4}{8} .$$

Ces deux nombres sont différents : **$A$ et $B$ ne sont pas indépendants** pour une famille de deux enfants.

### 2. Famille de trois enfants

L'univers compte $8$ issues équiprobables :

$$\{\mathrm{GGG},\ \mathrm{GGF},\ \mathrm{GFG},\ \mathrm{FGG},\ \mathrm{GFF},\ \mathrm{FGF},\ \mathrm{FFG},\ \mathrm{FFF}\} .$$

* $A$ (au moins un de chaque) exclut $\mathrm{GGG}$ et $\mathrm{FFF}$ : il reste $6$ issues, $P(A) = \dfrac{6}{8} = \dfrac{3}{4}$.
* $B$ (au plus une fille) : c'est $\mathrm{GGG}$ et les trois mots à une seule fille, soit $4$ issues, $P(B) = \dfrac{4}{8} = \dfrac{1}{2}$.
* $A \cap B$ : au moins un garçon, au moins une fille, et au plus une fille, donc exactement une fille et deux garçons : $\{\mathrm{GGF},\ \mathrm{GFG},\ \mathrm{FGG}\}$, $P(A \cap B) = \dfrac{3}{8}$.

Comparons :

$$P(A)\times P(B) = \frac{3}{4}\times\frac{1}{2} = \frac{3}{8} = P(A\cap B) .$$

Cette fois l'égalité est vérifiée : **$A$ et $B$ sont indépendants** pour une famille de trois enfants.

### 3. Commentaire

Les deux événements décrivent tous les deux la composition de la famille ; ils parlent clairement de la même chose, et pourtant ils sont indépendants dans un cas et pas dans l'autre. Deux leçons :

* **L'indépendance n'est pas une question de sens, c'est une question de nombres.** On ne peut pas la deviner en lisant l'énoncé : il faut comparer $P(A\cap B)$ et $P(A)P(B)$.
* **L'indépendance dépend du modèle tout entier**, pas seulement des deux événements. Ici, seule la taille de la famille a changé, et la réponse a changé avec elle.

On peut aussi le dire avec des probabilités conditionnelles. Avec trois enfants, $P_B(A) = \dfrac{3/8}{1/2} = \dfrac{3}{4} = P(A)$ : apprendre qu'il y a au plus une fille ne modifie pas la probabilité d'avoir les deux sexes. Avec deux enfants au contraire, $P_B(A) = \dfrac{1/2}{3/4} = \dfrac{2}{3}$, ce qui est plus grand que $P(A) = \dfrac{1}{2}$.

## Going further

1. Reprendre la question avec une famille de quatre enfants. Que se passe-t-il ?
2. Remplacer $B$ par « au plus un garçon ». Les événements sont-ils indépendants pour trois enfants ?
3. Chercher deux événements $A$ et $B$ d'un même univers qui soient indépendants alors que $A \subset B$. Quelle condition cela impose-t-il ?
