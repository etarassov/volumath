---
id: "8138"
title: "Un nombre premier écrit uniquement avec des 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres-premiers, factorisation, ecriture-decimale, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe B"
  reference: "stage_ete_2018.pdf, Groupe B, « Combinatoire – Récurrence », exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Pour un entier $n \geq 1$, on note $R_n$ le nombre qui s'écrit avec exactement $n$ chiffres, tous égaux à $1$ :

$$R_1 = 1, \qquad R_2 = 11, \qquad R_3 = 111, \qquad R_4 = 1111, \qquad \ldots$$

Montrer que si $R_n$ est un nombre premier, alors $n$ est un nombre premier.

## Hints

1. Il est plus facile de démontrer la contraposée : si $n$ n'est pas premier, alors $R_n$ n'est pas premier.
2. Commence par un exemple. $6$ n'est pas premier : peux-tu factoriser $111111$ ? Essaie de le voir comme $111 \times \text{quelque chose}$, puis comme $11 \times \text{quelque chose}$.
3. Dans le cas général, écris $n = ab$ avec $1 < a < n$ et $1 < b < n$, et essaie de faire apparaître $R_a$ comme facteur de $R_n$.
4. Une écriture utile : $R_n = \dfrac{10^n - 1}{9}$. Et $10^a - 1$ divise $10^{ab} - 1$, grâce à la factorisation de $x^b - 1$.

## Solution

**Deux écritures de $R_n$.**

D'abord,

$$R_n = \underbrace{11\cdots1}_{n \text{ chiffres}} = 1 + 10 + 10^2 + \cdots + 10^{n-1} = \frac{10^n - 1}{9}.$$

(La dernière égalité vient de la somme d'une suite géométrique, ou de la factorisation $10^n - 1 = 9 \times (1 + 10 + \cdots + 10^{n-1})$.)

**L'exemple à garder en tête.**

Prenons $n = 6$, qui n'est pas premier. Alors

$$111111 = 111 \times 1001 = 11 \times 10101.$$

Le motif $111$ se répète deux fois, ce qui fait apparaître le facteur $1001$ ; le motif $11$ se répète trois fois, ce qui fait apparaître $10101$. C'est cette idée qu'on généralise.

**La contraposée.**

Supposons que $n$ ne soit pas premier et montrons que $R_n$ ne l'est pas non plus.

*Le cas $n = 1$.* Alors $R_1 = 1$, qui n'est pas un nombre premier. C'est réglé.

*Le cas $n$ composé.* Il existe alors des entiers $a$ et $b$ avec

$$n = ab, \qquad 1 < a < n, \qquad 1 < b < n.$$

La factorisation $x^b - 1 = (x-1)(x^{b-1} + \cdots + x + 1)$, appliquée à $x = 10^a$, donne

$$10^n - 1 = (10^a)^b - 1 = (10^a - 1) \times \left((10^a)^{b-1} + \cdots + 10^a + 1\right).$$

Divisons les deux membres par $9$ :

$$R_n = \frac{10^n-1}{9} = \frac{10^a - 1}{9} \times \left((10^a)^{b-1} + \cdots + 10^a + 1\right) = R_a \times K,$$

où $K = (10^a)^{b-1} + \cdots + 10^a + 1$ est un entier.

**Les deux facteurs sont strictement compris entre $1$ et $R_n$.**

- Comme $a \geq 2$, on a $R_a \geq 11 > 1$.
- Comme $a < n$, on a $R_a < R_n$ (il a strictement moins de chiffres).
- Donc $K = \dfrac{R_n}{R_a}$ vérifie aussi $1 < K < R_n$.

Ainsi $R_n$ possède un diviseur autre que $1$ et lui-même : **$R_n$ n'est pas premier.**

**Conclusion.**

Par contraposée : si $R_n$ est premier, alors $n$ est premier.

## Going further

La réciproque est fausse. Le nombre $n = 5$ est premier, mais

$$R_5 = 11111 = 41 \times 271$$

ne l'est pas. Les seuls $n$ connus pour lesquels $R_n$ est premier sont $2$, $19$, $23$, $317$, $1031$, puis quelques valeurs bien plus grandes — et l'on ne sait toujours pas s'il y en a une infinité.
