---
id: "0862"
title: "Le tableau qui double et qui triple"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [tableau, calcul litteral, factorisation, fractions]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 25, section « Équations »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Un tableau de $3$ cases sur $3$ contient un nombre dans chaque case.

Chaque nombre est égal au **double** du nombre qui se trouve juste à sa gauche, et chaque nombre est
égal au **triple** du nombre qui se trouve juste au-dessus de lui.

La somme des neuf nombres vaut $13$.

Que vaut le nombre inscrit dans la case centrale ?

## Hints

1. Tu ne connais aucun nombre du tableau, mais un seul suffirait : si on te donnait celui du coin en haut à gauche, pourrais-tu remplir toutes les autres cases ?
2. Appelle $x$ le nombre du coin en haut à gauche. Chaque pas vers la droite multiplie par $2$, chaque pas vers le bas multiplie par $3$. Remplis les neuf cases en fonction de $x$.
3. Additionne les neuf expressions et factorise par $x$. Tu obtiens une équation à une inconnue.
4. Pour additionner sans erreur, fais d'abord la somme de chaque ligne : le facteur $1 + 2 + 4$ apparaît trois fois.

## Solution

**L'idée : tout exprimer à partir d'une seule case.**

Appelons $x$ le nombre du coin en haut à gauche. Un pas vers la droite multiplie par $2$, un pas
vers le bas multiplie par $3$. Le tableau est donc entièrement déterminé :

| | | |
|:---:|:---:|:---:|
| $x$ | $2x$ | $4x$ |
| $3x$ | $6x$ | $12x$ |
| $9x$ | $18x$ | $36x$ |

(Les deux règles sont bien compatibles : pour aller du coin en haut à gauche à une case quelconque,
on multiplie par $2$ autant de fois qu'on avance de colonnes, et par $3$ autant de fois qu'on descend
de lignes, et l'ordre des multiplications n'a pas d'importance.)

**La somme.** Ligne par ligne :

$$x + 2x + 4x = 7x, \qquad 3x + 6x + 12x = 21x, \qquad 9x + 18x + 36x = 63x.$$

Au total :

$$7x + 21x + 63x = 91x.$$

(On pouvait aussi écrire directement $(1+3+9) \times (1+2+4) \times x = 13 \times 7 \times x$.)

**On utilise l'hypothèse.** La somme vaut $13$, donc

$$91x = 13, \qquad \text{donc} \qquad x = \frac{13}{91} = \frac{13}{13 \times 7} = \frac{1}{7}.$$

**La case centrale** contient $6x$, donc

$$6x = \frac{6}{7}.$$

**Vérification.** Avec $x = \dfrac{1}{7}$, le tableau contient

$$\frac{1}{7}, \ \frac{2}{7}, \ \frac{4}{7}, \ \frac{3}{7}, \ \frac{6}{7}, \ \frac{12}{7}, \ \frac{9}{7}, \ \frac{18}{7}, \ \frac{36}{7}.$$

La somme des numérateurs vaut $1+2+4+3+6+12+9+18+36 = 91$, donc la somme du tableau vaut
$\dfrac{91}{7} = 13$. Les deux règles sont bien respectées case par case.

**Conclusion.** La case centrale contient $\dfrac{\mathbf{6}}{\mathbf{7}}$.

**Remarque.** Rien n'obligeait la réponse à être un nombre entier : l'énoncé ne dit pas que les
cases contiennent des entiers, seulement des nombres.

## Going further

1. La case centrale vaut $6x$ et la somme vaut $91x$ : la case centrale représente donc toujours la même fraction de la somme, quelle que soit la somme. Laquelle ?
2. Même question si la somme des neuf nombres vaut $91$ au lieu de $13$.
3. Et si le tableau faisait $4$ cases sur $4$, avec les mêmes règles et une somme de $13$ ? Que vaudrait alors le nombre du coin en haut à gauche ?
