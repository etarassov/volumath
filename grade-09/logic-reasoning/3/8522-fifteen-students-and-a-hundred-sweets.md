---
id: "8522"
title: "Quinze élèves et cent bonbons"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, raisonnement-par-l-absurde, somme, entiers-distincts]
adapted_from: null
see_also: []
same_as: ["8628"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

À la récréation, les quinze élèves d'une classe se partagent cent bonbons : chaque bonbon est
pris par un élève, et un élève peut très bien n'en prendre aucun.

Démontrer qu'il y a forcément au moins deux élèves qui ont pris le même nombre de bonbons.

## Hints

1. Raisonne par l'absurde : suppose que les quinze élèves ont tous pris des nombres de bonbons différents.
2. Range alors les quinze nombres dans l'ordre croissant. Que peut-on dire du plus petit ? Du deuxième plus petit ?
3. Calcule le plus petit total possible dans cette situation, et compare-le à $100$.

## Solution

Raisonnons par l'absurde : **supposons que les quinze élèves aient tous pris des nombres de
bonbons deux à deux différents.**

Rangeons ces quinze nombres dans l'ordre croissant :

$$n_1 < n_2 < n_3 < \cdots < n_{15} .$$

Ce sont quinze entiers positifs ou nuls, tous différents. Donc :

- $n_1 \geqslant 0$ ;
- $n_2 > n_1$, et ce sont des entiers, donc $n_2 \geqslant 1$ ;
- $n_3 \geqslant 2$ ;
- et ainsi de suite : $n_k \geqslant k - 1$ pour chaque $k$.

En additionnant les quinze inégalités, le nombre total de bonbons distribués vérifie

$$n_1 + n_2 + \cdots + n_{15} \geqslant 0 + 1 + 2 + \cdots + 14 .$$

Or

$$0 + 1 + 2 + \cdots + 14 = \frac{14 \times 15}{2} = 105 .$$

Il faudrait donc au moins $105$ bonbons. Mais il n'y en a que $100$ : c'est impossible.

**Conclusion.** L'hypothèse de départ est fausse : deux élèves au moins ont pris le même
nombre de bonbons.

## Going further

Le raisonnement ne dépend pas vraiment du nombre $100$ : il marche tant qu'il y a strictement
moins de $105$ bonbons. Avec $105$ bonbons, en revanche, le partage
$0, 1, 2, \ldots, 14$ donne bien quinze nombres tous différents.
