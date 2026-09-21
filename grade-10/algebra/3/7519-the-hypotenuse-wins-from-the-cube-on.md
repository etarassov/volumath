---
id: "7519"
title: "À partir du cube, l'hypoténuse l'emporte"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [pythagore, recurrence, inegalite, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 13 (une étoile ; solution p. 240, résolu par Adrien Lemercier)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Soient $a$, $b$ et $c$ les longueurs des côtés d'un triangle rectangle, $c$ désignant le plus long côté, c'est-à-dire l'hypoténuse.

Montrer que pour tout entier $n > 2$,

$$c^n \;>\; a^n + b^n.$$

## Hints

1. Que dit le théorème de Pythagore ? Note bien que pour $n = 2$ on a une **égalité**, pas une inégalité stricte.
2. L'hypoténuse est strictement plus longue que chacun des deux autres côtés : $c > a$ et $c > b$. Sers-t'en.
3. Traite d'abord le cas $n = 3$ en partant de $c^3 = c \times c^2$ et en remplaçant $c^2$ par ce que donne Pythagore.
4. Ensuite, raisonne par récurrence : si l'inégalité est vraie au rang $n$, multiplie-la par $c$ des deux côtés.

## Solution

**Étape 1. Ce qu'on sait du triangle.**

Le théorème de Pythagore donne

$$c^2 = a^2 + b^2.$$

De plus $a > 0$ et $b > 0$, donc $c^2 = a^2 + b^2 > a^2$, d'où $c > a$ ; de même $c > b$.

**Étape 2. Le cas $n = 3$.**

$$c^3 = c \times c^2 = c\,(a^2 + b^2) = c\,a^2 + c\,b^2.$$

Comme $c > a$ et $a^2 > 0$, on a $c\,a^2 > a \cdot a^2 = a^3$. De même $c\,b^2 > b^3$. Donc

$$c^3 > a^3 + b^3.$$

**Étape 3. La récurrence.**

Montrons par récurrence sur $n \geqslant 3$ que $c^n > a^n + b^n$.

*Initialisation.* C'est l'étape 2.

*Hérédité.* Supposons $c^n > a^n + b^n$ pour un certain $n \geqslant 3$. Multiplions par $c$, qui est strictement positif, ce qui conserve le sens de l'inégalité :

$$c^{n+1} \;>\; c\,(a^n + b^n) \;=\; c\,a^n + c\,b^n.$$

Puis, comme $c > a$ et $a^n > 0$, on a $c\,a^n > a^{n+1}$ ; de même $c\,b^n > b^{n+1}$. Donc

$$c^{n+1} \;>\; a^{n+1} + b^{n+1}.$$

La récurrence est terminée.

**Conclusion.** Pour tout entier $n > 2$, on a bien $c^n > a^n + b^n$.

## Going further

Le résultat n'a en fait rien à voir avec les triangles : il repose seulement sur $c^2 = a^2+b^2$ avec $a, b > 0$. On peut même le voir sans récurrence. Divisons l'inégalité cherchée par $c^n$ :

$$\left(\frac{a}{c}\right)^{\!n} + \left(\frac{b}{c}\right)^{\!n} \;<\; 1.$$

Posons $u = \dfrac{a}{c}$ et $v = \dfrac{b}{c}$ ; Pythagore dit exactement $u^2 + v^2 = 1$, et on a $0 < u < 1$ et $0 < v < 1$. Comme $n > 2$, élever à une puissance plus grande un nombre strictement compris entre $0$ et $1$ le rend plus petit : $u^n < u^2$ et $v^n < v^2$. Donc

$$u^n + v^n < u^2 + v^2 = 1,$$

ce qu'il fallait démontrer. Cette deuxième version est plus courte, mais elle demande de savoir manipuler les puissances d'un nombre compris entre $0$ et $1$.

C'est aussi le premier pas vers le **dernier théorème de Fermat** : l'inégalité montre qu'un triangle rectangle à côtés entiers ne fournit jamais de solution à $x^n + y^n = z^n$ pour $n > 2$. Le théorème complet, démontré par Andrew Wiles en 1994, dit qu'il n'y en a aucune, triangle rectangle ou pas.
