---
id: "8548"
title: "Dix entiers dont la moyenne est un multiple du PGCD"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pgcd, moyenne, entiers-distincts, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Révisions » (Xavier et Aurélien) du Groupe B, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

1. Existe-t-il dix entiers strictement positifs, deux à deux distincts, dont la moyenne
   arithmétique est égale à $5$ fois leur PGCD ?
2. Même question avec $6$ fois leur PGCD.

## Hints

1. Note $d$ le PGCD des dix entiers, et écris chacun d'eux sous la forme $d \times b_i$. Que vaut alors le PGCD des $b_i$ ?
2. Exprime la moyenne des $a_i$ en fonction de $d$ et de la moyenne des $b_i$. La condition se simplifie beaucoup.
3. Le problème revient donc à trouver dix entiers strictement positifs distincts, de PGCD $1$, dont la moyenne vaut $5$ (puis $6$).
4. Quelle est la plus petite somme possible pour dix entiers strictement positifs deux à deux distincts ?

## Solution

**Une simplification.** Soient $a_1, \ldots, a_{10}$ dix entiers strictement positifs
distincts, et $d$ leur PGCD. Écrivons $a_i = d\,b_i$ ; les $b_i$ sont alors des entiers
strictement positifs distincts, et leur PGCD vaut $1$.

La moyenne des $a_i$ vaut $d$ fois la moyenne des $b_i$. La condition « la moyenne des $a_i$
vaut $k$ fois leur PGCD », c'est-à-dire $k\,d$, s'écrit donc

$$d \times (\text{moyenne des } b_i) = k\,d, \qquad \text{c'est-à-dire} \qquad
\text{moyenne des } b_i = k .$$

Le problème revient donc à trouver dix entiers strictement positifs distincts de PGCD $1$ et
de moyenne $k$, autrement dit de somme $10k$.

### 1. Avec $k = 5$ : impossible

Dix entiers strictement positifs deux à deux distincts sont au moins $1, 2, 3, \ldots, 10$,
donc leur somme vaut au moins

$$1 + 2 + \cdots + 10 = \frac{10 \times 11}{2} = 55 .$$

Or il faudrait une somme de $10 \times 5 = 50$, ce qui est strictement plus petit que $55$.
C'est **impossible**.

### 2. Avec $k = 6$ : possible

Il faut dix entiers distincts, de PGCD $1$, de somme $10 \times 6 = 60$. Prenons

$$1, \; 2, \; 3, \; 4, \; 5, \; 7, \; 8, \; 9, \; 10, \; 11 .$$

Leur somme vaut $(1+2+3+4+5) + (7+8+9+10+11) = 15 + 45 = 60$. Leur PGCD vaut $1$, puisque
$1$ figure dans la liste. Leur moyenne vaut donc $6$, et $6 = 6 \times 1 = 6 \times$ leur
PGCD.

C'est donc **possible**.

## Going further

La construction se transpose à n'importe quel PGCD : en multipliant les dix nombres ci-dessus
par un entier $d$, on obtient dix entiers distincts de PGCD $d$ et de moyenne $6d$. Par
exemple $2, 4, 6, 8, 10, 14, 16, 18, 20, 22$, de PGCD $2$ et de moyenne $12$.
