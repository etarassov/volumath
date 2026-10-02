---
id: "8478"
title: "Une équation qui force la fonction nulle"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation-fonctionnelle, substitution, analyse-synthese, fonction-nulle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations fonctionnelles » (Tristan Humbert), exercice 3 de la section substitution, marqué (F)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous nombres réels $x$ et $y$,

$$f(xy) = x\,f(x) + y\,f(y).$$

## Hints

1. Remplace $y$ par $0$. Le membre de gauche devient très simple.
2. Tu obtiens une relation valable pour tout $x$. Regarde ce qu'elle donne pour $x = 0$.
3. Une fois $f(0)$ connue, la relation de l'étape 1 devient une égalité entre un produit et $0$. Que peux-tu en conclure pour $x \neq 0$ ?
4. N'oublie pas la synthèse.

## Solution

La seule solution est la fonction nulle, $f(x) = 0$ pour tout $x$.

### Analyse

Supposons que $f$ soit une solution.

**Étape 1. Substituer $y = 0$.**

Comme $x \times 0 = 0$, l'équation devient

$$f(0) = x\,f(x) + 0 \times f(0) = x\,f(x),$$

c'est-à-dire

$$x\,f(x) = f(0) \qquad \text{pour tout réel } x. \qquad (1)$$

**Étape 2. Calculer $f(0)$.**

Faisons $x = 0$ dans $(1)$ :

$$0 \times f(0) = f(0), \qquad \text{donc} \qquad f(0) = 0.$$

**Étape 3. En déduire $f$.**

La relation $(1)$ devient

$$x\,f(x) = 0 \qquad \text{pour tout réel } x.$$

Si $x \neq 0$, on peut diviser par $x$ et l'on obtient $f(x) = 0$. Et pour $x = 0$, l'étape 2 donne aussi $f(0) = 0$.

Donc $f$ est la fonction nulle.

### Synthèse

Vérifions que la fonction nulle convient. Avec $f(t) = 0$ pour tout $t$ :

$$f(xy) = 0 \qquad \text{et} \qquad x\,f(x) + y\,f(y) = x \times 0 + y \times 0 = 0.$$

Les deux membres sont égaux.

### Conclusion

$$\boxed{f(x) = 0 \text{ pour tout } x \text{ est la seule solution.}}$$

## Going further

Cet exercice est un bon premier contact avec les équations fonctionnelles, parce que tout y est visible : une substitution, une valeur particulière, et c'est fini.

Le petit piège est à l'étape 2. On pourrait être tenté de dire, dès l'étape 1, que « $x f(x)$ est constant, donc $f(x) = \dfrac{c}{x}$ ». C'est vrai pour $x \neq 0$, mais cela oublie que la relation doit aussi tenir en $x = 0$, et c'est précisément ce cas qui force la constante à être nulle. **Une substitution ne dispense jamais de regarder les valeurs interdites par la division.**

Pour comparer, essaie de résoudre l'équation voisine

$$f(xy) = x\,f(y) + y\,f(x).$$

Elle est bien plus riche : la fonction nulle convient encore, mais $f(x) = x\ln|x|$ aussi, prolongée par $f(0) = 0$. Le changement d'une seule lettre transforme complètement le problème.
