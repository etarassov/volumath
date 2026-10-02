---
id: "10602"
title: "Six fractions contre trois racines carrées"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, inegalite-arithmetico-geometrique, racine-carree, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Juniors, exercice 6 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels strictement positifs tels que $a + b + c = 1$. Montrer que

$$\frac{a}{b} + \frac{a}{c} + \frac{b}{a} + \frac{b}{c} + \frac{c}{a} + \frac{c}{b} + 6 \geqslant 2\sqrt{2}\left(\sqrt{\frac{1-a}{a}} + \sqrt{\frac{1-b}{b}} + \sqrt{\frac{1-c}{c}}\right)$$

et trouver tous les cas d'égalité.

## Hints

1. Utilise la condition $a + b + c = 1$ pour écrire $1 - a$ autrement.
2. Regroupe les six fractions de gauche deux par deux, selon leur dénominateur : $\frac{b}{a} + \frac{c}{a}$ s'écrit avec une seule fraction.
3. Le $6$ de gauche se partage en trois fois $2$. Il reste à montrer, pour un réel $u > 0$, que $2\sqrt{2}\,\sqrt{u} \leqslant 2 + u$.
4. Pour cette dernière inégalité, pense à un carré : développe $\left(\sqrt{u} - \sqrt{2}\right)^2$.

## Solution

**Étape 1. Réécrire les deux membres.**

Comme $a + b + c = 1$, on a $1 - a = b + c$, donc $\frac{1-a}{a} = \frac{b+c}{a}$. De même $\frac{1-b}{b} = \frac{a+c}{b}$ et $\frac{1-c}{c} = \frac{a+b}{c}$.

À gauche, regroupons les fractions qui ont le même dénominateur :

$$\frac{b}{a} + \frac{c}{a} = \frac{b+c}{a}, \qquad \frac{a}{b} + \frac{c}{b} = \frac{a+c}{b}, \qquad \frac{a}{c} + \frac{b}{c} = \frac{a+b}{c}$$

Posons $u = \frac{b+c}{a}$, $v = \frac{a+c}{b}$ et $w = \frac{a+b}{c}$. Ce sont trois réels strictement positifs, et l'inégalité à montrer s'écrit

$$u + v + w + 6 \geqslant 2\sqrt{2}\,\sqrt{u} + 2\sqrt{2}\,\sqrt{v} + 2\sqrt{2}\,\sqrt{w}$$

**Étape 2. Une petite inégalité.**

Pour tout réel $u > 0$, on a

$$\left(\sqrt{u} - \sqrt{2}\right)^2 = u - 2\sqrt{2}\,\sqrt{u} + 2 \geqslant 0$$

car un carré est toujours positif ou nul. Donc $2\sqrt{2}\,\sqrt{u} \leqslant u + 2$, avec égalité seulement si $\sqrt{u} = \sqrt{2}$, c'est-à-dire $u = 2$.

**Étape 3. Conclure.**

On applique l'étape 2 à $u$, à $v$ et à $w$, puis on additionne les trois inégalités :

$$2\sqrt{2}\,\sqrt{u} + 2\sqrt{2}\,\sqrt{v} + 2\sqrt{2}\,\sqrt{w} \leqslant (u + 2) + (v + 2) + (w + 2) = u + v + w + 6$$

C'est exactement l'inégalité voulue.

**Étape 4. Les cas d'égalité.**

Une somme de trois inégalités est une égalité seulement si chacune est une égalité. Il faut donc $u = v = w = 2$. Or $u = 2$ signifie $b + c = 2a$, c'est-à-dire $1 - a = 2a$, donc $a = \frac{1}{3}$. De même $b = \frac{1}{3}$ et $c = \frac{1}{3}$.

Réciproquement, si $a = b = c = \frac{1}{3}$, le membre de gauche vaut $6 \times 1 + 6 = 12$, et chaque racine du membre de droite vaut $\sqrt{2}$, donc le membre de droite vaut $2\sqrt{2} \times 3\sqrt{2} = 12$. Il y a bien égalité.

**Conclusion : l'inégalité est vraie, et il y a égalité si et seulement si $a = b = c = \frac{1}{3}$.**
