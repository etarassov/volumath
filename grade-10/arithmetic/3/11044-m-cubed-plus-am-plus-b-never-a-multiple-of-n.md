---
id: "11044"
title: "m³ + am + b n'est jamais un multiple de n"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [restes, tiroirs, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 7 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. Montrer qu'il existe des entiers $a$ et $b$ tels que, pour tout entier $m$,
le nombre $m^3 + am + b$ ne soit pas un multiple de $n$.

## Hints

1. Le reste de $m^3 + am$ dans la division par $n$ ne dépend que du reste de $m$. Combien de restes différents $m^3 + am$ peut-il donc prendre, au plus ?
2. S'il existe un reste $c$ que $m^3 + am$ ne prend jamais, quel $b$ choisir ?
3. Il suffit de trouver un $a$ pour lequel deux restes différents de $m$ donnent le même reste pour $m^3 + am$. Essaie $a = -1$ avec $m = 0$ et $m = 1$.

## Solution

On choisit $a = -1$ et on étudie $f(m) = m^3 - m$.

**Le reste de $f(m)$ ne dépend que du reste de $m$.** Si $m'$ et $m$ ont le même reste dans la division par
$n$, alors $n$ divise $m' - m$, et

$$f(m') - f(m) = (m'^3 - m^3) - (m' - m) = (m' - m)\left(m'^2 + m'm + m^2 - 1\right)$$

est un multiple de $n$. Donc $f(m')$ et $f(m)$ ont le même reste.

**Un reste n'est jamais atteint.** Tout entier $m$ a pour reste l'un des $n$ nombres $0, 1, \ldots, n - 1$.
Les restes de $f(m)$ sont donc parmi ceux de $f(0), f(1), \ldots, f(n - 1)$ : il y en a au plus $n$. Mais
$f(0) = 0$ et $f(1) = 1 - 1 = 0$, et comme $n \geqslant 2$, les nombres $0$ et $1$ sont bien deux restes
différents. Ainsi, $f(m)$ prend au plus $n - 1$ restes différents, alors qu'il y a $n$ restes possibles.
Il existe donc un reste $c$, entre $0$ et $n - 1$, que $f(m) = m^3 - m$ ne prend jamais.

**Le choix de $b$.** Prenons $b = -c$. Si $m^3 - m - c$ était un multiple de $n$, alors $m^3 - m$ aurait pour
reste $c$ dans la division par $n$, ce qui n'arrive jamais.

**Conclusion.** Avec $a = -1$ et $b = -c$, le nombre $m^3 + am + b = m^3 - m - c$ n'est jamais un multiple
de $n$.

Par exemple, pour $n = 3$ : $m^3 - m = (m - 1)m(m + 1)$ est toujours un multiple de $3$, donc $c = 1$
convient, et $m^3 - m - 1$ n'est jamais un multiple de $3$.

## Going further

Montrer que, pour $a = 0$, on ne peut pas toujours trouver $b$ : pour $n = 5$, le nombre $m^3$ prend tous
les restes $0, 1, 2, 3, 4$ dans la division par $5$.
