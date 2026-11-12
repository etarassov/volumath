---
id: "22062"
title: "√2 n'est pas une fraction"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [irrationnel, racine-carree, fraction-irreductible, parite, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Montrer qu'il n'existe pas deux entiers strictement positifs $p$ et $q$ tels que
$$\left(\frac{p}{q}\right)^2 = 2.$$

Autrement dit, $\sqrt{2}$ ne s'écrit pas comme une fraction : on dit que $\sqrt{2}$ est **irrationnel**.

## Hints

1. Raisonnez par l'absurde. On peut toujours simplifier une fraction jusqu'à ce qu'elle soit irréductible : supposez que $\frac{p}{q}$ l'est.
2. Montrez que $p^2 = 2q^2$. Que pouvez-vous en déduire sur la parité de $p$ ?
3. Écrivez $p = 2k$ et remplacez. Que dire alors de $q$ ?

## Solution

Raisonnons par l'absurde : supposons qu'il existe des entiers strictement positifs $p$ et $q$ tels que $\left(\frac{p}{q}\right)^2 = 2$. Quitte à simplifier la fraction, on peut supposer qu'elle est **irréductible** : $p$ et $q$ n'ont pas de diviseur commun autre que $1$. En particulier, $p$ et $q$ ne sont pas pairs tous les deux.

**Étape 1 : $p$ est pair.** On a $\frac{p^2}{q^2} = 2$, donc $p^2 = 2q^2$ : le nombre $p^2$ est pair. Si $p$ était impair, $p^2 = p \times p$ serait un produit de deux nombres impairs, donc impair. Ainsi $p$ est pair : on écrit $p = 2k$ avec $k$ entier.

**Étape 2 : $q$ est pair.** En remplaçant, $4k^2 = 2q^2$, donc $q^2 = 2k^2$. Le nombre $q^2$ est pair, et le même raisonnement montre que $q$ est pair.

**Étape 3 : la contradiction.** Les nombres $p$ et $q$ sont tous les deux pairs, alors que la fraction $\frac{p}{q}$ était irréductible. C'est impossible.

**Conclusion.** Il n'existe pas de fraction dont le carré vaut $2$ : le nombre $\sqrt{2}$ est irrationnel.

## Going further

1. Une autre façon de conclure, sans supposer la fraction irréductible : les étapes 1 et 2 transforment une solution $(p, q)$ en une solution $\left(\frac{p}{2}, \frac{q}{2}\right)$ formée d'entiers plus petits. Pourquoi ne peut-on pas recommencer indéfiniment ? C'est la méthode de la **descente infinie**.
2. Adapter la preuve pour montrer que $\sqrt{3}$ est irrationnel. Indication : regardez les restes dans la division par $3$.
3. Où la preuve échoue-t-elle si l'on essaie de l'appliquer à $\sqrt{4}$ ?
