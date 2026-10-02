---
id: "12048"
title: "Deux cents poids et un échange de cinquante"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [balance, paires-complementaires, disjonction-de-cas, construction, somme-des-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 7 (groupe A) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

On dispose de $200$ poids, qui pèsent respectivement $1$ g, $2$ g, $3$ g, …, $200$ g. On les répartit sur les deux plateaux d'une balance, de sorte que chaque plateau porte exactement $100$ poids.

Montrer que l'on peut toujours échanger $50$ poids d'un plateau avec $50$ poids de l'autre plateau de façon que la balance soit en équilibre.

## Hints

1. Quelle est la masse totale des $200$ poids ? Quelle masse doit porter chaque plateau à la fin ?
2. Regroupez les poids par paires : $1$ g avec $200$ g, $2$ g avec $199$ g, etc. Que vaut la masse d'une paire ?
3. Une paire peut avoir ses deux poids à gauche, ses deux poids à droite, ou un poids de chaque côté. Comparez le nombre de paires du premier type et le nombre de paires du deuxième type.
4. Essayez de faire en sorte qu'après l'échange, le plateau de gauche porte exactement $50$ paires complètes.

## Solution

**Étape 1 : la masse visée.** La masse totale des poids, en grammes, est

$$1 + 2 + \cdots + 200 = \frac{200 \times 201}{2} = 20\,100 .$$

Pour que la balance soit en équilibre, chaque plateau doit porter $10\,050$ g, c'est-à-dire $50 \times 201$ g.

**Étape 2 : des paires de $201$ g.** Regroupons les poids en $100$ paires : le poids de $1$ g avec celui de $200$ g, le poids de $2$ g avec celui de $199$ g, et ainsi de suite jusqu'à $100$ g avec $101$ g. Chaque paire pèse $201$ g. Les deux poids d'une même paire sont dits **complémentaires**.

L'objectif devient : après l'échange, le plateau de gauche doit porter exactement $50$ paires complètes. Il pèsera alors $50 \times 201 = 10\,050$ g, et le plateau de droite aussi.

**Étape 3 : trois sortes de paires.** Chaque paire est d'une des trois sortes suivantes :

- ses deux poids sont à gauche ; notons $g$ le nombre de ces paires ;
- ses deux poids sont à droite ; notons $d$ le nombre de ces paires ;
- un poids est à gauche et l'autre à droite ; notons $s$ le nombre de ces paires.

En comptant les poids de chaque plateau, on obtient $2g + s = 100$ à gauche et $2d + s = 100$ à droite. Donc $g = d$, et $s = 100 - 2g$.

**Étape 4 : l'échange.** Un échange consiste à choisir $50$ poids à gauche, qui partent à droite, et $50$ poids à droite, qui partent à gauche. Les $50$ autres poids de gauche restent à gauche.

*Premier cas : $g \geqslant 25$.* Choisissons $25$ paires dont les deux poids sont à gauche : ces $50$ poids restent à gauche, et les $50$ autres poids de gauche partent à droite. Comme $d = g \geqslant 25$, on peut choisir $25$ paires dont les deux poids sont à droite, et faire passer ces $50$ poids à gauche. Le plateau de gauche porte alors $25 + 25 = 50$ paires complètes.

*Second cas : $g \leqslant 24$.* Alors $s = 100 - 2g \geqslant 52$, donc il y a au moins $50$ paires partagées entre les deux plateaux. Choisissons-en $50$. Leurs $50$ poids de gauche restent à gauche, et les $50$ autres poids de gauche partent à droite. On fait passer à gauche les $50$ poids complémentaires, qui étaient à droite. Le plateau de gauche porte alors $50$ paires complètes.

Dans les deux cas, on a bien échangé $50$ poids de gauche contre $50$ poids de droite, et le plateau de gauche porte $50$ paires complètes, soit $10\,050$ g.

**Conclusion.** Quelle que soit la répartition de départ, on peut échanger $50$ poids de chaque plateau pour que les deux plateaux portent chacun $10\,050$ g : la balance est alors en équilibre.

## Going further

On fait la même chose avec $4$ poids de $1$ g, $2$ g, $3$ g et $4$ g, deux sur chaque plateau, en échangeant $1$ poids contre $1$ poids. Montrer que ce n'est pas toujours possible. Où le raisonnement ci-dessus utilise-t-il le fait que $50$ est pair ?
