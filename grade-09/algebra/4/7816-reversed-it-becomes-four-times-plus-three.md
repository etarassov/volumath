---
id: "7816"
title: "Retourné, il vaut quatre fois lui-même plus trois"
grade: 9
theme: algebra
difficulty: 4
duration_min: 40
tags: [chiffres, mise-en-equation, parite, encadrement]
adapted_from: null
see_also: ["5108"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, Coupe Animath du 2 juin 2015, énoncés collège, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Pour un entier $n$, on note $f(n)$ l'entier obtenu en écrivant les chiffres de $n$ dans l'ordre
inverse. Par exemple, $f(2538) = 8352$.

Déterminer tous les entiers $n$ de quatre chiffres tels que
$$f(n) = 4n + 3 .$$

## Hints

1. Note $n = \overline{abcd}$, ce qui veut dire que $a$, $b$, $c$, $d$ sont les quatre chiffres
   de $n$ dans cet ordre, avec $a \neq 0$. Alors $f(n) = \overline{dcba}$.
2. $f(n)$ a encore quatre chiffres, donc $4n + 3 < 10\,000$. Qu'est-ce que cela impose au
   chiffre $a$ ?
3. $4n + 3$ est impair. Son chiffre des unités, c'est $a$. Que vaut donc $a$ ?
4. Une fois $a$ connu, encadre $4n+3$ pour coincer $d$, puis regarde le chiffre des unités de
   $4 \times \overline{1bcd} + 3$ pour le déterminer exactement.
5. Il ne reste plus qu'à écrire l'égalité en toutes lettres avec $b$ et $c$ et à simplifier.

## Solution

Écrivons $n = \overline{abcd}$, avec $a \neq 0$, c'est-à-dire
$$n = 1000a + 100b + 10c + d, \qquad f(n) = 1000d + 100c + 10b + a .$$

L'équation à résoudre est
$$1000d + 100c + 10b + a = 4\,(1000a + 100b + 10c + d) + 3 . \qquad (\star)$$

**Étape 1 : le chiffre $a$ vaut $1$.**

Le nombre $f(n)$ a quatre chiffres, donc $4n + 3 < 10\,000$, donc $n < 2500$. Comme $n$ a quatre
chiffres, $a$ vaut $1$ ou $2$.

Par ailleurs $4n$ est pair, donc $4n + 3$ est impair. Or le chiffre des unités de
$f(n) = \overline{dcba}$ est $a$ : donc $a$ est impair.

Les deux conditions ensemble donnent $a = 1$.

**Étape 2 : le chiffre $d$ vaut $7$.**

Comme $a = 1$, on a $1000 \leq n < 2000$, donc
$$4003 \leq 4n + 3 < 8003 .$$

Le chiffre des milliers de $f(n) = \overline{dcba}$ est $d$, donc $d \in \{4, 5, 6, 7\}$.

Regardons maintenant le chiffre des unités. Le chiffre des unités de $4n + 3$ vaut $a = 1$. Or
le chiffre des unités de $4n$ ne dépend que de $d$ :

| $d$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|
| unités de $4d$ | $6$ | $0$ | $4$ | $8$ |
| unités de $4d + 3$ | $9$ | $3$ | $7$ | $1$ |

Seul $d = 7$ donne $1$. Donc $d = 7$.

**Étape 3 : on résout pour $b$ et $c$.**

On reporte $a = 1$ et $d = 7$ dans $(\star)$ :
$$7000 + 100c + 10b + 1 = 4\,(1000 + 100b + 10c + 7) + 3 ,$$
c'est-à-dire
$$7001 + 100c + 10b = 4000 + 400b + 40c + 28 + 3 = 4031 + 400b + 40c .$$

On regroupe :
$$7001 - 4031 = 400b - 10b + 40c - 100c ,$$
$$2970 = 390b - 60c .$$

On divise tout par $30$ :
$$99 = 13b - 2c .$$

**Étape 4 : on trouve $b$ et $c$.**

Comme $c$ est un chiffre, $0 \leq 2c \leq 18$, donc
$$99 \leq 13b \leq 117 ,$$
c'est-à-dire $\text{7,6}\ldots \leq b \leq 9$. Donc $b \in \{8, 9\}$.

- Si $b = 8$ : $13 \times 8 = 104$, donc $2c = 104 - 99 = 5$. Impossible, $5$ est impair.
- Si $b = 9$ : $13 \times 9 = 117$, donc $2c = 117 - 99 = 18$, donc $c = 9$. Cela convient.

**Conclusion.**

Le seul entier qui convient est
$$n = \boxed{1997}.$$

*Vérification.* $f(1997) = 7991$ et $4 \times 1997 + 3 = 7988 + 3 = 7991$. C'est bien cela.
