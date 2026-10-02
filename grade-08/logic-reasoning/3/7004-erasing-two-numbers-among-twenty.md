---
id: "7004"
title: "On efface deux nombres parmi vingt"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, somme, tableau]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Stratégies de base », TD (Igor Kortchemski), exercice 7 (la numérotation des corrigés du TD est décalée d'un rang dans le polycopié)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Les nombres
$$1, \quad 2, \quad 3, \quad \ldots, \quad 20$$
sont écrits au tableau.

On répète l'opération suivante : on efface deux nombres quelconques $a$ et $b$, et on écrit à
leur place le nombre $a + b - 1$.

À chaque opération, il y a un nombre de moins au tableau. Au bout de $19$ opérations, il n'en
reste donc qu'un seul.

Quel est ce dernier nombre ?

## Hints

1. Fais l'expérience avec une liste plus courte, par exemple $1, 2, 3$. Recommence en
   choisissant d'autres paires. Que constates-tu ?
2. À chaque coup, deux nombres disparaissent et un apparaît. De combien la somme de tous les
   nombres du tableau a-t-elle changé ?
3. La somme diminue toujours de la même quantité. Peux-tu construire une expression qui, elle,
   ne bouge jamais ?

## Solution

**L'idée : trouver une quantité qui ne change pas.**

Appelons $S$ la somme de tous les nombres écrits au tableau et $n$ leur nombre.

Quand on efface $a$ et $b$ pour écrire $a + b - 1$ :

- la somme passe de $S$ à $S - a - b + (a + b - 1) = S - 1$ : elle **diminue de $1$** ;
- le nombre de nombres passe de $n$ à $n - 1$ : il **diminue de $1$** lui aussi.

Donc la différence
$$S - n$$
ne change jamais : c'est notre invariant.

**Le calcul.**

Au départ, il y a $n = 20$ nombres, et leur somme vaut
$$S = 1 + 2 + \cdots + 20 = \frac{20 \times 21}{2} = 210 .$$
Donc
$$S - n = 210 - 20 = 190 .$$

À la fin, il ne reste qu'un seul nombre, appelons-le $r$. On a alors $n = 1$ et $S = r$, d'où
$$r - 1 = 190 .$$

**Conclusion.** Le dernier nombre est $r = \boxed{191}$, et il ne dépend pas des choix faits en
cours de route.

*Vérification sur un petit cas :* avec $1, 2, 3$ on a $S - n = 6 - 3 = 3$, donc le résultat
final doit être $4$. Essayons : $1$ et $2$ donnent $2$, il reste $2$ et $3$, qui donnent $4$. ✓
Et dans l'autre ordre : $2$ et $3$ donnent $4$, il reste $1$ et $4$, qui donnent $4$. ✓

## Going further

Même question si l'on remplace $a$ et $b$ par $a + b + ab$.

Cette fois, l'invariant est le **produit** $(a_1 + 1)(a_2 + 1)\cdots(a_n + 1)$. En effet,
$$(a + b + ab) + 1 = (a+1)(b+1) .$$
Au départ ce produit vaut $2 \times 3 \times \cdots \times 21 = 21!$, et à la fin il vaut
$r + 1$. Le dernier nombre est donc $21! - 1$.
