---
id: "12060"
title: "Choisir des entiers jusqu'à 2014 sans différence égale à 17"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [principe des tiroirs, differences, blocs, majoration, exemple extremal, entiers]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour la JBMO 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice J1 ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice J1 ; le corrigé fait commencer les huit dernières paires à 2009 au lieu de 2007, ce qui ne couvre pas 2007 et 2008, le décompte 59 × 17 + 8 = 1011 reste juste ; réponse vérifiée par ordinateur"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

On veut choisir le plus possible d'entiers parmi $1, 2, 3, \ldots, 2014$, de sorte que la différence entre deux quelconques des entiers choisis ne soit jamais égale à $17$.

Combien d'entiers peut-on choisir au maximum ?

## Hints

1. Commencez par une question plus petite : parmi $1, 2, \ldots, 34$, combien d'entiers peut-on choisir au plus ? Regroupez ces nombres par paires de la forme $\{a, a + 17\}$.
2. Dans une paire $\{a, a + 17\}$, combien d'entiers peut-on choisir au plus ?
3. Découpez $1, 2, \ldots, 2014$ en blocs de $34$ nombres consécutifs. Calculez $2014 = 34 \times 59 + 8$. Que faire des $8$ derniers nombres ?
4. Pour la construction, prenez la première moitié de chaque bloc.

## Solution

Nous allons montrer que le maximum est $1011$.

**Étape 1 : une paire $\{a, a + 17\}$ contient au plus un entier choisi.** En effet, la différence de ses deux éléments vaut $17$. Si les deux étaient choisis, on aurait deux entiers choisis dont la différence vaut $17$.

**Étape 2 : on ne peut pas choisir plus de $1011$ entiers.** On a $34 \times 59 = 2006$, donc $2014 = 34 \times 59 + 8$. Découpons les entiers de $1$ à $2014$ ainsi :

- $59$ blocs de $34$ entiers consécutifs : de $1$ à $34$, de $35$ à $68$, et ainsi de suite jusqu'au bloc de $1973$ à $2006$ ;
- les $8$ derniers entiers, de $2007$ à $2014$.

Un bloc qui commence en $b$ est formé des entiers $b, b + 1, \ldots, b + 33$. On le découpe en $17$ paires :

$$\{b, b + 17\}, \quad \{b + 1, b + 18\}, \quad \ldots, \quad \{b + 16, b + 33\} .$$

D'après l'étape 1, chaque paire contient au plus un entier choisi. Un bloc contient donc au plus $17$ entiers choisis. Les $8$ derniers entiers en contiennent évidemment au plus $8$. Au total, on a choisi au plus

$$59 \times 17 + 8 = 1003 + 8 = 1011$$

entiers.

**Étape 3 : on peut choisir $1011$ entiers.** Choisissons la première moitié de chaque bloc, c'est-à-dire les entiers de $1$ à $17$, de $35$ à $51$, et ainsi de suite jusqu'à ceux de $1973$ à $1989$, et aussi les $8$ entiers de $2007$ à $2014$. Cela fait bien $59 \times 17 + 8 = 1011$ entiers.

Vérifions qu'aucune différence ne vaut $17$. Prenons un entier choisi $x$ et regardons $x + 17$.

- Si $x$ est dans la première moitié d'un bloc qui commence en $b$, alors $b \leqslant x \leqslant b + 16$, donc $b + 17 \leqslant x + 17 \leqslant b + 33$ : le nombre $x + 17$ est dans la seconde moitié du même bloc, et il n'est pas choisi.
- Si $x$ est entre $2007$ et $2014$, alors $x + 17 > 2014$, et $x + 17$ n'est pas choisi.

Si deux entiers choisis avaient une différence égale à $17$, le plus petit, $x$, aurait $x + 17$ choisi, ce qui vient d'être exclu.

**Conclusion.** On peut choisir au maximum $1011$ entiers.

## Going further

1. Reprendre la question avec les entiers de $1$ à $2025$.
2. Une autre méthode : ranger les entiers de $1$ à $2014$ selon leur reste dans la division par $17$. Dans chaque famille, les nombres forment une chaîne $r, r + 17, r + 34, \ldots$ dans laquelle on ne peut pas choisir deux voisins. Retrouver ainsi la réponse $1011$.
