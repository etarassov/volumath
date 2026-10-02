---
id: "1419"
title: "L'étagère de la bibliothèque de magie"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [contraintes, disjonction-de-cas, maximum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 4 « Misc », problème 2 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Sur une étagère, un bibliothécaire range des livres de deux sortes : des livres de **magie autorisée** et des livres de **magie noire**. Les livres sont posés en une seule rangée, les uns à côté des autres.

Deux règles de sécurité doivent être respectées :

- entre deux livres de magie autorisée, il ne doit jamais y avoir **exactement trois** autres livres ;
- deux livres de magie noire ne doivent jamais être **côte à côte**.

Quel est le plus grand nombre de livres que l'on peut poser sur cette étagère ?

## Hints

1. Numéroter les places de l'étagère $1, 2, 3, \ldots$ et noter A un livre de magie autorisée, N un livre de magie noire.
2. Traduire la première règle : deux livres A ne peuvent pas occuper deux places dont les numéros diffèrent de $4$.
3. Traduire la deuxième règle : deux livres N ne peuvent pas occuper deux places dont les numéros diffèrent de $1$.
4. Chercher d'abord un rangement valable le plus long possible en tâtonnant. On arrive assez vite à huit livres.
5. Pour montrer que neuf est impossible, supposer neuf places remplies et regarder les paires de places $(1,5)$, $(2,6)$, $(3,7)$, $(4,8)$, $(5,9)$ : chacune contient au moins un N.
6. Séparer en deux cas selon la nature du livre de la place $5$, celle du milieu, et suivre les conséquences de proche en proche. Les deux cas aboutissent au même blocage sur la paire $(3,7)$.

## Solution

Numérotons les places $1, 2, 3, \ldots$ de la gauche vers la droite. Écrivons **A** pour un livre de magie autorisée et **N** pour un livre de magie noire.

Les deux règles se traduisent ainsi :

- *(règle 1)* si deux places portent un A, leurs numéros ne diffèrent pas de $4$ ;
- *(règle 2)* si deux places portent un N, leurs numéros ne diffèrent pas de $1$.

**On peut ranger huit livres.**

Voici un rangement valable :

$$\text{N} \;\; \text{A} \;\; \text{N} \;\; \text{A} \;\; \text{A} \;\; \text{N} \;\; \text{A} \;\; \text{N}$$

*Vérification.* Les N occupent les places $1$, $3$, $6$, $8$ : aucune de ces places n'est voisine d'une autre, la règle 2 est respectée. Les A occupent les places $2$, $4$, $5$, $7$ : les écarts entre ces places valent $2$, $3$, $5$, $1$, $3$, $2$, jamais $4$. La règle 1 est respectée.

**On ne peut pas ranger neuf livres.**

Supposons par l'absurde que les places $1$ à $9$ soient toutes occupées.

Considérons les cinq paires de places dont les numéros diffèrent de $4$ :

$$(1,5), \quad (2,6), \quad (3,7), \quad (4,8), \quad (5,9).$$

D'après la règle 1, **chacune de ces paires contient au moins un N**.

Par ailleurs, d'après la règle 2, **les deux voisins d'un N sont des A**.

Regardons maintenant la place $5$, au milieu. Deux cas.

*Cas 1 : la place $5$ porte un A.*

- La paire $(1,5)$ doit contenir un N : c'est donc la place $1$. La paire $(5,9)$ aussi : c'est la place $9$.
- Place $1$ porte un N, donc son voisin, la place $2$, porte un A. De même, place $9$ porte un N, donc la place $8$ porte un A.
- La paire $(4,8)$ doit contenir un N ; la place $8$ porte un A, donc c'est la place $4$ qui porte un N.
- La paire $(2,6)$ doit contenir un N ; la place $2$ porte un A, donc c'est la place $6$.
- Place $4$ porte un N, donc son voisin la place $3$ porte un A. Place $6$ porte un N, donc son voisin la place $7$ porte un A.
- Mais alors les places $3$ et $7$ portent toutes les deux un A, et leurs numéros diffèrent de $4$ : la règle 1 est violée. **Contradiction.**

*Cas 2 : la place $5$ porte un N.*

- Ses deux voisins, les places $4$ et $6$, portent donc un A.
- La paire $(4,8)$ doit contenir un N ; la place $4$ porte un A, donc c'est la place $8$. Ses voisins, les places $7$ et $9$, portent alors un A.
- La paire $(2,6)$ doit contenir un N ; la place $6$ porte un A, donc c'est la place $2$. Ses voisins, les places $1$ et $3$, portent alors un A.
- Mais alors les places $3$ et $7$ portent toutes les deux un A, et leurs numéros diffèrent de $4$ : la règle 1 est violée. **Contradiction.**

Les deux cas sont impossibles, donc on ne peut pas remplir neuf places. A fortiori, on ne peut pas en remplir davantage : si un rangement de dix livres existait, ses neuf premiers livres formeraient déjà un rangement valable de neuf livres.

**Conclusion.** Le nombre maximal de livres est $\boxed{8}$.

## Going further

1. Combien y a-t-il, en tout, de rangements valables de huit livres ?
2. Que devient la réponse si la première règle interdit « exactement **deux** autres livres » entre deux livres de magie autorisée ?
3. Et si l'on supprime la deuxième règle, en ne gardant que la première ? L'étagère peut-elle alors être aussi longue qu'on veut ?
