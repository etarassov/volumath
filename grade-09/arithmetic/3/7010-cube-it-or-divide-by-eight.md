---
id: "7010"
title: "Mettre au cube ou diviser par 8"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [puissances-de-deux, invariant, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On part du nombre $2$. À chaque étape, on a le droit de faire l'une des deux opérations
suivantes sur le nombre écrit :

- l'élever au **cube** ;
- le **diviser par $8$**.

1. Peut-on atteindre le nombre $64$ ?
2. Peut-on atteindre le nombre $2^{2011}$ ?

## Hints

1. Tous les nombres qu'on obtient sont des puissances de $2$. Écris chacun d'eux sous la
   forme $2^k$ et suis seulement l'exposant $k$.
2. Que devient l'exposant quand on élève au cube ? Quand on divise par $8$ ?
3. Les deux opérations agissent sur l'exposant de deux façons très différentes. Y a-t-il
   quelque chose que ni l'une ni l'autre ne change ?

## Solution

**Ne suivre que l'exposant.**

Partant de $2 = 2^1$, tous les nombres obtenus sont des puissances de $2$. Écrivons le nombre
courant $2^k$ et suivons seulement l'exposant $k$ :

- élever au cube : $(2^k)^3 = 2^{3k}$, donc $k$ devient $3k$ ;
- diviser par $8$ : $2^k \div 2^3 = 2^{k-3}$, donc $k$ devient $k - 3$.

On part de $k = 1$.

**1. Oui, on peut atteindre $64$.**

$64 = 2^6$, il faut donc amener l'exposant à $6$. Voici un chemin :
$$1 \ \xrightarrow{\ \times 3\ } \ 3 \ \xrightarrow{\ \times 3\ } \ 9 \ \xrightarrow{\ -3\ } \ 6 .$$

Autrement dit : $2 \to 2^3 = 8 \to 8^3 = 512 \to 512 \div 8 = 64$. ✓

**2. Non, on ne peut pas atteindre $2^{2011}$.**

Regardons l'exposant **modulo $3$**, c'est-à-dire son reste dans la division par $3$.

- L'opération $k \mapsto 3k$ donne un multiple de $3$.
- L'opération $k \mapsto k - 3$ ne change pas le reste modulo $3$.

Au départ $k = 1$, qui n'est pas un multiple de $3$. Mais dès qu'on utilise le cube, on obtient
un multiple de $3$, et ensuite les soustractions de $3$ conservent cette propriété : **une fois
qu'on est sur un multiple de $3$, on y reste.**

Précisément, les exposants atteignables sont :

- soit $1$ lui-même, et les nombres $1 - 3n$ obtenus en ne faisant que des divisions (mais
  $2^{-2}$, $2^{-5}$, … ne sont plus des entiers) ;
- soit, dès le premier cube, des **multiples de $3$**.

Or $2011 = 3 \times 670 + 1$ n'est pas un multiple de $3$, et $2011 \neq 1$. Il n'est donc pas
atteignable.

**Conclusion.** On peut obtenir $64$, mais jamais $2^{2011}$.

## Going further

Quels sont exactement les entiers $2^k$ que l'on peut atteindre en restant toujours sur des
entiers ? Les exposants accessibles sont $1$ et les multiples de $3$ strictement positifs
(pour atteindre $3m$, on écrit $3m = 3^j - 3n$ avec $3^j$ assez grand, puis on cube $j$ fois
avant de diviser $n$ fois).
