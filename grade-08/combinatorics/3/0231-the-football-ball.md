---
id: "0231"
title: "Le ballon de football"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, mise-en-equation, polygone, ballon]
adapted_from: null
see_also: []
same_as: ["0280"]
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 28 «Подсчёт двумя способами», задача 8, с. 82-83"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un ballon de football est cousu avec $32$ pièces de cuir : des hexagones blancs et des pentagones noirs. Deux pièces sont dites **voisines** lorsqu'elles sont cousues l'une à l'autre le long d'un côté.

On sait que :

- chaque pièce noire n'a que des voisines blanches ;
- chaque pièce blanche a exactement trois voisines noires et trois voisines blanches.

Combien le ballon compte-t-il de pièces blanches ?

## Hints

1. Appelle $x$ le nombre de pièces blanches. Combien y a-t-il alors de pièces noires ?
2. On va compter les coutures qui séparent une pièce blanche d'une pièce noire, appelons-les les coutures « blanc-noir ». Combien de ces coutures bordent une pièce blanche donnée ?
3. Combien de côtés a un pentagone ? Comme toutes ses voisines sont blanches, combien de coutures blanc-noir bordent une pièce noire donnée ?
4. Tu peux maintenant écrire le nombre total de coutures blanc-noir de deux façons. Écris l'égalité et résous-la.

## Solution

**L'idée : compter les coutures blanc-noir de deux façons.**

Appelons **couture blanc-noir** une couture qui sépare une pièce blanche d'une pièce noire. On va calculer leur nombre total, appelons-le $N$, de deux manières différentes.

Notons $x$ le nombre de pièces blanches. Comme il y a $32$ pièces en tout, il y a $32 - x$ pièces noires.

**Premier calcul : en partant des pièces blanches.**

Chaque pièce blanche a exactement trois voisines noires, donc exactement trois coutures blanc-noir la bordent. En parcourant les $x$ pièces blanches, on rencontre

$$N = 3x$$

coutures blanc-noir. Aucune n'est comptée deux fois : une couture blanc-noir n'a qu'une seule pièce blanche sur ses deux bords.

**Deuxième calcul : en partant des pièces noires.**

Une pièce noire est un pentagone : elle a cinq côtés, donc cinq voisines. Or toutes ses voisines sont blanches. Chaque pièce noire est donc bordée par cinq coutures blanc-noir. En parcourant les $32 - x$ pièces noires, on trouve

$$N = 5(32 - x).$$

Là non plus rien n'est compté deux fois, pour la même raison.

**On égale les deux comptages.**

$$3x = 5(32 - x)$$
$$3x = 160 - 5x$$
$$3x + 5x = 160$$
$$8x = 160$$
$$x = 20.$$

**Conclusion.**

Le ballon comporte $20$ pièces blanches, et donc $32 - 20 = 12$ pièces noires.

**Vérification.** Avec $20$ pièces blanches : $3 \times 20 = 60$ coutures blanc-noir. Avec $12$ pièces noires : $5 \times 12 = 60$. Les deux comptages coïncident. C'est bien ce que l'on observe sur un vrai ballon : $20$ hexagones blancs et $12$ pentagones noirs.

## Going further

1. Combien y a-t-il de coutures « blanc-blanc » sur le ballon ? Attention, cette fois une même couture a une pièce blanche de chaque côté.
2. En déduire le nombre total de coutures du ballon.
3. Retrouver ce nombre total autrement : compter tous les côtés de toutes les pièces, puis se souvenir que chaque couture est un côté partagé par deux pièces.
