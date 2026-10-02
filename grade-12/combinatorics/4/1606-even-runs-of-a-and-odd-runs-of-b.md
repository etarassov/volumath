---
id: "1606"
title: "Des A par paquets pairs, des B par paquets impairs"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, suite-recurrente, mots, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 2"
  reference: "Handout-2015-1715.pdf, problème 6 (AIME I 2008, problème 11)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2015-1715.pdf"
---

## Statement

On s'intéresse aux mots écrits uniquement avec les lettres **A** et **B** qui vérifient les
deux règles suivantes :

- chaque bloc de **A** consécutifs a une longueur **paire** ;
- chaque bloc de **B** consécutifs a une longueur **impaire**.

Un « bloc » est une suite maximale de lettres identiques : dans le mot `AABAA`, il y a trois
blocs, `AA`, `B` et `AA`.

Ainsi `AA`, `B` et `AABAA` sont des mots autorisés, alors que `BBAB` ne l'est pas (le bloc
`BB` a une longueur paire, et le bloc `A` une longueur impaire).

Combien y a-t-il de tels mots de longueur $14$ ?

## Hints

1. Compte d'abord à la main les mots autorisés de longueur $1$, $2$, $3$ et $4$. Tu devrais trouver $1$, $1$, $3$ et $2$.
2. Un dénombrement direct est sans espoir. Sépare les mots selon leur **dernière lettre** : note $a_n$ le nombre de mots autorisés de longueur $n$ se terminant par A, et $b_n$ ceux se terminant par B.
3. Prends un mot autorisé de longueur $n$ se terminant par A. Son dernier bloc de A a une longueur paire, donc au moins $2$. Efface les deux dernières lettres : que devient le mot ?
4. Tu obtiens $a_n = a_{n-2} + b_{n-2}$ : soit le dernier bloc de A avait exactement deux lettres et il disparaît, soit il en avait au moins quatre et il en reste. Trouve de la même façon une relation pour $b_n$ — attention, elle ne fait pas intervenir les mêmes indices.

## Solution

**L'idée : on ne dénombre pas ces mots directement, on les construit de proche en proche en
suivant la dernière lettre.**

**Étape 1. Deux suites.**

Pour $n \ge 1$, posons

- $a_n$ = nombre de mots autorisés de longueur $n$ se terminant par **A** ;
- $b_n$ = nombre de mots autorisés de longueur $n$ se terminant par **B**.

Le nombre cherché est $a_{14} + b_{14}$.

**Valeurs de départ.** Pour $n = 1$ : le mot `A` est interdit (bloc de A de longueur $1$,
impaire) et le mot `B` est autorisé, donc $a_1 = 0$ et $b_1 = 1$. Pour $n = 2$ : `AA` est
autorisé, `BB` non (bloc de B pair), `AB` et `BA` non plus (ils contiennent un bloc de A de
longueur $1$). Donc $a_2 = 1$ et $b_2 = 0$.

**Étape 2. La relation pour $a_n$.**

Soit $n \ge 3$ et soit un mot autorisé de longueur $n$ se terminant par A. Son dernier bloc
de A est de longueur paire, donc de longueur au moins $2$. Effaçons les deux dernières
lettres, qui sont deux A.

- Si ce bloc avait exactement deux lettres, il disparaît complètement : il reste un mot
  autorisé de longueur $n-2$ qui se termine par B (ou le mot vide, si $n = 2$).
- S'il en avait au moins quatre, il en reste un nombre pair non nul : on obtient un mot
  autorisé de longueur $n-2$ se terminant par A.

Réciproquement, ajouter `AA` à la fin d'un mot autorisé de longueur $n-2$ donne toujours un
mot autorisé de longueur $n$ se terminant par A, et ces deux opérations sont inverses l'une
de l'autre. Donc
$$a_n = a_{n-2} + b_{n-2} \qquad (n \ge 3).$$

**Étape 3. La relation pour $b_n$.**

Même travail avec un mot autorisé de longueur $n$ se terminant par B. Son dernier bloc de B
est de longueur impaire.

- S'il est de longueur exactement $1$, on efface cette unique lettre et il reste un mot
  autorisé de longueur $n-1$ se terminant par **A** (ou le mot vide).
- S'il est de longueur au moins $3$, on efface deux B et il reste un mot autorisé de longueur
  $n-2$ se terminant par **B**.

Donc
$$b_n = a_{n-1} + b_{n-2} \qquad (n \ge 3).$$

(Avec la convention naturelle $a_0 = b_0 = 1$ pour le mot vide, on retrouve bien
$a_2 = b_0 = 1$ et $b_1 = a_0 = 1$.)

**Étape 4. Le calcul.**

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $a_n$ | 0 | 1 | 1 | 1 | 3 | 2 | 6 | 6 | 11 | 16 | 22 | 37 | 49 | 80 |
| $b_n$ | 1 | 0 | 2 | 1 | 3 | 4 | 5 | 10 | 11 | 21 | 27 | 43 | 64 | 92 |

Par exemple $a_5 = a_3 + b_3 = 1 + 2 = 3$ et $b_5 = a_4 + b_3 = 1 + 2 = 3$.

**Conclusion.**

$$a_{14} + b_{14} = 80 + 92 = 172 .$$

Il y a **$172$** mots de longueur $14$ vérifiant les deux règles.

**Contrôle sur les petites longueurs.** Pour $n = 3$, la formule donne $a_3 + b_3 = 1 + 2 = 3$,
et l'on retrouve bien à la main les trois mots `BAA`, `AAB` et `BBB`. Pour $n = 4$ :
$a_4 + b_4 = 1 + 1 = 2$, soit `AAAA` et `BAAB`.

## Going further

La même méthode permet de traiter n'importe quelle longueur. Un programme de quelques lignes
qui énumère les $2^{14} = 16\,384$ mots de longueur $14$ confirme le résultat $172$ ; mais
pour une longueur de $60$ lettres, l'énumération serait hors de portée alors que le tableau
ci-dessus se prolonge en quelques secondes.
