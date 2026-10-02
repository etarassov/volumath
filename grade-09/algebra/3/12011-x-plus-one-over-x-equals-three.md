---
id: "12011"
title: "x + 1/x = 3, que vaut x⁷ + 1/x⁷ ?"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [identites-remarquables, puissances, calcul-litteral, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 1 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

Soit $x$ un nombre réel strictement positif tel que

$$x + \frac{1}{x} = 3 .$$

Calculer

$$x^7 + \frac{1}{x^7} .$$

On demande la valeur exacte, sans calculer $x$.

## Hints

1. Élevez au carré l'égalité $x + \dfrac{1}{x} = 3$. Que vaut $x^2 + \dfrac{1}{x^2}$ ?
2. Développez le produit $\left(x + \dfrac{1}{x}\right)\left(x^2 + \dfrac{1}{x^2}\right)$. Vous y retrouvez $x^3 + \dfrac{1}{x^3}$, plus un terme déjà connu.
3. Plus généralement, notez $u_n = x^n + \dfrac{1}{x^n}$ et développez $\left(x + \dfrac{1}{x}\right) \times u_n$. Vous obtenez une relation entre $u_{n+1}$, $u_n$ et $u_{n-1}$.

## Solution

**Réponse.** $x^7 + \dfrac{1}{x^7} = 843$.

Pour tout entier $n \ge 0$, notons

$$u_n = x^n + \frac{1}{x^n} .$$

On connaît $u_0 = 1 + 1 = 2$ et $u_1 = 3$.

**Une relation entre trois termes qui se suivent.** Pour $n \ge 1$, développons :

$$\left(x + \frac{1}{x}\right)\left(x^n + \frac{1}{x^n}\right) = x^{n+1} + \frac{x}{x^n} + \frac{x^n}{x} + \frac{1}{x^{n+1}} = x^{n+1} + \frac{1}{x^{n-1}} + x^{n-1} + \frac{1}{x^{n+1}} .$$

On reconnaît $u_{n+1} + u_{n-1}$. Comme $x + \dfrac{1}{x} = 3$, on obtient

$$3\,u_n = u_{n+1} + u_{n-1}, \qquad \text{c'est-à-dire} \qquad u_{n+1} = 3\,u_n - u_{n-1} .$$

**Le calcul.** On applique cette relation de proche en proche :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $u_n$ | $2$ | $3$ | $7$ | $18$ | $47$ | $123$ | $322$ | $843$ |

Par exemple $u_2 = 3 \times 3 - 2 = 7$, $u_3 = 3 \times 7 - 3 = 18$, et à la fin $u_7 = 3 \times 322 - 123 = 966 - 123 = 843$.

On peut contrôler le début autrement : $\left(x + \dfrac{1}{x}\right)^2 = x^2 + 2 + \dfrac{1}{x^2}$, donc $u_2 = 9 - 2 = 7$, ce qui est bien la valeur du tableau.

**Conclusion.** $x^7 + \dfrac{1}{x^7} = 843$.

## Going further

On n'a jamais eu besoin de connaître $x$, ni même d'utiliser que $x > 0$. Les deux nombres qui vérifient $x + \dfrac{1}{x} = 3$ sont $\dfrac{3 + \sqrt{5}}{2}$ et son inverse $\dfrac{3 - \sqrt{5}}{2}$, et ils donnent la même valeur de $u_7$.

On peut aussi aller plus vite avec des produits bien choisis : en développant, $u_3\,u_4 = u_7 + u_1$, donc $u_7 = 18 \times 47 - 3 = 846 - 3 = 843$.
