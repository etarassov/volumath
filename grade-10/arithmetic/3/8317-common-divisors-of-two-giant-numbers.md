---
id: "8317"
title: "Les diviseurs communs de deux nombres géants"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, algorithme-deuclide, diviseurs, puissances-de-dix]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Divisibilité et PGCD » (Yohann), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Combien les deux nombres

$$10^{100} \qquad \text{et} \qquad 10^{813} + 10^{121} + 10$$

ont-ils de diviseurs positifs communs ?

## Hints

1. Il est hors de question d'écrire ces nombres en entier. Cherche plutôt un raisonnement.
2. Les diviseurs communs de deux entiers sont exactement les diviseurs de leur $\mathrm{PGCD}$. Le problème devient donc : calculer ce $\mathrm{PGCD}$, puis compter ses diviseurs.
3. Pour calculer le $\mathrm{PGCD}$, utilise l'algorithme d'Euclide : divise le plus grand par le plus petit et garde le reste.
4. Dans $10^{813} + 10^{121} + 10$, mets $10^{100}$ en facteur partout où c'est possible. Que reste-t-il ?
5. Une fois le $\mathrm{PGCD}$ trouvé, écris-le comme produit de facteurs premiers pour compter ses diviseurs.

## Solution

**Étape 1 : les diviseurs communs sont les diviseurs du PGCD.**

Notons $d = \mathrm{PGCD}\!\left(10^{100},\; 10^{813} + 10^{121} + 10\right)$.

Tout diviseur commun de deux entiers divise leur $\mathrm{PGCD}$, et réciproquement tout diviseur
du $\mathrm{PGCD}$ est un diviseur commun. Le nombre cherché est donc exactement le **nombre de
diviseurs positifs de $d$**.

**Étape 2 : on calcule le PGCD.**

Faisons la division euclidienne de $10^{813} + 10^{121} + 10$ par $10^{100}$. Comme
$813 \geqslant 100$ et $121 \geqslant 100$, on peut mettre $10^{100}$ en facteur dans les deux
premiers termes :

$$10^{813} + 10^{121} + 10 = \left(10^{713} + 10^{21}\right) \times 10^{100} + 10 .$$

Le reste est $10$, et l'on a bien $0 \leqslant 10 < 10^{100}$ : c'est donc la division
euclidienne. L'algorithme d'Euclide donne

$$d = \mathrm{PGCD}\!\left(10^{100},\; 10\right) .$$

Or $10$ divise $10^{100}$, donc

$$d = 10 .$$

**Étape 3 : on compte les diviseurs de 10.**

Les diviseurs positifs de $10$ sont

$$1, \quad 2, \quad 5, \quad 10 ,$$

soit $4$ diviseurs.

**Conclusion.** Les deux nombres ont $\boxed{4}$ diviseurs positifs communs.

## Going further

On peut aussi conclure sans l'algorithme d'Euclide. Tout diviseur commun $k$ divise
$10^{813} + 10^{121} + 10$ ; comme il divise $10^{100}$, il divise aussi $10^{813}$ et
$10^{121}$, donc il divise la différence, c'est-à-dire $10$. Réciproquement, $10$ divise les deux
nombres. Les diviseurs communs sont donc exactement les diviseurs de $10$.

La méthode générale pour compter les diviseurs : si $N = p_1^{a_1} \cdots p_r^{a_r}$, alors $N$ a
exactement $(a_1+1)\cdots(a_r+1)$ diviseurs positifs. Ici $10 = 2^1 \times 5^1$, ce qui donne
$2 \times 2 = 4$.
