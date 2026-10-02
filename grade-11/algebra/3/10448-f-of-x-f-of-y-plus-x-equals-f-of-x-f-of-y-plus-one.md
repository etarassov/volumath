---
id: "10448"
title: "f(x f(y)) + x = f(x) f(y + 1)"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation-fonctionnelle, substitution, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe B, exercice 3 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs réelles, telles que, pour tous réels $x$ et $y$,

$$f(x f(y)) + x = f(x)\,f(y + 1) .$$

## Hints

1. Remplace $x$ par $0$. Que peut valoir $f(0)$ ?
2. Si $f(0) \neq 0$, que vaut $f(y + 1)$ pour tout $y$ ? Est-ce possible ?
3. Une fois $f(0)$ connu, remplace $y$ par $0$, puis $x$ par $1$.

## Solution

**Étape 1 : $f(0) = 0$.** Prenons $x = 0$. L'équation devient $f(0) + 0 = f(0)\,f(y + 1)$, c'est-à-dire

$$f(0)\,(f(y + 1) - 1) = 0 \qquad \text{pour tout réel } y .$$

Supposons $f(0) \neq 0$. Alors $f(y + 1) = 1$ pour tout réel $y$. Quand $y$ parcourt $\mathbb{R}$, le nombre $y + 1$ parcourt aussi tout $\mathbb{R}$, donc $f$ est la fonction constante égale à $1$. Mais alors l'équation avec $x = 1$ et $y = 0$ s'écrit $1 + 1 = 1 \times 1$, ce qui est faux. Donc $f(0) = 0$.

**Étape 2 : $f$ est proportionnelle.** Prenons $y = 0$. Comme $f(0) = 0$, le premier terme vaut $f(x \times 0) = f(0) = 0$, et l'équation devient

$$x = f(x)\,f(1) \qquad \text{pour tout réel } x .$$

Avec $x = 1$, on obtient $f(1)^2 = 1$, donc $f(1) = 1$ ou $f(1) = -1$.

- Si $f(1) = 1$, alors $f(x) = x$ pour tout $x$.
- Si $f(1) = -1$, alors $x = -f(x)$, donc $f(x) = -x$ pour tout $x$.

**Étape 3 : vérification.** Il reste à vérifier que ces deux fonctions sont bien solutions.

- Pour $f(x) = x$ : le membre de gauche vaut $xy + x$ et celui de droite $x\,(y + 1)$. Ils sont égaux.
- Pour $f(x) = -x$ : on a $x f(y) = -xy$, donc $f(x f(y)) = xy$. Le membre de gauche vaut $xy + x$, et celui de droite $(-x) \times (-(y + 1)) = x\,(y + 1)$. Ils sont égaux.

**Conclusion.** Les solutions sont les fonctions $x \mapsto x$ et $x \mapsto -x$.

## Going further

1. Montrer que l'équation $f(x f(y)) + x = f(x)\,f(y)$, où le $+ 1$ a disparu, n'a aucune solution.
2. La méthode marche-t-elle encore si l'on cherche les fonctions définies sur $\mathbb{Z}$, à valeurs dans $\mathbb{Z}$ ?
