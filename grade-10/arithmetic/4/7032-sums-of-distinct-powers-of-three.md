---
id: "7032"
title: "Le centième nombre de la liste"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [base trois, base deux, bijection]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012"
  reference: "stage_junior_2012.pdf, lundi, test initial, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

On écrit dans l'ordre croissant tous les entiers supérieurs ou égaux à $1$ qui sont, soit une
puissance de $3$, soit une somme de puissances de $3$ **toutes différentes**. On obtient
$$1, \quad 3, \quad 4, \quad 9, \quad 10, \quad 12, \quad 13, \quad \ldots$$
car par exemple $4 = 3^1 + 3^0$, $10 = 3^2 + 3^0$ et $13 = 3^2 + 3^1 + 3^0$.

Quel est le centième nombre de cette liste ?

## Hints

1. Écris chacun de ces nombres en base $3$. Quels chiffres y apparaissent ?
2. Un nombre est dans la liste exactement quand son écriture en base $3$ ne contient que des
   $0$ et des $1$. Pourquoi ?
3. Les suites de $0$ et de $1$, cela ressemble à autre chose que tu connais bien. Range-les
   dans l'ordre croissant : que retrouves-tu ?
4. Écris $100$ en base $2$.

## Solution

**Étape 1 : reconnaître les nombres de la liste.**

Une somme de puissances de $3$ toutes différentes, c'est exactement un nombre dont l'écriture
en base $3$ n'utilise que les chiffres $0$ et $1$. Par exemple
$$4 = 3 + 1 = 1 \times 3^1 + 1 \times 3^0 = \overline{11}^{\,3}, \qquad
  10 = 9 + 1 = \overline{101}^{\,3}, \qquad
  13 = 9 + 3 + 1 = \overline{111}^{\,3} .$$

À l'inverse, $2 = \overline{2}^{\,3}$ ou $6 = \overline{20}^{\,3}$ utilisent le chiffre $2$ :
ils ne sont pas dans la liste, et en effet $2$ et $6$ ne sont pas des sommes de puissances de
$3$ distinctes.

**La liste est donc : tous les entiers dont l'écriture en base $3$ ne comporte que des $0$ et
des $1$.**

**Étape 2 : la correspondance avec la base 2.**

Une suite de $0$ et de $1$, c'est aussi une écriture en base $2$. Associons à chaque entier
$n$ le nombre obtenu en lisant l'écriture binaire de $n$ **comme si c'était de la base 3**.

| $n$ | $n$ écrit en base $2$ | ce mot lu en base $3$ |
|---|---|---|
| $1$ | $1$ | $1$ |
| $2$ | $10$ | $3$ |
| $3$ | $11$ | $4$ |
| $4$ | $100$ | $9$ |
| $5$ | $101$ | $10$ |
| $6$ | $110$ | $12$ |
| $7$ | $111$ | $13$ |

On retrouve exactement le début de la liste. Ce n'est pas un hasard :

- **chaque** suite finie de $0$ et de $1$ commençant par $1$ est l'écriture binaire d'un
  entier et une seule, et c'est aussi l'écriture en base $3$ d'un nombre de la liste et un
  seul ;
- cette correspondance **respecte l'ordre** : si deux suites de chiffres se comparent d'une
  certaine façon en base $2$, elles se comparent de la même façon en base $3$ (on compare
  d'abord le nombre de chiffres, puis les chiffres de gauche à droite).

Donc **le $n$-ième nombre de la liste s'obtient en écrivant $n$ en base $2$, puis en relisant
cette écriture en base $3$.**

**Étape 3 : le calcul.**

Écrivons $100$ en base $2$ :
$$100 = 64 + 32 + 4 = 2^6 + 2^5 + 2^2 = \overline{1100100}^{\,2} .$$

Relisons $1100100$ en base $3$ :
$$\overline{1100100}^{\,3} = 3^6 + 3^5 + 3^2 = 729 + 243 + 9 = 981 .$$

**Conclusion.** Le centième nombre de la liste est $\boxed{981}$.

## Going further

La même construction marche pour n'importe quelle base $b \geq 3$ : les sommes de puissances
distinctes de $b$, rangées dans l'ordre, s'obtiennent en lisant en base $b$ les écritures
binaires successives.

Pourquoi faut-il $b \geq 3$ ? Parce qu'en base $2$, **tout** entier est une somme de puissances
de $2$ distinctes : la liste serait $1, 2, 3, 4, \ldots$ tout entière.
