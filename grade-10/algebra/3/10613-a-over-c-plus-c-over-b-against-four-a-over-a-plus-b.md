---
id: "10613"
title: "a/c + c/b face à 4a/(a + b)"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, fractions, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 5 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que

$$\frac{a}{c} + \frac{c}{b} \geqslant \frac{4a}{a + b}$$

Trouver les cas d'égalité.

## Hints

1. Commence par te débarrasser du dénominateur $a + b$ : multiplie les deux membres par $a + b$.
2. Développe le membre de gauche. Tu obtiens quatre termes. Essaie de les regrouper par deux, de façon que chaque paire vaille au moins $2a$.
3. Deux outils : $u^2 + v^2 \geqslant 2uv$ pour tous réels $u$ et $v$, et $t + \frac{1}{t} \geqslant 2$ pour tout réel $t > 0$.

## Solution

**Étape 1. On chasse le dénominateur $a + b$.**

Comme $a + b > 0$, l'inégalité équivaut à

$$(a + b)\left(\frac{a}{c} + \frac{c}{b}\right) \geqslant 4a$$

En développant, le membre de gauche vaut

$$\frac{a^2}{c} + \frac{ac}{b} + \frac{ab}{c} + c$$

**Étape 2. Une première paire : $\frac{a^2}{c} + c \geqslant 2a$.**

On a $(a - c)^2 \geqslant 0$, donc $a^2 + c^2 \geqslant 2ac$. En divisant par $c > 0$ : $\frac{a^2}{c} + c \geqslant 2a$, avec égalité seulement si $a = c$.

**Étape 3. Une seconde paire : $\frac{ab}{c} + \frac{ac}{b} \geqslant 2a$.**

Pour tout réel $t > 0$, $(t - 1)^2 \geqslant 0$ donne $t^2 + 1 \geqslant 2t$, puis $t + \frac{1}{t} \geqslant 2$, avec égalité seulement si $t = 1$. Avec $t = \frac{b}{c}$ :

$$\frac{ab}{c} + \frac{ac}{b} = a\left(\frac{b}{c} + \frac{c}{b}\right) \geqslant 2a$$

avec égalité seulement si $b = c$.

**Étape 4. On additionne.**

En additionnant les deux inégalités, le membre de gauche de l'étape 1 vaut au moins $2a + 2a = 4a$. L'inégalité est démontrée.

**Étape 5. Cas d'égalité.**

Il y a égalité seulement si les deux inégalités des étapes 2 et 3 sont des égalités, donc si $a = c$ et $b = c$, c'est-à-dire $a = b = c$.

Réciproquement, si $a = b = c$, alors $\frac{a}{c} + \frac{c}{b} = 1 + 1 = 2$ et $\frac{4a}{a + b} = \frac{4a}{2a} = 2$ : il y a bien égalité.

**Conclusion : l'inégalité est vraie pour tous réels $a$, $b$, $c$ strictement positifs, avec égalité si et seulement si $a = b = c$.**
