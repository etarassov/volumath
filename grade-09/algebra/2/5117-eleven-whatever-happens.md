---
id: "5117"
title: "Onze, quoi qu'il arrive"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [chiffres, somme-des-chiffres, mise-en-equation, renverse]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 11"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Soit $N$ un nombre à deux chiffres qui n'est pas un multiple de $10$, et soit $s$ la somme de ses deux chiffres.

On suppose que $N$ est un multiple de $s$, et on note $k$ le quotient : $N = k \times s$.

On appelle $M$ le nombre obtenu en échangeant les deux chiffres de $N$. On admet que $M$ est lui aussi un multiple de $s$, et on note $m$ le quotient : $M = m \times s$.

Quelle relation lie $m$ et $k$ ?

*Exemple : pour $N = 12$, on a $s = 3$ et $k = 4$ ; puis $M = 21$ et $m = 7$.*

## Hints

1. Appelle $a$ le chiffre des dizaines de $N$ et $b$ celui des unités. Écris $N$, $M$ et $s$ en fonction de $a$ et $b$.
2. Ne cherche pas $k$ et $m$ séparément. Regarde plutôt $N + M$.
3. $10a + b + 10b + a = 11a + 11b$.

## Solution

**Étape 1. Traduire.**

Notons $a$ le chiffre des dizaines de $N$ et $b$ celui des unités. Alors

$$N = 10a + b, \qquad M = 10b + a, \qquad s = a + b$$

Comme $N$ n'est pas un multiple de $10$, on a $b \neq 0$ ; et $a \neq 0$ puisque $N$ a deux chiffres. Donc $s \geqslant 2$, et en particulier $s \neq 0$.

**Étape 2. La bonne quantité à regarder.**

Au lieu de chercher $k$ et $m$ un par un, additionnons $N$ et $M$ :

$$N + M = (10a + b) + (10b + a) = 11a + 11b = 11\,(a+b) = 11\,s$$

La somme du nombre et de son renversé vaut toujours $11$ fois la somme des chiffres. C'est toute l'affaire.

**Étape 3. Conclure.**

D'un côté $N + M = k\,s + m\,s = (k+m)\,s$, de l'autre $N + M = 11\,s$. Donc

$$(k + m)\,s = 11\,s$$

et comme $s \neq 0$, on peut simplifier :

$$\boxed{k + m = 11}$$

**Vérifications.**

| $N$ | $s$ | $k$ | $M$ | $m$ | $k+m$ |
|---|---|---|---|---|---|
| $12$ | $3$ | $4$ | $21$ | $7$ | $11$ |
| $18$ | $9$ | $2$ | $81$ | $9$ | $11$ |
| $27$ | $9$ | $3$ | $72$ | $8$ | $11$ |
| $45$ | $9$ | $5$ | $54$ | $6$ | $11$ |
| $84$ | $12$ | $7$ | $48$ | $4$ | $11$ |

## Going further

Au passage, le calcul montre que l'hypothèse « $M$ est lui aussi un multiple de $s$ » était inutile : elle se déduit du reste. En effet, si $N = k\,s$, alors

$$M = 11\,s - N = 11\,s - k\,s = (11 - k)\,s$$

donc $M$ est automatiquement un multiple de $s$, avec $m = 11 - k$.

Le même calcul avec trois chiffres donne quelque chose de différent : pour $N = \overline{abc}$ et son renversé $M = \overline{cba}$, on trouve $N + M = 101(a+c) + 20b$, qui ne se factorise pas aussi joliment. En revanche la **différence** $N - M = 99\,(a - c)$ est toujours un multiple de $99$.
