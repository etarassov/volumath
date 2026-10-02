---
id: "13008"
title: "Trois puissances de 10 et le nombre 37"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [puissances, factorisation, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercice 5 de l'épreuve collège et seconde, repris comme exercice 7 de l'épreuve première et terminale ; corrigé 2017-09_coupe_automne_2012_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Montrer que le nombre
$$10^{2011} + 10^{2012} + 10^{2013}$$
est divisible par $37$.

## Hints

1. Ce nombre est bien trop grand pour être calculé. Les trois termes ont-ils un facteur commun ?
2. Écris $10^{2012}$ et $10^{2013}$ comme $10^{2011}$ multiplié par quelque chose.
3. Il reste à regarder le nombre $111$. Est-il divisible par $3$ ?

## Solution

**On met $10^{2011}$ en facteur.** On a $10^{2012} = 10^{2011} \times 10$ et $10^{2013} = 10^{2011} \times 100$. Donc
$$10^{2011} + 10^{2012} + 10^{2013} = 10^{2011} \times (1 + 10 + 100) = 10^{2011} \times 111 .$$

**On décompose $111$.** La somme des chiffres de $111$ vaut $3$, donc $111$ est divisible par $3$, et
$$111 = 3 \times 37 .$$

**Conclusion.** Le nombre s'écrit
$$10^{2011} + 10^{2012} + 10^{2013} = 37 \times \left(3 \times 10^{2011}\right),$$
c'est-à-dire $37$ fois un nombre entier. Il est donc divisible par $37$.

## Going further

1. Montrer que, pour tout entier $n \geqslant 0$, le nombre $10^{n} + 10^{n+1} + 10^{n+2}$ est divisible par $37$. Quels sont ses chiffres ?
2. Vérifier que $1001 = 7 \times 11 \times 13$. En déduire que $10^{2013} + 10^{2010}$ est divisible par $7$, par $11$ et par $13$.
