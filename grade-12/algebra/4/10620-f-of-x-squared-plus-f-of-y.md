---
id: "10620"
title: "f(x² + f(y)) = y + xf(x)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, injectivite, bijection, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 13 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x^2 + f(y)) = y + x f(x)$$

## Hints

1. Remplace $x$ par $0$. Que vaut $f(f(y))$ ? Déduis-en que $f$ est injective.
2. Remplace $y$ par $0$, puis, dans l'égalité obtenue, remplace $x$ par $f(t)$.
3. Compare avec la même égalité écrite pour $x = t$, et utilise l'injectivité : tu dois obtenir $f(t)^2 = t^2$.
4. Attention : « pour tout $t$, $f(t) = t$ ou $f(t) = -t$ » ne veut pas dire que $f$ est l'identité ou son opposé, pense à $t \mapsto |t|$. Suppose que $f(a) = a$ et $f(b) = -b$ avec $a$ et $b$ non nuls, et cherche une contradiction.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour un couple $(x, y)$ donné.

**Étape 1. $f(f(y)) = y$, et $f$ est injective.**

$E(0, y)$ donne $f(f(y)) = y$ pour tout $y$. Si $f(u) = f(v)$, alors $u = f(f(u)) = f(f(v)) = v$ : la fonction $f$ est injective.

**Étape 2. $f(t)^2 = t^2$.**

$E(x, 0)$ donne, pour tout $x$ :

$$f(x^2 + f(0)) = x f(x)$$

Soit $t$ un réel. Avec $x = t$, on obtient $f(t^2 + f(0)) = t f(t)$. Avec $x = f(t)$, et comme $f(f(t)) = t$, on obtient

$$f(f(t)^2 + f(0)) = f(t) \times f(f(t)) = f(t) \times t$$

Les deux membres de droite sont égaux, donc $f(f(t)^2 + f(0)) = f(t^2 + f(0))$. Par injectivité, $f(t)^2 + f(0) = t^2 + f(0)$, donc $f(t)^2 = t^2$.

Ainsi, pour chaque réel $t$, on a $f(t) = t$ ou $f(t) = -t$. En particulier $f(0) = 0$.

**Étape 3. Le même signe pour tous les $t$.**

Le choix entre $t$ et $-t$ pourrait a priori changer d'un $t$ à l'autre. Supposons qu'il existe deux réels non nuls $a$ et $b$ tels que $f(a) = a$ et $f(b) = -b$. Alors $E(b, a)$ donne

$$f(b^2 + a) = a + b \times (-b) = a - b^2$$

D'après l'étape 2, $f(b^2 + a)$ vaut $b^2 + a$ ou $-b^2 - a$.

- Si $b^2 + a = a - b^2$, alors $b^2 = 0$, donc $b = 0$, ce qui est exclu.
- Si $-b^2 - a = a - b^2$, alors $a = 0$, ce qui est exclu aussi.

C'est impossible. Donc soit $f(t) = t$ pour tout $t$, soit $f(t) = -t$ pour tout $t$ (en $t = 0$ les deux formules donnent $0$).

**Étape 4. Vérification.**

- Si $f(x) = x$ : $f(x^2 + f(y)) = x^2 + y$, et $y + x f(x) = y + x^2$. Égalité.
- Si $f(x) = -x$ : $f(x^2 + f(y)) = f(x^2 - y) = y - x^2$, et $y + x f(x) = y - x^2$. Égalité.

**Conclusion : il y a exactement deux solutions, la fonction $x \mapsto x$ et la fonction $x \mapsto -x$.**
