---
id: "8276"
title: "Une suite dont les PGCD sont ceux des indices"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [pgcd, suites, divisibilite, substitution-astucieuse, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 35 (niveau 1). La Muraille ne publie pas de solutions. L'énoncé imprimé dit « pour tous i, j » ; pris au pied de la lettre, le cas i = j rend l'exercice trivial, l'énoncé est donc restitué ici avec i ≠ j."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $(a_n)_{n \ge 1}$ une suite d'entiers strictement positifs telle que, pour tous entiers
$i \ge 1$ et $j \ge 1$ **distincts**,

$$\mathrm{PGCD}(a_i, a_j) = \mathrm{PGCD}(i, j) .$$

Montrer que $a_i = i$ pour tout $i \ge 1$.

*Pourquoi « distincts ».* Si on autorisait $i = j$, l'égalité s'écrirait $a_i = i$ tout de
suite, puisque le PGCD d'un nombre avec lui-même est ce nombre. L'exercice n'aurait plus
d'intérêt.

## Hints

1. L'hypothèse est valable pour **tous** les couples d'indices distincts, y compris des couples
   très bien choisis. C'est toute la difficulté : deviner lesquels.
2. Commence par le couple $(i, 2i)$. Que vaut $\mathrm{PGCD}(i, 2i)$ ? Qu'en déduis-tu sur
   $a_i$ ?
3. Tu obtiens que $i$ divise $a_i$, pour tout $i$. Comme c'est vrai pour tout indice, tu peux
   aussi l'appliquer à l'indice $a_i$ lui-même.
4. Raisonne par l'absurde : suppose $a_i \ne i$, et prends alors le couple $(i, a_i)$, qui est
   bien un couple d'indices distincts.

## Solution

**Étape 1 : $i$ divise $a_i$.**

Soit $i \ge 1$. Les indices $i$ et $2i$ sont distincts, donc l'hypothèse s'applique :

$$\mathrm{PGCD}\left(a_i,\ a_{2i}\right) = \mathrm{PGCD}(i, 2i) = i .$$

Or le PGCD de deux nombres divise chacun d'eux. En particulier $i$ divise $a_i$.

Ceci vaut pour **tout** indice. Retenons la forme générale :

$$(\star) \qquad k \ \text{divise} \ a_k \quad \text{pour tout } k \ge 1 .$$

**Étape 2 : la substitution astucieuse.**

Fixons $i$ et supposons, par l'absurde, que $a_i \ne i$.

Comme $a_i$ est un entier strictement positif, c'est un indice légitime, et $(i, a_i)$ est un
couple d'indices **distincts** : l'hypothèse s'applique.

$$\mathrm{PGCD}\left(a_i,\ a_{a_i}\right) = \mathrm{PGCD}\left(i,\ a_i\right) .$$

Calculons les deux membres séparément.

*Membre de droite.* D'après l'étape 1, $i$ divise $a_i$, donc $\mathrm{PGCD}(i, a_i) = i$.

*Membre de gauche.* Appliquons $(\star)$ à l'indice $k = a_i$ : l'entier $a_i$ divise
$a_{a_i}$. Donc $\mathrm{PGCD}\left(a_i,\ a_{a_i}\right) = a_i$.

**La contradiction.**

L'égalité des deux membres donne $a_i = i$, contrairement à ce qu'on avait supposé.

L'hypothèse $a_i \ne i$ est donc absurde, et $a_i = i$. Comme $i$ était quelconque :

**Réciproquement**, la suite $a_i = i$ convient, puisque l'hypothèse s'écrit alors
$\mathrm{PGCD}(i,j) = \mathrm{PGCD}(i,j)$.

$$\boxed{\text{La seule suite possible est } a_i = i .}$$

## Going further

1. Où a-t-on utilisé que les termes de la suite sont **strictement positifs** ? Qu'est-ce qui
   casserait si l'on autorisait la valeur $0$ ?
2. La seule chose vraiment utilisée est l'hypothèse aux couples $(i, 2i)$, $(a_i, 2a_i)$ et
   $(i, a_i)$. Peut-on se contenter de l'hypothèse pour les couples $(i, j)$ avec $j$ multiple
   de $i$ ?
3. Dérouler la preuve dans le cas $i = 1$ : si $a_1 \ne 1$, alors
   $\mathrm{PGCD}\left(a_1, a_{a_1}\right) = \mathrm{PGCD}(1, a_1) = 1$, alors que $a_1$ divise
   $a_{a_1}$. Où est exactement la contradiction ?
