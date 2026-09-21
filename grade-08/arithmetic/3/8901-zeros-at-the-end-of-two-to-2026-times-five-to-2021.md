---
id: "8901"
title: "Les zéros au bout de 2²⁰²⁶ × 5²⁰²¹"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [puissances, chiffres, divisibilite, decomposition]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 1 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

On écrit en toutes lettres le nombre

$$N = 2^{2026} \times 5^{2021}.$$

Évidemment personne ne va le calculer : il est gigantesque. Mais son écriture décimale se termine par une longue file de zéros.

Combien de zéros exactement ?

## Hints

1. Commencez petit. Combien de zéros au bout de $2^3 \times 5^3$ ? Au bout de $2^4 \times 5^2$ ? Calculez-les vraiment, ce sont de petits nombres.
2. Un nombre se termine par un zéro exactement quand il est divisible par $10$. Il se termine par deux zéros quand il est divisible par $100 = 10^2$. Et $10 = 2 \times 5$.
3. Un $2$ et un $5$ vont ensemble et fabriquent un $10$. Combien de paires « un $2$ avec un $5$ » peut-on former ici ? Et que reste-t-il ensuite ?
4. Écrivez $2^{2026} = 2^{2021} \times 2^5$, puis regroupez les $2^{2021}$ avec les $5^{2021}$.

## Solution

**L'idée : chaque zéro au bout coûte un $2$ et un $5$.**

Multiplier un nombre par $10$ revient à lui accoler un zéro à la fin. Donc le nombre de zéros à la fin de $N$ est le plus grand entier $k$ tel que $10^k$ divise $N$. Et comme $10 = 2 \times 5$, chaque facteur $10$ consomme un facteur $2$ **et** un facteur $5$.

**Le regroupement.**

Ici on a $2026$ facteurs $2$ et seulement $2021$ facteurs $5$. Ce sont donc les $5$ qui manquent les premiers : on ne peut former que $2021$ paires. Écrivons-le proprement, en coupant la puissance de $2$ en deux :

$$2^{2026} = 2^{2021 + 5} = 2^{2021} \times 2^5.$$

Donc

$$N = 2^{2021} \times 2^5 \times 5^{2021} = (2 \times 5)^{2021} \times 2^5 = 10^{2021} \times 32.$$

**La conclusion.**

Le nombre $N$ vaut donc $32$ suivi de $2021$ zéros. Comme $32$ ne se termine pas par un zéro, on ne peut pas en gagner un de plus.

$$\boxed{N \text{ se termine par exactement } 2021 \text{ zéros.}}$$

*Le piège à éviter.* Beaucoup de copies de la Coupe ont écrit $2^{2026} \times 5^{2021} = 10^{4047}$, en additionnant les exposants. C'est faux : la règle $a^m \times a^n = a^{m+n}$ demande **la même base** des deux côtés. Ici les bases sont $2$ et $5$, elles sont différentes, et $2^{2026} \times 5^{2021}$ n'est pas une puissance de $10$.

## Going further

1. Combien de **chiffres** l'écriture décimale de $N$ comporte-t-elle au total ? (C'était la version lycée du même exercice à la Coupe. Attention : $10^{2021}$ s'écrit avec $2022$ chiffres, et non $2021$.)
2. Et pour $2^{2021} \times 5^{2026}$ ? Combien de zéros à la fin cette fois ?
