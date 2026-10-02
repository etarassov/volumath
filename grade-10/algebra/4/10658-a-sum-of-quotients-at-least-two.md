---
id: "10658"
title: "Une somme de quotients au moins égale à 2"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, carre, produit-egal-a-un, somme-cyclique, minoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 6 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé conclut avec l'inégalité entre moyennes arithmétique et géométrique pour trois nombres ; ici elle est remplacée par un lemme démontré dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que

$$\frac{a^4 + 1}{b^3 + b^2 + b} + \frac{b^4 + 1}{c^3 + c^2 + c} + \frac{c^4 + 1}{a^3 + a^2 + a} \geqslant 2$$

## Hints

1. Regarde le cas $a = b = c = 1$ : chaque fraction vaut $\frac{2}{3}$. Cela suggère de comparer $b^3 + b^2 + b$ avec $\frac{3}{2}(b^4 + 1)$.
2. Montre que $2b^3 \leqslant b^4 + b^2$, que $2b \leqslant b^2 + 1$ et que $2b^2 \leqslant b^4 + 1$. Chacune vient d'un carré.
3. Tu obtiens une minoration par $\frac{2}{3}$ fois une somme de trois quotients dont le produit vaut $1$.
4. Trois réels strictement positifs de produit $1$ ont une somme au moins égale à $3$. Pour le prouver, regarde le plus grand et le plus petit des trois.

## Solution

**Étape 1. Majorer les dénominateurs.**

Soit $t > 0$. On a trois inégalités, chacune venant d'un carré :

- $t^4 + t^2 - 2t^3 = t^2(t - 1)^2 \geqslant 0$, donc $2t^3 \leqslant t^4 + t^2$ ;
- $t^2 + 1 - 2t = (t - 1)^2 \geqslant 0$, donc $2t \leqslant t^2 + 1$ ;
- $t^4 + 1 - 2t^2 = (t^2 - 1)^2 \geqslant 0$, donc $2t^2 \leqslant t^4 + 1$.

En additionnant les trois, puis en utilisant encore la troisième :

$$2(t^3 + t^2 + t) \leqslant 2t^4 + 2t^2 + 2 \leqslant 2t^4 + (t^4 + 1) + 2 = 3(t^4 + 1)$$

Donc, pour tout $t > 0$,

$$t^3 + t^2 + t \leqslant \frac{3}{2}\,(t^4 + 1)$$

**Étape 2. Minorer chaque fraction.**

Posons $X = a^4 + 1$, $Y = b^4 + 1$ et $Z = c^4 + 1$, qui sont strictement positifs. Par l'étape 1, $0 < b^3 + b^2 + b \leqslant \frac{3}{2}Y$. Diviser par un nombre positif plus petit donne un résultat plus grand, donc

$$\frac{a^4 + 1}{b^3 + b^2 + b} \geqslant \frac{X}{\frac{3}{2}Y} = \frac{2}{3} \cdot \frac{X}{Y}$$

De même pour les deux autres fractions. La somme $S$ de l'énoncé vérifie donc

$$S \geqslant \frac{2}{3}\left(\frac{X}{Y} + \frac{Y}{Z} + \frac{Z}{X}\right)$$

**Étape 3. Un lemme.**

*Lemme.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ (sinon le produit serait plus petit que $1$) et $q \leqslant 1$ (sinon il serait plus grand que $1$). Donc $(p - 1)(1 - q) \geqslant 0$, ce qui donne $p + q \geqslant 1 + pq$. Avec $t = pq > 0$, on a $r = \frac{1}{t}$ et

$$p + q + r \geqslant 1 + t + \frac{1}{t} \geqslant 1 + 2 = 3$$

car $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$.

**Étape 4. Conclure.**

Les trois quotients $\frac{X}{Y}$, $\frac{Y}{Z}$, $\frac{Z}{X}$ sont strictement positifs et leur produit vaut $1$. Par le lemme, leur somme est au moins $3$, donc $S \geqslant \frac{2}{3} \times 3 = 2$.

**Conclusion : la somme est toujours au moins égale à $2$, avec égalité pour $a = b = c = 1$.**
