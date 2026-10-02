---
id: "13203"
title: "Quand 85a − 2630 est premier"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [nombres-premiers, divisibilite, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 3 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf. L'énoncé demande « un nombre a » ; on précise que a est un entier, sinon toute valeur conviendrait presque."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Trouver tous les entiers $a$ tels que le nombre $85a - 2630$ soit un nombre premier.

## Hints

1. Regarde le dernier chiffre de $85$ et celui de $2630$. Par quel nombre sont-ils tous les deux divisibles ?
2. Le nombre $85a - 2630$ est donc toujours un multiple de $5$. Quel est le seul nombre premier qui soit un multiple de $5$ ?

## Solution

**Un multiple de 5.** On a $85 = 5 \times 17$ et $2630 = 5 \times 526$, donc

$$85a - 2630 = 5 \times (17a - 526).$$

Quel que soit l'entier $a$, le nombre $85a - 2630$ est un multiple de $5$.

**Le seul nombre premier multiple de 5.** Un nombre premier n'a que deux diviseurs positifs, $1$ et lui-même. S'il est multiple de $5$, alors $5$ est l'un de ces deux diviseurs, et comme $5 \neq 1$, le nombre premier vaut $5$. Il faut donc

$$85a - 2630 = 5, \qquad 85a = 2635, \qquad a = \frac{2635}{85} = 31.$$

**Vérification.** $85 \times 31 = 2635$ et $2635 - 2630 = 5$, qui est bien premier.

**Conclusion.** Il y a un seul entier qui convient : $a = 31$.
