---
id: "0283"
title: "Combien de participants au congrès ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [division-euclidienne, restes, ppcm, multiples]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 5, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Un congrès a déménagé dans une nouvelle salle.

Dans la nouvelle salle, si l'on installe les participants par trois autour de chaque table, il reste un participant sans place. Si on les installe par quatre, il en reste deux sans place. Si on les installe par cinq, il en reste trois sans place.

Dans l'ancienne salle, les participants s'installaient par sept autour de chaque table, et personne ne restait sans place.

Quel est le plus petit nombre possible de participants au congrès ?

## Hints

1. Notez $n$ le nombre de participants et traduisez chacun des quatre renseignements par une division euclidienne.
2. Dans les trois premiers cas, combien de personnes manque-t-il pour que la dernière table soit complète ? La réponse est la même dans les trois cas.
3. Regardez le nombre $n + 2$ : que peut-on dire de sa divisibilité par $3$, par $4$ et par $5$ ?
4. Un nombre divisible à la fois par $3$, par $4$ et par $5$ est divisible par leur PPCM. Combien vaut ce PPCM ?
5. On sait donc que $n = 60q - 2$. Il ne reste plus qu'à essayer $q = 1$, puis $q = 2$, etc., jusqu'à tomber sur un multiple de $7$.

## Solution

**Mise en équations.**

Notons $n$ le nombre de participants. L'énoncé donne quatre renseignements :

$$n = 3k + 1, \qquad n = 4m + 2, \qquad n = 5p + 3, \qquad n = 7r,$$

où $k$, $m$, $p$, $r$ sont des entiers naturels.

**L'idée : compter ce qui manque, et non ce qui reste.**

Regardons les trois premières lignes autrement.

- Par tables de $3$, il reste $1$ personne : il en manque donc $2$ pour compléter une table de plus.
- Par tables de $4$, il reste $2$ personnes : il en manque encore $2$.
- Par tables de $5$, il reste $3$ personnes : il en manque toujours $2$.

C'est le même « il manque $2$ » dans les trois cas. Cela invite à regarder le nombre $n + 2$ :

$$n + 2 = 3k + 3 = 3(k+1), \qquad n + 2 = 4m + 4 = 4(m+1), \qquad n + 2 = 5p + 5 = 5(p+1).$$

Donc $n + 2$ est divisible par $3$, par $4$ et par $5$.

**Utiliser le PPCM.**

Un nombre divisible par $3$, par $4$ et par $5$ est divisible par leur PPCM. Comme $3$, $4$ et $5$ n'ont pas de facteur commun deux à deux,

$$\mathrm{PPCM}(3, 4, 5) = 3 \times 4 \times 5 = 60.$$

Donc $n + 2$ est un multiple de $60$, c'est-à-dire

$$n = 60q - 2 \quad \text{pour un certain entier } q \geqslant 1.$$

**La dernière condition : être divisible par 7.**

Il reste à trouver le plus petit $q$ pour lequel $60q - 2$ est un multiple de $7$. Essayons :

| $q$ | $n = 60q - 2$ | division par $7$ |
|---|---|---|
| $1$ | $58$ | $58 = 7 \times 8 + 2$ |
| $2$ | $118$ | $118 = 7 \times 16 + 6$ |
| $3$ | $178$ | $178 = 7 \times 25 + 3$ |
| $4$ | $238$ | $238 = 7 \times 34$ |

On s'arrête à $q = 4$ : le nombre $238$ est bien un multiple de $7$.

**Vérification.**

- $238 = 3 \times 79 + 1$ : par trois, il reste bien $1$ personne.
- $238 = 4 \times 59 + 2$ : par quatre, il reste bien $2$ personnes.
- $238 = 5 \times 47 + 3$ : par cinq, il reste bien $3$ personnes.
- $238 = 7 \times 34$ : par sept, personne ne reste.

**Conclusion.** Le plus petit nombre possible de participants est $238$.

## Going further

1. Quels sont **tous** les nombres de participants possibles, et pas seulement le plus petit ?
2. Reprenez le problème en remplaçant la dernière condition par : dans l'ancienne salle, les participants s'installaient par sept et il en restait un sans place. Quel est alors le plus petit nombre possible ?
3. Pourquoi le raisonnement aurait-il été plus délicat si les tables avaient contenu $3$, $4$ et $6$ personnes ?
