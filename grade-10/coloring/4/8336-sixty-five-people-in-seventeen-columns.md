---
id: "8336"
title: "65 personnes dans 17 colonnes"
grade: 10
theme: coloring
difficulty: 4
duration_min: 30
tags: [coloriage, parite, principe-des-tiroirs, invariant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Invariants » (Yohann), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Une grille comporte $17$ colonnes. Au départ, $65$ personnes se tiennent toutes dans la colonne
du milieu, la neuvième.

À chaque étape, chaque personne fait un pas, soit vers la gauche, soit vers la droite : elle
change donc de colonne d'exactement une case. Chacune choisit sa direction comme elle veut, et
tout le monde bouge en même temps.

Montrer qu'à tout instant, il y a toujours au moins une colonne qui contient au moins $8$
personnes.

## Hints

1. Il y a $17$ colonnes et $65$ personnes. Si toutes les colonnes étaient utilisables, le principe des tiroirs donnerait seulement $\lceil 65/17 \rceil = 4$ personnes dans une colonne. C'est trop faible : il faut montrer que la moitié des colonnes sont interdites.
2. Colorie les colonnes alternativement de deux couleurs. Où est tout le monde au départ ?
3. Que se passe-t-il pour la couleur d'une personne quand elle fait un pas ?
4. Toutes les personnes changent de couleur en même temps, donc à tout instant elles sont toutes sur la même couleur. Combien y a-t-il de colonnes de chaque couleur ?
5. Applique le principe des tiroirs, avec $65$ personnes et seulement le nombre de colonnes réellement occupées.

## Solution

**Le coloriage.**

Numérotons les colonnes de $1$ à $17$ et colorions-les en alternance :

- les colonnes **impaires** $1, 3, 5, 7, 9, 11, 13, 15, 17$ en rose : il y en a $9$ ;
- les colonnes **paires** $2, 4, 6, 8, 10, 12, 14, 16$ en vert : il y en a $8$.

**Tout le monde change de couleur à chaque étape.**

Quand une personne fait un pas, son numéro de colonne augmente ou diminue de $1$ : sa parité
change donc, et avec elle sa couleur.

Comme tout le monde bouge à chaque étape, tout le monde change de couleur en même temps. Au
départ, les $65$ personnes sont dans la colonne $9$, qui est rose. Donc :

- après un nombre **pair** de pas, tout le monde est sur une colonne rose ;
- après un nombre **impair** de pas, tout le monde est sur une colonne verte.

Dans les deux cas, **toutes les personnes sont sur des colonnes de la même couleur**, et les
colonnes de l'autre couleur sont vides.

**Le principe des tiroirs.**

À tout instant, les $65$ personnes se répartissent donc dans au plus $9$ colonnes : les roses, ou
les vertes, et les vertes ne sont que $8$.

Si chacune de ces colonnes contenait au plus $7$ personnes, on aurait au plus

$$9 \times 7 = 63 < 65$$

personnes en tout : impossible.

Il existe donc une colonne qui contient au moins $8$ personnes. Plus précisément, par le
principe des tiroirs,

$$\left\lceil \frac{65}{9} \right\rceil = 8 .$$

**Conclusion.** À chaque instant, au moins une colonne contient au moins $8$ personnes.

## Going further

Tout le travail a été fait par le coloriage : sans lui, on aurait cru que les $65$ personnes
pouvaient se répartir dans $17$ colonnes, ce qui n'aurait garanti que $4$ personnes quelque part.
Le coloriage divise par deux le nombre de tiroirs et double presque la conclusion.

C'est le même mécanisme que le fou aux échecs, qui reste toute la partie sur les cases d'une
seule couleur, ou que le cavalier, qui change de couleur à chaque coup.

Question pour prolonger : si la grille comptait $18$ colonnes et que les personnes partaient de
la neuvième, que deviendrait la réponse ?
