---
id: "5122"
title: "Les suites de Goodstein"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [bases-de-numeration, puissances, suites, grands-nombres]
adapted_from: null
see_also: ["5812"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Big Numbers », Tom Davis"
  reference: "bignumbers.pdf, section 10 ; attention, le polycopié donne 776 comme cinquième terme de la suite de départ 5, c'est une erreur : la bonne valeur est 775, l'auteur a oublié de retrancher 1"
  url: "https://mathcircles.org/activity/big-numbers/"
  original_language: "en"
  local_copy: "sources/originals/namc/bignumbers.pdf"
---

## Statement

**L'écriture héréditaire en base $b$.** On écrit d'abord le nombre en base $b$, c'est-à-dire comme une somme de puissances de $b$ affectées de coefficients compris entre $1$ et $b-1$. Puis on récrit de la même façon tous les exposants qui apparaissent, et on recommence tant qu'un exposant dépasse ou égale $b$. Par exemple, en base $2$ :

$$143 = 2^{7} + 2^{3} + 2^{2} + 2 + 1 = 2^{2^{2}+2+1} + 2^{2+1} + 2^{2} + 2 + 1$$

Dans l'écriture finale, plus aucun nombre que $0$, $1$ et $b$ n'apparaît.

**La suite de Goodstein de départ $g$.** On pose $u_{1} = g$ et on prend $b = 2$. Puis, tant que le terme courant n'est pas nul, on répète :

1. écrire le terme courant en écriture héréditaire de base $b$ ;
2. remplacer partout $b$ par $b+1$ dans cette écriture ;
3. retrancher $1$ au nombre obtenu : c'est le terme suivant ;
4. augmenter $b$ de $1$.

Ainsi le terme $u_{k}$ se lit en base $b = k+1$.

### Questions

1. Écrire $143$ en écriture héréditaire de base $3$.
2. Écrire en entier la suite de Goodstein de départ $3$, jusqu'à ce qu'elle atteigne $0$.
3. Calculer les sept premiers termes de la suite de Goodstein de départ $4$.
4. Calculer les cinq premiers termes de la suite de Goodstein de départ $5$.

## Hints

1. Pour la question 1, commence par écrire $143$ en base $3$ ordinaire, puis regarde si un exposant atteint $3$.
2. Pour les suites, sois très méthodique : à chaque étape, écris d'abord la forme héréditaire, puis le nombre obtenu après remplacement, puis retranche $1$.
3. Attention à l'étape qui fait tout : le $-1$ vient **après** le changement de base, jamais avant.
4. Pour la question 2, tu verras que la suite reste bloquée quelque temps, puis descend d'une unité à chaque pas. Pourquoi ? Parce qu'une fois le terme plus petit que la base, la base n'apparaît plus dans son écriture, donc le changement de base ne fait plus rien.
5. Pour la question 4, le troisième terme est $255$ ; écris-le en base $4$ avant de continuer.

## Solution

### Question 1 : $143$ en base 3 héréditaire

En base $3$ :

$$143 = 81 + 54 + 6 + 2 = 3^{4} + 2 \times 3^{3} + 2 \times 3 + 2$$

(vérification : $81 + 54 + 6 + 2 = 143$).

L'exposant $4$ dépasse la base, il faut donc le récrire : $4 = 3 + 1$. D'où

$$143 = 3^{\,3+1} + 2 \times 3^{3} + 2 \times 3 + 2$$

### Question 2 : la suite de départ 3

| $k$ | base $b$ | $u_{k}$ | forme héréditaire | après $b \to b+1$ | moins 1 |
|---|---|---|---|---|---|
| $1$ | $2$ | $3$ | $2 + 1$ | $3 + 1 = 4$ | $3$ |
| $2$ | $3$ | $3$ | $3$ | $4$ | $3$ |
| $3$ | $4$ | $3$ | $3$ | $3$ | $2$ |
| $4$ | $5$ | $2$ | $2$ | $2$ | $1$ |
| $5$ | $6$ | $1$ | $1$ | $1$ | $0$ |
| $6$ | $7$ | $0$ | | | |

**La suite est $3,\ 3,\ 3,\ 2,\ 1,\ 0$.**

À partir du troisième terme, le nombre $3$ est plus petit que la base $4$ : son écriture ne contient plus la base du tout, le changement de base ne change rien, et il ne reste que le $-1$. La suite descend alors d'un cran par pas.

### Question 3 : la suite de départ 4

| $k$ | base $b$ | $u_{k}$ | forme héréditaire en base $b$ | après $b \to b+1$ | $u_{k+1}$ |
|---|---|---|---|---|---|
| $1$ | $2$ | $4$ | $2^{2}$ | $3^{3} = 27$ | $26$ |
| $2$ | $3$ | $26$ | $2 \times 3^{2} + 2 \times 3 + 2$ | $2 \times 4^{2} + 2 \times 4 + 2 = 42$ | $41$ |
| $3$ | $4$ | $41$ | $2 \times 4^{2} + 2 \times 4 + 1$ | $2 \times 5^{2} + 2 \times 5 + 1 = 61$ | $60$ |
| $4$ | $5$ | $60$ | $2 \times 5^{2} + 2 \times 5$ | $2 \times 6^{2} + 2 \times 6 = 84$ | $83$ |
| $5$ | $6$ | $83$ | $2 \times 6^{2} + 6 + 5$ | $2 \times 7^{2} + 7 + 5 = 110$ | $109$ |
| $6$ | $7$ | $109$ | $2 \times 7^{2} + 7 + 4$ | $2 \times 8^{2} + 8 + 4 = 140$ | $139$ |
| $7$ | $8$ | $139$ | | | |

**Les sept premiers termes sont $4,\ 26,\ 41,\ 60,\ 83,\ 109,\ 139$.**

La suite monte, mais lentement : la base grandit d'une unité à chaque pas, et le coefficient dominant $2$ fait à peu près doubler l'écart.

### Question 4 : la suite de départ 5

| $k$ | base $b$ | $u_{k}$ | forme héréditaire en base $b$ | après $b \to b+1$ | $u_{k+1}$ |
|---|---|---|---|---|---|
| $1$ | $2$ | $5$ | $2^{2} + 1$ | $3^{3} + 1 = 28$ | $27$ |
| $2$ | $3$ | $27$ | $3^{3}$ | $4^{4} = 256$ | $255$ |
| $3$ | $4$ | $255$ | $3 \times 4^{3} + 3 \times 4^{2} + 3 \times 4 + 3$ | $3 \times 5^{3} + 3 \times 5^{2} + 3 \times 5 + 3 = 468$ | $467$ |
| $4$ | $5$ | $467$ | $3 \times 5^{3} + 3 \times 5^{2} + 3 \times 5 + 2$ | $3 \times 6^{3} + 3 \times 6^{2} + 3 \times 6 + 2 = 776$ | $775$ |
| $5$ | $6$ | $775$ | | | |

**Les cinq premiers termes sont $5,\ 27,\ 255,\ 467,\ 775$.**

*Attention au dernier pas.* Le remplacement de la base donne $776$ ; c'est **après** avoir retranché $1$ qu'on obtient le terme suivant, soit $775$. Le polycopié d'origine annonce ici $776$ : il a oublié le $-1$.

*Détail du calcul de la ligne 3.* On écrit $255$ en base $4$ : $255 = 3 \times 64 + 63$, puis $63 = 3 \times 16 + 15$, puis $15 = 3 \times 4 + 3$, d'où $255 = 3 \times 4^{3} + 3 \times 4^{2} + 3 \times 4 + 3$. L'exposant maximal est $3$, plus petit que la base $4$ : rien à récrire.

## Going further

Ces suites explosent. Celle qui part de $19$ a pour deuxième terme $3^{3^{3}} + 3 = 7\,625\,597\,484\,990$, et son septième terme dépasse déjà $10^{15\,000\,000}$.

Et pourtant, voici le **théorème de Goodstein** (1944) : **toute** suite de Goodstein finit par atteindre $0$, quel que soit son point de départ. Même celle qui part de $4$, dont on a vu qu'elle monte tranquillement, finit par redescendre, après un nombre de pas qui s'écrit avec plus de cent millions de chiffres.

L'idée de la démonstration est jolie. À chaque terme on associe un « ordinal infini » obtenu en remplaçant la base par le symbole $\omega$ dans l'écriture héréditaire. Le changement de base ne modifie pas cet ordinal, tandis que le $-1$ le fait strictement décroître. Or on démontre qu'une suite strictement décroissante d'ordinaux est toujours finie. La suite de Goodstein, dominée par une suite qui doit s'arrêter, s'arrête donc aussi.

Ce qui est remarquable, c'est que ce détour par l'infini est **indispensable** : Kirby et Paris ont montré en 1982 que le théorème de Goodstein ne peut pas être démontré à partir des seuls axiomes de l'arithmétique ordinaire. C'est un énoncé purement arithmétique, vrai, et hors de portée de l'arithmétique.
