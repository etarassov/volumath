---
id: "10623"
title: "f(a + 2f(a)f(b)) = f(a) + 2af(b)"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [equation-fonctionnelle, point-fixe, image, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 17 ; corrigé 2021-01_Corrige-envoi-2.pdf. La dernière étape est simplifiée ici en utilisant directement a = b = x."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $a$ et $b$,

$$f(a + 2f(a)f(b)) = f(a) + 2a f(b)$$

## Hints

1. La fonction nulle convient. Suppose ensuite qu'il existe $z$ tel que $f(z) \neq 0$, et montre que $f$ ne peut s'annuler qu'en $0$.
2. Prends $a = b = -\frac{1}{2}$. Remarque aussi que si $f$ est solution, $-f$ l'est aussi : tu peux donc supposer $f(-\frac{1}{2}) = -\frac{1}{2}$.
3. Avec $a = -\frac{1}{2}$, montre que chaque valeur prise par $f$ est un point fixe de $f$, c'est-à-dire que $f(f(x)) = f(x)$.
4. Montre que si $c$ et $d$ sont deux valeurs prises par $f$, alors $-2cd$ aussi. Le but est de montrer que $f$ prend toutes les valeurs réelles.
5. Si $g \neq 0$ est une valeur prise par $f$, montre que $\frac{1}{4g}$ en est une aussi, en prenant $a = \frac{1}{4g}$ et un $b$ bien choisi. Termine avec $a = b = x$.

## Solution

On note $E(a, b)$ l'égalité de l'énoncé pour un couple $(a, b)$ donné, et $I$ l'ensemble des valeurs prises par $f$ (son image). La fonction nulle est solution : les deux membres valent $0$. Supposons désormais qu'il existe un réel $z$ tel que $f(z) \neq 0$.

**Étape 1. $f$ ne s'annule qu'en $0$.**

Si $f(\alpha) = 0$, alors $E(\alpha, z)$ donne $f(\alpha) = f(\alpha) + 2\alpha f(z)$, donc $2\alpha f(z) = 0$, et $\alpha = 0$.

**Étape 2. $f(-\frac{1}{2}) = \pm \frac{1}{2}$, et on peut choisir le signe.**

Posons $c_0 = f(-\frac{1}{2})$. $E(-\frac{1}{2}, -\frac{1}{2})$ donne $f(-\frac{1}{2} + 2c_0^2) = c_0 - c_0 = 0$. Par l'étape 1, $-\frac{1}{2} + 2c_0^2 = 0$, donc $c_0^2 = \frac{1}{4}$ et $c_0 = \pm\frac{1}{2}$.

Si $f$ est solution, $g = -f$ l'est aussi : $g(a + 2g(a)g(b)) = -f(a + 2f(a)f(b)) = -f(a) - 2af(b) = g(a) + 2a\,g(b)$. Quitte à remplacer $f$ par $-f$, on suppose donc $f(-\frac{1}{2}) = -\frac{1}{2}$.

**Étape 3. Les valeurs de $f$ sont des points fixes.**

$E(-\frac{1}{2}, b)$ donne, pour tout $b$ :

$$f\left(-\tfrac{1}{2} - f(b)\right) = -\tfrac{1}{2} - f(b)$$

Soit $x$ un réel, et $b = -\frac{1}{2} - f(x)$. Par l'égalité précédente (avec $x$ à la place de $b$), $f(b) = b$. Alors $E(-\frac{1}{2}, b)$ donne $f(-\frac{1}{2} - b) = -\frac{1}{2} - b$. Or $-\frac{1}{2} - b = f(x)$, donc $f(f(x)) = f(x)$.

Ainsi tout $y \in I$ vérifie $f(y) = y$. Inversement, si $f(y) = y$, alors $y \in I$.

**Étape 4. Si $c, d \in I$, alors $-2cd \in I$.**

Soient $c, d \in I$. Le nombre $b = -\frac{1}{2} - d$ vérifie $f(b) = b$ par l'étape 3, et $f(c) = c$. $E(c, b)$ donne

$$f(c + 2cb) = c + 2cb$$

Or $c + 2cb = c - c - 2cd = -2cd$. Donc $f(-2cd) = -2cd$, et $-2cd \in I$.

**Étape 5. Si $g \in I$ et $g \neq 0$, alors $\frac{1}{4g} \in I$.**

Posons $a = \frac{1}{4g}$ et $h = f(a) \in I$. Par l'étape 4, $b = -2hg$ est dans $I$, donc $f(b) = b$. $E(a, b)$ donne $f(a + 2hb) = h + 2ab$, et

$$2ab = 2 \times \frac{1}{4g} \times (-2hg) = -h$$

Donc $f(a + 2hb) = 0$, et par l'étape 1, $a + 2hb = 0$, soit $a - 4h^2 g = 0$. D'où $h^2 = \frac{a}{4g} = \frac{1}{16g^2}$.

Par l'étape 4 avec $c = d = h$ : $-2h^2 = -\frac{1}{8g^2} \in I$. Par l'étape 4 encore, avec $c = -\frac{1}{8g^2}$ et $d = g$ : $-2 \times \left(-\frac{1}{8g^2}\right) \times g = \frac{1}{4g} \in I$.

**Étape 6. Si $h \in I$ et $g \in I$ avec $g \neq 0$, alors $-\frac{h}{2g} \in I$.**

Par l'étape 5, $\frac{1}{4g} \in I$, et par l'étape 4 : $-2 \times h \times \frac{1}{4g} = -\frac{h}{2g} \in I$.

**Étape 7. $f$ prend toutes les valeurs.**

Soit $x \neq 0$. Par l'étape 1, $g = f(x) \neq 0$. $E(x, x)$ donne

$$f(x + 2f(x)^2) = f(x) + 2x f(x) = g\,(1 + 2x)$$

Donc $h = g(1 + 2x)$ est dans $I$. Par l'étape 6, $-\frac{h}{2g} = -\frac{1 + 2x}{2} = -\frac{1}{2} - x$ est dans $I$.

Quand $x$ parcourt les réels non nuls, $-\frac{1}{2} - x$ prend toutes les valeurs réelles sauf $-\frac{1}{2}$. Et $-\frac{1}{2} = f(-\frac{1}{2})$ est aussi dans $I$. Donc $I = \mathbb{R}$.

**Étape 8. Conclusion de l'analyse.**

Par l'étape 3, $f(y) = y$ pour tout $y \in I = \mathbb{R}$ : $f$ est l'identité. Comme on avait peut-être remplacé $f$ par $-f$ à l'étape 2, une solution non nulle est l'identité ou son opposé.

**Étape 9. Vérification.**

- $f(x) = 0$ : les deux membres valent $0$.
- $f(x) = x$ : les deux membres valent $a + 2ab$.
- $f(x) = -x$ : à gauche $f(a + 2ab) = -a - 2ab$, à droite $-a + 2a \times (-b) = -a - 2ab$.

**Conclusion : les solutions sont la fonction nulle, la fonction $x \mapsto x$ et la fonction $x \mapsto -x$.**
