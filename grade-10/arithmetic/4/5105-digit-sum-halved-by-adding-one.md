---
id: "5105"
title: "Quand la somme des chiffres est divisée par deux"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-des-chiffres, congruences, retenues, neufs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 3(g)"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Pour un entier naturel $n$, on note $S(n)$ la somme des chiffres de $n$.

1. Trouver un entier $n$ tel que $S(n) = 2\,S(n+1)$.
2. Montrer qu'il n'existe **aucun** entier $n$ tel que $S(n) = 4\,S(n+1)$.

## Hints

1. Pour la question 1 : si $n$ ne se termine pas par un $9$, alors $S(n+1) = S(n) + 1$, et la somme des chiffres ne peut pas chuter. Il faut donc des $9$ à la fin.
2. Essaie un nombre qui se termine par un seul $9$ : combien de chiffres $9$ disparaissent en passant à $n+1$, et que gagne-t-on à côté ?
3. Pour la question 2, on ne peut pas essayer tous les nombres. Regarde les restes modulo $9$.
4. Quel est le reste de $S(n+1) - S(n)$ dans la division par $9$ ? Attention, la réponse ne dépend pas de $n$.
5. Un multiple de $3$ ne peut avoir pour reste modulo $9$ que $0$, $3$ ou $6$.

## Solution

### Question 1 : un exemple

Si $n$ ne se termine pas par un $9$, alors $n+1$ s'obtient en augmentant le dernier chiffre de $1$, sans retenue, donc $S(n+1) = S(n)+1 > S(n)$. Pour que $S(n)$ soit deux fois plus grand que $S(n+1)$, il faut au contraire que la somme des chiffres **chute** en passant à $n+1$ : il faut donc des $9$ à la fin de $n$.

Prenons $n$ se terminant par un seul $9$, disons $n = 79$ :

$$S(79) = 7 + 9 = 16 \qquad \text{et} \qquad S(80) = 8 + 0 = 8$$

et bien sûr $16 = 2 \times 8$.

**Conclusion. $n = 79$ convient.**

*D'où vient ce nombre ?* Écrivons $n$ comme « un bloc $m$ suivi d'un seul $9$ », avec le dernier chiffre de $m$ différent de $9$. Alors $n+1$ est le bloc $m+1$ suivi d'un $0$, donc

$$S(n) = S(m) + 9 \qquad \text{et} \qquad S(n+1) = S(m) + 1$$

La condition $S(n) = 2\,S(n+1)$ s'écrit $S(m) + 9 = 2\,S(m) + 2$, c'est-à-dire $S(m) = 7$. Le plus simple est $m = 7$, d'où $n = 79$.

### Question 2 : aucune solution

*L'outil.* Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$ :

$$S(m) \equiv m \pmod 9$$

*La clé.* Appliquons cela à $n$ et à $n+1$ :

$$S(n+1) - S(n) \equiv (n+1) - n = 1 \pmod 9$$

Voilà le point important : quelle que soit la façon dont les retenues se propagent, **la différence $S(n+1) - S(n)$ a toujours pour reste $1$ modulo $9$.**

*On applique.* Supposons qu'il existe $n$ avec $S(n) = 4\,S(n+1)$, et posons $t = S(n+1)$, qui est un entier strictement positif. Alors

$$S(n+1) - S(n) = t - 4t = -3t$$

et cette quantité doit être congrue à $1$ modulo $9$ :

$$-3t \equiv 1 \pmod 9, \qquad \text{c'est-à-dire} \qquad 3t \equiv -1 \equiv 8 \pmod 9$$

Or $3t$ est un multiple de $3$, et son reste modulo $9$ ne peut valoir que $0$, $3$ ou $6$ :

- si $t \equiv 0 \pmod 3$, alors $3t \equiv 0 \pmod 9$ ;
- si $t \equiv 1 \pmod 3$, alors $3t \equiv 3 \pmod 9$ ;
- si $t \equiv 2 \pmod 3$, alors $3t \equiv 6 \pmod 9$.

Le reste $8$ n'apparaît jamais : contradiction.

**Conclusion. Il n'existe aucun entier $n$ tel que $S(n) = 4\,S(n+1)$.**

## Going further

On peut poser la question générale : pour quels entiers $k \geqslant 1$ existe-t-il un entier $n$ avec $S(n) = k\,S(n+1)$ ?

Le même calcul que ci-dessus donne la condition $(k-1)\,t \equiv 8 \pmod 9$ où $t = S(n+1) \geqslant 1$. Cette équation admet une solution en $t$ exactement quand $k-1$ est premier avec $9$, c'est-à-dire quand $k - 1$ n'est pas un multiple de $3$.

La réponse est donc : **c'est possible pour tout $k$ tel que $k - 1$ ne soit pas un multiple de $3$, et impossible sinon.** En particulier c'est impossible pour $k = 1$, $4$, $7$, $10$, … et possible pour tous les autres. Voici quelques exemples à vérifier :

| $k$ | $n$ | $S(n)$ | $S(n+1)$ |
|---|---|---|---|
| $2$ | $79$ | $16$ | $8$ |
| $3$ | $39$ | $12$ | $4$ |
| $5$ | $19$ | $10$ | $2$ |
| $6$ | $69\,999$ | $42$ | $7$ |
| $8$ | $49\,999$ | $40$ | $5$ |
| $9$ | $9$ | $9$ | $1$ |
