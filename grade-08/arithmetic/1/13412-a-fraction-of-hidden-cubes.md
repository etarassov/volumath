---
id: "13412"
title: "Une fraction de cubes déguisés"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [calcul astucieux, fractions, factorisation, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 1 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Calculer, sans calculatrice, le nombre

$$\frac{1 \times 2 \times 4 + 2 \times 4 \times 8 + 3 \times 6 \times 12 + 4 \times 8 \times 16}{1 \times 3 \times 9 + 2 \times 6 \times 18 + 3 \times 9 \times 27 + 4 \times 12 \times 36}.$$

Donner le résultat sous la forme d'une fraction irréductible.

## Hints

1. Avant de calculer, regarde comment sont construits les produits du numérateur. Que deviennent $2$ et $4$ dans le deuxième produit ? Dans le troisième ?
2. Le produit $3 \times 6 \times 12$ s'écrit $3 \times (2 \times 3) \times (4 \times 3)$. Fais apparaître $3 \times 3 \times 3$.
3. Chaque produit du numérateur vaut $8$ fois un cube, et chaque produit du dénominateur vaut $27$ fois le même cube.

## Solution

**Le numérateur.** Le deuxième produit s'obtient en multipliant chaque facteur du premier par $2$, le troisième en les multipliant par $3$, le quatrième par $4$. On peut donc écrire

$$2 \times 4 \times 8 = (1 \times 2) \times (2 \times 2) \times (4 \times 2) = 1 \times 2 \times 4 \times 2^3 = 8 \times 2^3,$$

et de même $3 \times 6 \times 12 = 8 \times 3^3$ et $4 \times 8 \times 16 = 8 \times 4^3$. Le premier produit vaut $8 = 8 \times 1^3$. Le numérateur vaut donc

$$8 \times (1^3 + 2^3 + 3^3 + 4^3).$$

**Le dénominateur.** De la même façon, $1 \times 3 \times 9 = 27$, et chaque produit suivant s'obtient en multipliant les trois facteurs par $2$, par $3$ puis par $4$. Le dénominateur vaut donc

$$27 \times (1^3 + 2^3 + 3^3 + 4^3).$$

**On simplifie.** Le nombre $1^3 + 2^3 + 3^3 + 4^3$ apparaît en haut et en bas, et il n'est pas nul : on peut simplifier par ce nombre. La fraction vaut

$$\frac{8}{27}.$$

Elle est irréductible, car $8 = 2^3$ et $27 = 3^3$ n'ont aucun diviseur commun autre que $1$.

*Vérification par le calcul direct.* Le numérateur vaut $8 + 64 + 216 + 512 = 800$ et le dénominateur $27 + 216 + 729 + 1728 = 2700$. On retrouve bien $\frac{800}{2700} = \frac{8}{27}$.

## Going further

Sans calculer le numérateur ni le dénominateur, simplifier la fraction

$$\frac{1 \times 5 + 2 \times 10 + 3 \times 15 + \ldots + 10 \times 50}{1 \times 7 + 2 \times 14 + 3 \times 21 + \ldots + 10 \times 70}.$$
