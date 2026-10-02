---
id: "12239"
title: "f(x + y) = f(x − y) + f(f(1 − xy))"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation fonctionnelle, substitution, fonction paire, fonction constante]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de janvier 2016"
  reference: "2017-10_ofm-2015-2016-test-janvier.pdf, test du 6 janvier 2016, exercice commun, exercice 4 ; corrigé 2017-10_ofm-2015-2016-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-janvier.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x + y) = f(x - y) + f(f(1 - xy)).$$

## Hints

1. Essaie $y = 0$, puis $x = 0$. Que peux-tu dire de $f(f(1))$, puis de $f(-y)$ ?
2. Prends $y = 1$. Écris aussi l'égalité obtenue en remplaçant $x$ par $2 - x$, et compare les deux.
3. Tu dois obtenir $f(x + 2) = f(x - 2)$ pour tout réel $x$. Que donne alors $y = 2$ ?
4. Si $f(f(t)) = 0$ pour tout $t$, l'équation devient $f(x + y) = f(x - y)$. Choisis $x$ et $y$ pour faire apparaître $f(0)$.

## Solution

On note $(\star)$ l'égalité de l'énoncé, valable pour tous réels $x$ et $y$.

**Étape 1. $f(f(1)) = 0$, et $f$ est paire.**

Avec $y = 0$, l'égalité $(\star)$ donne $f(x) = f(x) + f(f(1))$, donc $f(f(1)) = 0$.

Avec $x = 0$, elle donne $f(y) = f(-y) + f(f(1)) = f(-y)$ pour tout réel $y$. La fonction $f$ est donc paire.

**Étape 2. $f(x + 2) = f(x - 2)$ pour tout réel $x$.**

Avec $y = 1$, l'égalité $(\star)$ donne, pour tout réel $x$,
$$f(x + 1) = f(x - 1) + f(f(1 - x)). \qquad (1)$$

Écrivons la même égalité en remplaçant $x$ par $2 - x$. On a $(2 - x) + 1 = 3 - x$, $(2 - x) - 1 = 1 - x$ et $1 - (2 - x) = x - 1$, donc
$$f(3 - x) = f(1 - x) + f(f(x - 1)). \qquad (2)$$

Comme $f$ est paire, $f(3 - x) = f(x - 3)$ et $f(1 - x) = f(x - 1)$. En appliquant $f$ à cette dernière égalité, on a aussi $f(f(x - 1)) = f(f(1 - x))$. L'égalité $(2)$ devient donc
$$f(x - 3) = f(x - 1) + f(f(1 - x)).$$

Le membre de droite est le même que dans $(1)$. Donc $f(x + 1) = f(x - 3)$ pour tout réel $x$. En remplaçant $x$ par $x + 1$, on obtient $f(x + 2) = f(x - 2)$ pour tout réel $x$.

**Étape 3. $f(f(t)) = 0$ pour tout réel $t$.**

Avec $y = 2$, l'égalité $(\star)$ donne $f(x + 2) = f(x - 2) + f(f(1 - 2x))$. D'après l'étape 2, on en déduit $f(f(1 - 2x)) = 0$ pour tout réel $x$.

Soit $t$ un réel quelconque. En prenant $x = \frac{1 - t}{2}$, on a $1 - 2x = t$, donc $f(f(t)) = 0$.

**Étape 4. $f$ est constante, et nulle.**

D'après l'étape 3, le dernier terme de $(\star)$ est toujours nul, donc $f(x + y) = f(x - y)$ pour tous réels $x$ et $y$.

Soit $t$ un réel quelconque. En prenant $x = y = \frac{t}{2}$, on obtient $f(t) = f(0)$. La fonction $f$ est donc constante : il existe un réel $c$ tel que $f(x) = c$ pour tout $x$. Alors $f(f(1)) = c$, et l'étape 1 donne $c = 0$.

**Vérification.** La fonction nulle convient, puisque l'égalité $(\star)$ s'écrit alors $0 = 0 + 0$.

**Réponse :** la seule solution est la fonction nulle, $f(x) = 0$ pour tout réel $x$.

## Going further

L'idée de l'étape 2 sert souvent : on écrit l'équation pour deux choix de variables qui font apparaître les mêmes termes, ici $f(f(1 - x))$, puis on compare.

Cherche de la même façon toutes les fonctions $f$ de $\mathbb{R}$ dans $\mathbb{R}$ telles que $f(x + y) = f(x - y) + f(1 - xy)$ pour tous réels $x$ et $y$.
