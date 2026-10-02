---
id: "0282"
title: "Le tableau 10 × 10 de chiffres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, criteres-de-divisibilite, double-comptage, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 4, задача 5 (= задача 7а)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Dans chaque case d'un tableau carré $10 \times 10$, on écrit un chiffre.

Avec les dix chiffres d'une ligne, lus de gauche à droite, on forme un nombre. Avec les dix chiffres d'une colonne, lus de haut en bas, on forme aussi un nombre. On obtient ainsi $20$ nombres en tout.

Est-il possible que **exactement $19$** de ces $20$ nombres soient divisibles par $3$ ?

## Hints

1. Rappelez-vous le critère de divisibilité par $3$ : un nombre est divisible par $3$ exactement quand la somme de ses chiffres l'est.
2. Le problème ne parle donc plus vraiment de nombres, mais de sommes de chiffres : la somme des chiffres de chaque ligne et de chaque colonne.
3. Notez $S$ la somme des $100$ chiffres du tableau, et cherchez à la calculer de deux façons différentes.
4. Si exactement $19$ des $20$ nombres sont divisibles par $3$, combien de lignes ou de colonnes ont une somme de chiffres qui n'est pas divisible par $3$ ?
5. Supposez que cette ligne exceptionnelle soit une ligne du tableau. Que dire alors de $S$ calculée colonne par colonne ? Et de $S$ calculée ligne par ligne ?

## Solution

**Première étape : passer aux sommes de chiffres.**

Un nombre est divisible par $3$ exactement quand la somme de ses chiffres est divisible par $3$.

Donc le nombre formé par une ligne est divisible par $3$ exactement quand la somme des dix chiffres de cette ligne l'est. Même chose pour les colonnes. Notons :

- $L_1, L_2, \dots, L_{10}$ les sommes des chiffres des dix lignes ;
- $C_1, C_2, \dots, C_{10}$ les sommes des chiffres des dix colonnes.

La question devient : peut-on avoir exactement $19$ de ces $20$ nombres divisibles par $3$ ?

**Deuxième étape : la somme totale, comptée deux fois.**

Appelons $S$ la somme des $100$ chiffres du tableau.

- En regroupant les cases ligne par ligne, chaque case est comptée une fois et une seule, donc
  $$S = L_1 + L_2 + \dots + L_{10}.$$
- En regroupant les cases colonne par colonne, chaque case est de nouveau comptée une fois et une seule, donc
  $$S = C_1 + C_2 + \dots + C_{10}.$$

C'est la même somme $S$, calculée de deux façons. C'est là que tout va se jouer.

**Troisième étape : le raisonnement par l'absurde.**

Supposons que exactement $19$ des $20$ nombres soient divisibles par $3$. Alors exactement une des vingt sommes $L_1, \dots, L_{10}, C_1, \dots, C_{10}$ n'est pas divisible par $3$.

Cette somme exceptionnelle est soit une somme de ligne, soit une somme de colonne. Les deux cas se traitent de la même façon (il suffit d'échanger les rôles des lignes et des colonnes), alors supposons que ce soit une ligne, disons $L_1$.

*Ce que disent les colonnes.* Les dix sommes $C_1, \dots, C_{10}$ sont toutes divisibles par $3$. Une somme de multiples de $3$ est un multiple de $3$, donc

$$S = C_1 + \dots + C_{10} \quad \text{est divisible par } 3.$$

*Ce que disent les lignes.* Les sommes $L_2, \dots, L_{10}$ sont divisibles par $3$, mais $L_1$ ne l'est pas. Donc

$$S = \underbrace{L_1}_{\text{non divisible par } 3} + \underbrace{(L_2 + \dots + L_{10})}_{\text{divisible par } 3}.$$

Ajouter un multiple de $3$ ne change pas le reste dans la division par $3$ : comme $L_1$ n'est pas divisible par $3$, la somme $S$ ne l'est pas non plus.

*La contradiction.* Le même nombre $S$ serait à la fois divisible et non divisible par $3$. C'est impossible.

**Conclusion.** Non, il est impossible que exactement $19$ des $20$ nombres soient divisibles par $3$.

**Ce qu'il faut retenir.** Calculer une même quantité de deux façons différentes est une méthode très efficace. Ici, la somme des chiffres du tableau se lit aussi bien par lignes que par colonnes, et c'est ce double regard qui fait apparaître la contradiction.

## Going further

1. Peut-on avoir exactement $18$ de ces nombres divisibles par $3$ ? Et exactement $20$ ?
2. Même question que dans l'énoncé, mais avec la divisibilité par $9$.
3. Même question avec la divisibilité par $2$. Cette fois la réponse change : trouvez un tableau où exactement $19$ des $20$ nombres sont pairs. Pourquoi le raisonnement précédent ne s'applique-t-il plus ?
