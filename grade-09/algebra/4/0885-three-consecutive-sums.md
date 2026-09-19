---
id: "0885"
title: "Trois sommes qui se suivent"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [entiers consecutifs, systeme, parite, calcul litteral]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 17, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers tels que $a+b$, $b+c$ et $c+a$ soient, dans un certain ordre, trois entiers consécutifs.

Montrer qu'alors $a$, $b$ et $c$ sont eux aussi, dans un certain ordre, trois entiers consécutifs.

## Hints

1. Ne cherche pas à savoir laquelle des trois sommes est la plus petite. Appelle-les simplement $n$, $n+1$ et $n+2$, dans un ordre inconnu.
2. Additionne les trois sommes. Que reconnais-tu dans le résultat ?
3. Tu obtiens $2(a+b+c) = 3n+3$. Comme $a+b+c$ est un entier, qu'est-ce que cela impose à $n$ ?
4. Une fois $a+b+c$ connu, comment retrouver $a$ tout seul, si l'on connaît déjà $b+c$ ?

## Solution

**L'idée : additionner les trois sommes, puis les retrancher une par une.**

**Étape 1. On nomme les trois sommes.** Par hypothèse, les trois nombres $a+b$, $b+c$ et $c+a$ sont, dans un certain ordre, $n$, $n+1$ et $n+2$, où $n$ est un entier. Peu importe lequel est lequel : ce qui suit n'en dépendra pas.

**Étape 2. On additionne.** D'un côté,
$$(a+b) + (b+c) + (c+a) = 2a + 2b + 2c = 2(a+b+c).$$
De l'autre,
$$n + (n+1) + (n+2) = 3n + 3.$$
Donc
$$2(a+b+c) = 3n+3 = 3(n+1).$$

**Étape 3. $n$ est impair.** Le membre de gauche est pair. Donc $3(n+1)$ est pair. Comme $3$ est impair, c'est $n+1$ qui doit être pair. Écrivons $n + 1 = 2m$ avec $m$ entier, c'est-à-dire
$$n = 2m - 1.$$
L'égalité de l'étape 2 devient $2(a+b+c) = 3 \times 2m$, donc
$$a + b + c = 3m.$$

**Étape 4. On retrouve $a$, $b$ et $c$.** Chacun des trois nombres s'obtient en retranchant à la somme totale la somme des deux autres :
$$a = (a+b+c) - (b+c), \qquad b = (a+b+c) - (c+a), \qquad c = (a+b+c) - (a+b).$$

Or les trois nombres $b+c$, $c+a$ et $a+b$ sont, dans un certain ordre,
$$n = 2m-1, \qquad n+1 = 2m, \qquad n+2 = 2m+1.$$

Donc $a$, $b$ et $c$ sont, dans un certain ordre,
$$3m - (2m-1) = m+1, \qquad 3m - 2m = m, \qquad 3m - (2m+1) = m-1.$$

**Conclusion : $a$, $b$ et $c$ sont, dans un certain ordre, les trois entiers consécutifs $m-1$, $m$ et $m+1$.**

*Un exemple pour fixer les idées.* Avec $m = 3$, les nombres sont $2$, $3$, $4$ et leurs sommes deux à deux valent $5$, $6$ et $7$ : trois entiers consécutifs, comme annoncé. À l'inverse, si les trois sommes valaient $4$, $5$, $6$, l'étape 3 montrerait que c'est impossible : leur somme $15$ n'est pas paire.

## Going further

L'étape 3 mérite d'être retenue : **la somme des trois sommes deux à deux vaut toujours le double de la somme des trois nombres**, donc elle est paire. Trois entiers consécutifs ont pour somme $3n+3$, et cette quantité n'est paire que si $n$ est impair. Autrement dit, les trois sommes deux à deux ne peuvent jamais être $4, 5, 6$ ni $6, 7, 8$ : elles doivent commencer sur un entier impair.
