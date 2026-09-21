---
id: "7069"
title: "Un long trou sans nombre premier"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, factorielle, nombres composes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, matin (Vincent Jugé), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $n$ un entier naturel non nul.

Montrer qu'il existe un nombre premier $p$ tel que les $n$ entiers
$$p+1, \quad p+2, \quad \ldots, \quad p+n$$
soient **tous composés** (c'est-à-dire : aucun n'est premier).

Autrement dit : il existe des trous arbitrairement longs entre deux nombres premiers
consécutifs.

## Hints

1. Commence par construire $n$ entiers consécutifs tous composés, sans te soucier du nombre
   premier $p$.
2. Pour cela, pense aux factorielles. Le nombre $N! + k$ est-il divisible par quelque chose,
   quand $2 \leq k \leq N$ ?
3. $N! + k$ est divisible par $k$, car $k$ divise $N!$ dès que $k \leq N$.
4. Tu obtiens une plage de nombres composés. Où placer $p$ pour qu'il soit juste avant elle ?
5. Prends pour $p$ le **plus grand** nombre premier inférieur ou égal à un entier bien choisi.

## Solution

**Étape 1 : une longue plage de nombres composés.**

Posons $N = n + 2$ et considérons les $n+1$ entiers consécutifs
$$N! + 2, \quad N! + 3, \quad \ldots, \quad N! + (n+2) .$$

Soit $k$ un entier avec $2 \leq k \leq n+2 = N$. Alors $k$ divise $N!$, puisque $k$ est l'un
des facteurs du produit $1 \times 2 \times \cdots \times N$. Donc $k$ divise $N! + k$.

De plus $N! + k > k > 1$, donc $N! + k$ admet un diviseur strictement compris entre $1$ et
lui-même : il est **composé**.

Tous les entiers de $N!+2$ à $N!+(n+2)$ sont donc composés.

**Étape 2 : choisir le nombre premier.**

Soit $p$ **le plus grand nombre premier inférieur ou égal à $N! + 1$**. Un tel $p$ existe :
il y a bien des nombres premiers $\leq N! + 1$, par exemple $2$, et il n'y en a qu'un nombre
fini dans cet intervalle.

Montrons que $p+1, \ldots, p+n$ sont tous composés. Soit $j$ avec $1 \leq j \leq n$, et
posons $q = p + j$.

- **Si $q \leq N! + 1$**, alors $p < q \leq N!+1$. Or $p$ est le plus grand nombre premier
  $\leq N!+1$ : aucun entier $q$ vérifiant $p < q \leq N!+1$ n'est donc premier. Et comme
  $q \geq 3$, il est composé.
- **$q$ n'est pas premier si $q \geq N! + 2$.** Il faut vérifier que $q$ reste dans la plage
  construite à l'étape 1, c'est-à-dire que $q \leq N! + (n+2)$. Or
  $$q = p + j \leq (N! + 1) + n = N! + n + 1 < N! + (n + 2) . \ \checkmark$$
  Donc $q$ est l'un des nombres composés de l'étape 1.

Dans les deux cas, $q$ est composé. Les $n$ entiers $p+1, \ldots, p+n$ sont donc tous
composés. $\blacksquare$

## Going further

Le résultat dit que les nombres premiers, qui sont en nombre infini, peuvent malgré tout être
séparés par des déserts aussi longs qu'on veut.

La construction est très peu économique. Pour $n = 5$, elle fabrique une plage à partir de
$7! = 5040$, alors qu'en réalité il suffit de regarder entre $23$ et $29$ : les cinq nombres
$24, 25, 26, 27, 28$ sont composés. La démonstration ne cherche pas le plus petit trou, elle
prouve seulement qu'il en existe un.

Une question bien plus difficile est la réciproque : **les nombres premiers peuvent-ils être
aussi proches qu'on veut ?** On conjecture qu'il y a une infinité de couples $(p, p+2)$ de
nombres premiers jumeaux, comme $(11, 13)$ ou $(101, 103)$. Personne ne sait le démontrer.
