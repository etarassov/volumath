---
id: "5108"
title: "Multiplié par 4, il s'écrit à l'envers"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [chiffres, equation, mise-en-equation, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 13"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Trouver tous les nombres de quatre chiffres qui, multipliés par $4$, donnent le même nombre écrit à l'envers.

Autrement dit, en notant $\overline{abcd}$ le nombre de quatre chiffres dont les chiffres sont $a$, $b$, $c$, $d$ dans cet ordre, résoudre

$$4 \times \overline{abcd} = \overline{dcba}$$

## Hints

1. Il ne faut surtout pas essayer les $9000$ nombres. Commence par coincer le chiffre $a$ : le résultat $\overline{dcba}$ a encore quatre chiffres, donc il est inférieur à $10\,000$.
2. Le nombre $\overline{dcba}$ est un multiple de $4$ : il est donc pair. Quel est son chiffre des unités ?
3. Tu obtiens $a = 2$. Que peut-on alors dire de $d$, en regardant d'abord la taille du produit, puis son chiffre des unités ?
4. Une fois $a$ et $d$ connus, écris l'égalité en entier avec $b$ et $c$ et développe. Tu obtiens une relation très simple entre $b$ et $c$.

## Solution

**Étape 1. Le premier chiffre.**

Le nombre $\overline{dcba}$ s'écrit avec quatre chiffres, donc $\overline{dcba} \leqslant 9999$ et

$$4 \times \overline{abcd} \leqslant 9999 \quad \text{donc} \quad \overline{abcd} \leqslant 2499$$

Le chiffre $a$ vaut donc $1$ ou $2$.

**Étape 2. $a$ est pair, donc $a = 2$.**

Le nombre $\overline{dcba}$ est égal à $4 \times \overline{abcd}$ : c'est un nombre pair. Or son chiffre des unités est $a$. Donc $a$ est pair, et comme $a$ vaut $1$ ou $2$ :

$$a = 2$$

**Étape 3. Le dernier chiffre.**

*Par la taille.* Puisque $a = 2$, on a $\overline{abcd} \geqslant 2000$, donc

$$\overline{dcba} = 4 \times \overline{abcd} \geqslant 8000$$

Le premier chiffre de $\overline{dcba}$, qui est $d$, vaut donc $8$ ou $9$.

*Par les unités.* Le chiffre des unités de $4 \times \overline{abcd}$ est le chiffre des unités de $4d$, et il doit valoir $a = 2$. Testons les deux candidats : $4 \times 8 = 32$, qui finit par $2$ ; $4 \times 9 = 36$, qui finit par $6$. Donc

$$d = 8$$

**Étape 4. Les deux chiffres du milieu.**

On cherche maintenant $b$ et $c$ tels que

$$4 \times (2000 + 100b + 10c + 8) = 8000 + 100c + 10b + 2$$

Développons le membre de gauche :

$$8000 + 400b + 40c + 32 = 8002 + 100c + 10b$$

On retranche $8000$ des deux côtés, puis on rassemble :

$$400b + 40c + 32 = 2 + 100c + 10b$$
$$390b + 30 = 60c$$

On divise par $30$ :

$$13b + 1 = 2c$$

**Étape 5. On conclut.**

Comme $c$ est un chiffre, $2c \leqslant 18$, donc $13b \leqslant 17$ et $b$ vaut $0$ ou $1$.

- Si $b = 0$ : $2c = 1$, impossible car $2c$ est pair.
- Si $b = 1$ : $2c = 14$, donc $c = 7$.

Le seul nombre possible est donc $\overline{abcd} = 2178$, et il convient :

$$4 \times 2178 = 8712$$

**Conclusion. Le seul nombre de quatre chiffres qui convient est $2178$.**

## Going further

Que se passe-t-il si l'on remplace $4$ par $9$ ? La même méthode donne $a = 1$ (car $9 \times 2000 = 18\,000$ a cinq chiffres), puis $d = 9$ (puisque $9 \times \overline{abcd} \geqslant 9000$), puis l'équation

$$9 \times (1000 + 100b + 10c + 9) = 9000 + 100c + 10b + 1$$

qui se simplifie en $890b + 80 = 10c$. Comme $10c \leqslant 90$, il faut $b = 0$ et alors $c = 8$ : le seul nombre est $1089$, et en effet $9 \times 1089 = 9801$.

Les nombres $2178$ et $1089$ sont cousins : $2178 = 2 \times 1089$. Et $1089$ est aussi le nombre qui sort du tour suivant : prends un nombre de trois chiffres, retranche-lui son renversé, additionne le résultat à son propre renversé. Avec $742$ : $742 - 247 = 495$, puis $495 + 594 = 1089$.
