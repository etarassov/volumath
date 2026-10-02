---
id: "13022"
title: "2016 écrit 2016 fois est divisible par 81"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, critere-de-divisibilite-par-9, somme-des-chiffres, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices collégiens, exercice 3 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

1. Le nombre $2016$ est-il divisible par $81$ ? Le nombre $20\,162\,016$ est-il divisible par $81$ ?
2. On écrit $2016$ fois de suite le bloc de chiffres « 2016 », ce qui forme un très grand nombre entier :
$$N = 20162016\ldots2016 .$$
Montrer que $N$ est divisible par $81$.

## Hints

1. On a $81 = 9 \times 9$. Si un nombre $n$ s'écrit $9 \times m$, quand est-il divisible par $81$ ? Pense au critère de divisibilité par $9$ avec la somme des chiffres.
2. Pour $20\,162\,016$, essaie de l'écrire comme $2016$ multiplié par un nombre simple.
3. Pour $N$, écris-le de même comme $2016 \times R$, où $R$ est un nombre écrit seulement avec des $0$ et des $1$. Combien de chiffres $1$ contient $R$ ?

## Solution

**Deux outils.**

- *Le critère de divisibilité par $9$* : un entier est divisible par $9$ exactement quand la somme de ses chiffres est divisible par $9$.
- *Diviser par $81$ en deux fois* : si $n = 9 \times m$ avec $m$ entier, alors $n$ est divisible par $81$ exactement quand $m$ est divisible par $9$. En effet, $9 \times m = 81 \times k$ revient à $m = 9 \times k$.

**Question 1.** La somme des chiffres de $2016$ est $2 + 0 + 1 + 6 = 9$, donc $2016$ est divisible par $9$ :
$$2016 = 9 \times 224 .$$
La somme des chiffres de $224$ est $8$, qui n'est pas divisible par $9$. Donc $224$ n'est pas divisible par $9$, et $2016$ **n'est pas** divisible par $81$.

Ensuite, $20\,162\,016 = 2016 \times 10\,000 + 2016 = 2016 \times 10\,001$, donc
$$20\,162\,016 = 9 \times (224 \times 10\,001) = 9 \times 2\,240\,224 .$$
La somme des chiffres de $2\,240\,224$ est $2 + 2 + 4 + 0 + 2 + 2 + 4 = 16$, qui n'est pas divisible par $9$. Donc $20\,162\,016$ **n'est pas** divisible par $81$ non plus.

**Question 2. On factorise $N$.** Le nombre $N$ est formé de $2016$ blocs de quatre chiffres « 2016 ». Le dernier bloc vaut $2016$, l'avant-dernier vaut $2016 \times 10\,000$, celui d'avant $2016 \times 100\,000\,000$, et ainsi de suite. On peut donc mettre $2016$ en facteur :
$$N = 2016 \times R, \qquad \text{où} \qquad R = 1\,0001\,0001 \ldots 0001 .$$
Le nombre $R$ s'écrit avec des chiffres $0$ et $1$ : un chiffre $1$ pour chacun des $2016$ blocs, séparés par trois zéros. Par exemple, pour deux blocs, $20\,162\,016 = 2016 \times 10\,001$.

**On regarde $R$.** La somme des chiffres de $R$ vaut $1 + 1 + \cdots + 1 = 2016$. Or $2016$ est divisible par $9$ (question 1). D'après le critère, $R$ est divisible par $9$ : il existe un entier $k$ tel que $R = 9 \times k$.

**Conclusion.** On a $2016 = 9 \times 224$ et $R = 9 \times k$, donc
$$N = 2016 \times R = 9 \times 224 \times 9 \times k = 81 \times (224 \times k) .$$
Le nombre $N$ est donc divisible par $81$.

## Going further

1. On écrit maintenant le bloc « 2016 » exactement $n$ fois de suite. Pour quelles valeurs de $n$ le nombre obtenu est-il divisible par $81$ ?
2. Sans aucun calcul long, montrer que $N$ est aussi divisible par $7$ et par $32$.
