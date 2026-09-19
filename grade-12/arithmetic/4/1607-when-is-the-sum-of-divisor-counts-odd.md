---
id: "1607"
title: "Quand la somme des nombres de diviseurs est-elle impaire ?"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [diviseurs, parite, carres-parfaits, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 9 (AIME I 2005, problème 12)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

Pour un entier $n \ge 1$, on note $\tau(n)$ le nombre de diviseurs positifs de $n$. Par
exemple $\tau(1) = 1$ et $\tau(6) = 4$, car $6$ a pour diviseurs $1$, $2$, $3$ et $6$.

On pose ensuite
$$S(n) = \tau(1) + \tau(2) + \cdots + \tau(n).$$

Soit $a$ le nombre d'entiers $n$ compris entre $1$ et $2005$ pour lesquels $S(n)$ est
**impair**, et $b$ le nombre de ceux pour lesquels $S(n)$ est **pair**.

Calculer $|a - b|$.

## Hints

1. Calcule $\tau(n)$ puis $S(n)$ pour $n$ de $1$ à $12$, et note à chaque fois la parité de $S(n)$. Une régularité apparaît : à quels endroits la parité change-t-elle ?
2. $S(n) - S(n-1) = \tau(n)$. La parité de $S$ change donc exactement quand $\tau(n)$ est impair. Pour quels $n$ le nombre $\tau(n)$ est-il impair ?
3. Les diviseurs de $n$ vont par paires $\{d,\ n/d\}$. Quand une paire est-elle réduite à un seul élément ?
4. $\tau(n)$ est impair si et seulement si $n$ est un carré parfait. Déduis-en que la parité de $S(n)$ est celle du nombre de carrés parfaits inférieurs ou égaux à $n$, c'est-à-dire celle de $\lfloor \sqrt{n} \rfloor$.

## Solution

**L'idée : $\tau(n)$ est impair exactement pour les carrés parfaits, donc la parité de $S(n)$
bascule en $1, 4, 9, 16, \ldots$ et nulle part ailleurs.**

**Étape 1. $\tau(n)$ est impair si et seulement si $n$ est un carré parfait.**

Les diviseurs de $n$ se regroupent par paires : à tout diviseur $d$ on associe le diviseur
$n/d$. Cette association échange les deux éléments d'une paire, donc elle découpe l'ensemble
des diviseurs en paires, **sauf** pour les diviseurs $d$ tels que $d = n/d$, c'est-à-dire
$d^2 = n$.

- Si $n$ n'est pas un carré parfait, il n'y a aucun tel $d$ : tous les diviseurs sont
  appariés, donc $\tau(n)$ est pair.
- Si $n = m^2$, le seul diviseur non apparié est $d = m$ : $\tau(n)$ est impair.

**Étape 2. La parité de $S(n)$.**

Puisque $S(n) = \tau(1) + \cdots + \tau(n)$, la parité de $S(n)$ est celle du nombre de
termes impairs de cette somme, c'est-à-dire du nombre de carrés parfaits compris entre $1$
et $n$. Ce nombre est exactement $\lfloor \sqrt{n} \rfloor$, puisque les carrés
$1^2, 2^2, \ldots, m^2$ sont ceux qui ne dépassent pas $n$ dès que $m \le \sqrt{n}$.

Donc
$$S(n) \text{ est impair} \iff \lfloor \sqrt{n} \rfloor \text{ est impair} .$$

**Vérification sur les premières valeurs :**

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\tau(n)$ | 1 | 2 | 2 | 3 | 2 | 4 | 2 | 4 | 3 | 4 |
| $S(n)$ | 1 | 3 | 5 | 8 | 10 | 14 | 16 | 20 | 23 | 27 |
| $\lfloor\sqrt n\rfloor$ | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 3 | 3 |

Les parités de $S(n)$ et de $\lfloor\sqrt n\rfloor$ coïncident bien à chaque colonne.

**Étape 3. Compter.**

Pour un entier $m \ge 1$, on a $\lfloor \sqrt n \rfloor = m$ exactement pour
$$m^2 \le n \le (m+1)^2 - 1,$$
ce qui fait $(m+1)^2 - m^2 = 2m+1$ valeurs de $n$.

Comme $44^2 = 1936$ et $45^2 = 2025 > 2005$, les entiers $n$ de $1$ à $2005$ se répartissent
ainsi :

- pour $m$ allant de $1$ à $43$ : $2m+1$ valeurs de $n$, toutes $\le 1935$ ;
- pour $m = 44$ : les $n$ de $1936$ à $2005$, soit $2005 - 1936 + 1 = 70$ valeurs.

$S(n)$ est impair quand $m$ est impair. Comme $44$ est pair, le bloc incomplet n'y contribue
pas, et
$$a = \sum_{\substack{1 \le m \le 43 \\ m \text{ impair}}} (2m+1) .$$

Les $m$ impairs de $1$ à $43$ sont $m = 2j-1$ pour $j = 1, \ldots, 22$, et
$2m+1 = 4j - 1$. Donc
$$a = \sum_{j=1}^{22} (4j-1) = 4 \times \frac{22 \times 23}{2} - 22 = 1012 - 22 = 990 .$$

Il reste
$$b = 2005 - 990 = 1015 .$$

**Conclusion.**

$$|a - b| = |990 - 1015| = 25 .$$

## Going further

Le calcul par ordinateur des $2005$ valeurs de $S(n)$ confirme $a = 990$, $b = 1015$ et
$|a-b| = 25$.

On peut aussi voir la chose ainsi : $b - a$ est la somme, sur les blocs complets, de
$\pm(2m+1)$ selon la parité de $m$, plus les $70$ derniers. Les blocs complets se compensent
deux à deux ($-3 + 5 = 2$, $-7+9 = 2$, …), ce qui explique pourquoi l'écart reste petit devant
$2005$.
