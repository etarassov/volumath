---
id: "0305"
title: "L'horloge coloriée"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, division-euclidienne, restes, horloge]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 9 «НОД и НОК», задача 3 (с. 55)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

À midi pile, Clément colorie en rouge le nombre $12$ sur le cadran d'une horloge. Il décide ensuite de colorier en rouge, toutes les $57$ heures, le nombre que désigne la petite aiguille à ce moment-là.

1. Combien de nombres du cadran seront coloriés au bout d'un mois ?
2. Même question s'il colorie un nombre toutes les $1913$ heures, et qu'il continue toute sa vie.

## Hints

1. La petite aiguille revient au même endroit toutes les $12$ heures. Seul compte donc le reste de $57$ dans la division par $12$. Combien vaut-il ?
2. Numéroter les positions du cadran de $0$ (pour le $12$) à $11$. À chaque étape, on avance de $9$ positions et on repart de $0$ quand on dépasse $11$. Écrire les positions obtenues : $0$, puis $9$, puis...
3. Quand la suite revient-elle sur une position déjà coloriée ? Vérifier aussi qu'un mois laisse le temps de faire tout le tour.
4. Comparer le nombre de positions coloriées avec $\mathrm{PGCD}(12, 57)$, puis avec $\mathrm{PGCD}(12, 1913)$.

## Solution

**L'idée : seul le reste dans la division par 12 compte.**

La petite aiguille retrouve la même position toutes les $12$ heures. Attendre $57$ heures, c'est donc la même chose qu'attendre le reste de $57$ dans la division euclidienne par $12$ :
$$57 = 4 \times 12 + 9 .$$
À chaque étape, l'aiguille avance donc de $9$ positions sur le cadran.

Numérotons les positions du cadran de $0$ à $11$, en donnant le numéro $0$ au nombre $12$, le numéro $1$ au nombre $1$, et ainsi de suite.

**Question 1 : un nombre colorié toutes les 57 heures.**

Clément part de la position $0$ et avance de $9$ à chaque fois. On calcule, en enlevant $12$ chaque fois qu'on dépasse $11$ :

| étape | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| position | $0$ | $9$ | $6$ | $3$ | $0$ |

Détail du calcul : $0 + 9 = 9$ ; $9 + 9 = 18 = 12 + 6$, donc position $6$ ; $6 + 9 = 15 = 12 + 3$, donc position $3$ ; $3 + 9 = 12$, donc position $0$.

Au bout de $4$ étapes on est revenu au point de départ. Ensuite tout se répète à l'identique : aucune position nouvelle ne sera jamais coloriée.

Les positions coloriées sont $0$, $3$, $6$, $9$, c'est-à-dire les nombres $\mathbf{12}$, $\mathbf{3}$, $\mathbf{6}$ et $\mathbf{9}$ du cadran.

**A-t-on le temps en un mois ?** Les quatre coloriages ont lieu après $0$, $57$, $114$ et $171$ heures, soit un peu plus de $7$ jours. Un mois suffit largement.

**Réponse : $4$ nombres.**

**Question 2 : un nombre colorié toutes les 1913 heures.**

Même méthode :
$$1913 = 159 \times 12 + 5,$$
donc on avance de $5$ positions à chaque étape. En partant de $0$ :
$$0,\ 5,\ 10,\ 3,\ 8,\ 1,\ 6,\ 11,\ 4,\ 9,\ 2,\ 7,\ \text{puis } 0 .$$

On obtient les $12$ positions, toutes différentes, avant de revenir au départ. **Tous les nombres du cadran seront coloriés.**

**A-t-on le temps ?** Il faut $11$ attentes de $1913$ heures, soit environ $21\,000$ heures, c'est-à-dire un peu moins de $2$ ans et demi. Une vie suffit.

**Ce qui se cache derrière : le PGCD.**

Dans les deux cas, on avance à chaque étape d'un même nombre de positions $r$ sur un cadran de $12$ positions. On peut montrer que les positions atteintes sont exactement les multiples de $\mathrm{PGCD}(12, r)$, et qu'il y en a donc
$$\frac{12}{\mathrm{PGCD}(12,\,r)} .$$

- Premier cas : $\mathrm{PGCD}(12, 9) = 3$, d'où $12 \div 3 = 4$ nombres coloriés, et ce sont les multiples de $3$.
- Second cas : $\mathrm{PGCD}(12, 5) = 1$, d'où $12 \div 1 = 12$ nombres coloriés, c'est-à-dire tous.

On aurait d'ailleurs pu partir directement des durées, sans calculer les restes : $\mathrm{PGCD}(12, 57) = 3$ et $\mathrm{PGCD}(12, 1913) = 1$ donnent les mêmes réponses.

## Going further

1. Toutes les combien d'heures Clément doit-il colorier pour n'obtenir que deux nombres coloriés en tout ?
2. Sur un cadran de $12$ nombres, quelles sont les valeurs possibles du nombre de cases coloriées ?
3. Reprendre la question 1 avec une horloge de $24$ heures, c'est-à-dire un cadran à $24$ positions.
