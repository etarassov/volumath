---
id: "11411"
title: "Trente élèves sur la photo de classe"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, permutations, produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 1 ; corrigé 2021-03_Corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

La classe d'Aline compte $30$ élèves, qui ont tous des tailles différentes. Pour la photo de
classe, il y a trois rangs de $10$ places.

Pour que tout le monde soit bien visible, les $10$ élèves les plus petits doivent être au premier
rang et les $10$ élèves les plus grands au dernier rang. Les $10$ autres sont donc au rang du milieu.

De combien de façons peut-on placer les $30$ élèves sur les $30$ places en respectant ces règles ?

## Hints

1. Les règles disent déjà quel rang reçoit chaque élève. Il reste seulement à choisir l'ordre des
   élèves à l'intérieur de chaque rang.
2. De combien de façons peut-on ranger $3$ personnes sur $3$ chaises ? Et $10$ personnes sur
   $10$ chaises ?
3. Le choix de l'ordre au premier rang ne gêne en rien le choix au deuxième rang.

## Solution

Les élèves ont tous des tailles différentes, donc on sait exactement qui sont les $10$ plus petits,
les $10$ plus grands et les $10$ autres. Chaque élève sait donc déjà dans quel rang il va. Il reste
à décider l'ordre des élèves dans chaque rang.

**Un rang.** Plaçons les $10$ élèves du premier rang, place après place, de gauche à droite.

- Pour la première place, on a $10$ choix.
- Pour la deuxième place, il reste $9$ élèves, donc $9$ choix.
- Pour la troisième, $8$ choix, et ainsi de suite jusqu'à la dernière place, où il ne reste qu'un
  élève.

Cela fait $10 \times 9 \times 8 \times \cdots \times 2 \times 1$ façons. Ce produit se note $10!$
(on lit « factorielle $10$ ») et vaut $3\,628\,800$.

**Les trois rangs.** Il y a de même $10!$ façons d'ordonner le rang du milieu et $10!$ façons
d'ordonner le dernier rang. Ces trois choix sont indépendants : n'importe quel ordre du premier rang
peut aller avec n'importe quel ordre des deux autres. On multiplie donc :

$$10! \times 10! \times 10! = (10!)^3.$$

**Conclusion.** Il y a $(10!)^3$ façons de placer les élèves, soit environ $\text{4,8} \times 10^{19}$
façons.

## Going further

S'il n'y avait aucune règle de taille, il y aurait $30!$ façons de placer les élèves. Montrer que
le quotient $\frac{30!}{(10!)^3}$ est le nombre de façons de choisir quels élèves vont dans quel
rang, sans s'occuper de l'ordre à l'intérieur des rangs.
