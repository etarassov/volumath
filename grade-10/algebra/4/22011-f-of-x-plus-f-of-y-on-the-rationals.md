---
id: "22011"
title: "f(x + f(y)) = f(x) + y sur les rationnels"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, injectivite, equation-de-cauchy, rationnels, substitution, fonction-impaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur l'ensemble $\mathbb{Q}$ des nombres rationnels, à valeurs dans $\mathbb{Q}$, telles que, pour tous rationnels $x$ et $y$,

$$f(x + f(y)) = f(x) + y.$$

## Hints

1. Remplacez $x$ par $0$. Que se passe-t-il si deux nombres $a$ et $b$ ont la même image, $f(a) = f(b)$ ?
2. On a donc : $f(a) = f(b)$ entraîne $a = b$. Remplacez maintenant $y$ par $0$ et trouvez $f(0)$.
3. Vous devez obtenir $f(f(y)) = y$. Remplacez alors $y$ par $f(z)$ dans l'équation.
4. On arrive à $f(x + z) = f(x) + f(z)$. Calculez $f(2x)$, $f(3x)$, puis $f(-x)$, puis $f\left(\frac{p}{q}\right)$ en fonction de $f(1)$.

## Solution

**Vocabulaire.** On dit qu'une fonction $f$ est *injective* si deux nombres différents ont toujours deux images différentes. Autrement dit : si $f(a) = f(b)$, alors $a = b$. C'est très utile dans une équation fonctionnelle : dès qu'on obtient $f(\text{quelque chose}) = f(\text{autre chose})$, on peut « enlever les $f$ ».

**Étape 1 : $f$ est injective.** Avec $x = 0$, l'équation donne, pour tout rationnel $y$,

$$f(f(y)) = f(0) + y. \qquad (1)$$

Si $f(a) = f(b)$, alors $f(f(a)) = f(f(b))$, donc d'après $(1)$, $f(0) + a = f(0) + b$, et $a = b$. La fonction $f$ est injective.

**Étape 2 : $f(0) = 0$.** Avec $y = 0$, l'équation donne $f(x + f(0)) = f(x)$. Comme $f$ est injective, $x + f(0) = x$, donc $f(0) = 0$. L'égalité $(1)$ devient

$$f(f(y)) = y \quad \text{pour tout rationnel } y. \qquad (2)$$

**Étape 3 : une équation plus simple.** Soient $x$ et $z$ deux rationnels. Remplaçons $y$ par $f(z)$ dans l'équation, et utilisons $(2)$ :

$$f(x + z) = f(x + f(f(z))) = f(x) + f(z).$$

Donc $f(x + z) = f(x) + f(z)$ pour tous rationnels $x$ et $z$. (On l'appelle l'équation de Cauchy.)

**Étape 4 : $f$ est de la forme $x \mapsto ax$.** Notons $a = f(1)$.

- *Les multiples.* Pour tout rationnel $x$ : $f(2x) = f(x) + f(x) = 2f(x)$, puis $f(3x) = f(2x) + f(x) = 3f(x)$, et ainsi de suite de proche en proche : $f(nx) = n f(x)$ pour tout entier $n \geq 1$.
- *Les opposés.* $f(x) + f(-x) = f(x + (-x)) = f(0) = 0$, donc $f(-x) = -f(x)$.
- *Les entiers.* Pour un entier $p \geq 1$, $f(p) = f(p \times 1) = p\,f(1) = ap$. Avec les opposés et $f(0) = 0$, on a $f(p) = ap$ pour tout entier $p$.
- *Les fractions.* Soit $r = \frac{p}{q}$ avec $p$ entier et $q$ entier, $q \geq 1$. D'après la règle des multiples, $q\,f(r) = f(qr) = f(p) = ap$, donc $f(r) = a\frac{p}{q} = ar$.

Ainsi $f(x) = ax$ pour tout rationnel $x$.

**Étape 5 : la valeur de $a$.** D'après $(2)$, $y = f(f(y)) = a \times ay = a^2 y$ pour tout $y$. Avec $y = 1$, on obtient $a^2 = 1$, donc $a = 1$ ou $a = -1$.

**Vérification.**

- Si $f(x) = x$ : $f(x + f(y)) = x + y$ et $f(x) + y = x + y$. Cela convient.
- Si $f(x) = -x$ : $f(x + f(y)) = f(x - y) = -x + y$ et $f(x) + y = -x + y$. Cela convient.

**Conclusion.** Les solutions sont exactement les deux fonctions $x \mapsto x$ et $x \mapsto -x$.

## Going further

1. Où a-t-on utilisé que les nombres sont rationnels ? Sur l'ensemble des réels, l'étape 4 ne donne $f(x) = ax$ que pour $x$ rationnel.
2. Trouver toutes les fonctions $f : \mathbb{Q} \to \mathbb{Q}$ telles que $f(x + f(y)) = f(x) + 2y$ pour tous rationnels $x$ et $y$. Les étapes 1 à 3 se refont presque sans changement, mais regardez bien la fin : $\sqrt{2}$ n'est pas rationnel.
