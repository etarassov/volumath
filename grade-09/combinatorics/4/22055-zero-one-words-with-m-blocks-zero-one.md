---
id: "22055"
title: "Des suites de 0 et de 1 avec m blocs « 01 »"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, bijection, mots, coefficients-binomiaux]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Dénombrement », exercice 16 (l'énoncé de la source parle de « nombres de n chiffres », mais son corrigé compte aussi les suites qui commencent par 0, comme 0010111 ; l'énoncé ci-dessous parle donc de suites de chiffres)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On écrit des suites de $n$ chiffres, chacun égal à $0$ ou à $1$. Le premier chiffre peut être un $0$. Un **bloc « 01 »** est un $0$ immédiatement suivi d'un $1$. Par exemple, la suite $0011$ contient un seul bloc « 01 », et la suite $0010111$ (avec $n = 7$) en contient deux.

Soient $n \geq 1$ et $m \geq 0$ deux entiers. Combien y a-t-il de suites de $n$ chiffres qui contiennent **exactement $m$ blocs « 01 »** ?

## Hints

1. Faites la liste pour $n = 3$ : combien de suites ont $0$ bloc « 01 », combien en ont $1$ ?
2. Entre deux chiffres voisins, notez s'ils sont égaux ou différents. Un changement est soit un « 01 », soit un « 10 ». Que peut-on dire de l'ordre dans lequel ces deux sortes de changements se succèdent ?
3. Ajoutez un $1$ au début de la suite et un $0$ à la fin. Combien la nouvelle suite a-t-elle de changements ? Cette nouvelle suite permet-elle de retrouver l'ancienne ?

## Solution

**Un outil : choisir $k$ objets parmi $N$.** On note $\binom{N}{k}$ le nombre de façons de choisir $k$ objets parmi $N$ objets différents, sans tenir compte de l'ordre. Pour le calculer, on choisit d'abord les $k$ objets un par un, dans l'ordre : il y a $N$ choix pour le premier, $N - 1$ pour le deuxième, et ainsi de suite, soit $N \times (N-1) \times \cdots \times (N - k + 1)$ façons. Chaque groupe de $k$ objets a été obtenu $k \times (k-1) \times \cdots \times 1$ fois, une fois pour chaque ordre possible de ses objets. Donc
$$\binom{N}{k} = \frac{N \times (N-1) \times \cdots \times (N - k + 1)}{k \times (k-1) \times \cdots \times 1}.$$
Par exemple, $\binom{4}{1} = 4$ et $\binom{4}{3} = \frac{4 \times 3 \times 2}{3 \times 2 \times 1} = 4$. Si $k > N$, il n'y a aucune façon de choisir, et $\binom{N}{k} = 0$.

**Étape 1 : on regarde les changements.** Dans une suite de chiffres $0$ et $1$, on appelle **changement** deux chiffres voisins différents. Un changement est soit un bloc « 01 », soit un bloc « 10 ». Quand on lit la suite de gauche à droite, ces deux sortes de changements **alternent** : après un « 01 », on est sur un $1$, donc le changement suivant ne peut être qu'un « 10 », et inversement.

Le nombre de blocs « 10 » n'est donc pas fixé par le nombre de blocs « 01 » : il dépend du premier et du dernier chiffre. Par exemple, $01$, $010$ et $101$ ont toutes un seul bloc « 01 », mais respectivement $0$, $1$ et $1$ blocs « 10 ».

**Étape 2 : l'astuce.** À une suite $X$ de $n$ chiffres, on associe la suite $Y$ de $n + 2$ chiffres obtenue en ajoutant un $1$ au début et un $0$ à la fin. Par exemple, $X = 0010111$ donne $Y = 100101110$.

- *$Y$ a autant de blocs « 01 » que $X$.* Les deux chiffres ajoutés ne créent que des voisins de la forme « 1 puis quelque chose » au début et « quelque chose puis 0 » à la fin, donc jamais un nouveau « 01 ».
- *$Y$ a exactement $2m + 1$ changements si $X$ a $m$ blocs « 01 ».* La suite $Y$ commence par $1$ et finit par $0$, et ses changements alternent. Le premier changement est donc un « 10 », le dernier aussi, et il y a un « 10 » de plus que de « 01 » : $m + 1$ blocs « 10 », donc $m + (m + 1) = 2m + 1$ changements.

**Étape 3 : une suite revient à choisir des places.** La suite $Y$ a $n + 2$ chiffres, donc $n + 1$ places entre deux chiffres voisins. On note les places où il y a un changement.

- *Les places des changements suffisent à retrouver $X$.* On connaît le premier chiffre de $Y$, qui est $1$. En lisant de gauche à droite, chaque chiffre est égal au précédent, sauf aux places de changement, où il est différent. On retrouve donc $Y$, puis $X$ en enlevant le premier et le dernier chiffre.
- *Inversement, tout choix de $2m + 1$ places parmi les $n + 1$ convient.* On construit la suite qui commence par $1$ et qui change exactement à ces places. Après un nombre impair de changements, elle finit par $0$. C'est donc bien la suite $Y$ associée à une suite $X$ de $n$ chiffres, et d'après l'étape 2, cette suite $X$ a exactement $m$ blocs « 01 ».

Dans l'exemple, $X = 0010111$ a $m = 2$ blocs « 01 », et $Y = 100101110$ change aux places $1$, $3$, $4$, $5$ et $8$ : il y a bien $5 = 2 \times 2 + 1$ changements.

**Conclusion.** Choisir une suite de $n$ chiffres avec exactement $m$ blocs « 01 » revient à choisir $2m + 1$ places parmi $n + 1$. Il y a donc
$$\binom{n+1}{2m+1}$$
telles suites. Par exemple, pour $n = 3$ : $\binom{4}{1} = 4$ suites sans bloc « 01 » ($000$, $100$, $110$, $111$) et $\binom{4}{3} = 4$ suites avec un bloc ($001$, $010$, $011$, $101$). On retrouve bien les $8$ suites.

## Going further

1. Combien y a-t-il de **nombres** de $n$ chiffres, écrits seulement avec des $0$ et des $1$ (donc commençant par $1$), qui contiennent exactement $m$ blocs « 01 » ? Adaptez l'astuce.
2. En additionnant les réponses pour toutes les valeurs de $m$, que trouve-t-on ? En déduire que $\binom{N}{1} + \binom{N}{3} + \binom{N}{5} + \cdots = 2^{N-1}$.
