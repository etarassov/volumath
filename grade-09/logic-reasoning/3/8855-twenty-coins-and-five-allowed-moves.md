---
id: "8855"
title: "Vingt pièces, cinq prises possibles"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [jeu, strategie gagnante, positions perdantes, modulo 4]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Jeux » (Oscar), exercice 1, p. 141"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Sur une table, il y a $20$ pièces. Antoine et Oscar jouent chacun à leur tour, Antoine commence.

À son tour, un joueur prend $1$, $2$, $3$, $5$ ou $7$ pièces (pas d'autre nombre).

Celui qui prend la **dernière** pièce gagne.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Commence par les toutes petites valeurs. Avec $1$, $2$ ou $3$ pièces sur la table, le joueur dont c'est le tour gagne immédiatement. Et avec $4$ ?
2. Une position est dite **perdante** si le joueur dont c'est le tour va perdre (en supposant que l'adversaire joue bien). Dresse la liste des positions perdantes pour $0, 1, 2, \dots$
3. Regarde les nombres de pièces qu'on peut prendre : $1$, $2$, $3$, $5$, $7$. Quels sont leurs restes dans la division par $4$ ?
4. À partir d'un multiple de $4$, peut-on atteindre un autre multiple de $4$ en un coup ?

## Solution

### L'observation clé

Les cinq prises autorisées sont $1$, $2$, $3$, $5$, $7$. Leurs restes dans la division par $4$ valent respectivement
$$1, \quad 2, \quad 3, \quad 1, \quad 3 .$$

**Aucune prise n'est un multiple de $4$.** C'est toute la clé.

### Les multiples de 4 sont perdants

Montrons les deux faits suivants.

**1. Depuis un multiple de $4$, on ne peut pas atteindre un multiple de $4$.** Si le tas contient $4q$ pièces et qu'on en prend $\ell \in \{1,2,3,5,7\}$, il reste $4q - \ell$. Comme $\ell$ n'est pas un multiple de $4$, le nombre $4q - \ell$ n'en est pas un non plus.

**2. Depuis un nombre qui n'est pas multiple de $4$, on peut toujours atteindre un multiple de $4$.** Si le tas contient $N$ pièces et que le reste de $N$ dans la division par $4$ vaut $r \in \{1, 2, 3\}$, il suffit de prendre $r$ pièces : c'est une prise autorisée, et il reste $N - r$, qui est un multiple de $4$.

### On conclut

Supposons que le tas contienne un multiple de $4$ pièces au moment où c'est votre tour. D'après le point 1, vous laissez à votre adversaire un nombre qui n'est pas multiple de $4$ ; d'après le point 2, il peut vous rendre un multiple de $4$. Et ainsi de suite.

Le nombre de pièces diminue strictement à chaque coup, donc la partie se termine. Celui qui reçoit toujours des multiples de $4$ reçoit en particulier $0$ pièce à un moment : il ne peut plus jouer, ce qui veut dire que son adversaire a pris la dernière pièce et a gagné.

Comme $20 = 4 \times 5$ est un multiple de $4$ et qu'Antoine commence, c'est **Antoine** qui est dans la position perdante.

$$\boxed{\text{Oscar, le second joueur, a une stratégie gagnante : toujours ramener le tas à un multiple de } 4 .}$$

### Vérification à la main

On peut aussi dresser le tableau des positions, en partant de la fin. Une position est **gagnante** s'il existe un coup menant à une position perdante, et **perdante** si tous les coups mènent à des positions gagnantes. La position $0$ est perdante (le joueur n'a plus rien à prendre, l'autre vient de gagner).

| pièces | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $\cdots$ | $20$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| position | P | G | G | G | P | G | G | G | P | $\cdots$ | P |

On retrouve bien : perdante exactement pour les multiples de $4$.

## Going further

1. Mêmes règles, mais on peut prendre $1$, $2$, $3$ ou $4$ pièces. Qui gagne à partir de $20$ pièces ? À partir de $n$ pièces ?
2. Mêmes règles qu'à l'origine, mais celui qui prend la dernière pièce **perd**. Qui gagne à partir de $20$ pièces ?
