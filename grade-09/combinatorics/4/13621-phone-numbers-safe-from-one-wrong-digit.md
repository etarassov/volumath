---
id: "13621"
title: "Des numéros de téléphone à l'abri des erreurs"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, maximum, construction, chiffres, somme-des-chiffres, tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2012 (test de sélection du stage olympique de Montpellier, 5 juin 2012)"
  reference: "2017-09_coupe_printemps_2012_2.pdf, épreuve de seconde, exercice 5 (aussi exercice 5 de l'épreuve de première, 2017-09_coupe_printemps_2012_1.pdf) ; corrigé 2017-09_coupe_printemps_2012_corrige.pdf, exercice 5, variante A pour la majoration"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2012_2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2012_2.pdf"
---

## Statement

En région parisienne, un numéro de téléphone fixe s'écrit avec les chiffres $01$ suivis de huit autres chiffres, quelconques. Par exemple : 01 99 98 10 00, ou 01 00 00 35 77.

Pour limiter les appels par erreur, on décide d'une règle : si l'on compose un numéro attribué en se trompant sur **un seul** de ses chiffres, on doit toujours tomber sur un numéro non attribué. Par exemple, si 01 99 98 10 00 est attribué, alors 01 89 98 10 00 et 01 99 98 10 30 ne doivent pas l'être.

Combien de numéros de téléphone différents peut-on attribuer, au maximum, en respectant cette règle ? Justifie soigneusement ta réponse.

## Hints

1. Le $01$ ne joue aucun rôle : ne regarde que les huit chiffres qui suivent. Combien y a-t-il de numéros en tout ?
2. Une réponse « au maximum » demande deux preuves : un exemple qui atteint ce nombre, et une raison pour laquelle on ne peut pas faire mieux.
3. Deux numéros attribués peuvent-ils avoir les mêmes sept premiers chiffres ?
4. Pour l'exemple : choisis les sept premiers chiffres librement, puis choisis le huitième pour que la somme des huit chiffres soit un multiple de $10$.

## Solution

Le $01$ est le même pour tous les numéros : on l'oublie, et un numéro est simplement une suite de huit chiffres. Il y a $10^8$ numéros en tout. On dit que deux numéros sont **voisins** s'ils diffèrent par un seul chiffre. La règle dit : deux numéros attribués ne sont jamais voisins.

La réponse est **$10^7$, soit dix millions de numéros**. Il faut montrer deux choses : on peut en attribuer autant, et on ne peut pas en attribuer davantage.

**On ne peut pas attribuer plus de $10^7$ numéros.** Deux numéros attribués ne peuvent pas avoir les mêmes sept premiers chiffres. Sinon, ils ne différeraient que par le huitième chiffre : ils seraient voisins, ce que la règle interdit. Donc, pour chaque suite de sept chiffres, il y a au plus un numéro attribué qui commence par cette suite. Comme il y a $10^7$ suites de sept chiffres, il y a au plus $10^7$ numéros attribués.

**On peut attribuer $10^7$ numéros.** On attribue un numéro si et seulement si la somme de ses huit chiffres est un multiple de $10$.

*Il y en a bien $10^7$.* On choisit librement les sept premiers chiffres, ce qui fait $10^7$ possibilités. Pour chacune, il y a exactement un huitième chiffre qui rend la somme multiple de $10$. Par exemple, pour 44 27 66 7, la somme des sept chiffres vaut $4 + 4 + 2 + 7 + 6 + 6 + 7 = 36$, et le seul huitième chiffre qui convient est $4$, car $36 + 4 = 40$. Le numéro attribué est 44 27 66 74.

*La règle est respectée.* Partons d'un numéro attribué, et changeons un seul de ses chiffres : un chiffre $x$ est remplacé par un autre chiffre $y$. La somme des chiffres change de $y - x$. Ce nombre n'est pas nul, car $y \ne x$, et il est compris entre $-9$ et $9$, car ce sont deux chiffres. Or la somme de départ était un multiple de $10$. En lui ajoutant un nombre non nul entre $-9$ et $9$, on n'obtient pas un multiple de $10$, car deux multiples de $10$ différents sont distants d'au moins $10$. Le numéro obtenu n'est donc pas attribué.

**Une erreur fréquente.** On pourrait croire qu'il faut « réserver » à chaque numéro attribué ses $8 \times 9 = 72$ voisins, et donc qu'on ne peut attribuer qu'un numéro sur $73$. C'est faux : un même numéro non attribué peut être voisin de plusieurs numéros attribués, donc les voisins réservés se partagent.

**Conclusion.** On peut attribuer au maximum $10^7 = 10\,000\,000$ numéros de téléphone.

## Going further

Voici une autre preuve qu'on ne peut pas dépasser $10^7$. On note $n$ le nombre de numéros attribués.

1. Montre qu'un numéro a exactement $72$ voisins.
2. Montre qu'un numéro non attribué est voisin d'au plus $8$ numéros attribués. (Deux numéros attribués voisins de lui ne peuvent pas différer de lui à la même position.)
3. Compte de deux façons les paires formées d'un numéro attribué et d'un de ses voisins, et déduis-en que $72n \le 8(10^8 - n)$. Conclus.
