---
id: "7408"
title: "Les différences au tableau"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, invariant, somme-des-entiers]
adapted_from: null
see_also: ["4419"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », exercices vus en cours de stratégies de base, exercice 9 (variante 2011 : entiers de 1 à 2011, dernier nombre égal à 1)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On écrit au tableau tous les entiers de $1$ à $2010$.

Un coup consiste à effacer deux nombres et à écrire à leur place leur différence, c'est-à-dire le
plus grand moins le plus petit. Il y a donc un nombre de moins au tableau après chaque coup.

Au bout de $2009$ coups, il ne reste qu'un seul nombre.

Ce dernier nombre peut-il être égal à $0$ ?

## Hints

1. Essaie d'abord avec les entiers de $1$ à $4$, en jouant de plusieurs façons. Qu'observes-tu sur
   les résultats obtenus ?
2. Compare la parité de $a - b$ et celle de $a + b$.
3. Regarde la somme de tous les nombres du tableau. Elle change à chaque coup, mais quelque chose
   en elle ne change pas.

## Solution

**La réponse est non : le dernier nombre ne peut pas être $0$.**

**L'invariant.**

Regardons la **somme** $S$ de tous les nombres écrits au tableau.

Quand on efface $a$ et $b$ (avec $a \geq b$) et qu'on écrit $a - b$, la somme passe de $S$ à
$$S - a - b + (a - b) = S - 2b.$$

Elle diminue donc de $2b$, qui est un nombre **pair**. Autrement dit : la somme change, mais sa
**parité** ne change jamais.

(On peut aussi le dire ainsi : $a - b$ et $a + b$ ont toujours la même parité, puisque leur
différence $(a+b) - (a-b) = 2b$ est paire.)

**La parité de départ.**

Au départ, la somme vaut
$$1 + 2 + 3 + \dots + 2010 = \frac{2010 \times 2011}{2} = 1005 \times 2011.$$

Ici $1005$ est impair et $2011$ est impair, donc leur produit est **impair**.

**Conclusion.**

La somme des nombres du tableau est impaire au départ, donc elle reste impaire à tout moment.

À la fin, il ne reste qu'un seul nombre : la somme du tableau est égale à ce nombre. Ce nombre est
donc impair.

Or $0$ est pair. **Le dernier nombre ne peut donc pas être $0$.**

## Going further

Si on part des entiers de $1$ à $2011$, la somme de départ vaut $\dfrac{2011 \times 2012}{2} =
2011 \times 1006$, qui est pair. Le dernier nombre peut-il alors valoir $1$ ? Peut-il valoir $0$ ?
Attention : montrer qu'un résultat est **possible** demande de le construire, pas seulement de
vérifier la parité.
