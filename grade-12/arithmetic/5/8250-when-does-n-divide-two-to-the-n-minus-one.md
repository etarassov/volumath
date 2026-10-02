---
id: "8250"
title: "Quand n divise-t-il 2ⁿ − 1 ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [divisibilite, congruences, petit-theoreme-de-fermat, plus-petit-facteur-premier, ordre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « TD d'arithmétique » (Éva Philippe, Rémi Lesbats), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les entiers $n \ge 1$ tels que

$$n \ \text{divise} \ 2^n - 1 .$$

## Hints

1. Commence par essayer $n = 1, 2, 3, \ldots, 10$. Tu vas vite soupçonner la réponse ; toute la
   difficulté est de la **démontrer**.
2. Suppose $n > 1$ et regarde la parité de $n$.
3. Ne raisonne pas sur $n$ tout entier, mais sur son **plus petit facteur premier** $p$. C'est
   le grand classique de ce type d'exercice.
4. Introduis le plus petit entier $d > 0$ tel que $2^d \equiv 1 \pmod p$. Montre d'abord que si
   $2^k \equiv 1 \pmod p$, alors $d$ divise $k$ (division euclidienne de $k$ par $d$).
5. Tu obtiendras que $d$ divise $n$ et que $d$ divise $p-1$. Pourquoi est-ce impossible si
   $d > 1$ ?

## Solution

**Réponse : le seul entier qui convient est $n = 1$.**

**$n = 1$ convient.** En effet $2^1 - 1 = 1$, et $1$ divise $1$.

Montrons qu'aucun $n > 1$ ne convient. Raisonnons par l'absurde : supposons $n > 1$ et
$n \mid 2^n - 1$.

**Étape 1 : $n$ est impair.**

Le nombre $2^n - 1$ est impair, puisque $2^n$ est pair. Un diviseur d'un nombre impair est
impair, donc **$n$ est impair**.

**Étape 2 : on introduit le plus petit facteur premier.**

Comme $n > 1$, l'entier $n$ possède au moins un facteur premier. Notons $p$ **le plus petit**
d'entre eux. Comme $n$ est impair, $p$ est impair, donc $p \ge 3$. En particulier $p$ ne divise
pas $2$.

Puisque $p$ divise $n$ et que $n$ divise $2^n - 1$, on a

$$2^n \equiv 1 \pmod p .$$

Par ailleurs, le petit théorème de Fermat s'applique ($p$ premier, $p \nmid 2$) :

$$2^{\,p-1} \equiv 1 \pmod p .$$

**Étape 3 : le plus petit exposant qui marche.**

Considérons l'ensemble des entiers $k > 0$ tels que $2^k \equiv 1 \pmod p$. Il n'est pas vide,
puisqu'il contient $n$ et $p-1$. Notons $d$ son plus petit élément.

*Affirmation : si $2^k \equiv 1 \pmod p$, alors $d$ divise $k$.*

En effet, écrivons la division euclidienne $k = dq + s$ avec $0 \le s < d$. Alors

$$2^k = \left(2^d\right)^q \times 2^s \equiv 1^q \times 2^s = 2^s \pmod p .$$

Donc $2^s \equiv 2^k \equiv 1 \pmod p$. Si $s$ était strictement positif, ce serait un entier
plus petit que $d$ dans notre ensemble, ce qui contredit le choix de $d$. Donc $s = 0$, et $d$
divise $k$. L'affirmation est démontrée.

En l'appliquant à $k = n$ puis à $k = p-1$, on obtient

$$d \mid n \qquad \text{et} \qquad d \mid p-1 .$$

**Étape 4 : la contradiction.**

Supposons $d > 1$. Alors $d$ a un facteur premier $\ell$. Comme $\ell$ divise $d$ et que $d$
divise $n$, l'entier $\ell$ est un facteur premier de $n$, donc $\ell \ge p$ par le choix de $p$.

Mais $d$ divise $p-1$, donc $d \le p-1 < p$, et $\ell \le d < p$. On aurait $\ell \ge p$ et
$\ell < p$ : c'est impossible.

Donc $d = 1$, c'est-à-dire $2^1 \equiv 1 \pmod p$, autrement dit $p$ divise $2 - 1 = 1$. Un
nombre premier ne divise pas $1$ : contradiction.

**Conclusion.**

Aucun entier $n > 1$ ne divise $2^n - 1$. Le seul entier qui convient est

$$\boxed{n = 1} .$$

**Les premiers cas, pour se convaincre.**

| $n$ | $2^n - 1$ | $n$ divise-t-il ? |
|---|---|---|
| $1$ | $1$ | oui |
| $2$ | $3$ | non |
| $3$ | $7$ | non |
| $4$ | $15$ | non |
| $5$ | $31$ | non |
| $6$ | $63$ | non |
| $7$ | $127$ | non |

## Going further

1. L'entier $d$ de l'étape 3 s'appelle l'**ordre de $2$ modulo $p$**. Calculer l'ordre de $2$
   modulo $7$, modulo $11$, modulo $13$.
2. Le raisonnement se recopie-t-il pour $3^n - 1$ ? Vérifier d'abord que $n = 2$ divise
   $3^2 - 1 = 8$, puis repérer l'étape exacte qui tombe en panne. (Indication : relire
   l'étape 1.)
3. Et si on cherche les $n$ tels que $n$ divise $2^n + 1$ ? Cette fois $n = 3$ convient
   ($3$ divise $9$). Trouver un autre $n$ qui convient.
