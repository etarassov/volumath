---
id: "7944"
title: "Élever une congruence à la puissance p"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, binome de newton, nombres premiers, coefficient binomial]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 4, niveau 1 (énoncé p. 280 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers relatifs et $p$ un nombre premier. Montrer que si

$$x \equiv y \pmod p ,$$

alors

$$x^p \equiv y^p \pmod{p^2} .$$

## Hints

1. Écris l'hypothèse sous la forme $x = y + kp$, avec $k$ entier.
2. Développe $x^p = (y + kp)^p$ avec la formule du binôme de Newton.
3. Regarde chaque terme du développement : à partir de quel rang est-il divisible par $p^2$ ?
4. Il reste deux termes à examiner de près. L'un d'eux contient le coefficient binomial $\binom{p}{1}$ : que vaut-il ?

## Solution

**Étape 1 : on écrit l'hypothèse.**

L'hypothèse $x \equiv y \pmod p$ signifie qu'il existe un entier $k$ tel que

$$x = y + kp .$$

**Étape 2 : la formule du binôme.**

$$x^p = (y + kp)^p = \sum_{i=0}^{p} \binom{p}{i} \, y^{\,p-i} \, (kp)^i .$$

Séparons les trois premiers termes du reste :

$$x^p = \underbrace{y^p}_{i=0} \ + \ \underbrace{\binom{p}{1} y^{\,p-1} (kp)}_{i=1} \ + \ \underbrace{\sum_{i=2}^{p} \binom{p}{i} y^{\,p-i}(kp)^i}_{i \ge 2} .$$

**Étape 3 : les termes avec $i \ge 2$.**

Pour $i \ge 2$, le facteur $(kp)^i = k^i p^i$ contient $p^i$, donc au moins $p^2$. Chacun de ces termes est donc un multiple de $p^2$, et leur somme aussi.

**Étape 4 : le terme $i = 1$.**

On a $\binom{p}{1} = p$, donc ce terme vaut

$$p \times y^{\,p-1} \times kp = k\,y^{\,p-1}\,p^2 ,$$

qui est également un multiple de $p^2$. C'est ici que la puissance $p$ de l'énoncé joue son rôle : c'est l'exposant $p$ qui fait apparaître un second facteur $p$ à côté de celui venant de $kp$.

**Étape 5 : conclusion.**

Tous les termes du développement sauf $y^p$ sont des multiples de $p^2$. Donc

$$x^p - y^p \ \text{ est un multiple de } \ p^2 , \qquad \text{c'est-à-dire} \qquad x^p \equiv y^p \pmod{p^2} .$$

## Going further

Remarque que la primalité de $p$ n'a servi nulle part ! Le même calcul montre que pour tout entier $n \ge 1$, si $x \equiv y \pmod n$ alors $x^n \equiv y^n \pmod{n^2}$.

En revanche, on ne peut pas aller plus loin sans hypothèse supplémentaire : avec $p = 3$, $x = 4$ et $y = 1$, on a $4 \equiv 1 \pmod 3$ et $4^3 - 1^3 = 63 = 7 \times 9$, qui est bien divisible par $9 = 3^2$ mais pas par $27 = 3^3$.
