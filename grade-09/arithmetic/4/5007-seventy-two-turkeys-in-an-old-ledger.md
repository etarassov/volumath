---
id: "5007"
title: "Les 72 dindes du vieux registre"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [criteres-de-divisibilite, chiffres-caches, multiples, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 2, problème 13 o), d'après George Polya, « How To Solve It »"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

Dans un très vieux registre de ferme, une ligne d'achat est en partie effacée. On arrive
encore à lire :

> « $72$ dindes, à ?,?? euros pièce, total ?67,9? euros »

Chaque « ? » remplace un chiffre devenu illisible.

Retrouver le prix d'une dinde, et le montant total de l'achat.

## Hints

1. Travaille en centimes : tout devient entier, et les virgules disparaissent.
2. Le total en centimes est un nombre de cinq chiffres dont tu connais les trois du milieu.
   Écris-le sous la forme $\overline{a679b}$, avec $a$ et $b$ deux chiffres à trouver.
3. Le total est le prix d'une dinde multiplié par $72$, donc c'est un multiple de $72$.
   Décompose $72$ en produit de deux nombres premiers entre eux.
4. Un nombre est divisible par $8$ exactement quand le nombre formé par ses **trois derniers**
   chiffres l'est. (Pourquoi ? Parce que $1000 = 8 \times 125$.) Ici ces trois chiffres sont
   $7$, $9$ et $b$.
5. Une fois $b$ trouvé, utilise le critère de divisibilité par $9$ pour trouver $a$.
6. Il ne reste plus qu'à poser la division du total par $72$.

## Solution

**On passe en centimes.** Le prix d'une dinde s'écrit « ?,?? », c'est-à-dire un chiffre, une
virgule, deux chiffres : en centimes, c'est un entier $p$ compris entre $0$ et $999$.

Le total s'écrit « ?67,9? » : en centimes, c'est un entier $T$ de cinq chiffres, de la forme

$$T = \overline{a679b} = 10\,000\,a + 6790 + b ,$$

où $a$ et $b$ sont deux chiffres, avec $a \neq 0$ (un registre n'écrit pas un zéro devant un
montant).

Enfin, $T = 72 \times p$ : **le total est un multiple de $72$.**

**On casse $72$ en deux.** On a $72 = 8 \times 9$, et $8$ et $9$ n'ont aucun diviseur commun
autre que $1$. Donc $T$ est un multiple de $72$ si et seulement si $T$ est à la fois un
multiple de $8$ et un multiple de $9$. On va traiter les deux conditions séparément.

**Le dernier chiffre, grâce à $8$.**

Comme $1000 = 8 \times 125$, tout millier est un multiple de $8$. Un nombre est donc divisible
par $8$ exactement quand le nombre formé par ses trois derniers chiffres l'est. Ici il faut que

$$\overline{79b} = 790 + b \quad \text{soit un multiple de } 8 .$$

Or $790 = 8 \times 98 + 6$. Il manque donc $2$ pour atteindre le multiple de $8$ suivant :

| $b$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| reste par $8$ | $6$ | $7$ | $\mathbf{0}$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |

Le seul chiffre qui convient est $b = 2$ (en effet $792 = 8 \times 99$).

**Le premier chiffre, grâce à $9$.**

Un nombre est divisible par $9$ exactement quand la somme de ses chiffres l'est. Ici la somme
des chiffres de $T$ vaut

$$a + 6 + 7 + 9 + 2 = a + 24 .$$

Avec $a$ entre $1$ et $9$, la somme $a + 24$ est comprise entre $25$ et $33$. Le seul multiple
de $9$ dans cet intervalle est $27$, donc $a = 3$.

**On conclut.**

$$T = 36\,792 \text{ centimes} = \text{367,92} \text{ euros} .$$

Le prix d'une dinde est

$$p = \frac{36\,792}{72} = 511 \text{ centimes} = \text{5,11} \text{ euros} .$$

**Vérification.** $72 \times \text{5,11} = \text{367,92}$. Le prix a bien un seul chiffre avant la
virgule, et le total se lit bien « ?67,9? ». Les deux nombres cachés sont donc

$$\boxed{\text{5,11} \text{ euros la dinde, } \text{367,92} \text{ euros au total}} .$$

## Going further

Il fallait bien que le prix ait un seul chiffre avant la virgule pour que l'énoncé ait un sens,
mais en réalité cette hypothèse était superflue : si le prix avait été inférieur à un euro,
donc $p \leqslant 99$, le total aurait été inférieur à $72 \times 99 = 7128$ centimes, soit
$\text{71,28}$ euros, ce qui est trop petit pour s'écrire « ?67,9? ». La solution est donc unique de
toute façon.

Le problème vient du livre *Comment poser et résoudre un problème* de George Polya, un classique
de 1945 sur la façon de chercher. Polya s'en sert pour illustrer une idée simple : quand une
information manque, cherchez ce que vous savez quand même du nombre, et non ce que vous ignorez.
