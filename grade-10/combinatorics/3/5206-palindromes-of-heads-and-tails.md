---
id: "5206"
title: "Des palindromes de pile et de face"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, palindrome, puissances-de-deux, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problème 6 (d'après un State Math Contest)"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

On lance une pièce plusieurs fois de suite et on note le résultat sous forme de mot, avec la lettre $P$ pour pile et la lettre $F$ pour face.

Un tel mot est un **palindrome** s'il se lit de la même façon de gauche à droite et de droite à gauche. Par exemple $PFP$, $PFFP$, $PFPFP$ et $PFPPFP$ sont des palindromes, de longueurs respectives $3$, $4$, $5$ et $6$.

On note $N(n)$ le nombre de palindromes de longueur $n$ écrits avec les lettres $P$ et $F$.

1. Calculer $N(1)$, $N(2)$, $N(3)$ et $N(4)$.
2. Donner une formule pour $N(n)$.
3. Pour combien de valeurs de $n$ a-t-on $1000 < N(n) < 10\,000$ ?

## Hints

1. Un palindrome est entièrement déterminé par sa **première moitié** : le reste s'en déduit en lisant à l'envers.
2. Traitez séparément le cas où $n$ est pair et celui où $n$ est impair. Quand $n$ est impair, il y a une lettre au milieu, qui est libre.
3. Vous devriez trouver $N(n) = 2^{n/2}$ si $n$ est pair, et $N(n) = 2^{(n+1)/2}$ si $n$ est impair.
4. Pour la dernière question, repérez d'abord les puissances de $2$ comprises strictement entre $1000$ et $10\,000$. Ensuite, comptez pour chacune combien de longueurs $n$ la produisent.

## Solution

### 1. Les premières valeurs

- $n = 1$ : les deux mots $P$ et $F$ sont des palindromes, donc $N(1) = 2$.
- $n = 2$ : il faut les deux lettres égales, d'où $PP$ et $FF$ : $N(2) = 2$.
- $n = 3$ : la première et la troisième lettre sont égales ($2$ choix), la lettre du milieu est libre ($2$ choix) : $N(3) = 4$.
- $n = 4$ : le mot s'écrit $xyyx$, avec $x$ et $y$ libres : $N(4) = 4$.

### 2. La formule

Notons le mot $\ell_1 \ell_2 \ldots \ell_n$. Être un palindrome signifie

$$\ell_1 = \ell_n, \quad \ell_2 = \ell_{n-1}, \quad \ell_3 = \ell_{n-2}, \quad \ldots$$

Les lettres se regroupent donc en paires imposées, sauf la lettre centrale lorsque $n$ est impair.

**Si $n$ est pair**, disons $n = 2k$, il y a $k$ paires. Choisir le palindrome, c'est choisir librement les $k$ premières lettres, et les $k$ dernières s'en déduisent. Donc

$$N(n) = 2^{k} = 2^{n/2} .$$

**Si $n$ est impair**, disons $n = 2k+1$, il y a $k$ paires et une lettre centrale libre. On choisit librement les $k+1$ premières lettres :

$$N(n) = 2^{k+1} = 2^{(n+1)/2} .$$

Dans les deux cas, en notant $m$ le nombre de lettres libres, on a $N(n) = 2^m$ où $m$ est le plus petit entier supérieur ou égal à $n/2$.

Contrôle : $N(1) = 2^1 = 2$, $N(2) = 2^1 = 2$, $N(3) = 2^2 = 4$, $N(4) = 2^2 = 4$. C'est bien ce qu'on a trouvé.

### 3. Les valeurs de $n$ demandées

$N(n)$ est toujours une puissance de $2$. Cherchons celles qui sont strictement comprises entre $1000$ et $10\,000$ :

$$2^9 = 512, \quad 2^{10} = 1024, \quad 2^{11} = 2048, \quad 2^{12} = 4096, \quad 2^{13} = 8192, \quad 2^{14} = 16\,384 .$$

Seules $2^{10}$, $2^{11}$, $2^{12}$ et $2^{13}$ conviennent, c'est-à-dire $m \in \{10, 11, 12, 13\}$.

Or, d'après la question 2, deux longueurs consécutives donnent le même $m$ : $m = 10$ pour $n = 19$ et $n = 20$, $m = 11$ pour $n = 21$ et $n = 22$, $m = 12$ pour $n = 23$ et $n = 24$, $m = 13$ pour $n = 25$ et $n = 26$.

Il y a donc

$$4 \times 2 = \boxed{8}$$

valeurs de $n$ qui conviennent, à savoir $n = 19, 20, 21, 22, 23, 24, 25, 26$.
