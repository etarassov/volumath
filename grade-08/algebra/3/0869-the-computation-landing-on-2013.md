---
id: "0869"
title: "Le calcul qui tombe sur 2013"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [calcul litteral, combinaison, systeme, somme]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 14, section « Calcul littéral »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers naturels vérifiant

$$a + 2b = 13, \qquad 3b + 4c = 19, \qquad 5a + 6c = 21.$$

Calcule

$$6a + 5b + 10c + 40 \times 49.$$

## Hints

1. Tu peux bien sûr chercher $a$, $b$ et $c$ un par un, mais il y a beaucoup plus rapide : la quantité demandée s'obtient directement à partir des trois égalités.
2. Regarde les coefficients de $a$ dans les trois égalités : $1$, $0$ et $5$. Combien font-ils en tout ?
3. Fais la même chose pour $b$ puis pour $c$. Que se passe-t-il si tu additionnes simplement les trois égalités ?
4. N'oublie pas le morceau $40 \times 49$ à la fin, qui n'a rien à voir avec $a$, $b$ et $c$.

## Solution

**L'idée : additionner les trois égalités, sans chercher $a$, $b$ ni $c$.**

Additionnons membre à membre les trois égalités :

$$(a + 2b) + (3b + 4c) + (5a + 6c) = 13 + 19 + 21.$$

À gauche, on regroupe les termes semblables :

- les $a$ : $a + 5a = 6a$ ;
- les $b$ : $2b + 3b = 5b$ ;
- les $c$ : $4c + 6c = 10c$.

On obtient exactement la quantité recherchée :

$$6a + 5b + 10c = 13 + 19 + 21 = 53.$$

**On termine.**

$$40 \times 49 = 1\,960,$$

donc

$$6a + 5b + 10c + 40 \times 49 = 53 + 1\,960 = 2\,013.$$

**Conclusion.** Le résultat est $\mathbf{2\,013}$, l'année où ce problème a été posé.

**Vérification.** Ici on peut aussi résoudre le système complètement. De la première égalité,
$a = 13 - 2b$ ; en reportant dans la troisième, $5(13-2b) + 6c = 21$, soit $-10b + 6c = -44$,
c'est-à-dire $5b - 3c = 22$. Avec la deuxième égalité $3b + 4c = 19$, on trouve $b = 5$ puis
$c = 1$, et enfin $a = 13 - 10 = 3$.

On vérifie : $3 + 10 = 13$, $15 + 4 = 19$, $15 + 6 = 21$. $\checkmark$

Et alors $6a + 5b + 10c = 18 + 25 + 10 = 53$, ce qui confirme le calcul rapide. La méthode courte
donnait la réponse sans jamais connaître $a$, $b$ et $c$.

## Going further

1. Avec les mêmes trois égalités, que vaut $a + b + c$ ? Cette fois, existe-t-il un raccourci du même genre, ou faut-il vraiment résoudre le système ?
2. Invente à ton tour trois égalités dont la somme donne directement $4a + 4b + 4c$, et fais-en un exercice pour un camarade.
