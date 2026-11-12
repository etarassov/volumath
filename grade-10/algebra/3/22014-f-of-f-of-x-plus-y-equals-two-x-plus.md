---
id: "22014"
title: "f(f(x) + y) = 2x + f(−f(f(x)) + f(y))"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, injectivite, substitution]
adapted_from: null
see_also: ["22015"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f(f(x) + y) = 2x + f\left(-f(f(x)) + f(y)\right).$$

## Hints

1. Une fonction $f$ est dite *injective* si $f(a) = f(b)$ entraîne toujours $a = b$. Avec $y = 0$, montrez que $f$ est injective.
2. Remplacez ensuite $x$ par $0$ : on obtient une égalité de la forme $f(\ldots) = f(\ldots)$.
3. Vous devez trouver $f(y) = y + c$ pour une constante $c$. Remettez cette forme dans l'équation pour trouver $c$.

## Solution

**Vocabulaire.** On dit qu'une fonction $f$ est *injective* si deux nombres différents ont toujours deux images différentes. Autrement dit : si $f(a) = f(b)$, alors $a = b$.

**Étape 1 : $f$ est injective.** Avec $y = 0$, pour tout réel $x$,

$$f(f(x)) = 2x + f\left(-f(f(x)) + f(0)\right), \quad \text{donc} \quad 2x = f(f(x)) - f\left(-f(f(x)) + f(0)\right).$$

Le membre de droite ne dépend de $x$ qu'à travers $f(x)$. Si $f(a) = f(b)$, alors $f(f(a)) = f(f(b))$, et le membre de droite prend la même valeur pour $x = a$ et pour $x = b$. Donc $2a = 2b$, et $a = b$. La fonction $f$ est injective.

**Étape 2 : $x = 0$.** Pour tout réel $y$,

$$f(f(0) + y) = 0 + f\left(-f(f(0)) + f(y)\right).$$

Comme $f$ est injective, on peut enlever les $f$ :

$$f(0) + y = -f(f(0)) + f(y), \quad \text{donc} \quad f(y) = y + c \quad \text{avec} \quad c = f(0) + f(f(0)).$$

Le nombre $c$ est une constante, qui ne dépend pas de $y$.

**Étape 3 : la constante.** Si $f(t) = t + c$ pour tout $t$, alors $f(f(x)) = x + 2c$. Calculons les deux membres de l'équation :

- à gauche : $f(x + c + y) = x + y + 2c$ ;
- à droite : $-f(f(x)) + f(y) = -x - 2c + y + c = -x + y - c$, donc le membre de droite vaut $2x + (-x + y - c + c) = x + y$.

L'équation impose $x + y + 2c = x + y$, donc $c = 0$, et $f(y) = y$ pour tout $y$.

**Vérification.** Pour $f(x) = x$ : à gauche $x + y$, à droite $2x + (-x + y) = x + y$. Cela convient.

**Conclusion.** La seule solution est la fonction $x \mapsto x$.

## Going further

1. À l'étape 3, on a trouvé une condition sur $c$ en remettant la forme $f(t) = t + c$ dans l'équation. Pourquoi ne peut-on pas s'arrêter à l'étape 2 et dire que toutes les fonctions $t \mapsto t + c$ sont solutions ?
