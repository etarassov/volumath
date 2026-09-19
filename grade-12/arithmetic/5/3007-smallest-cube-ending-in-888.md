---
id: "3007"
title: "Le plus petit cube qui se termine par 888"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [congruences, cubes, chiffres, releve de solutions]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic IV"
  reference: "Handout-3422-2965.pdf, exercice 8 (AIME 1988)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3422-2965.pdf"
---

## Statement

Trouver le plus petit entier strictement positif $N$ dont le cube se termine par les trois
chiffres $888$.

## Hints

1. « Se termine par $888$ » veut dire $N^3 \equiv 888 \pmod{1000}$. Et $1000 = 8 \times 125$.
2. Modulo $8$, $888$ est nul. Qu'est-ce que cela impose à $N$ ? Pose alors $N = 2m$ et simplifie.
3. Tu arrives à $m^3 \equiv 111 \pmod{125}$. Commence petit : résous d'abord modulo $5$, en dressant la liste des cubes.
4. Une fois $m$ connu modulo $5$, écris $m = 1 + 5t$, développe le cube et regarde modulo $25$. Puis recommence pour passer à $125$.
5. Dans $(1+5t)^3 = 1 + 15t + 75t^2 + 125t^3$, tous les termes ne comptent pas modulo $25$.

## Solution

Chercher les trois derniers chiffres, c'est travailler modulo $1000 = 8 \times 125$.

**Étape 1 : modulo 8.**

$888 = 8 \times 111$, donc $8 \mid N^3$. Si $N$ était impair, $N^3$ serait impair : $N$ est
donc pair. Posons $N = 2m$. Alors $N^3 = 8m^3$, et la condition modulo $1000$ s'écrit

$$8m^3 \equiv 888 \pmod{1000}.$$

En divisant les deux membres et le module par $8$ :

$$m^3 \equiv 111 \pmod{125}.$$

(Réciproquement, si $m^3 \equiv 111 \pmod{125}$, alors $8m^3 \equiv 888 \pmod{1000}$ :
les deux conditions sont équivalentes.)

**Étape 2 : modulo 5.**

$111 = 22 \times 5 + 1$, donc $m^3 \equiv 1 \pmod 5$. Dressons la liste des cubes modulo $5$ :

| $m \bmod 5$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| $m^3 \bmod 5$ | $0$ | $1$ | $3$ | $2$ | $4$ |

Un seul cas convient : $m \equiv 1 \pmod 5$.

**Étape 3 : modulo 25.**

Écrivons $m = 1 + 5t$. Alors

$$m^3 = 1 + 15t + 75t^2 + 125t^3 \equiv 1 + 15t \pmod{25},$$

car $75$ et $125$ sont des multiples de $25$.

Or $111 = 4 \times 25 + 11$, donc il faut $1 + 15t \equiv 11$, c'est-à-dire
$15t \equiv 10 \pmod{25}$. En divisant par $5$ (et le module aussi) : $3t \equiv 2 \pmod 5$,
donc $t \equiv 4 \pmod 5$.

Ainsi $m = 1 + 5 \times 4 = 21$ modulo $25$, c'est-à-dire $m \equiv 21 \pmod{25}$.

**Étape 4 : modulo 125.**

Écrivons $m = 21 + 25v$. Alors

$$m^3 = 21^3 + 3 \times 21^2 \times 25 v + 3 \times 21 \times 625 v^2 + 15625 v^3.$$

Les deux derniers termes contiennent $625 = 5 \times 125$ : ils disparaissent modulo $125$.
Il reste

$$m^3 \equiv 9261 + 33075\,v \pmod{125}.$$

Or $9261 = 74 \times 125 + 11$ et $33075 = 264 \times 125 + 75$, donc

$$m^3 \equiv 11 + 75 v \pmod{125}.$$

Il faut $11 + 75v \equiv 111$, soit $75 v \equiv 100 \pmod{125}$. En divisant par $25$ :
$3v \equiv 4 \pmod 5$, donc $v \equiv 3 \pmod 5$.

Ainsi $m = 21 + 25 \times 3 = 96$ modulo $125$, c'est-à-dire $m \equiv 96 \pmod{125}$.

**Conclusion.**

$N = 2m$, donc $N \equiv 192 \pmod{250}$. Le plus petit entier strictement positif est

$$N = 192.$$

Vérification : $192^3 = 7\,077\,888$, qui se termine bien par $888$.

## Going further

Les autres entiers dont le cube finit par $888$ sont $192 + 250k$ : $442$, $692$, $942$, …
La méthode des étapes successives (résoudre modulo $5$, puis $25$, puis $125$) s'appelle un
**relèvement** : chaque solution modulo $5^i$ se prolonge en une unique solution modulo
$5^{i+1}$ ici, parce que le coefficient devant $t$ n'est jamais nul modulo $5$.
