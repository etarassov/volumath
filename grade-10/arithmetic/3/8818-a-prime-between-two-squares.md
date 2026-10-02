---
id: "8818"
title: "Un nombre premier entre deux carrés"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, difference-de-carres, diviseurs, equation-entiere]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 11, p. 55"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $p$ un nombre premier et soient $m$ et $n$ deux entiers **strictement positifs** tels que
$$p^2 + m^2 = n^2 .$$

Montrer qu'alors $n = m + 1$.

Par exemple, $5^2 + 12^2 = 13^2$, et on a bien $13 = 12 + 1$.

## Hints

1. Fais passer $m^2$ de l'autre côté : tu obtiens $p^2$ comme une différence de deux carrés. Factorise-la.
2. Tu obtiens $p^2 = (n-m)(n+m)$. Comme $p$ est premier, quels sont les diviseurs positifs de $p^2$ ? Il n'y en a que trois.
3. Le facteur $n-m$ est donc $1$, $p$ ou $p^2$. Élimine deux de ces trois possibilités en comparant $n-m$ et $n+m$.
4. Remarque que $n+m$ et $n-m$ sont liés : leur produit est $p^2$, donc $n+m = \dfrac{p^2}{n-m}$.

## Solution

### Mise en forme

De $p^2 + m^2 = n^2$ on tire
$$p^2 = n^2 - m^2 = (n-m)(n+m).$$

Au passage, $n^2 = p^2 + m^2 > m^2$ et les deux entiers sont naturels, donc $n > m$. Ainsi $n - m$ et $n + m$ sont deux entiers strictement positifs, et
$$n - m \; \leqslant \; n + m .$$

### On utilise que $p$ est premier

Les seuls diviseurs positifs de $p^2$ sont $1$, $p$ et $p^2$. Comme $n-m$ divise $p^2$, on a donc trois cas.

**Cas $n - m = p^2$.** Alors $n+m = \dfrac{p^2}{n-m} = 1$. Mais $n+m \geqslant n-m = p^2 \geqslant 4$ : impossible.

**Cas $n - m = p$.** Alors $n + m = \dfrac{p^2}{p} = p$, donc $n+m = n-m$, ce qui force $m = 0$. Or $m$ est strictement positif : impossible.

**Cas $n - m = 1$.** C'est le seul restant, et il donne bien
$$n = m + 1 .$$

### Vérification

Réciproquement, si $n = m+1$, l'équation devient
$$p^2 = (m+1)^2 - m^2 = 2m + 1 ,$$
c'est-à-dire $m = \dfrac{p^2-1}{2}$, qui est bien un entier dès que $p$ est impair. Par exemple :

| $p$ | $m$ | $n$ | l'égalité |
|---|---|---|---|
| $3$ | $4$ | $5$ | $9 + 16 = 25$ |
| $5$ | $12$ | $13$ | $25 + 144 = 169$ |
| $7$ | $24$ | $25$ | $49 + 576 = 625$ |

Pour $p = 2$, on trouverait $m = \dfrac32$, qui n'est pas entier : il n'existe donc aucun triplet avec $p = 2$.

**Conclusion.** L'égalité $p^2+m^2 = n^2$ avec $p$ premier et $m, n$ strictement positifs impose bien $n = m+1$.

(L'hypothèse $m \geqslant 1$ est nécessaire : avec $m = 0$ on aurait $n = p$, et $n = m+1$ deviendrait $p = 1$.)

## Going further

Que se passe-t-il si l'on remplace le nombre premier $p$ par un entier quelconque $c$ ? Trouver toutes les solutions de $c^2 + m^2 = n^2$ pour $c = 8$, puis pour $c = 15$.
