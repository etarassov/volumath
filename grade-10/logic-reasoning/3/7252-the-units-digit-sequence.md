---
id: "7252"
title: "La suite des chiffres des unités finit par tourner en rond"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [tiroirs, suite, periodicite, recurrence]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 14"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

On se donne deux chiffres $u_0$ et $u_1$, chacun compris entre $0$ et $9$. Puis, pour tout entier
$n \geqslant 0$, on définit $u_{n+2}$ comme le **chiffre des unités** de $u_{n+1} + u_n$.

Par exemple, en partant de $u_0 = 2$ et $u_1 = 6$, on obtient
$$2,\ 6,\ 8,\ 4,\ 2,\ 6,\ 8,\ 4,\ \ldots$$

Montrer que, quels que soient $u_0$ et $u_1$, la suite est **périodique** : il existe un entier
$T \geqslant 1$ tel que $u_{n+T} = u_n$ pour tout $n$.

## Hints

1. Essaie avec $u_0 = 6$ et $u_1 = 3$ : écris une vingtaine de termes.
2. Remarque essentielle : pour connaître toute la suite à partir du rang $n$, de quoi as-tu
   besoin ? D'un seul terme, ou de deux ?
3. Combien y a-t-il de couples $(u_n, u_{n+1})$ possibles ?
4. Si deux couples sont égaux, disons $(u_i, u_{i+1}) = (u_j, u_{j+1})$, que se passe-t-il
   ensuite ? Et **avant** ?

## Solution

**L'état de la suite.**

Appelons **état au rang $n$** le couple
$$E_n = (u_n,\ u_{n+1}) .$$

Deux remarques essentielles.

*L'état détermine la suite.* Si l'on connaît $E_n$, on connaît $u_{n+2}$ (c'est le chiffre des
unités de $u_{n+1} + u_n$), donc $E_{n+1}$, donc de proche en proche tous les termes suivants.

*L'état détermine aussi le passé.* Si l'on connaît $E_{n+1} = (u_{n+1}, u_{n+2})$, on retrouve
$u_n$ : c'est le chiffre des unités de $u_{n+2} - u_{n+1}$. En effet, $u_{n+2}$ est le chiffre des
unités de $u_n + u_{n+1}$, donc $u_{n+2} - u_{n+1} - u_n$ est un multiple de $10$, et comme $u_n$
est un chiffre, il est déterminé sans ambiguïté.

**Le principe des tiroirs.**

Chacun des deux termes d'un état est un chiffre, donc il y a au plus
$$10 \times 10 = 100$$
états possibles.

Considérons les $101$ états $E_0, E_1, \ldots, E_{100}$. Comme $101 > 100$, deux d'entre eux sont
égaux : il existe $i < j$ avec
$$E_i = E_j .$$

Posons $T = j - i \geqslant 1$.

**La périodicité à partir du rang $i$.**

Comme $E_i = E_{i+T}$ et que l'état détermine toute la suite à venir, on a
$$u_{n+T} = u_n \qquad \text{pour tout } n \geqslant i .$$

**La périodicité dès le début.**

Il reste à remonter jusqu'au rang $0$. Supposons $i \geqslant 1$ et montrons que
$E_{i-1} = E_{i+T-1}$.

Nous savons que $E_i = E_{i+T}$. D'après la seconde remarque, l'état au rang $i$ détermine le
terme précédent, donc
$$u_{i-1} = u_{i+T-1} ,$$
et comme par ailleurs $u_i = u_{i+T}$, on a bien $E_{i-1} = E_{i+T-1}$.

En répétant ce raisonnement $i$ fois, on descend jusqu'à $E_0 = E_T$, et donc
$$u_{n+T} = u_n \qquad \text{pour tout } n \geqslant 0 .$$

**La suite est donc périodique, de période $T \leqslant 100$.**

## Going further

Cette suite est la **suite de Fibonacci modulo 10** lorsque $u_0 = 0$ et $u_1 = 1$. Sa période
vaut alors exactement $60$ : les chiffres des unités des nombres de Fibonacci se répètent tous
les soixante termes.

La période d'une suite de Fibonacci modulo $m$ s'appelle la **période de Pisano** de $m$. Elle
vaut $3$ pour $m = 2$, $8$ pour $m = 3$, $6$ pour $m = 4$, $20$ pour $m = 5$ et $60$ pour
$m = 10$.

Remarquons pour finir que sans le second argument, celui qui permet de remonter le temps, on
obtiendrait seulement une suite périodique **à partir d'un certain rang**, ce qui est plus faible.
