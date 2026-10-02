---
id: "10608"
title: "f(xf(x) + f(y)) = f(x)² + y"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, bijection, injectivite, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 14 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x f(x) + f(y)) = f(x)^2 + y$$

## Hints

1. Remplace $x$ par $0$. Que peux-tu dire de la fonction $f \circ f$ ? Déduis-en que $f$ est injective et surjective.
2. Comme $f$ est surjective, il existe un réel $a$ tel que $f(a) = 0$. Remplace $x$ et $y$ par $a$.
3. Montre que $f(0) = 0$, puis que $f(f(y)) = y$ pour tout $y$.
4. Avec $y = 0$, puis en remplaçant $x$ par $f(x)$, montre que $f(x)^2 = x^2$.
5. Attention : « pour tout $x$, $f(x) = x$ ou $f(x) = -x$ » ne veut pas dire que $f$ est l'identité ou son opposé. Suppose que $f(a) = a$ et $f(b) = -b$ avec $a$ et $b$ non nuls, et cherche une contradiction.

## Solution

On note $(E)$ l'égalité de l'énoncé.

**Étape 1. $f$ est une bijection.**

Avec $x = 0$, $(E)$ donne, pour tout $y$,

$$f(f(y)) = f(0)^2 + y$$

- $f$ est **injective** : si $f(y_1) = f(y_2)$, alors $f(f(y_1)) = f(f(y_2))$, donc $f(0)^2 + y_1 = f(0)^2 + y_2$, et $y_1 = y_2$.
- $f$ est **surjective** : tout réel $z$ s'écrit $z = f(f(z - f(0)^2))$, il a donc un antécédent par $f$.

**Étape 2. $f(0) = 0$.**

Par surjectivité, il existe $a$ tel que $f(a) = 0$. Avec $x = y = a$, $(E)$ donne

$$f(a \cdot 0 + 0) = 0^2 + a, \qquad \text{donc} \qquad f(0) = a$$

Alors $f(f(0)) = f(a) = 0$. Mais l'étape 1 avec $y = 0$ donne $f(f(0)) = f(0)^2$. Donc $f(0)^2 = 0$ et $f(0) = 0$.

L'égalité de l'étape 1 devient alors : $f(f(y)) = y$ pour tout $y$.

**Étape 3. $f(x)^2 = x^2$.**

Avec $y = 0$, $(E)$ donne $f(x f(x)) = f(x)^2$ pour tout $x$. Appliquons cette égalité au nombre $f(x)$ à la place de $x$, en utilisant $f(f(x)) = x$ :

$$f(f(x) \cdot x) = f(f(x))^2 = x^2$$

Or le membre de gauche vaut aussi $f(x f(x)) = f(x)^2$. Donc $f(x)^2 = x^2$, c'est-à-dire : pour chaque réel $x$, $f(x) = x$ ou $f(x) = -x$.

**Étape 4. Le même signe pour tous les $x$.**

Le choix entre $x$ et $-x$ pourrait a priori dépendre de $x$. Montrons que non. Supposons qu'il existe deux réels non nuls $a$ et $b$ tels que $f(a) = a$ et $f(b) = -b$. Avec $x = a$ et $y = b$, $(E)$ donne

$$f(a^2 - b) = a^2 + b$$

D'après l'étape 3, $f(a^2 - b)$ vaut $a^2 - b$ ou $b - a^2$.

- Si $a^2 + b = a^2 - b$, alors $b = 0$, ce qui est exclu.
- Si $a^2 + b = b - a^2$, alors $a = 0$, ce qui est exclu aussi.

C'est impossible. Donc soit $f(x) = x$ pour tout $x$, soit $f(x) = -x$ pour tout $x$ (pour $x = 0$ les deux formules donnent $0$).

**Étape 5. Vérification.**

- Si $f(x) = x$ : $f(x f(x) + f(y)) = x^2 + y = f(x)^2 + y$.
- Si $f(x) = -x$ : $f(x f(x) + f(y)) = f(-x^2 - y) = x^2 + y = (-x)^2 + y = f(x)^2 + y$.

Les deux fonctions conviennent.

**Conclusion : il y a exactement deux solutions, la fonction $x \mapsto x$ et la fonction $x \mapsto -x$.**
