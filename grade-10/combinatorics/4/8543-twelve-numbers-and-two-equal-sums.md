---
id: "8543"
title: "Douze nombres, deux sommes égales"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, denombrement, sommes, entiers-distincts]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Entraînement de mi-parcours » du Groupe B, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $A$ un ensemble de $12$ entiers distincts choisis entre $1$ et $30$.

Démontrer qu'il existe quatre nombres de $A$, deux à deux distincts, tels que la somme de
deux d'entre eux soit égale à la somme des deux autres.

## Hints

1. Il s'agit de trouver deux paires différentes qui ont la même somme. Compte d'abord combien il y a de paires.
2. Combien de valeurs différentes une somme de deux éléments de $A$ peut-elle prendre ? Cherche la plus petite et la plus grande valeur possibles.
3. Compare les deux nombres obtenus : le principe des tiroirs devrait s'appliquer.
4. Attention au dernier point : les deux paires trouvées ont la même somme, mais pourquoi les quatre nombres sont-ils forcément distincts ?

## Solution

**Combien de paires ?** Le nombre de façons de choisir deux éléments distincts parmi les $12$
éléments de $A$ est

$$\binom{12}{2} = \frac{12 \times 11}{2} = 66 .$$

**Combien de sommes possibles ?** Les éléments de $A$ sont des entiers distincts compris entre
$1$ et $30$. La somme de deux d'entre eux vaut donc au moins $1 + 2 = 3$ et au plus
$29 + 30 = 59$. Une telle somme est un entier compris entre $3$ et $59$, ce qui fait

$$59 - 3 + 1 = 57$$

valeurs possibles.

**Le principe des tiroirs.** Rangeons les $66$ paires dans $57$ tiroirs, selon la valeur de
leur somme. Comme $66 > 57$, deux paires différentes tombent dans le même tiroir : il existe
deux paires $\{a, b\}$ et $\{c, d\}$, avec $\{a,b\} \neq \{c,d\}$, telles que

$$a + b = c + d .$$

**Les quatre nombres sont distincts.** Supposons que ces deux paires aient un élément commun,
par exemple $a = c$. Alors l'égalité $a + b = c + d$ donne $b = d$, donc
$\{a, b\} = \{c, d\}$ : c'est contraire à notre choix.

Les deux paires n'ont donc aucun élément commun, et les quatre nombres $a$, $b$, $c$, $d$
sont deux à deux distincts.

**Conclusion.** On a bien trouvé quatre nombres distincts de $A$ tels que
$a + b = c + d$.
