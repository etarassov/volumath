---
id: "22015"
title: "f(f(x) + f(f(y))) = 2x + f(f(y)) − f(f(x))"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, surjectivite, substitution]
adapted_from: null
see_also: ["22014"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f\left(f(x) + f(f(y))\right) = 2x + f(f(y)) - f(f(x)).$$

## Hints

1. Essayez $y = x$.
2. Vous avez obtenu $f(\ldots) = 2x$. Que peut-on en déduire sur les valeurs prises par $f$ ? Et par $f(f(\ldots))$ ?
3. Avec $x = 0$, remplacez $f(f(y))$ par un réel $t$ quelconque.

## Solution

**Vocabulaire.** On dit qu'une fonction $f : \mathbb{R} \to \mathbb{R}$ est *surjective* si elle prend toutes les valeurs réelles : pour tout réel $t$, il existe un réel $s$ tel que $f(s) = t$.

**Étape 1 : $f$ est surjective.** Avec $y = x$, le membre de droite se simplifie :

$$f\left(f(x) + f(f(x))\right) = 2x.$$

Soit $t$ un réel quelconque. Avec $x = \frac{t}{2}$, on obtient $f(s) = t$ pour le nombre $s = f\left(\frac{t}{2}\right) + f\left(f\left(\frac{t}{2}\right)\right)$. Donc $f$ est surjective.

**Étape 2 : $f \circ f$ prend aussi toutes les valeurs.** Soit $t$ un réel. Il existe $s$ tel que $f(s) = t$, puis il existe $r$ tel que $f(r) = s$. Alors $f(f(r)) = t$.

**Étape 3 : $x = 0$.** Pour tout réel $y$,

$$f\left(f(0) + f(f(y))\right) = f(f(y)) - f(f(0)).$$

D'après l'étape 2, le nombre $f(f(y))$ peut être n'importe quel réel $t$. Donc, pour tout réel $t$,

$$f(f(0) + t) = t - f(f(0)).$$

Soit $u$ un réel. Avec $t = u - f(0)$, on obtient $f(u) = u + c$, où $c = -f(0) - f(f(0))$ est une constante.

**Étape 4 : la constante.** Si $f(u) = u + c$ pour tout $u$, alors $f(f(u)) = u + 2c$, et

- à gauche : $f\left((x + c) + (y + 2c)\right) = x + y + 4c$ ;
- à droite : $2x + (y + 2c) - (x + 2c) = x + y$.

L'équation impose $4c = 0$, donc $c = 0$ et $f(u) = u$ pour tout $u$.

**Vérification.** Pour $f(x) = x$ : à gauche $x + y$, à droite $2x + y - x = x + y$. Cela convient.

**Conclusion.** La seule solution est la fonction $x \mapsto x$.

## Going further

1. Montrer aussi que toute solution est *injective* : si $f(a) = f(b)$, alors $a = b$. (Utilisez l'égalité de l'étape 1.)
