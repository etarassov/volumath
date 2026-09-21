---
id: "8337"
title: "Bob efface trois nombres à la fois"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [invariant, congruences, parite, strategie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, entraînement du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, entraînement de fin de parcours, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Les nombres de $1$ à $n$ sont écrits au tableau. Bob peut répéter l'opération suivante autant de
fois qu'il le souhaite :

> il choisit trois nombres $a$, $b$, $c$ écrits au tableau, à trois emplacements différents, tels que $3$ divise $a + 2b$ **et** que $3$ divise $a - c$ ; il les efface tous les trois, et il écrit à la place le nombre $a + b + c$.

Les trois nombres effacés peuvent porter la même valeur : seul compte le fait qu'il s'agisse de trois nombres écrits au tableau.

Peut-il arriver à n'avoir plus qu'un seul nombre écrit au tableau dans les cas suivants ?

1. $n = 28$
2. $n = 27$
3. $n = 29$

*Exemple.* Si $1$, $1$ et $7$ sont écrits, Bob peut les effacer et écrire $1+1+7 = 9$, car
$1 + 2 \times 1 = 3$ et $1 - 7 = -6$ sont divisibles par $3$. En revanche il ne peut pas effacer
$1$, $2$ et $1$ pris dans cet ordre, car $1 + 2 \times 2 = 5$ n'est pas divisible par $3$.

## Hints

1. Commence par simplifier la condition. Remarque que $a + 2b = (a - b) + 3b$. Que dit alors « $3$ divise $a + 2b$ » ?
2. La condition revient donc à : $a$, $b$ et $c$ sont **congrus entre eux modulo $3$**.
3. Que peut-on dire du nombre $a+b+c$ quand $a \equiv b \equiv c \pmod 3$ ?
4. Pour $n = 28$, oublie les congruences et compte simplement combien de nombres il y a au tableau à chaque étape.
5. Pour $n = 29$, compte les nombres congrus à $1$ modulo $3$, et ceux congrus à $2$. Comment ces deux compteurs évoluent-ils ?
6. Pour $n = 27$, il n'y a rien de mieux à faire que de décrire explicitement la suite des opérations.

## Solution

**On simplifie la condition.**

Comme $a + 2b = (a - b) + 3b$, le nombre $a+2b$ est divisible par $3$ si et seulement si $a - b$
l'est. La condition de l'énoncé s'écrit donc simplement :

$$a \equiv b \equiv c \pmod 3 .$$

**Ce que devient le nombre écrit.**

Si $a \equiv b \equiv c \equiv r \pmod 3$, alors

$$a + b + c \equiv 3r \equiv 0 \pmod 3 .$$

Autrement dit, **le nombre écrit après une opération est toujours divisible par $3$.**

**1) Le cas $n = 28$ : impossible.**

Chaque opération efface trois nombres et en écrit un : le nombre de nombres au tableau **diminue
de $2$** à chaque fois.

Au départ il y a $28$ nombres, un nombre pair. Après chaque opération il reste un nombre pair de
nombres. Or $1$ est impair : Bob ne pourra jamais n'avoir qu'un seul nombre au tableau.

**2) Le cas $n = 29$ : impossible.**

Ici $29$ est impair, donc l'argument de parité ne dit rien. Utilisons les congruences.

Parmi $1, 2, \ldots, 29$, les nombres congrus à $1$ modulo $3$ sont $1, 4, 7, \ldots, 28$ : il y
en a $10$. De même, les nombres congrus à $2$ modulo $3$ sont $2, 5, \ldots, 29$ : il y en a
$10$ aussi.

Notons $u$ le nombre d'entiers congrus à $1$ modulo $3$ écrits au tableau. Une opération porte
sur trois nombres de même classe modulo $3$, et produit un nombre divisible par $3$. Donc :

- si les trois effacés sont congrus à $1$, alors $u$ diminue de $3$ ;
- sinon, $u$ ne change pas (le nombre écrit n'est jamais congru à $1$).

Donc $u$ garde la même valeur modulo $3$ tout au long du jeu. Comme au départ $u = 10 \equiv 1
\pmod 3$, on aura toujours $u \equiv 1 \pmod 3$, donc **toujours $u \geqslant 1$** : il reste en
permanence au moins un nombre congru à $1$ modulo $3$.

Le même raisonnement, appliqué au nombre $v$ d'entiers congrus à $2$ modulo $3$, donne
$v \equiv 10 \equiv 1 \pmod 3$, donc toujours $v \geqslant 1$.

Il y a donc à chaque instant au moins deux nombres au tableau : un dans chaque classe. Bob ne
peut pas descendre à un seul nombre.

**3) Le cas $n = 27$ : c'est possible.**

Parmi $1, 2, \ldots, 27$ :

- $9$ nombres sont divisibles par $3$ : $3, 6, \ldots, 27$ ;
- $9$ nombres sont congrus à $1$ modulo $3$ : $1, 4, \ldots, 25$ ;
- $9$ nombres sont congrus à $2$ modulo $3$ : $2, 5, \ldots, 26$.

*Première vague.* Groupons les $9$ nombres congrus à $1$ en trois paquets de trois. Chaque paquet
est autorisé, puisque les trois nombres y sont congrus entre eux modulo $3$. Chaque opération
produit un multiple de $3$. Faisons de même avec les $9$ nombres congrus à $2$.

Après ces $6$ opérations, tous les nombres écrits sont divisibles par $3$, et il y en a

$$9 + 3 + 3 = 15 .$$

*Seconde vague.* Tous ces $15$ nombres sont congrus entre eux modulo $3$, puisqu'ils sont tous
congrus à $0$. N'importe quels trois d'entre eux peuvent donc être effacés, et le nombre écrit
est encore un multiple de $3$.

On peut donc continuer librement : chaque opération fait passer de $15$ à $13$, puis $11$, $9$,
$7$, $5$, $3$, et enfin $1$ nombre. Cela fait $7$ opérations de plus.

Bob termine donc avec un seul nombre au tableau.

**Conclusion.**

| $n$ | possible ? |
|---|---|
| $28$ | non, pour une raison de parité du nombre de nombres |
| $27$ | oui |
| $29$ | non, car il reste toujours un nombre dans chaque classe non nulle modulo $3$ |

## Going further

Ce problème illustre deux invariants de nature très différente qui cohabitent : l'un est un
simple compte de parité, l'autre une congruence sur un effectif. Aucun des deux ne suffit seul,
puisque le premier ne dit rien pour $n$ impair et que le second ne dit rien pour $n = 27$.

Que se passe-t-il pour $n = 30$ ? Et pour $n = 31$ ? Essaie de deviner une règle générale en
fonction de $n$ modulo $6$ et de $n$ modulo $9$.
