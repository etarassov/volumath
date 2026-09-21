---
id: "8016"
title: "Quand a² + a + 100 est un carré"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre parfait, encadrement, equation diophantienne, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer tous les entiers naturels $a$ tels que $a^2 + a + 100$ soit le carré d'un entier.

## Hints

1. Note $b$ l'entier dont $a^2 + a + 100$ est le carré. Compare $b$ et $a$ : lequel est le
   plus grand ?
2. Pose $b = a + c$ et développe. Que devient l'équation ?
3. Dans l'équation obtenue, isole $a$. Tu obtiens une fraction en $c$.
4. Le numérateur de cette fraction doit rester positif : cela ne laisse que quelques valeurs
   de $c$ à essayer.

## Solution

**On nomme le carré.** Supposons que $a^2 + a + 100 = b^2$ avec $b$ entier positif.

**Comparons $b$ et $a$.** Comme $a \geqslant 0$, on a $a + 100 > 0$, donc

$$b^2 = a^2 + a + 100 > a^2 ,$$

et comme $a$ et $b$ sont positifs, $b > a$. On peut donc écrire

$$b = a + c \qquad \text{avec } c \text{ entier}, \quad c \geqslant 1.$$

**On développe.** L'équation devient

$$a^2 + a + 100 = (a + c)^2 = a^2 + 2ac + c^2 .$$

Le terme $a^2$ disparaît des deux côtés :

$$a + 100 = 2ac + c^2 , \qquad \text{donc} \qquad 100 - c^2 = 2ac - a = a\,(2c - 1).$$

**On isole $a$.** Comme $c \geqslant 1$, on a $2c - 1 \geqslant 1 > 0$, donc

$$a = \frac{100 - c^2}{2c - 1}.$$

**On borne $c$.** Le membre de gauche est positif ou nul, et $2c - 1 > 0$, donc
$100 - c^2 \geqslant 0$, c'est-à-dire $c \leqslant 10$.

**Il ne reste que dix essais.**

| $c$ | $100 - c^2$ | $2c - 1$ | $a$ |
|---|---|---|---|
| $1$ | $99$ | $1$ | $99$ |
| $2$ | $96$ | $3$ | $32$ |
| $3$ | $91$ | $5$ | pas entier |
| $4$ | $84$ | $7$ | $12$ |
| $5$ | $75$ | $9$ | pas entier |
| $6$ | $64$ | $11$ | pas entier |
| $7$ | $51$ | $13$ | pas entier |
| $8$ | $36$ | $15$ | pas entier |
| $9$ | $19$ | $17$ | pas entier |
| $10$ | $0$ | $19$ | $0$ |

**Vérification des quatre solutions.**

$$0^2 + 0 + 100 = 100 = 10^2, \qquad 12^2 + 12 + 100 = 256 = 16^2,$$

$$32^2 + 32 + 100 = 1156 = 34^2, \qquad 99^2 + 99 + 100 = 10\,000 = 100^2.$$

**Les entiers naturels cherchés sont $a = 0$, $a = 12$, $a = 32$ et $a = 99$. Il y en a quatre.**

## Going further

L'idée de fond est qu'un carré ne peut pas être « à peine plus grand » qu'un autre carré :
entre $a^2$ et $(a+1)^2$ il n'y a aucun carré, et l'écart $(a+1)^2 - a^2 = 2a+1$ grandit avec
$a$. Ici, dès que $a$ est grand, $a^2 + a + 100$ se coince entre deux carrés consécutifs et ne
peut donc plus en être un. C'est exactement ce que dit la condition $c \leqslant 10$.
