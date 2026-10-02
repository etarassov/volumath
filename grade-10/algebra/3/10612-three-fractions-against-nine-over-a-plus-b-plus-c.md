---
id: "10612"
title: "Trois fractions contre 9/(a + b + c)"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, fractions, changement-de-variable, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 2 ; corrigé 2021-01_Corrige-envoi-2.pdf. Le corrigé écrit (1 + 1 + 1)³ au lieu de (1 + 1 + 1)² dans l'inégalité de Cauchy-Schwarz ; la solution ci-dessous n'utilise que t + 1/t ⩾ 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Montrer que, pour tous réels $a$, $b$, $c$ strictement positifs,

$$\frac{2}{a + b} + \frac{2}{b + c} + \frac{2}{c + a} \geqslant \frac{9}{a + b + c}$$

Trouver les cas d'égalité.

## Hints

1. Les trois dénominateurs de gauche se ressemblent. Donne-leur un nom : $x = a + b$, $y = b + c$, $z = c + a$. Que vaut $x + y + z$ ?
2. Montre que l'inégalité revient à $(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right) \geqslant 9$.
3. Développe ce produit. Tu dois obtenir $3$ plus trois sommes de la forme $t + \frac{1}{t}$.
4. Pour $t > 0$, compare $t + \frac{1}{t}$ à $2$ en partant de $(t - 1)^2 \geqslant 0$.

## Solution

**Étape 1. Un changement de nom.**

Posons $x = a + b$, $y = b + c$ et $z = c + a$. Ce sont trois réels strictement positifs, et

$$x + y + z = 2(a + b + c)$$

Donc $\frac{9}{a + b + c} = \frac{18}{x + y + z}$, et l'inégalité à montrer s'écrit $\frac{2}{x} + \frac{2}{y} + \frac{2}{z} \geqslant \frac{18}{x + y + z}$. En divisant par $2$ puis en multipliant par $x + y + z > 0$, elle équivaut à

$$(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right) \geqslant 9$$

**Étape 2. Un outil : $t + \frac{1}{t} \geqslant 2$.**

Pour tout réel $t > 0$, on a $(t - 1)^2 \geqslant 0$, c'est-à-dire $t^2 + 1 \geqslant 2t$. En divisant par $t > 0$, on obtient $t + \frac{1}{t} \geqslant 2$, avec égalité seulement si $t = 1$.

**Étape 3. On développe.**

$$(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right) = 3 + \left(\frac{x}{y} + \frac{y}{x}\right) + \left(\frac{y}{z} + \frac{z}{y}\right) + \left(\frac{z}{x} + \frac{x}{z}\right)$$

Chaque parenthèse est de la forme $t + \frac{1}{t}$ avec $t > 0$, donc vaut au moins $2$. Le produit vaut donc au moins $3 + 2 + 2 + 2 = 9$, ce qu'on voulait.

**Étape 4. Cas d'égalité.**

Il y a égalité seulement si les trois parenthèses valent $2$, c'est-à-dire si $\frac{x}{y} = 1$ et $\frac{y}{z} = 1$, soit $x = y = z$. Or $a + b = b + c$ donne $a = c$, et $b + c = c + a$ donne $b = a$. Donc $a = b = c$.

Réciproquement, si $a = b = c$, le membre de gauche vaut $3 \times \frac{2}{2a} = \frac{3}{a}$ et le membre de droite vaut $\frac{9}{3a} = \frac{3}{a}$ : il y a bien égalité.

**Conclusion : l'inégalité est vraie pour tous réels $a$, $b$, $c$ strictement positifs, avec égalité si et seulement si $a = b = c$.**
