---
id: "7403"
title: "Des 1 et des −1 au tableau"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, produit, signes, tableau]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », deuxième TD de stratégies de base, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On écrit au tableau $n$ nombres, chacun valant $1$ ou $-1$.

Un coup consiste à effacer deux de ces nombres et à écrire à leur place :

- le nombre $1$ si les deux nombres effacés étaient égaux ;
- le nombre $-1$ s'ils étaient différents.

À chaque coup, il y a donc un nombre de moins au tableau. On recommence jusqu'à ce qu'il ne reste
qu'un seul nombre.

Ce dernier nombre dépend-il de l'ordre dans lequel on a choisi les paires ?

## Hints

1. Essaie avec quatre nombres, par exemple $1$, $1$, $-1$, $-1$, en choisissant les paires de
   plusieurs façons différentes. Que trouves-tu à la fin ?
2. Cherche une quantité que le coup ne change pas. Additionner les nombres ne marche pas : essaie
   une autre opération.
3. Compare le produit des deux nombres effacés et le nombre écrit à leur place.

## Solution

**La réponse est non : le dernier nombre est toujours le même, quelles que soient les paires
choisies.**

**L'idée.** On regarde le **produit** de tous les nombres écrits au tableau.

**Le coup ne change pas ce produit.**

Soient $a$ et $b$ les deux nombres effacés, et $c$ le nombre écrit à leur place. Vérifions dans
les trois cas possibles que $c = a \times b$ :

| $a$ | $b$ | nombre écrit $c$ | $a \times b$ |
|---|---|---|---|
| $1$ | $1$ | $1$ (ils sont égaux) | $1$ |
| $-1$ | $-1$ | $1$ (ils sont égaux) | $1$ |
| $1$ | $-1$ | $-1$ (ils sont différents) | $-1$ |

Dans les trois cas, $c = a \times b$.

Notons $P$ le produit de tous les nombres du tableau avant le coup. On peut l'écrire
$$P = a \times b \times (\text{produit des autres nombres}).$$
Après le coup, le produit vaut
$$c \times (\text{produit des autres nombres}) = a \times b \times (\text{produit des autres nombres}) = P.$$

**Le produit de tous les nombres du tableau est donc un invariant : il ne change jamais.**

**Conclusion.**

À la fin il ne reste qu'un seul nombre. Le produit de tous les nombres du tableau vaut alors ce
nombre lui-même. Comme le produit n'a pas changé depuis le début, ce dernier nombre est égal au
produit des $n$ nombres écrits au départ.

Ce produit est fixé par la situation initiale : il ne dépend pas du tout des choix faits en cours
de route. **Le dernier nombre est donc toujours le même.**

En pratique : si le tableau contient au départ un nombre **pair** de $-1$, on termine sur $1$ ;
s'il en contient un nombre **impair**, on termine sur $-1$.

## Going further

Reprends l'exercice avec des nombres valant $1$, $-1$ ou $0$, la règle étant maintenant :
« on efface $a$ et $b$, on écrit $a \times b$ ». Le résultat final dépend-il encore des choix ?
Et si l'on écrivait $a + b$ à la place ?
