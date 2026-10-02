---
id: "7066"
title: "Si 9 divise l'un, il divise l'autre"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, combinaison-lineaire, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, matin (Vincent Jugé), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soient $n$ et $m$ deux entiers.

Montrer que $9$ divise $2n + 5m$ **si et seulement si** $9$ divise $5n + 8m$.

## Hints

1. « Si et seulement si » veut dire qu'il y a deux choses à démontrer, une dans chaque sens.
2. Quand un nombre divise deux entiers, il divise aussi toute combinaison du type
   $\alpha \times (\text{le premier}) + \beta \times (\text{le second})$, avec $\alpha$ et
   $\beta$ entiers.
3. Pars de $2n + 5m$ et cherche un multiple entier de $2n+5m$ dont on puisse retrancher un
   multiple de $9$ pour tomber sur $5n + 8m$.
4. Essaie $7 \times (2n + 5m)$. Que vaut cette expression, et à quoi la comparer ?
5. Pour l'autre sens, essaie $4 \times (5n + 8m)$.

## Solution

**Premier sens.** Supposons que $9$ divise $2n + 5m$.

Calculons
$$7 \times (2n + 5m) = 14n + 35m .$$

Retranchons un multiple de $9$ bien choisi :
$$14n + 35m - 9 \times (n + 3m) = 14n + 35m - 9n - 27m = 5n + 8m .$$

Ainsi
$$5n + 8m = 7 \times (2n + 5m) - 9 \times (n + 3m) .$$

Le premier terme est un multiple de $9$ par hypothèse, le second est manifestement un
multiple de $9$. Leur différence est donc un multiple de $9$ : **$9$ divise $5n + 8m$.**

**Second sens.** Supposons que $9$ divise $5n + 8m$.

De la même façon,
$$4 \times (5n + 8m) = 20n + 32m ,$$
et
$$20n + 32m - 9 \times (2n + 3m) = 20n + 32m - 18n - 27m = 2n + 5m .$$

Ainsi
$$2n + 5m = 4 \times (5n + 8m) - 9 \times (2n + 3m) ,$$
différence de deux multiples de $9$. Donc **$9$ divise $2n + 5m$.**

**Conclusion.** Les deux implications sont démontrées :
$$9 \mid 2n + 5m \iff 9 \mid 5n + 8m . \qquad \blacksquare$$

## Going further

D'où sortent les coefficients $7$ et $4$ ? On les cherche, on ne les devine pas.

On veut $\alpha \times (2n+5m) \equiv 5n + 8m$ modulo $9$, pour tous $n$ et $m$. En regardant
les coefficients de $n$ : il faut $2\alpha \equiv 5 \pmod 9$. Comme
$2 \times 7 = 14 = 9 + 5$, le choix $\alpha = 7$ convient. On vérifie alors les coefficients
de $m$ : $5 \times 7 = 35 = 27 + 8$, donc $35 \equiv 8 \pmod 9$, ce qui tombe juste.

Pour l'autre sens, on cherche $\beta$ avec $5\beta \equiv 2 \pmod 9$ : $5 \times 4 = 20 = 18+2$,
donc $\beta = 4$. Et $8 \times 4 = 32 = 27 + 5$, donc $32 \equiv 5 \pmod 9$. Tout colle.

Le fait que les deux vérifications tombent juste n'est pas un hasard : c'est justement ce qui
fait que l'énoncé est vrai.
