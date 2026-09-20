---
id: "5104"
title: "Deux sommes de chiffres multiples de 49"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [somme-des-chiffres, congruences, retenues, minimum, neufs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 3(f)"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Pour un entier naturel $n$, on note $S(n)$ la somme des chiffres de $n$.

Existe-t-il un entier $a$ tel que $S(a)$ **et** $S(a+1)$ soient tous les deux des multiples de $49$ ?

Si oui, en donner un, puis déterminer le plus petit.

## Hints

1. Commence par le cas facile : si $a$ ne se termine pas par un $9$, comment passe-t-on de $S(a)$ à $S(a+1)$ ?
2. Il faut donc que $a$ se termine par des $9$. Écris $a$ sous la forme « un bloc $m$, suivi de $k$ chiffres $9$ », avec $k \geqslant 1$ et le dernier chiffre de $m$ différent de $9$. Que valent $S(a)$ et $S(a+1)$ en fonction de $S(m)$ et de $k$ ?
3. Le cas $m = 0$, c'est-à-dire $a$ formé uniquement de $9$, se traite à part : que vaut alors $S(a+1)$ ?
4. Écris les deux conditions demandées, puis soustrais-les l'une de l'autre. Tu obtiens une condition sur $k$ seul.
5. $9 \times 11 = 99 = 2 \times 49 + 1$.
6. Une fois $k$ connu, il reste à choisir $m$ le plus petit possible, avec $S(m)$ imposé et un dernier chiffre différent de $9$.

## Solution

**Étape 1. $a$ doit se terminer par des $9$.**

Si le dernier chiffre de $a$ n'est pas $9$, l'addition $a + 1$ n'entraîne aucune retenue : le dernier chiffre augmente de $1$, les autres ne bougent pas, donc

$$S(a+1) = S(a) + 1$$

Deux entiers consécutifs ne peuvent pas être tous les deux multiples de $49$. Ce cas est donc impossible, et $a$ se termine par au moins un $9$.

**Étape 2. La forme de $a$.**

Notons $k \geqslant 1$ le nombre de $9$ qui terminent $a$, en prenant $k$ le plus grand possible. On peut alors écrire

$$a = m \times 10^{k} + \underbrace{99\ldots9}_{k \text{ chiffres}}$$

où $m$ est le nombre formé par les chiffres restants. Comme $k$ est maximal, ou bien $m = 0$, ou bien le dernier chiffre de $m$ n'est pas $9$.

*Le cas $m = 0$.* Alors $a = 10^{k} - 1$ et $a + 1 = 10^{k}$, donc $S(a+1) = 1$, qui n'est pas un multiple de $49$. Ce cas est exclu, et $m \geqslant 1$.

*Le cas général.* Ajouter $1$ à $a$ transforme les $k$ derniers chiffres $9$ en $k$ chiffres $0$ et ajoute $1$ à $m$ ; comme le dernier chiffre de $m$ n'est pas $9$, cette dernière addition ne propage aucune retenue. Donc

$$S(a) = S(m) + 9k \qquad \text{et} \qquad S(a+1) = S(m+1) = S(m) + 1$$

**Étape 3. Le nombre de $9$ est forcé.**

Les deux conditions s'écrivent

$$S(m) + 9k \equiv 0 \pmod{49} \qquad \text{et} \qquad S(m) + 1 \equiv 0 \pmod{49}$$

En soustrayant la seconde de la première :

$$9k - 1 \equiv 0 \pmod{49}, \qquad \text{c'est-à-dire} \qquad 9k \equiv 1 \pmod{49}$$

Or $9 \times 11 = 99 = 2 \times 49 + 1$, donc $9 \times 11 \equiv 1 \pmod{49}$. Comme $9$ et $49$ sont premiers entre eux, $9$ est inversible modulo $49$ et la solution est unique modulo $49$ :

$$k \equiv 11 \pmod{49}$$

Les valeurs possibles sont $k = 11, 60, 109, \ldots$ ; la plus petite est $k = 11$.

**Étape 4. Le bloc $m$.**

La seconde condition donne $S(m) \equiv -1 \equiv 48 \pmod{49}$, donc

$$S(m) \in \{48,\ 97,\ 146,\ \ldots\}$$

Un nombre de $p$ chiffres a une somme de chiffres au plus égale à $9p$. Pour $S(m) = 97$ il faudrait $p \geqslant 11$, ce qui donnerait à $a$ au moins $11 + 11 = 22$ chiffres, alors que $S(m) = 48$ se réalise déjà avec $6$ chiffres. Pour obtenir le plus petit $a$, on prend donc

$$S(m) = 48$$

et on cherche $m$ le plus petit possible, avec $6$ chiffres (car $5$ chiffres donnent au plus $45 < 48$) et un dernier chiffre différent de $9$.

*Le premier chiffre.* Si le premier chiffre de $m$ est $c$, les cinq autres donnent au plus $45$, donc $c \geqslant 48 - 45 = 3$.

- Si $c = 3$, les cinq autres chiffres ont pour somme $45$ : ils valent tous $9$. Le dernier chiffre serait $9$, ce qui est interdit.
- Donc $c \geqslant 4$. Prenons $c = 4$ : les cinq autres chiffres ont pour somme $44 = 45 - 1$. Il y a donc exactement un $8$ et quatre $9$. Pour que le dernier chiffre ne soit pas $9$, le $8$ doit être en dernière position :

$$m = 499\,998$$

**Étape 5. Le nombre cherché.**

$$a = 499\,998 \times 10^{11} + \underbrace{99\,999\,999\,999}_{11 \text{ chiffres}} = 49\,999\,899\,999\,999\,999$$

Vérifions :

$$S(a) = 48 + 9 \times 11 = 48 + 99 = 147 = 3 \times 49$$

$$a + 1 = 49\,999\,900\,000\,000\,000, \qquad S(a+1) = 4 + 9 + 9 + 9 + 9 + 9 = 49$$

**Conclusion. De tels entiers existent, et le plus petit est**

$$a = 49\,999\,899\,999\,999\,999$$

## Going further

Le raisonnement n'a rien de propre à $49$. Pour un entier $N$ premier avec $9$, il existe toujours un $a$ tel que $S(a)$ et $S(a+1)$ soient tous deux multiples de $N$ : il suffit de résoudre $9k \equiv 1 \pmod{N}$, ce qui est possible précisément parce que $9$ est inversible modulo $N$.

En revanche, si $N$ est un multiple de $3$, c'est impossible. En effet, $S(a) \equiv a$ et $S(a+1) \equiv a+1$ modulo $9$, donc aussi modulo $3$. Si $3$ divisait à la fois $S(a)$ et $S(a+1)$, il diviserait donc $a$ et $a+1$ : deux entiers consécutifs, ce qui ne se peut pas.
