---
id: "5813"
title: "Le chiffre de César"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 25
tags: [division-euclidienne, restes, cryptographie, code-secret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Codes, Ciphers, and Secrets (Anne M. Ho)"
  reference: "mtc-codes-ciphers-1.pdf, section 1 « Shift (Caesar) Ciphers » (handout sans solutions)"
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

Jules César, dit-on, chiffrait ses messages en décalant les lettres dans l'alphabet. Chiffrer
avec le **décalage $k$**, où $k$ est un entier compris entre $0$ et $25$, consiste à remplacer la
lettre de numéro $x$ par la lettre dont le numéro est **le reste de la division de $x + k$ par
$26$**. Ainsi le décalage tourne en rond : après le `z` on revient au `a`.

1. Chiffrer le mot `maths` avec le décalage $5$.
2. On chiffre un message avec le décalage $9$, puis on chiffre le résultat avec le décalage $4$.
   Montrer que cela revient à chiffrer une seule fois, et dire avec quel décalage.
3. Plus généralement, montrer que chiffrer avec le décalage $k$, puis avec le décalage $k'$,
   revient à chiffrer une seule fois. Avec quel décalage ?
4. Pour quels décalages $k$ le chiffrement est-il sa propre opération inverse, c'est-à-dire :
   chiffrer deux fois de suite avec $k$ redonne exactement le message de départ ?

## Hints

1. Pour la question 1, traite les lettres une par une. Une seule sort de l'alphabet et doit
   repartir du début : laquelle ?
2. Pour la question 2, essaie d'abord sur une lettre, par exemple `a`. Puis sur une lettre proche
   de la fin de l'alphabet, comme `w`, pour voir si le passage par le début change quelque chose.
3. Pour la question 3, appelle $r$ le reste obtenu après le premier décalage, et écris la division
   euclidienne correspondante : $x + k = 26q + r$.
4. Pour la question 4, il faut que le double décalage ramène chaque lettre à sa place. Écris cette
   condition avec $2k$ et $26$.

## Solution

**1. Chiffrer `maths` avec le décalage $5$.**

| lettre | m | a | t | h | s |
|---|---|---|---|---|---|
| numéro $x$ | 12 | 0 | 19 | 7 | 18 |
| $x + 5$ | 17 | 5 | 24 | 12 | 23 |
| reste par $26$ | 17 | 5 | 24 | 12 | 23 |
| lettre chiffrée | r | f | y | m | x |

Aucune somme ne dépasse $25$ ici, donc aucun reste ne diffère de la somme. Le mot chiffré est
`rfymx`.

**2. Décalage $9$ puis décalage $4$.**

C'est le décalage $13$. Voyons pourquoi sur une lettre quelconque, de numéro $x$.

Après le décalage $9$, la lettre a pour numéro le reste $r$ de $x + 9$ par $26$. Après le
décalage $4$, elle a pour numéro le reste de $r + 4$ par $26$. On veut montrer que c'est aussi le
reste de $x + 13$ par $26$.

Écrivons la division euclidienne du premier décalage :
$$x + 9 = 26q + r, \qquad \text{avec } 0 \leqslant r \leqslant 25 .$$
Alors
$$r + 4 = (x + 9) - 26q + 4 = (x + 13) - 26q .$$
Les nombres $r + 4$ et $x + 13$ diffèrent d'un multiple de $26$ : ils ont donc le même reste dans
la division par $26$. Le résultat final est bien celui du décalage $13$.

**3. Le cas général.**

Le calcul ci-dessus n'utilise nulle part les valeurs $9$ et $4$. En le refaisant avec $k$ et
$k'$ : si $x + k = 26q + r$, alors
$$r + k' = (x + k + k') - 26q ,$$
donc $r + k'$ et $x + k + k'$ ont le même reste par $26$.

Chiffrer avec $k$ puis avec $k'$ revient donc à chiffrer une seule fois, avec le décalage égal au
**reste de $k + k'$ dans la division par $26$**. (Ce reste est nécessaire : avec $k = 20$ et
$k' = 10$, la somme vaut $30$, et le décalage effectif est $4$.)

**4. Les décalages qui s'annulent tout seuls.**

D'après la question 3, chiffrer deux fois avec $k$ revient à chiffrer une fois avec le reste de
$2k$ par $26$. Pour retrouver le message de départ, il faut que ce décalage soit nul,
c'est-à-dire que $2k$ soit un multiple de $26$ :
$$2k = 26 \times q, \qquad \text{donc} \qquad k = 13 q .$$

Comme $k$ est compris entre $0$ et $25$, les seules possibilités sont $k = 0$ et $k = 13$.

Le décalage $0$ ne chiffre rien du tout : il laisse le message tel quel. La seule valeur
intéressante est donc
$$\boxed{k = 13}.$$

Avec ce décalage, la même opération chiffre et déchiffre : `a` devient `n`, et `n` redevient `a`.

## Going further

Ce décalage de $13$ porte un nom, **ROT13**, et il a beaucoup servi sur les forums d'Internet,
non pas pour cacher un secret, mais pour éviter de gâcher la fin d'un film à qui ne voulait pas
la lire. Le même bouton sert à l'écrire et à la relire.

Combien de décalages différents existe-t-il en tout ? Si tu interceptes un message chiffré par
décalage, combien d'essais te faut-il au maximum pour le lire ? Tu verras que ce chiffrement ne
protège rien.
