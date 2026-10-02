---
id: "8832"
title: "Deux sous-ensembles de même somme"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, sous-ensembles, somme, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 9, p. 110"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On choisit $10$ entiers, tous différents, entre $1$ et $100$.

Montrer qu'on peut toujours trouver deux sous-ensembles $A$ et $B$ de ces $10$ entiers, tous deux **non vides**, **disjoints** (aucun élément commun), et de **même somme**.

## Hints

1. Commence par la version plus facile : montrer qu'il existe deux sous-ensembles **différents** (pas forcément disjoints) de même somme.
2. Pour cela, compte les sous-ensembles non vides d'un ensemble à $10$ éléments, puis les valeurs que peut prendre leur somme.
3. Un ensemble à $n$ éléments possède $2^n$ sous-ensembles : pour chaque élément, on décide de le prendre ou non.
4. Une fois deux sous-ensembles différents $A'$ et $B'$ de même somme obtenus, que se passe-t-il si tu retires de chacun les éléments communs ?

## Solution

### Étape 1 : deux sous-ensembles différents de même somme

Notons $E$ l'ensemble des $10$ entiers choisis.

**Combien de sous-ensembles non vides ?** Choisir un sous-ensemble de $E$, c'est décider pour chacun des $10$ éléments s'il est dedans ou non : cela fait $2^{10} = 1024$ sous-ensembles. En excluant l'ensemble vide, il en reste
$$1024 - 1 = 1023 .$$

Ce sont nos **chaussettes**.

**Combien de sommes possibles ?** La somme d'un sous-ensemble non vide vaut au moins $1$ (les entiers sont $\geqslant 1$) et au plus la somme des $10$ plus grands entiers possibles, soit
$$91 + 92 + \cdots + 100 = 955 \; \leqslant \; 1000 .$$
Donc chaque somme est un entier compris entre $1$ et $1000$ : il y a au plus $1000$ valeurs possibles.

Ce sont nos **tiroirs**.

**Le principe des tiroirs.** Comme $1023 > 1000$, deux sous-ensembles non vides **différents**, disons $A'$ et $B'$, ont la même somme.

### Étape 2 : on les rend disjoints

Les ensembles $A'$ et $B'$ peuvent avoir des éléments communs. Posons
$$A = A' \setminus B' \qquad \text{et} \qquad B = B' \setminus A' ,$$
c'est-à-dire qu'on retire de chacun les éléments de l'intersection.

- **Ils sont disjoints**, par construction.
- **Ils ont la même somme** : on a retiré la même quantité (la somme des éléments communs) des deux côtés d'une égalité.
- **Ils sont non vides.** Supposons par exemple $A = \varnothing$. Cela voudrait dire $A' \subseteq B'$, et comme $A' \neq B'$, l'inclusion serait stricte. Mais alors la somme de $B'$ serait strictement plus grande que celle de $A'$, puisque tous les entiers sont strictement positifs et qu'il y a au moins un élément de plus. Cela contredit l'égalité des sommes. Donc $A \neq \varnothing$, et de même $B \neq \varnothing$.

**Conclusion.** Les ensembles $A$ et $B$ conviennent.

### Le point délicat

Le principe des tiroirs ne donne « gratuitement » que deux sous-ensembles **différents**. Passer de « différents » à « disjoints » demande l'étape 2, courte mais indispensable, et c'est là que sert l'hypothèse que les entiers sont strictement positifs.

## Going further

1. Le résultat reste-t-il vrai avec $9$ entiers choisis entre $1$ et $100$ ? (Compter les sous-ensembles et les sommes possibles ; la méthode ne suffit plus, mais cela ne prouve pas que l'énoncé est faux.)
2. Avec $10$ entiers choisis entre $1$ et $1000$, la méthode fonctionne-t-elle encore ?
