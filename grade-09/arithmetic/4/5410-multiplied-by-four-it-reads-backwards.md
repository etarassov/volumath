---
id: "5410"
title: "Multiplié par 4, il se lit à l'envers"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, numeration, equation, disjonction-de-cas, unicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « It's All Logical », problème 1"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

On cherche un nombre entier de cinq chiffres qui, multiplié par $4$, donne le nombre écrit avec les mêmes chiffres, mais dans l'ordre inverse.

Autrement dit, en notant $\overline{ABCDE}$ le nombre cherché, on veut

$$\overline{ABCDE} \times 4 = \overline{EDCBA} .$$

Trouver tous les nombres qui conviennent.

## Hints

1. Le résultat $\overline{EDCBA}$ a lui aussi cinq chiffres. Que cela impose-t-il au premier chiffre $A$ ?
2. Le dernier chiffre du produit est $A$. Or le dernier chiffre d'un nombre multiplié par $4$ est toujours pair.
3. Le produit dépasse $4 \times 20\,000$. Que cela impose-t-il au chiffre $E$, qui est son premier chiffre ?
4. Une fois $A$ et $E$ connus, écrivez $\overline{ABCDE} = 20\,000 + 1000B + 100C + 10D + 8$ et faites de même pour $\overline{EDCBA}$.
5. L'égalité devient une équation entre $B$, $C$ et $D$. Simplifiez-la, puis remarquez que $B$ ne peut pas être grand.

## Solution

### Le premier chiffre

Le nombre $\overline{ABCDE}$ a cinq chiffres, donc $A \ne 0$. Son quadruple $\overline{EDCBA}$ a lui aussi cinq chiffres, donc

$$4 \times \overline{ABCDE} < 100\,000, \qquad \text{c'est-à-dire} \qquad \overline{ABCDE} < 25\,000 .$$

Donc $A = 1$ ou $A = 2$.

Par ailleurs, $A$ est le **dernier** chiffre du produit $4 \times \overline{ABCDE}$. Un multiple de $4$ est pair, donc son dernier chiffre est pair, donc $A$ est pair. Conclusion :

$$A = 2 .$$

### Le dernier chiffre

Le nombre cherché commence par $2$, donc il est supérieur à $20\,000$, et son quadruple dépasse $80\,000$. Or ce quadruple est $\overline{EDCBA}$, dont le premier chiffre est $E$. Donc $E \ge 8$.

De plus le dernier chiffre de $4 \times E$ doit être $A = 2$. Pour $E = 8$ : $4 \times 8 = 32$, qui se termine par $2$, cela convient. Pour $E = 9$ : $4 \times 9 = 36$, qui se termine par $6$, cela ne convient pas. Donc

$$E = 8 .$$

Le nombre cherché s'écrit $\overline{2BCD8}$ et son quadruple $\overline{8DCB2}$.

### L'équation

Écrivons les deux nombres :

$$\overline{2BCD8} = 20\,000 + 1000B + 100C + 10D + 8,$$

$$\overline{8DCB2} = 80\,000 + 1000D + 100C + 10B + 2 .$$

L'égalité $4 \times \overline{2BCD8} = \overline{8DCB2}$ s'écrit

$$80\,000 + 4000B + 400C + 40D + 32 = 80\,000 + 1000D + 100C + 10B + 2 .$$

On simplifie les $80\,000$, puis on regroupe :

$$3990B + 300C - 960D + 30 = 0 .$$

Tous les coefficients sont des multiples de $30$. En divisant par $30$ :

$$133B + 10C + 1 = 32D .$$

### Les trois cas

Comme $D \le 9$, le membre de droite vaut au plus $32 \times 9 = 288$. Donc $133B \le 287$, ce qui impose $B \le 2$.

**Cas $B = 0$.** L'équation devient $10C + 1 = 32D$. Le membre de gauche est impair, le membre de droite est pair : impossible.

**Cas $B = 1$.** L'équation devient $134 + 10C = 32D$. Le membre de gauche se termine par $4$, donc $32D$ aussi, ce qui donne $D = 2$ ou $D = 7$ (car $32 \times 2 = 64$ et $32 \times 7 = 224$).

- $D = 2$ : on aurait $10C = 64 - 134 < 0$, impossible.
- $D = 7$ : on obtient $10C = 224 - 134 = 90$, donc $C = 9$. Cela convient.

**Cas $B = 2$.** L'équation devient $267 + 10C = 32D$. Il faut $32D \ge 267$, donc $D = 9$, et alors $10C = 288 - 267 = 21$, qui n'est pas un multiple de $10$ : impossible.

### La réponse

Le seul nombre possible est $B = 1$, $C = 9$, $D = 7$, c'est-à-dire

$$\boxed{21\,978} .$$

Vérification : $21\,978 \times 4 = 87\,912$, et $87\,912$ est bien $21\,978$ lu à l'envers.

**Conclusion.** Il y a exactement un nombre de cinq chiffres qui se retourne quand on le multiplie par $4$ : c'est $21\,978$.

## Going further

1. Cherchez un nombre de quatre chiffres qui se retourne quand on le multiplie par $4$. (Il en existe un : $2178$.)
2. Le nombre $10\,989$ se retourne lui aussi, mais quand on le multiplie par $9$. Vérifiez-le, puis trouvez le nombre de quatre chiffres qui a la même propriété.
3. Reprenez le raisonnement avec un multiplicateur $2$ ou $3$ au lieu de $4$ : montrez qu'aucun nombre de cinq chiffres ne convient.
