---
id: "13861"
title: "Huit puissance 296 divisé par quatre"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [puissances, puissances de 2]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 12 ; réponse 443 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soit $n = 8^{296}$. Le nombre $\dfrac{n}{4}$ peut s'écrire sous la forme $4^a$, où $a$ est un
entier. Que vaut $a$ ?

## Hints

1. Écris $8$ et $4$ comme des puissances de $2$.
2. On a $(2^3)^{296} = 2^{3 \times 296}$.

## Solution

**Tout en puissances de $2$.** Comme $8 = 2^3$, on a

$$n = 8^{296} = \left(2^3\right)^{296} = 2^{3 \times 296} = 2^{888}.$$

Comme $4 = 2^2$, on obtient $\dfrac{n}{4} = \dfrac{2^{888}}{2^2} = 2^{886}$.

**En puissance de $4$.** On a $4^a = \left(2^2\right)^a = 2^{2a}$. L'égalité $2^{2a} = 2^{886}$
donne $2a = 886$, soit $a = 443$.

**On a $a = 443$** : $\dfrac{8^{296}}{4} = 4^{443}$.
