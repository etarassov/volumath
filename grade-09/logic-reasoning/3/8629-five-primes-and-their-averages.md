---
id: "8629"
title: "Cinq nombres premiers et leurs moyennes"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, somme, divisibilite, operation repetee]
adapted_from: null
see_also: ["8851"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Bérénice a écrit au tableau les cinq nombres

$$2, \quad 3, \quad 5, \quad 7, \quad 11 .$$

Elle s'autorise ensuite, autant de fois qu'elle le veut, l'opération suivante : choisir deux nombres du tableau **de même parité**, les effacer, et écrire à la place **deux copies de leur moyenne**.

Par exemple, elle peut effacer $3$ et $7$ et écrire deux fois $5$.

Peut-elle se débrouiller pour obtenir cinq nombres tous égaux ?

## Hints

1. Essaie deux ou trois opérations pour bien comprendre la règle. Combien de nombres y a-t-il au tableau après chaque opération ?
2. Quand on cherche à montrer qu'un objectif est **impossible**, on cherche une quantité qui ne change jamais : un invariant.
3. Regarde ce que devient la somme des cinq nombres après une opération.
4. Si Bérénice réussissait, les cinq nombres seraient égaux à un même nombre $n$. Que vaudrait alors la somme ?
5. Pourquoi le nombre $n$ serait-il forcément un entier ?

## Solution

**L'invariant : la somme.** Supposons que Bérénice efface deux nombres $a$ et $b$ de même parité, et écrive deux fois leur moyenne $m = \dfrac{a+b}{2}$. La somme des nombres du tableau perd $a + b$ et gagne

$$m + m = 2 \times \frac{a+b}{2} = a + b .$$

Elle est donc **exactement la même qu'avant**. Quelle que soit la suite d'opérations, la somme des cinq nombres du tableau ne change jamais. Elle vaut toujours

$$2 + 3 + 5 + 7 + 11 = 28 .$$

**Les nombres restent entiers.** L'opération n'est autorisée que sur deux nombres de **même parité**. Dans ce cas $a + b$ est pair, donc $m = \dfrac{a+b}{2}$ est un entier. Comme on part de cinq entiers, tous les nombres écrits au tableau restent des entiers.

**La contradiction.** Supposons que Bérénice y arrive et obtienne cinq fois le même nombre $n$, qui est donc un entier. La somme vaudrait alors

$$5n = 28 .$$

Mais $28$ n'est pas un multiple de $5$ : aucun entier $n$ ne convient.

**Conclusion.** Bérénice ne pourra jamais obtenir cinq nombres égaux.

## Going further

Remarque que l'argument n'utilise jamais le fait que les nombres de départ sont premiers. Seule la somme $28$ compte.

Si Bérénice partait de $2, 3, 5, 7, 13$, la somme vaudrait $30 = 5 \times 6$, et l'obstruction disparaîtrait. Cela ne prouve pas pour autant qu'elle réussirait : un invariant qui ne bloque pas ne garantit rien. Essaie de voir si, dans ce cas, elle peut vraiment arriver à cinq fois le nombre $6$.
