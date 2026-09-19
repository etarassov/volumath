---
id: "3424"
title: "Un palindrome sur la plaque"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [probabilite, denombrement, evenement contraire, palindrome, union]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 4: Combinatorics"
  reference: "Handout-3716-3316.pdf, section 3.2, problème 3, d'après AIME I 2001, problème 1 (réponse dans Handout-3718-3316.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3716-3316.pdf"
---

## Statement

Dans un certain pays, une plaque d'immatriculation est formée de trois lettres suivies de trois chiffres, par exemple **KLM 407**. L'alphabet compte $26$ lettres, et chacune des six positions est remplie au hasard, toutes les plaques étant également probables.

On dit que la plaque contient un **palindrome** si le groupe de trois lettres se lit de la même façon dans les deux sens (comme **ABA**), ou bien si le groupe de trois chiffres se lit de la même façon dans les deux sens (comme **404**).

Quelle est la probabilité qu'une plaque contienne un palindrome ?

## Hints

1. « Au moins un palindrome parmi deux » : pense à l'événement contraire.
2. L'événement contraire est « le groupe de lettres n'est pas un palindrome **et** le groupe de chiffres n'est pas un palindrome ». Les deux groupes sont indépendants.
3. Un groupe de trois lettres est un palindrome exactement quand la première et la troisième lettre sont égales. La lettre du milieu est libre.
4. Compte donc les groupes de trois lettres qui ne sont **pas** des palindromes : combien de choix pour la première lettre, la deuxième, la troisième ?

## Solution

**L'idée : passer par l'événement contraire, et remarquer qu'être un palindrome de longueur trois, c'est simplement « premier caractère = dernier caractère ».**

**Étape 1. Le nombre total de plaques.**

$$26^3 \times 10^3 \text{ plaques.}$$

**Étape 2. On compte les plaques sans aucun palindrome.**

Un groupe de trois caractères $c_1c_2c_3$ est un palindrome exactement quand $c_1 = c_3$ (le caractère du milieu ne joue aucun rôle). Donc :

- **Groupe de lettres qui n'est pas un palindrome** : $26$ choix pour la première lettre, $26$ pour la deuxième, et $25$ pour la troisième, qui doit différer de la première. Cela fait $26 \times 26 \times 25$ groupes.
- **Groupe de chiffres qui n'est pas un palindrome** : de même, $10 \times 10 \times 9$ groupes.

Les deux groupes se choisissent indépendamment, donc le nombre de plaques sans palindrome vaut

$$26 \times 26 \times 25 \times 10 \times 10 \times 9.$$

**Étape 3. La probabilité de l'événement contraire.**

$$P(\text{aucun palindrome}) = \frac{26^2 \times 25 \times 10^2 \times 9}{26^3 \times 10^3} = \frac{25}{26} \times \frac{9}{10} = \frac{225}{260}.$$

**Étape 4. On conclut.**

$$P(\text{au moins un palindrome}) = 1 - \frac{225}{260} = \frac{35}{260} = \frac{7}{52}.$$

**Conclusion : la probabilité vaut $\dfrac{7}{52} \approx \text{13,5}\%$.**

## Going further

On peut aussi calculer directement, avec la formule de l'union. En notant $L$ l'événement « le groupe de lettres est un palindrome » et $C$ l'événement « le groupe de chiffres est un palindrome » :

$$P(L) = \frac{1}{26}, \qquad P(C) = \frac{1}{10},$$

car il s'agit exactement de la probabilité que le troisième caractère soit égal au premier. Les deux événements sont indépendants, donc

$$P(L \cup C) = P(L) + P(C) - P(L)P(C) = \frac{1}{26} + \frac{1}{10} - \frac{1}{260} = \frac{10 + 26 - 1}{260} = \frac{35}{260} = \frac{7}{52}.$$

On retrouve bien le même résultat. Remarque au passage que le caractère du milieu n'intervient jamais : pour un groupe de trois, « être un palindrome » se réduit à « premier caractère = dernier caractère ».
