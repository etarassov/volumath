---
id: "3020"
title: "Six chiffres entre 1 et 5, divisible par 101"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [divisibilite, chiffres, denombrement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic I and Divisibility Rules"
  reference: "Handout-3277-2873.pdf, exercice 11 (réponse dans Handout-3324-2873.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3277-2873.pdf"
---

## Statement

Combien y a-t-il de nombres de six chiffres, dont tous les chiffres sont choisis parmi
$1, 2, 3, 4, 5$, qui soient divisibles par $101$ ?

## Hints

1. $100 = 101 - 1$, donc $100 \equiv -1 \pmod{101}$. Que valent alors $100^2$ et $100^3$ ?
2. Découpe le nombre en trois tranches de deux chiffres et fais-en la somme **alternée**.
3. Note les chiffres $a, b, c, d, e, f$. Montre que la condition s'écrit $101 \mid 10(a - c + e) + (b - d + f)$.
4. Les chiffres valent entre $1$ et $5$ : encadre $a - c + e$ et $b - d + f$. La quantité ci-dessus est-elle assez grande pour atteindre $101$ ou $-101$ ?
5. Une fois qu'on sait que la quantité vaut $0$, montre que les deux morceaux sont nuls séparément, puis compte les solutions de $a + e = c$.

## Solution

**Le critère de divisibilité par 101.**

$100 = 101 - 1$, donc $100 \equiv -1 \pmod{101}$, et $100^2 \equiv 1 \pmod{101}$.

Notons le nombre $N = \overline{abcdef}$, découpé en trois tranches de deux chiffres :

$$N = \overline{ab} \times 100^2 + \overline{cd} \times 100 + \overline{ef}
\equiv \overline{ab} - \overline{cd} + \overline{ef} \pmod{101}.$$

Avec $\overline{ab} = 10a + b$ et ainsi de suite :

$$N \equiv 10(a - c + e) + (b - d + f) \pmod{101}.$$

**Un encadrement qui tue le problème.**

Posons $U = a - c + e$ et $V = b - d + f$. Les six chiffres sont entre $1$ et $5$, donc

$$U \geq 1 - 5 + 1 = -3 \qquad \text{et} \qquad U \leq 5 - 1 + 5 = 9,$$

et de même $-3 \leq V \leq 9$. Par conséquent

$$10U + V \geq 10 \times (-3) + (-3) = -33
\qquad \text{et} \qquad
10U + V \leq 10 \times 9 + 9 = 99.$$

Le nombre $10U + V$ est donc strictement compris entre $-101$ et $101$. Le seul multiple de
$101$ dans cet intervalle est $0$, donc

$$101 \mid N \iff 10U + V = 0.$$

**Les deux morceaux sont nuls.**

Si $10U + V = 0$, alors $V = -10U$ est un multiple de $10$. Mais $-3 \leq V \leq 9$, donc le
seul multiple de $10$ possible est $V = 0$, et alors $U = 0$.

La condition est donc

$$a - c + e = 0 \qquad \text{et} \qquad b - d + f = 0,$$

c'est-à-dire

$$a + e = c \qquad \text{et} \qquad b + f = d.$$

**On compte.**

Comptons les triplets $(a, e, c)$ de chiffres entre $1$ et $5$ tels que $a + e = c$. Comme
$a \geq 1$ et $e \geq 1$, on a $c \geq 2$ :

| $c$ | couples $(a, e)$ | nombre |
|---|---|---|
| $2$ | $(1,1)$ | $1$ |
| $3$ | $(1,2), (2,1)$ | $2$ |
| $4$ | $(1,3), (2,2), (3,1)$ | $3$ |
| $5$ | $(1,4), (2,3), (3,2), (4,1)$ | $4$ |

Soit $1 + 2 + 3 + 4 = 10$ possibilités.

Le comptage pour $(b, f, d)$ avec $b + f = d$ est identique : $10$ possibilités. Les deux
choix sont indépendants.

**Conclusion.**

Il y a $10 \times 10 = 100$ nombres de six chiffres à chiffres dans $\{1,2,3,4,5\}$
divisibles par $101$.

Par exemple $a=1, b=1, c=2, d=2, e=1, f=1$ donne $112211 = 101 \times 1111$.
