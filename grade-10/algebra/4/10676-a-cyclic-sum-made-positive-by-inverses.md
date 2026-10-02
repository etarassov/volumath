---
id: "10676"
title: "Une somme cyclique positive, grâce aux inverses"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, changement-de-variable, inverses, produit-egal-a-un, somme-cyclique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 8 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé conclut par l'inégalité de réordonnement ; elle est remplacée ici par un passage aux inverses et un lemme démontré dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que

$$\frac{a^2b\,(b - c)}{a + b} + \frac{b^2c\,(c - a)}{b + c} + \frac{c^2a\,(a - b)}{c + a} \geqslant 0$$

## Hints

1. Divise toute la somme par $abc$, qui est strictement positif. Que devient le premier terme ?
2. Pose $u = \frac{1}{a}$, $v = \frac{1}{b}$ et $w = \frac{1}{c}$. Montre que le premier terme divisé par $abc$ vaut $\frac{w - v}{u + v}$.
3. Écris $w - v = (w + u) - (u + v)$. Chaque terme devient un quotient moins $1$.
4. Le produit des trois quotients obtenus vaut $1$. Trois réels strictement positifs de produit $1$ ont une somme au moins égale à $3$ : prouve-le en regardant le plus grand et le plus petit des trois.

## Solution

Notons $S$ la somme de l'énoncé. Comme $abc > 0$, il suffit de montrer que $\frac{S}{abc} \geqslant 0$.

**Étape 1. Passer aux inverses.**

Posons $u = \frac{1}{a}$, $v = \frac{1}{b}$ et $w = \frac{1}{c}$, trois réels strictement positifs. Le premier terme divisé par $abc$ vaut $\frac{a\,(b - c)}{c\,(a + b)}$. Divisons encore son numérateur et son dénominateur par $abc$ :

$$\frac{a\,(b - c)}{abc} = \frac{b - c}{bc} = \frac{1}{c} - \frac{1}{b} = w - v, \qquad \frac{c\,(a + b)}{abc} = \frac{a + b}{ab} = \frac{1}{b} + \frac{1}{a} = u + v$$

Le premier terme divisé par $abc$ vaut donc $\frac{w - v}{u + v}$. Le même calcul pour les deux autres donne

$$\frac{S}{abc} = \frac{w - v}{u + v} + \frac{u - w}{v + w} + \frac{v - u}{w + u}$$

**Étape 2. Faire apparaître des quotients.**

Posons $X = w + u$, $Y = u + v$ et $Z = v + w$, trois réels strictement positifs. Alors $w - v = X - Y$, $u - w = Y - Z$ et $v - u = Z - X$. Donc

$$\frac{S}{abc} = \frac{X - Y}{Y} + \frac{Y - Z}{Z} + \frac{Z - X}{X} = \frac{X}{Y} + \frac{Y}{Z} + \frac{Z}{X} - 3$$

**Étape 3. Un lemme.**

*Lemme.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, on peut supposer que $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ : sinon les trois nombres seraient strictement plus petits que $1$, et leur produit aussi. De même $q \leqslant 1$. Donc $(p - 1)(1 - q) \geqslant 0$, ce qui s'écrit $p + q \geqslant 1 + pq$. Posons $t = pq > 0$. Comme $pqr = 1$, on a $r = \frac{1}{t}$, donc

$$p + q + r \geqslant 1 + t + \frac{1}{t}$$

Or $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$, donc $p + q + r \geqslant 3$.

**Étape 4. Conclure.**

Les nombres $p = \frac{X}{Y}$, $q = \frac{Y}{Z}$ et $r = \frac{Z}{X}$ sont strictement positifs, et $pqr = \frac{X}{Y} \times \frac{Y}{Z} \times \frac{Z}{X} = 1$. Par le lemme, $p + q + r \geqslant 3$, donc $\frac{S}{abc} \geqslant 0$, et $S \geqslant 0$.

**Conclusion : pour tous réels strictement positifs $a$, $b$, $c$, la somme est positive ou nulle. Elle est nulle par exemple quand $a = b = c$.**

## Going further

Montre que $S = 0$ seulement quand $a = b = c$. Commence par prouver que, dans le lemme, $p + q + r = 3$ impose $p = q = r = 1$.
