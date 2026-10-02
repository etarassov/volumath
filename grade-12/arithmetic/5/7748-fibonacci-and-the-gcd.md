---
id: "7748"
title: "Le PGCD de deux nombres de Fibonacci"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [fibonacci, pgcd, recurrence-double, algorithme-d-euclide]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », mardi 26 matin (Nicolas Ségarra), exercice sur la suite de Fibonacci. Le polycopié démarre la suite à F₁ = F₂ = 1 ; on a repris ici l'indexation F₀ = 0, qui rend la démonstration plus simple. Le résultat lui-même est vrai avec les deux conventions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On définit la suite de Fibonacci par

$$F_0 = 0, \qquad F_1 = 1, \qquad F_{n+2} = F_{n+1} + F_n \quad \text{pour tout } n \geqslant 0 .$$

Ses premiers termes sont donc $0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, \ldots$

1. Montrer que deux termes consécutifs sont toujours premiers entre eux : $\mathrm{PGCD}(F_n,\, F_{n+1}) = 1$ pour tout $n \geqslant 0$.
2. Montrer que pour tous entiers $m \geqslant 1$ et $n \geqslant 0$,
   $$F_{m+n} = F_{m-1} F_n + F_m F_{n+1} .$$
3. En déduire que pour tous entiers $m, n \geqslant 1$,
   $$\mathrm{PGCD}(F_m,\, F_n) = F_{\mathrm{PGCD}(m,\,n)} .$$

## Hints

1. Pour la question 1, utilise que $\mathrm{PGCD}(a+b,\, b) = \mathrm{PGCD}(a,\, b)$, et récurre.
2. Pour la question 2, fixe $m$ et fais une récurrence sur $n$. Comme la relation de Fibonacci relie **trois** termes, la récurrence doit porter sur deux rangs à la fois : vérifie $n = 0$ et $n = 1$, puis passe de $n$ et $n+1$ à $n+2$.
3. Pour la question 3, commence par le cas $m > n$ et applique la question 2 avec la décomposition $m = (m-n) + n$.
4. Tu obtiendras $\mathrm{PGCD}(F_m,\, F_n) = \mathrm{PGCD}(F_{m-n},\, F_n)$. Compare avec ce que fait l'algorithme d'Euclide sur les **indices**.
5. Teste sur un exemple pour te convaincre : $\mathrm{PGCD}(F_{12},\, F_{18}) = \mathrm{PGCD}(144,\, 2584)$. Que vaut $F_6$ ?

## Solution

**L'idée : l'opération « PGCD » sur les nombres de Fibonacci reproduit exactement l'algorithme d'Euclide sur les indices.**

### Question 1 : deux termes consécutifs sont premiers entre eux

On utilise le fait classique suivant : pour tous entiers $a$ et $b$,

$$\mathrm{PGCD}(a + b,\, b) = \mathrm{PGCD}(a,\, b) ,$$

car un entier divise $a$ et $b$ si et seulement s'il divise $a+b$ et $b$.

Pour $n \geqslant 1$, comme $F_{n+1} = F_n + F_{n-1}$ :

$$\mathrm{PGCD}(F_{n+1},\, F_n) = \mathrm{PGCD}(F_n + F_{n-1},\, F_n) = \mathrm{PGCD}(F_{n-1},\, F_n) .$$

Le PGCD de deux termes consécutifs ne dépend donc pas du rang. En redescendant jusqu'au début,

$$\mathrm{PGCD}(F_{n+1},\, F_n) = \mathrm{PGCD}(F_1,\, F_0) = \mathrm{PGCD}(1,\, 0) = 1 .$$

**Deux nombres de Fibonacci consécutifs sont toujours premiers entre eux.**

### Question 2 : la formule d'addition

Fixons $m \geqslant 1$ et montrons par récurrence sur $n$ que

$$(\star) \qquad F_{m+n} = F_{m-1} F_n + F_m F_{n+1} .$$

La relation de Fibonacci fait intervenir trois termes, donc la récurrence porte sur deux rangs à la fois : on vérifie $(\star)$ pour $n = 0$ et $n = 1$, puis on montre que $(\star)$ pour $n$ et $n+1$ entraîne $(\star)$ pour $n+2$.

**Initialisation.**

Pour $n = 0$ : le membre de droite vaut $F_{m-1} F_0 + F_m F_1 = F_{m-1} \times 0 + F_m \times 1 = F_m$, qui est bien $F_{m+0}$.

Pour $n = 1$ : le membre de droite vaut $F_{m-1} F_1 + F_m F_2 = F_{m-1} + F_m = F_{m+1}$, qui est bien $F_{m+1}$.

**Hérédité.** Supposons $(\star)$ vraie aux rangs $n$ et $n+1$. Alors

$$F_{m+n+2} = F_{m+n+1} + F_{m+n}$$
$$= \bigl(F_{m-1} F_{n+1} + F_m F_{n+2}\bigr) + \bigl(F_{m-1} F_n + F_m F_{n+1}\bigr)$$
$$= F_{m-1}\,(F_{n+1} + F_n) + F_m\,(F_{n+2} + F_{n+1})$$
$$= F_{m-1} F_{n+2} + F_m F_{n+3} .$$

C'est exactement $(\star)$ au rang $n+2$.

**La formule $(\star)$ est donc vraie pour tous $m \geqslant 1$ et $n \geqslant 0$.**

Vérification : avec $m = 3$ et $n = 2$, $F_5 = 5$ et $F_2 F_2 + F_3 F_3 = 1 + 4 = 5$.

### Question 3 : le PGCD suit les indices

**Le pas clé.** Soient $m > n \geqslant 1$. Appliquons $(\star)$ à la décomposition $m = (m-n) + n$, c'est-à-dire avec $m-n$ à la place de $m$ et $n$ à la place de $n$ :

$$F_m = F_{m-n-1} F_n + F_{m-n} F_{n+1} .$$

Le terme $F_{m-n-1} F_n$ est un multiple de $F_n$. Donc

$$\mathrm{PGCD}(F_m,\, F_n) = \mathrm{PGCD}(F_{m-n} F_{n+1},\, F_n) .$$

Or $F_{n+1}$ et $F_n$ sont premiers entre eux d'après la question 1. Un facteur premier avec $F_n$ ne change pas le PGCD avec $F_n$, donc

$$\mathrm{PGCD}(F_m,\, F_n) = \mathrm{PGCD}(F_{m-n},\, F_n) .$$

**On itère.** Ce pas remplace le couple d'indices $(m, n)$ par $(m-n, n)$. C'est très exactement la soustraction répétée de l'algorithme d'Euclide, appliquée aux indices et non aux valeurs.

En répétant, on aboutit au couple $(d, d)$ où $d = \mathrm{PGCD}(m, n)$, ou bien au couple $(0, d)$ selon la façon dont on compte. Dans le premier cas,

$$\mathrm{PGCD}(F_m,\, F_n) = \mathrm{PGCD}(F_d,\, F_d) = F_d ;$$

dans le second, $\mathrm{PGCD}(F_0, F_d) = \mathrm{PGCD}(0, F_d) = F_d$. Les deux donnent la même chose.

**Conclusion :**

$$\mathrm{PGCD}(F_m,\, F_n) = F_{\mathrm{PGCD}(m,\,n)} .$$

**Vérification.** $\mathrm{PGCD}(12, 18) = 6$, et $F_6 = 8$. Or $F_{12} = 144 = 8 \times 18$ et $F_{18} = 2584 = 8 \times 323$. L'algorithme d'Euclide donne $\mathrm{PGCD}(144, 2584) = 8$. La formule est confirmée.

## Going further

Deux conséquences immédiates, jolies et souvent utiles.

**$F_m$ divise $F_n$ si et seulement si $m$ divise $n$** (pour $m \geqslant 3$, afin d'écarter les cas particuliers $F_1 = F_2 = 1$). En effet $F_m \mid F_n$ équivaut à $\mathrm{PGCD}(F_m, F_n) = F_m$, donc à $F_{\mathrm{PGCD}(m,n)} = F_m$, donc à $\mathrm{PGCD}(m,n) = m$ puisque la suite est strictement croissante à partir du rang $2$.

**Les rangs des nombres de Fibonacci pairs.** $F_3 = 2$, donc $F_n$ est pair exactement quand $3$ divise $n$. On retrouve le motif impair, impair, pair qui se répète dans la suite : $1, 1, 2, 3, 5, 8, 13, 21, 34, \ldots$

**Pourquoi partir de $F_0 = 0$.** Le résultat est vrai quelle que soit la convention : comme $m$ et $n$ valent au moins $1$, leur PGCD vaut au moins $1$, et l'indice $0$ n'apparaît jamais dans l'énoncé. Mais la *démonstration*, elle, s'en sert deux fois : la formule de la question 2 avec $n = 0$, et le dernier pas de l'algorithme d'Euclide, qui utilise $\mathrm{PGCD}(F_0, F_d) = F_d$. Poser $F_0 = 0$ évite donc de traiter ces deux cas à part. Le polycopié d'origine démarre à $F_1 = F_2 = 1$.
