---
id: "13813"
title: "Deux urnes et deux boules de la même couleur"
grade: 10
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, equiprobabilite, denombrement, mise en equation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_lycee-bis.pdf, questionnaire lycéens, exercice 7 ; réponse dans 2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_lycee-bis.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_lycee-bis.pdf"
---

## Statement

Une première urne contient $4$ boules vertes et $6$ boules bleues. Une seconde urne contient
$16$ boules vertes et $N$ boules bleues. On tire au hasard une boule dans chaque urne.

La probabilité que les deux boules tirées soient de la même couleur vaut $\text{0,58}$.

Déterminer $N$.

## Hints

1. Imagine que toutes les boules sont numérotées. Combien y a-t-il de couples possibles
   (une boule de la première urne, une boule de la seconde) ? Sont-ils tous aussi probables ?
2. Combien de ces couples sont formés de deux boules vertes ? De deux boules bleues ?
3. Écris la probabilité cherchée en fonction de $N$, et résous l'équation obtenue.

## Solution

**On compte les tirages.** Numérotons toutes les boules. Un tirage, c'est un couple formé d'une
boule de la première urne et d'une boule de la seconde. Il y a $10$ choix dans la première urne
et $16 + N$ dans la seconde, donc $10\,(16 + N)$ couples, tous aussi probables.

**On compte les tirages favorables.**

- Deux boules vertes : $4$ choix dans la première urne et $16$ dans la seconde, soit
  $4 \times 16 = 64$ couples.
- Deux boules bleues : $6$ choix dans la première urne et $N$ dans la seconde, soit $6N$
  couples.

La probabilité d'obtenir deux boules de la même couleur vaut donc

$$p = \frac{64 + 6N}{10\,(16 + N)}.$$

**On résout l'équation.** On veut $p = \text{0,58} = \dfrac{58}{100}$, c'est-à-dire

$$100\,(64 + 6N) = 580\,(16 + N).$$

On développe : $6400 + 600N = 9280 + 580N$, donc $20N = 2880$ et $N = 144$.

**On vérifie.** Avec $N = 144$, on trouve
$p = \dfrac{64 + 864}{10 \times 160} = \dfrac{928}{1600} = \text{0,58}$.

**On a $N = 144$.**
