---
id: "0578"
title: "La pile de carrés"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [comptage-double, divisibilite, construction, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 1 «Подсчёт двумя способами», задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

On dispose d'un grand nombre de carrés de papier identiques. Sur chaque carré, on écrit les nombres $1$, $2$, $3$ et $4$ dans les quatre coins, dans un ordre quelconque : l'ordre peut changer d'un carré à l'autre.

On empile ensuite tous ces carrés les uns sur les autres, bords bien alignés. La pile a quatre coins. Pour chacun de ces quatre coins, on additionne tous les nombres écrits dans ce coin.

Est-il possible que :

a) les quatre sommes soient toutes égales à $2014$ ?

b) les quatre sommes soient toutes égales à $2015$ ?

## Hints

1. Additionne tous les nombres écrits sur tous les carrés. Peux-tu calculer ce total de deux façons différentes ?
2. Sur un carré, les quatre nombres font $1 + 2 + 3 + 4$. Si la pile contient $N$ carrés, combien font tous les nombres de la pile ?
3. L'autre façon de compter : additionne les quatre sommes des coins. Que doit valoir le total dans le cas a) ? dans le cas b) ?
4. Dans le cas a), compare le total obtenu avec les multiples de $10$.
5. Dans le cas b), le total ne pose pas de problème. Mais cela ne suffit pas : il faut **montrer** un empilement qui marche. Remarque que $1 + 4 = 2 + 3 = 5$, et essaie de poser deux carrés l'un sur l'autre pour obtenir $5$ dans chaque coin.

## Solution

**L'idée : compter de deux façons la somme de tous les nombres de la pile.**

Appelons $N$ le nombre de carrés de la pile.

**Première façon.** Sur chaque carré sont écrits les nombres $1$, $2$, $3$ et $4$, dont la somme vaut
$$1 + 2 + 3 + 4 = 10$$
Comme il y a $N$ carrés, la somme de tous les nombres de la pile vaut $10N$. C'est donc un multiple de $10$.

**Deuxième façon.** Chaque nombre écrit se trouve dans un des quatre coins de la pile, et dans un seul. Donc la somme de tous les nombres est aussi égale à la somme des quatre sommes des coins.

**a) Les quatre sommes valent 2014.**

Avec la deuxième façon de compter, la somme de tous les nombres vaudrait
$$2014 \times 4 = 8056$$

Avec la première façon, cette même somme vaut $10N$, donc elle se termine par le chiffre $0$. Or $8056$ se termine par $6$ : ce n'est pas un multiple de $10$.

Les deux façons de compter donnent des résultats incompatibles. **C'est donc impossible.**

**b) Les quatre sommes valent 2015.**

Cette fois la somme de tous les nombres vaudrait
$$2015 \times 4 = 8060 = 10 \times 806$$

Il n'y a plus de contradiction : il faudrait $N = 806$ carrés. Mais attention, cela ne prouve pas encore que c'est possible ! Il reste peut-être un autre obstacle. Pour être sûrs, construisons un empilement qui convient.

Servons-nous de $1 + 4 = 5$ et $2 + 3 = 5$. Numérotons les coins d'un carré dans l'ordre : en haut à gauche, en haut à droite, en bas à droite, en bas à gauche.

- Posons un premier carré portant, dans cet ordre, $1$, $2$, $3$, $4$.
- Posons dessus un second carré portant, dans le même ordre, $4$, $3$, $2$, $1$.

Coin par coin, cette paire de carrés donne
$$1 + 4 = 5, \qquad 2 + 3 = 5, \qquad 3 + 2 = 5, \qquad 4 + 1 = 5$$
c'est-à-dire $5$ dans chacun des quatre coins.

Il suffit maintenant d'empiler plusieurs paires identiques à celle-là. Avec $k$ paires, chaque coin fait $5k$. Comme
$$2015 = 5 \times 403$$
on prend $403$ paires, soit $806$ carrés en tout. Chaque coin de la pile fait alors $2015$. **C'est donc possible.**

**Conclusion.**

a) Non, les quatre sommes ne peuvent pas valoir $2014$.
b) Oui, c'est possible, par exemple avec $806$ carrés empilés par paires comme ci-dessus.

## Going further

1. Pour quelles valeurs de $s$ les quatre sommes des coins peuvent-elles toutes valoir $s$ ?
2. On prend maintenant des triangles équilatéraux portant $1$, $2$, $3$ dans leurs coins, et on les empile de la même façon. Les trois sommes des coins peuvent-elles toutes valoir $55$ ?
