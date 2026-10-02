---
id: "10619"
title: "Les composées de x² + 2020x + 1 s'annulent"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [composee, recurrence, theoreme-des-valeurs-intermediaires, continuite, second-degre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 12 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Soit $f$ la fonction définie sur $\mathbb{R}$ par $f(x) = x^2 + 2020x + 1$. Pour tout entier $n \geqslant 1$, on note $f^n$ la composée de $f$ avec elle-même $n$ fois :

$$f^n(x) = \underbrace{f(f(\cdots f(x) \cdots))}_{n \text{ fois}}$$

Montrer que, pour tout entier $n \geqslant 1$, il existe un réel $x$ tel que $f^n(x) = 0$.

## Hints

1. Pour $n = 1$, au lieu de calculer un discriminant, regarde le signe de $f(-1)$ et de $f(0)$.
2. Calculer le discriminant ne marchera plus pour $f^2$, qui est de degré $4$. Le théorème des valeurs intermédiaires, lui, marche pour toute fonction continue.
3. En passant de $f(-1)$ à $f(0)$, la fonction $f$ prend la valeur $0$, mais aussi la valeur $-1$. Pourquoi est-ce utile pour l'étape suivante ?
4. Montre par récurrence que $f^n$ prend à la fois la valeur $-1$ et la valeur $0$.

## Solution

On a $f(-1) = 1 - 2020 + 1 = -2018$ et $f(0) = 1$.

Montrons par récurrence la propriété suivante, pour tout entier $n \geqslant 1$ :

> $\mathcal{P}(n)$ : il existe des réels $\alpha$ et $\beta$ tels que $f^n(\alpha) = -1$ et $f^n(\beta) = 0$.

**Initialisation.** La fonction $f$ est un polynôme, donc elle est continue sur $\mathbb{R}$. Sur l'intervalle $[-1, 0]$, elle passe de $f(-1) = -2018$ à $f(0) = 1$. Les nombres $-1$ et $0$ sont tous les deux entre $-2018$ et $1$, donc, par le théorème des valeurs intermédiaires, $f$ prend la valeur $-1$ et la valeur $0$ sur $[-1, 0]$. Ainsi $\mathcal{P}(1)$ est vraie.

**Hérédité.** Supposons $\mathcal{P}(n)$ vraie pour un entier $n \geqslant 1$, avec $f^n(\alpha) = -1$ et $f^n(\beta) = 0$. Alors

$$f^{n+1}(\alpha) = f\left(f^n(\alpha)\right) = f(-1) = -2018 \qquad \text{et} \qquad f^{n+1}(\beta) = f\left(f^n(\beta)\right) = f(0) = 1$$

La fonction $f^{n+1}$ est une composée de fonctions continues, donc elle est continue. Entre $\alpha$ et $\beta$, elle passe de $-2018$ à $1$. Par le théorème des valeurs intermédiaires, elle prend entre ces deux points la valeur $-1$ et la valeur $0$. Donc $\mathcal{P}(n + 1)$ est vraie.

Par récurrence, $\mathcal{P}(n)$ est vraie pour tout $n \geqslant 1$.

**Conclusion : pour tout entier $n \geqslant 1$, la fonction $f^n$ prend la valeur $0$, c'est-à-dire qu'il existe un réel $x$ tel que $f^n(x) = 0$.**

## Going further

On peut se passer du théorème des valeurs intermédiaires. Avec la forme canonique $f(u) = (u + 1010)^2 + m$, où $m = 1 - 1010^2$, montre que l'équation $f(u) = y$ a une solution $u \geqslant -1010$ dès que $y \geqslant m$. Déduis-en par récurrence que $f^n$ prend toutes les valeurs supérieures ou égales à $m$.
