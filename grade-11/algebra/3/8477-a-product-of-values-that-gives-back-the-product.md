---
id: "8477"
title: "Quand f(x)f(y) vaut f(xy) + x + y"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation fonctionnelle, substitution, analyse synthese, fonction affine]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations fonctionnelles » (Tristan Humbert), exercice 1 de la section substitution, marqué (F)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous nombres réels $x$ et $y$,

$$f(x)\,f(y) = f(xy) + x + y.$$

## Hints

1. Dans une équation fonctionnelle, la première chose à essayer est de remplacer une des deux variables par une valeur simple. Ici, $y = 0$ fait disparaître le produit $xy$.
2. Avec $y = 0$, tu obtiens une relation entre $f(x)$, $f(0)$ et $x$. Si tu connaissais $f(0)$, tu connaîtrais $f$ tout entière.
3. Peux-tu écarter la possibilité $f(0) = 0$ ? Regarde ce que donne la relation obtenue pour une valeur bien choisie de $x$.
4. Tu obtiens que $f$ est affine. Il ne reste qu'à faire la **synthèse** : remplacer cette forme dans l'équation de départ et voir quels coefficients conviennent.

## Solution

La seule solution est $f(x) = x + 1$.

### Analyse

Supposons que $f$ soit une solution.

**Étape 1. Substituer $y = 0$.**

L'équation devient, pour tout réel $x$,

$$f(x)\,f(0) = f(0) + x. \qquad (1)$$

**Étape 2. Montrer que $f(0) \neq 0$.**

Si l'on avait $f(0) = 0$, la relation $(1)$ donnerait $0 = 0 + x$, c'est-à-dire $x = 0$, pour **tout** réel $x$ : absurde.

Donc $f(0) \neq 0$, et l'on peut diviser $(1)$ par $f(0)$ :

$$f(x) = \frac{x}{f(0)} + 1.$$

**Étape 3. Bilan de l'analyse.**

En posant $a = \dfrac{1}{f(0)}$, on a montré que $f$ est nécessairement de la forme

$$f(x) = ax + 1$$

pour un certain réel $a \neq 0$.

### Synthèse

Il faut maintenant voir lesquelles de ces fonctions conviennent réellement. Prenons $f(x) = ax + 1$ et calculons les deux membres de l'équation.

Membre de gauche :

$$f(x)\,f(y) = (ax+1)(ay+1) = a^2 xy + a x + a y + 1.$$

Membre de droite :

$$f(xy) + x + y = a\,xy + 1 + x + y.$$

Pour que ces deux expressions soient égales quels que soient $x$ et $y$, il faut que les coefficients se correspondent. En prenant $x = y = 0$, les deux valent $1$ : pas d'information. En prenant $y = 0$ et $x$ quelconque, on obtient

$$ax + 1 = 1 + x, \qquad \text{donc} \qquad a = 1.$$

Réciproquement, avec $a = 1$, le membre de gauche vaut $xy + x + y + 1$ et le membre de droite $xy + 1 + x + y$ : ils sont bien égaux.

### Conclusion

$$\boxed{f(x) = x + 1 \text{ est la seule solution.}}$$

## Going further

Une équation fonctionnelle se traite en deux temps, et les deux sont indispensables.

- L'**analyse** part de « supposons qu'une solution existe » et en déduit sa forme. Elle produit une liste de **candidats**, pas de solutions.
- La **synthèse** vérifie lesquels de ces candidats satisfont vraiment l'équation.

Sauter la synthèse est l'erreur la plus fréquente. Ici, l'analyse autorisait toutes les fonctions $ax+1$ avec $a \neq 0$, et la synthèse en a éliminé toutes sauf une.

Remarquons enfin que l'analyse n'a utilisé qu'une seule substitution, $y = 0$. C'est souvent ainsi : une substitution bien choisie suffit à ramener une inconnue *fonctionnelle* à une inconnue *numérique*, ici la valeur $f(0)$. Le réflexe à prendre est de chercher la substitution qui **simplifie l'argument** de $f$, et $xy = 0$ est le cas le plus simple de tous.
