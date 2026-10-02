---
id: "12619"
title: "Les bonbons de l'octogone"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [jeu, strategie, octogone, somme, principe-des-tiroirs, exemple-et-majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 31 mars 2021"
  reference: "2021-12_Enonce-Test-4.pdf, exercice 1 (junior) ; corrigé 2021-04_Corrige-Test-4-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-4.pdf"
---

## Statement

Morgane et Bosphore jouent au jeu suivant.

- Morgane écrit les entiers de 1 à 8 sur les huit sommets d'un octogone régulier, un entier par sommet.
- Bosphore choisit ensuite un sommet. Il calcule la somme $s$ du nombre écrit sur ce sommet et des nombres écrits sur ses deux voisins, et il donne $s$ bonbons à Morgane.

Bosphore choisit son sommet de façon à donner le moins de bonbons possible. Morgane, qui le sait, place les entiers de façon à recevoir le plus de bonbons possible.

Démontrer que Bosphore donnera 12 bonbons à Morgane.

## Hints

1. Il y a deux choses à montrer. D'abord, Morgane peut placer les nombres pour que les huit sommes valent toutes au moins 12. Ensuite, quoi que fasse Morgane, l'une des huit sommes vaut au plus 12.
2. Pour la disposition de Morgane : les grands nombres ne doivent pas être voisins, et chaque petit nombre doit être entouré de grands nombres.
3. Pour l'autre sens, additionne des sommes de trois sommets consécutifs. Les huit sommes ensemble valent $3 \times 36 = 108$ : cela ne suffit pas à descendre jusqu'à 12. Essaie plutôt avec seulement trois groupes de trois sommets consécutifs qui recouvrent tout l'octogone.
4. Trois groupes de trois sommets font 9 places pour 8 sommets : un sommet est compté deux fois. Choisis les groupes pour que ce soit le sommet qui porte le 1.

## Solution

Il faut montrer deux choses : Morgane peut s'assurer au moins 12 bonbons, et Bosphore peut toujours s'arranger pour en donner au plus 12.

**Morgane peut obtenir 12 bonbons.** Elle écrit les nombres dans cet ordre, en faisant le tour de l'octogone :
$$1,\ 4,\ 7,\ 2,\ 5,\ 6,\ 3,\ 8.$$
Le 8 est donc voisin du 3 et du 1. Voici la somme que calcule Bosphore pour chaque sommet :

| sommet | ses deux voisins | somme $s$ |
|:---:|:---:|:---:|
| 1 | 8 et 4 | 13 |
| 4 | 1 et 7 | 12 |
| 7 | 4 et 2 | 13 |
| 2 | 7 et 5 | 14 |
| 5 | 2 et 6 | 13 |
| 6 | 5 et 3 | 14 |
| 3 | 6 et 8 | 17 |
| 8 | 3 et 1 | 12 |

Toutes les sommes valent au moins 12. Quel que soit le sommet choisi, Bosphore donne au moins 12 bonbons.

**Bosphore peut toujours donner au plus 12 bonbons.** Prenons une disposition quelconque. Nommons $v_0$ le sommet qui porte le 1, puis $v_1, v_2, \ldots, v_7$ les sommets suivants, dans l'ordre du tour. Formons trois groupes de trois sommets consécutifs :
$$\{v_0, v_1, v_2\}, \qquad \{v_3, v_4, v_5\}, \qquad \{v_6, v_7, v_0\}.$$
Chaque sommet est dans un groupe, sauf $v_0$ qui est dans deux groupes. Si on additionne les sommes des trois groupes, on compte donc chaque nombre de 1 à 8 une fois, plus le 1 une deuxième fois :
$$(1 + 2 + \cdots + 8) + 1 = 36 + 1 = 37.$$
Si les trois groupes avaient chacun une somme d'au moins 13, le total vaudrait au moins $3 \times 13 = 39$. Or $37 < 39$. Donc l'un des trois groupes a une somme d'au plus 12.

Bosphore choisit alors le sommet du milieu de ce groupe, c'est-à-dire $v_1$, $v_4$ ou $v_7$. La somme qu'il calcule est exactement celle de ce groupe, et il donne au plus 12 bonbons.

**Conclusion.** Morgane peut toujours recevoir au moins 12 bonbons, et elle ne peut jamais forcer Bosphore à lui en donner 13. Quand les deux jouent au mieux, Bosphore donne exactement **12 bonbons**.

## Going further

- Pourquoi les huit sommes ensemble ne suffisent pas : elles valent $3 \times 36 = 108$, et $108 = 8 \times 13 + 4$. On en déduit seulement que l'une des sommes vaut au plus 13. L'astuce est de choisir quelques groupes, et de faire compter deux fois le plus petit nombre.
- Une autre preuve, sans stratégie explicite. Supposons que les huit sommes valent toutes au moins 13. Deux sommes voisines sont toujours différentes : en passant d'un sommet au suivant, on enlève un nombre et on en ajoute un autre. Donc deux sommes voisines font au moins $13 + 14 = 27$. Les quatre paires de sommes voisines font alors au moins $4 \times 27 = 108$, et le total vaut exactement 108 : les sommes valent donc 13 et 14 en alternance. Essaie de montrer que c'est impossible.
