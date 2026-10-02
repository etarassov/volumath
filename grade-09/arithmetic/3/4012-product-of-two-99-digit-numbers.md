---
id: "4012"
title: "Le produit de deux nombres à 99 chiffres"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [chiffres, multiplication, restes, puissances-de-dix]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 8 (réponse 8 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

On considère deux nombres de $99$ chiffres chacun :

- $A = 303\,030\,303\,\ldots\,030\,303$, dont les chiffres alternent $3$ et $0$, en commençant et en finissant par un $3$ ;
- $B = 505\,050\,505\,\ldots\,050\,505$, dont les chiffres alternent $5$ et $0$, en commençant et en finissant par un $5$.

Dans le produit $A \times B$, on appelle $a$ le chiffre des milliers et $b$ le chiffre des
unités. Que vaut $a + b$ ?

(Par exemple, dans $123\,456\,789$, le chiffre des milliers est $6$ et le chiffre des unités
est $9$.)

## Hints

1. On ne demande que les quatre derniers chiffres du produit. Inutile de le calculer en entier.
2. Pose une multiplication à la main avec des nombres plus courts, par exemple $303 \times 505$, puis $30\,303 \times 50\,505$. Regarde les quatre derniers chiffres.
3. Écris $A = 10\,000 \times A' + 303$ et $B = 10\,000 \times B' + 505$, puis développe le produit. Quels termes peuvent modifier les quatre derniers chiffres ?

## Solution

**L'idée : les quatre derniers chiffres d'un produit ne dépendent que des quatre derniers chiffres des facteurs.**

Les quatre derniers chiffres de $A$ sont $0303$, et ceux de $B$ sont $0505$. Écrivons donc

$$A = 10\,000 \times A' + 303 \qquad \text{et} \qquad B = 10\,000 \times B' + 505,$$

où $A'$ et $B'$ sont les entiers formés par les chiffres restants.

**Développons le produit :**

$$A \times B = 10\,000 \times 10\,000 \times A'B' \; + \; 10\,000 \times \bigl( 505 \, A' + 303 \, B' \bigr) \; + \; 303 \times 505 .$$

Les deux premiers termes sont des multiples de $10\,000$ : ils ne contiennent que des zéros
sur les quatre derniers chiffres et ne peuvent donc pas les modifier. Tout se joue sur le
dernier terme.

**Calcul du dernier terme :**

$$303 \times 505 = 303 \times 500 + 303 \times 5 = 151\,500 + 1515 = 153\,015.$$

Ce nombre a pour quatre derniers chiffres $3015$. En l'additionnant aux deux multiples de
$10\,000$, ces quatre chiffres restent tels quels.

**Conclusion.** Le produit $A \times B$ se termine par $\ldots 3015$. Donc

$$a = 3 \quad (\text{chiffre des milliers}), \qquad b = 5 \quad (\text{chiffre des unités}),$$

et

$$a + b = 3 + 5 = 8.$$

**Réponse : $a + b = 8$.**

## Going further

On peut vérifier sur de petits cas : $303 \times 505 = 153\,015$ et
$30\,303 \times 50\,505 = 1\,530\,453\,015$ ; les deux se terminent bien par $3015$. C'est
toujours vrai quel que soit le nombre de motifs répétés, pour la raison expliquée ci-dessus.
