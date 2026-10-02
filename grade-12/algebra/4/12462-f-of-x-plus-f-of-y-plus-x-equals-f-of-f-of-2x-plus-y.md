---
id: "12462"
title: "L'équation f(x + f(y)) + x = f(f(2x) + y)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, substitution, fonctions-affines]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 janvier 2020"
  reference: "2020-01_sujet-test-janvier.pdf, exercice 6 (groupe Senior) ; corrigé 2020-01_corrige-test-janvier.pdf (solution alternative n° 1 du corrigé, détaillée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-01_sujet-test-janvier.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs réelles telles que, pour
tous réels $x$ et $y$,
$$f(x + f(y)) + x = f(f(2x) + y).$$

## Hints

1. Cherche d'abord des solutions de la forme $f(x) = x + a$.
2. Pose $a = f(0)$ et remplace $x$ par $0$. Tu obtiens une relation entre $f(f(w))$ et $f(w + a)$,
   valable pour tout réel $w$.
3. Pour un réel $y$ fixé, on veut montrer que $f(y) = y + a$. Pose $x = y + a - f(y)$ : ce choix
   rend égaux les deux nombres $x + f(y)$ et $y + a$.
4. Calcule de deux façons $f(f(2x) + y + a)$, avec ce $x$. Tu dois utiliser l'équation trois fois :
   avec $(0, f(2x) + y)$, avec $(x, y)$, et avec $(x, x + f(y))$.

## Solution

On note $E(x, y)$ l'égalité $f(x + f(y)) + x = f(f(2x) + y)$, et on pose $a = f(0)$.

### Les fonctions $x \mapsto x + a$ conviennent

Si $f(x) = x + a$ pour tout $x$, alors, pour tous réels $x$ et $y$,
$$f(x + f(y)) + x = (x + y + a) + a + x = 2x + y + 2a,$$
$$f(f(2x) + y) = (2x + a + y) + a = 2x + y + 2a.$$
Les deux membres sont égaux : **pour tout réel $a$, la fonction $x \mapsto x + a$ est solution.**

### Ce sont les seules

Soit $f$ une solution, et $a = f(0)$.

**Une première relation.** L'égalité $E(0, w)$ s'écrit $f(f(w)) = f(f(0) + w)$, c'est-à-dire
$$f(f(w)) = f(w + a) \quad \text{pour tout réel } w. \qquad (\star)$$

**Le choix de $x$.** Fixons un réel $y$, et posons $x = y + a - f(y)$, de sorte que
$$x + f(y) = y + a.$$
Notons $u = f(2x) + y$. Calculons $f(u + a)$ en quatre étapes.

1. D'après $(\star)$ avec $w = u$ : $f(u + a) = f(f(u))$.
2. D'après $E(x, y)$, on a $f(u) = f(x + f(y)) + x$. Donc
   $f(f(u)) = f(f(x + f(y)) + x)$.
3. Écrivons $E(x, v)$ avec $v = x + f(y)$ : $f(x + f(v)) + x = f(f(2x) + v)$. Le nombre
   $x + f(v)$ est exactement celui de l'étape 2, donc
   $f(f(x + f(y)) + x) = f(f(2x) + x + f(y)) - x$.
4. Enfin, $f(2x) + x + f(y) = f(2x) + y + a = u + a$, grâce au choix de $x$.

En mettant bout à bout ces quatre étapes :
$$f(u + a) = f(f(u)) = f(f(x + f(y)) + x) = f(f(2x) + x + f(y)) - x = f(u + a) - x.$$
Donc $x = 0$, c'est-à-dire $y + a - f(y) = 0$, soit $f(y) = y + a$.

Ceci vaut pour tout réel $y$. **Les solutions sont exactement les fonctions $x \mapsto x + a$, où
$a$ est un réel quelconque.**

## Going further

1. Une autre méthode consiste à montrer d'abord que $f$ est injective, puis à simplifier $(\star)$
   par $f$. Montrer, à partir de $E(x, 0)$ et de $(\star)$, que $f(-a) = 0$.
2. Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ telles que, pour tous réels $x$ et $y$,
   $f(x + f(y)) = f(x) + y$.
