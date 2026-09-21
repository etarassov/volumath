---
id: "7947"
title: "Une triple composition qui s'annule"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [second degre, composition de fonctions, racines, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 11, niveau 1 (énoncé p. 280 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels et soit $f$ la fonction de $\mathbb{R}$ dans $\mathbb{R}$ définie par

$$f(x) = x^2 + ax + b .$$

On suppose qu'il existe un réel $t$ tel que

$$f(t) = 0 \qquad \text{et} \qquad f\big(f(f(t))\big) = 0 .$$

Montrer que $f(0) \times f(1) = 0$.

## Hints

1. Commence par écrire ce que valent $f(0)$ et $f(1)$ en fonction de $a$ et $b$. C'est cela qu'il faut faire apparaître à la fin.
2. On sait que $f(t) = 0$. Que devient alors $f(f(t))$ ?
3. Continue : que devient $f(f(f(t)))$ ?
4. Tu obtiens une équation portant sur $b$ seul (et $a$). Factorise-la.

## Solution

**Étape 1 : ce qu'il faut démontrer.**

$$f(0) = 0^2 + a \times 0 + b = b , \qquad f(1) = 1 + a + b .$$

Il s'agit donc de montrer que

$$b\,(1 + a + b) = 0 .$$

**Étape 2 : on déroule la composition.**

On sait que $f(t) = 0$. Alors

$$f\big(f(t)\big) = f(0) = b .$$

Puis

$$f\big(f(f(t))\big) = f(b) .$$

L'hypothèse dit que cette valeur est nulle :

$$f(b) = 0 .$$

**Étape 3 : on développe.**

$$f(b) = b^2 + ab + b = b\,(b + a + 1) .$$

Donc

$$b\,(1 + a + b) = 0 ,$$

ce qui est exactement $f(0) \times f(1) = 0$.

**Conclusion.** Sous l'hypothèse de l'énoncé, on a bien $f(0) \times f(1) = 0$.

## Going further

Ce que dit ce résultat, concrètement : ou bien $b = 0$, et alors $0$ est racine de $f$ ; ou bien $1 + a + b = 0$, et alors $1$ est racine de $f$. Autrement dit, **dès qu'une racine de $f$ revient à son point de départ après trois applications de $f$, la fonction $f$ admet déjà $0$ ou $1$ pour racine.**

Par exemple $f(x) = x^2 - x$ convient : $f(0) = 0$, et en prenant $t = 0$ on a bien $f(t) = 0$ et $f(f(f(t))) = 0$.
