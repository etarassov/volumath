---
id: "22027"
title: "Quand a + b + c = a² + b² + c²"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, lemme-des-mauvais-eleves, cauchy-schwarz, somme-de-carres, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, « Entraînement de mi-parcours », exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que $a + b + c = a^2 + b^2 + c^2$. Démontrer que

$$\frac{a^2}{a^2 + bc} + \frac{b^2}{b^2 + ca} + \frac{c^2}{c^2 + ab} \geq \frac{a + b + c}{2}.$$

## Hints

1. Montrez d'abord que, pour $p > 0$ et pour tous réels $x$ et $t$, on a $\frac{x^2}{p} \geq 2tx - t^2 p$. Partez de $(x - tp)^2 \geq 0$.
2. Appliquez ce résultat aux trois fractions, avec le même $t$ pour les trois, et choisissez bien $t$. Vous devez obtenir que la somme de gauche est au moins $\frac{(a+b+c)^2}{a^2 + b^2 + c^2 + ab + bc + ca}$.
3. Comparez $ab + bc + ca$ et $a^2 + b^2 + c^2$.

## Solution

**Un outil : regrouper des fractions.** Soient $x$, $y$, $z$ trois réels et $p$, $q$, $r$ trois réels strictement positifs. Alors

$$\frac{x^2}{p} + \frac{y^2}{q} + \frac{z^2}{r} \geq \frac{(x + y + z)^2}{p + q + r}.$$

*Preuve.* Pour tout réel $t$, on a $(x - tp)^2 \geq 0$, c'est-à-dire $x^2 - 2tpx + t^2p^2 \geq 0$. En divisant par $p > 0$ :

$$\frac{x^2}{p} \geq 2tx - t^2 p.$$

De même, $\frac{y^2}{q} \geq 2ty - t^2 q$ et $\frac{z^2}{r} \geq 2tz - t^2 r$. En additionnant, et en notant $s = x + y + z$ et $m = p + q + r$ :

$$\frac{x^2}{p} + \frac{y^2}{q} + \frac{z^2}{r} \geq 2ts - t^2 m.$$

C'est vrai pour tout $t$. Choisissons $t = \frac{s}{m}$ : le membre de droite vaut $\frac{2s^2}{m} - \frac{s^2}{m} = \frac{s^2}{m}$. C'est l'inégalité annoncée.

**Un deuxième outil.** Pour tous réels $a$, $b$, $c$,

$$a^2 + b^2 + c^2 - (ab + bc + ca) = \frac{1}{2}\left((a - b)^2 + (b - c)^2 + (c - a)^2\right) \geq 0,$$

comme on le vérifie en développant. Donc $ab + bc + ca \leq a^2 + b^2 + c^2$.

**Étape 1.** Appliquons le premier outil avec $x = a$, $y = b$, $z = c$ et $p = a^2 + bc$, $q = b^2 + ca$, $r = c^2 + ab$, qui sont strictement positifs :

$$\frac{a^2}{a^2 + bc} + \frac{b^2}{b^2 + ca} + \frac{c^2}{c^2 + ab} \geq \frac{(a + b + c)^2}{a^2 + b^2 + c^2 + ab + bc + ca}.$$

**Étape 2.** Avec le deuxième outil, le dénominateur vérifie

$$a^2 + b^2 + c^2 + ab + bc + ca \leq 2\left(a^2 + b^2 + c^2\right) = 2(a + b + c),$$

où l'on a utilisé l'hypothèse $a^2 + b^2 + c^2 = a + b + c$. Le numérateur est positif, donc en remplaçant le dénominateur par un nombre plus grand, la fraction diminue :

$$\frac{(a + b + c)^2}{a^2 + b^2 + c^2 + ab + bc + ca} \geq \frac{(a + b + c)^2}{2(a + b + c)} = \frac{a + b + c}{2}.$$

**Conclusion.** En mettant bout à bout les étapes 1 et 2,

$$\frac{a^2}{a^2 + bc} + \frac{b^2}{b^2 + ca} + \frac{c^2}{c^2 + ab} \geq \frac{a + b + c}{2}.$$

Pour $a = b = c = 1$, l'hypothèse est vérifiée ($3 = 3$), chaque fraction vaut $\frac{1}{2}$, et les deux membres valent $\frac{3}{2}$ : l'inégalité ne peut pas être améliorée.

## Going further

1. Montrez qu'il y a égalité seulement pour $a = b = c = 1$. (Quand y a-t-il égalité dans le deuxième outil ?)
2. Sans l'hypothèse $a + b + c = a^2 + b^2 + c^2$, montrez que pour tous réels strictement positifs, $\frac{a^2}{a^2 + bc} + \frac{b^2}{b^2 + ca} + \frac{c^2}{c^2 + ab} \geq 1$.
