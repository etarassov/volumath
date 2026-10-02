---
id: "5002"
title: "Les impairs qui ne sont pas somme de deux nombres premiers"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, parite, somme, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 1, problème 6"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

On s'amuse à écrire des nombres comme somme de deux nombres premiers :

$$4 = 2 + 2, \qquad 5 = 2 + 3, \qquad 6 = 3 + 3, \qquad 9 = 2 + 7, \qquad 39 = 2 + 37 .$$

On dirait que presque tous les nombres y arrivent. Regardons de plus près les nombres
**impairs** qui ne sont **pas** premiers : $9$, $15$, $21$, $25$, $27$, $33$, $35$, etc.

1. Écris $15$, $21$ et $25$ comme somme de deux nombres premiers.
2. Montre que $27$ n'est pas la somme de deux nombres premiers.
3. Trouve une règle simple qui dit, pour un nombre impair, s'il est ou non la somme de deux
   nombres premiers. Démontre cette règle.
4. Donne la liste de tous les nombres impairs non premiers inférieurs à $100$ qui ne sont
   **pas** la somme de deux nombres premiers.

*Rappel : un nombre premier est un entier supérieur ou égal à $2$ dont les seuls diviseurs
sont $1$ et lui-même. Le nombre $2$ est premier, et c'est le seul nombre premier pair.*

## Hints

1. Pour la question 1, essaie de partir toujours du même petit nombre premier.
2. Pour la question 3, pense à la parité. Si tu additionnes deux nombres impairs, le
   résultat est-il pair ou impair ?
3. Un nombre impair ne peut donc pas être la somme de deux nombres premiers **impairs**.
   Que reste-t-il comme possibilité ?
4. Si $n$ impair s'écrit $n = p + q$ avec $p$ et $q$ premiers, l'un des deux vaut $2$. Que
   doit alors être l'autre ?
5. Pour la question 4, il suffit donc de tester, pour chaque nombre impair non premier
   $n < 100$, si $n - 2$ est premier.

## Solution

### 1. Trois exemples

$$15 = 2 + 13, \qquad 21 = 2 + 19, \qquad 25 = 2 + 23 .$$

On remarque que le $2$ revient à chaque fois. Ce n'est pas un hasard, la question 3 va
l'expliquer.

### 3. La règle (on la démontre d'abord, la question 2 en découle)

**La règle : un nombre impair $n$ est la somme de deux nombres premiers si et seulement si
$n - 2$ est un nombre premier.**

*Pourquoi.* Supposons que $n$ soit impair et s'écrive $n = p + q$ avec $p$ et $q$ premiers.

- Si $p$ et $q$ étaient tous les deux impairs, leur somme serait paire. Or $n$ est impair :
  c'est impossible.
- Donc l'un au moins des deux nombres $p$ et $q$ est pair. Mais le seul nombre premier pair
  est $2$.

Quitte à échanger les noms, on a donc $p = 2$, et alors $q = n - 2$. Autrement dit, si $n$
impair est somme de deux nombres premiers, c'est forcément sous la forme

$$n = 2 + (n-2), \qquad \text{avec } n - 2 \text{ premier}.$$

Réciproquement, si $n - 2$ est premier, alors $n = 2 + (n-2)$ est bien une somme de deux
nombres premiers.

### 2. Le cas de 27

D'après la règle, il suffit de regarder $27 - 2 = 25$. Or $25 = 5 \times 5$ n'est pas
premier. Donc **$27$ n'est pas la somme de deux nombres premiers**.

(Sans la règle, on peut aussi vérifier à la main : $27 = 2 + 25$, $3 + 24$, $5 + 22$,
$7 + 20$, $11 + 16$, $13 + 14$... et dans chaque couple l'un des deux nombres n'est pas
premier.)

### 4. La liste jusqu'à 100

Les nombres impairs non premiers inférieurs à $100$ sont

$$9,\ 15,\ 21,\ 25,\ 27,\ 33,\ 35,\ 39,\ 45,\ 49,\ 51,\ 55,\ 57,\ 63,\ 65,\ 69,\ 75,\ 77,\ 81,\ 85,\ 87,\ 91,\ 93,\ 95,\ 99 .$$

Pour chacun, on regarde si $n - 2$ est premier. Ceux pour lesquels $n-2$ **n'est pas**
premier sont :

| $n$ | $n - 2$ | facteur trouvé |
|---|---|---|
| $27$ | $25$ | $5 \times 5$ |
| $35$ | $33$ | $3 \times 11$ |
| $51$ | $49$ | $7 \times 7$ |
| $57$ | $55$ | $5 \times 11$ |
| $65$ | $63$ | $7 \times 9$ |
| $77$ | $75$ | $3 \times 25$ |
| $87$ | $85$ | $5 \times 17$ |
| $93$ | $91$ | $7 \times 13$ |
| $95$ | $93$ | $3 \times 31$ |

**Conclusion.** Les nombres impairs non premiers inférieurs à $100$ qui ne sont pas somme de
deux nombres premiers sont

$$\boxed{27,\ 35,\ 51,\ 57,\ 65,\ 77,\ 87,\ 93,\ 95 .}$$

Tous les autres s'écrivent $2 + (\text{nombre premier})$ : par exemple $91 = 2 + 89$ et
$99 = 2 + 97$.

## Going further

Et les nombres **pairs** ? Essaie : $4 = 2+2$, $6 = 3+3$, $8 = 3+5$, $10 = 3+7$,
$12 = 5+7$, $14 = 3+11$, $100 = 3 + 97$... Tu n'en trouveras aucun qui résiste.

Personne n'a jamais trouvé de nombre pair supérieur à $2$ qui ne soit pas la somme de deux
nombres premiers, et personne n'a jamais réussi à démontrer qu'il n'en existe pas. C'est la
**conjecture de Goldbach**, posée en 1742 et toujours ouverte aujourd'hui. Les ordinateurs
l'ont vérifiée jusqu'à des nombres à dix-neuf chiffres, ce qui ne prouve rien.
