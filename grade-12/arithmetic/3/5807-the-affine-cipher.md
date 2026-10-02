---
id: "5807"
title: "Le chiffrement affine"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [congruences, bezout, inverse-modulaire, cryptographie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Codes, Ciphers, and Secrets (Anne M. Ho)"
  reference: "mtc-codes-ciphers-1.pdf, section 2 « Affine Ciphers and Linear Functions » (handout sans solutions)"
  url: "https://mathcircles.org/activity/codes-ciphers-and-secrets/"
  original_language: "en"
  local_copy: "sources/originals/namc/mtc-codes-ciphers-1.pdf"
---

## Statement

On numérote les lettres de l'alphabet de $0$ à $25$ :

| a | b | c | d | e | f | g | h | i | j | k | l | m |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |

| n | o | p | q | r | s | t | u | v | w | x | y | z |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 |

Un **chiffrement affine** de paramètres $m$ et $b$ remplace la lettre de numéro $x$ par la lettre
de numéro $y$, où $y$ est l'unique entier de $\{0, 1, \ldots, 25\}$ tel que
$$y \equiv m x + b \pmod{26}.$$

On prend d'abord $m = 3$ et $b = 7$.

1. Chiffrer le mot `code`.
2. Montrer que le déchiffrement est donné par $x \equiv 9y + 15 \pmod{26}$, puis déchiffrer le
   mot `rhmcj`.
3. Le paramètre $b = 7$ étant fixé, déterminer toutes les valeurs de $m$ dans
   $\{1, 2, \ldots, 25\}$ pour lesquelles le chiffrement est déchiffrable, c'est-à-dire pour
   lesquelles deux lettres distinctes ne sont jamais chiffrées par la même lettre.
4. Combien y a-t-il de chiffrements affines utilisables en tout ?

## Hints

1. Pour déchiffrer, il s'agit de résoudre $y \equiv 3x + 7 \pmod{26}$ d'inconnue $x$. Le seul
   obstacle est le $3$ : il faudrait pouvoir « diviser par $3$ » modulo $26$.
2. Cherche un entier $u$ tel que $3u \equiv 1 \pmod{26}$. Un petit calcul suffit, ou l'algorithme
   d'Euclide sur $3$ et $26$.
3. Pour la question 3, traite d'abord le cas où $m$ et $26$ sont premiers entre eux : le théorème
   de Bézout donne directement l'inverse de $m$ modulo $26$.
4. Pour l'autre cas, pose $d = \mathrm{PGCD}(m, 26)$ avec $d > 1$, et regarde ce que devient le
   nombre $\dfrac{26}{d}$ quand on le chiffre. Compare avec $0$.

## Solution

**1. Chiffrer `code`.**

Les numéros sont $c = 2$, $o = 14$, $d = 3$, $e = 4$. On calcule $3x + 7$ modulo $26$ :

$$3 \times 2 + 7 = 13, \qquad 3 \times 14 + 7 = 49 \equiv 23, \qquad 3 \times 3 + 7 = 16, \qquad 3 \times 4 + 7 = 19 .$$

Les numéros $13$, $23$, $16$, $19$ correspondent aux lettres `n`, `x`, `q`, `t`. Le mot chiffré
est donc `nxqt`.

**2. Le déchiffrement.**

On cherche l'inverse de $3$ modulo $26$. Comme $3 \times 9 = 27 = 26 + 1$, on a
$$3 \times 9 \equiv 1 \pmod{26}.$$

Partons de $y \equiv 3x + 7 \pmod{26}$. En multipliant les deux membres par $9$ :
$$9y \equiv 27x + 63 \equiv x + 63 \pmod{26},$$
car $27 \equiv 1 \pmod{26}$. Donc
$$x \equiv 9y - 63 \pmod{26}.$$
Enfin $-63 + 78 = 15$, et $78 = 3 \times 26$, donc $-63 \equiv 15 \pmod{26}$ et
$$\boxed{x \equiv 9y + 15 \pmod{26}}.$$

Réciproquement, si $x \equiv 9y + 15$ alors $3x + 7 \equiv 27y + 45 + 7 \equiv y + 52 \equiv y$,
donc les deux formules se répondent bien : c'est le déchiffrement.

Déchiffrons `rhmcj`, de numéros $17$, $7$, $12$, $2$, $9$ :

$$9 \times 17 + 15 = 168 \equiv 12, \quad 9 \times 7 + 15 = 78 \equiv 0, \quad 9 \times 12 + 15 = 123 \equiv 19,$$
$$9 \times 2 + 15 = 33 \equiv 7, \quad 9 \times 9 + 15 = 96 \equiv 18 .$$

Les numéros $12$, $0$, $19$, $7$, $18$ donnent `maths`.

**3. Les paramètres $m$ acceptables.**

*Premier cas : $m$ et $26$ sont premiers entre eux.* Le théorème de Bézout fournit deux entiers
$u$ et $v$ tels que $mu + 26v = 1$, c'est-à-dire $mu \equiv 1 \pmod{26}$. Si deux lettres de
numéros $x$ et $x'$ ont la même image, alors
$$mx + 7 \equiv mx' + 7 \pmod{26}, \quad \text{donc} \quad m(x - x') \equiv 0 \pmod{26}.$$
En multipliant par $u$ : $x - x' \equiv 0 \pmod{26}$, et comme $x$ et $x'$ sont entre $0$ et
$25$, cela force $x = x'$. Le chiffrement est injectif sur les $26$ numéros, donc déchiffrable,
et la formule $x \equiv u(y - 7)$ le déchiffre.

*Second cas : $d = \mathrm{PGCD}(m, 26) > 1$.* Posons $k = \dfrac{26}{d}$. Alors $k$ est un
entier strictement compris entre $0$ et $26$, et
$$mk = m \times \frac{26}{d} = \frac{m}{d} \times 26 \equiv 0 \pmod{26},$$
puisque $\dfrac{m}{d}$ est un entier. Les numéros $0$ et $k$ sont donc chiffrés de la même façon,
tous les deux en $7$. Le chiffrement n'est pas déchiffrable.

Conclusion : le chiffrement marche exactement quand $\mathrm{PGCD}(m, 26) = 1$. Comme
$26 = 2 \times 13$, cela exclut les $m$ pairs et le seul multiple impair de $13$, à savoir $13$.
Les valeurs acceptables sont
$$m \in \{1, 3, 5, 7, 9, 11, 15, 17, 19, 21, 23, 25\},$$
soit $12$ valeurs, ce qui est bien $\varphi(26) = \varphi(2)\,\varphi(13) = 1 \times 12 = 12$.

**4. Le nombre de chiffrements affines.**

Le paramètre $b$ est libre parmi les $26$ valeurs de $0$ à $25$, et $m$ parmi les $12$ valeurs
ci-dessus. Il y a donc
$$12 \times 26 = 312$$
chiffrements affines utilisables. En retirant les $26$ cas $m = 1$, qui sont les simples
décalages de César, il en reste $286$ qui font vraiment plus que décaler l'alphabet.

## Going further

$312$ clés, c'est très peu : un ordinateur les essaie toutes instantanément, et même à la main
on y arrive en une soirée. Pire, un chiffrement affine ne déguise pas les fréquences des lettres,
puisque chaque lettre est toujours remplacée par la même : compter les lettres du message chiffré
suffit souvent à retrouver le `e`, et deux lettres identifiées donnent un système de deux
congruences qui livre $m$ et $b$.

Cherche $m$ et $b$ sachant que `e` se chiffre en `d` et `s` en `v`, puis déchiffre un message de
ton choix.
