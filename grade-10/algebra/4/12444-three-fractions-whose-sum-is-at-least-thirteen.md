---
id: "12444"
title: "Trois fractions dont la somme dépasse 13"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, fractions, carre-positif, tangente, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 mars 2019"
  reference: "2019-04_Test-20-03-web.pdf, exercice 2 ; corrigé 2019-04_Test-20-03-Corrige-web.pdf (le corrigé utilise l'inégalité de réordonnement et la convexité ; solution réécrite avec des carrés positifs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/04/Test-20-03-web.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-04_Test-20-03-web.pdf"
---

## Statement

Soit $a$, $b$, $c$ des nombres réels positifs ou nuls tels que $a + b + c = 1$. Démontrer que
$$\frac{5 + 2b + c^2}{1 + a} + \frac{5 + 2c + a^2}{1 + b} + \frac{5 + 2a + b^2}{1 + c} \geqslant 13.$$

## Hints

1. Commence par le cas $a = b = c = \frac{1}{3}$. Que vaut chaque fraction ? Les inégalités que tu
   utiliseras doivent toutes devenir des égalités dans ce cas.
2. Sépare chaque numérateur en trois : $5$, puis $2b$ (ou $2c$, ou $2a$), puis $c^2$ (ou $a^2$, ou
   $b^2$). Tu obtiens trois sommes de trois fractions, par exemple
   $\frac{1}{1+a} + \frac{1}{1+b} + \frac{1}{1+c}$. Cherche une minoration de chacune.
3. Pour $x \geqslant 0$, compare $\dfrac{1}{1+x}$ à une expression de la forme $\alpha - \beta x$
   qui lui est égale pour $x = \frac{1}{3}$. Le carré $(3x - 1)^2$ peut servir.
4. Pour le troisième morceau, développe $[4c - (1 + a)]^2 \geqslant 0$ et divise par
   $1 + a$.
5. Tu auras besoin de majorer $ab + bc + ca$. Utilise $(a + b + c)^2$.

## Solution

Notons $S$ la somme de l'énoncé. Dans le cas $a = b = c = \frac{1}{3}$, chaque fraction vaut
$\dfrac{52/9}{4/3} = \dfrac{13}{3}$, et $S = 13$ : l'inégalité est la meilleure possible. On
cherche donc des minorations qui deviennent des égalités quand $a = b = c = \frac{1}{3}$.

On découpe $S$ en trois morceaux. Posons
$$S_1 = \frac{1}{1+a} + \frac{1}{1+b} + \frac{1}{1+c}, \qquad S_2 = \frac{b}{1+a} + \frac{c}{1+b} + \frac{a}{1+c},$$
$$S_3 = \frac{c^2}{1+a} + \frac{a^2}{1+b} + \frac{b^2}{1+c}.$$
En séparant chaque numérateur en $5$, puis $2b$ (ou $2c$, ou $2a$), puis $c^2$ (ou $a^2$, ou $b^2$),
on obtient $S = 5\,S_1 + 2\,S_2 + S_3$.

### Deux outils

**Outil 1.** Pour tout réel $x \geqslant 0$,
$$\frac{1}{1+x} \geqslant \frac{15 - 9x}{16}.$$
En effet, comme $1 + x > 0$, cela revient à $16 \geqslant (15 - 9x)(1 + x) = 15 + 6x - 9x^2$,
c'est-à-dire $9x^2 - 6x + 1 \geqslant 0$, soit $(3x - 1)^2 \geqslant 0$, ce qui est vrai.

**Outil 2.** On a $ab + bc + ca \leqslant \frac{1}{3}$. En effet,
$a^2 + b^2 + c^2 - (ab + bc + ca) = \frac{1}{2}[(a-b)^2 + (b-c)^2 + (c-a)^2] \geqslant 0$,
donc
$$1 = (a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca) \geqslant 3(ab + bc + ca).$$

### Le premier morceau

D'après l'outil 1, appliqué à $a$, à $b$ et à $c$,
$$S_1 \geqslant \frac{15 \times 3 - 9(a + b + c)}{16} = \frac{45 - 9}{16} = \frac{9}{4}.$$

### Le deuxième morceau

Comme $b \geqslant 0$, on peut multiplier l'outil 1 (pour $x = a$) par $b$ :
$\dfrac{b}{1+a} \geqslant \dfrac{15b - 9ab}{16}$. On fait de même avec les deux autres termes et on
additionne :
$$S_2 \geqslant \frac{15(a + b + c) - 9(ab + bc + ca)}{16} \geqslant \frac{15 - 9 \times \frac{1}{3}}{16} = \frac{12}{16} = \frac{3}{4},$$
grâce à l'outil 2.

### Le troisième morceau

On part de $[4c - (1 + a)]^2 \geqslant 0$, qui s'écrit
$16c^2 \geqslant 8c(1 + a) - (1 + a)^2$. En divisant par $16(1 + a) > 0$ :
$$\frac{c^2}{1+a} \geqslant \frac{c}{2} - \frac{1 + a}{16}.$$
De même $\dfrac{a^2}{1+b} \geqslant \dfrac{a}{2} - \dfrac{1+b}{16}$ et
$\dfrac{b^2}{1+c} \geqslant \dfrac{b}{2} - \dfrac{1+c}{16}$. En additionnant,
$$S_3 \geqslant \frac{a + b + c}{2} - \frac{3 + a + b + c}{16} = \frac{1}{2} - \frac{4}{16} = \frac{1}{4}.$$

### Conclusion

$$S = 5\,S_1 + 2\,S_2 + S_3 \geqslant 5 \times \frac{9}{4} + 2 \times \frac{3}{4} + \frac{1}{4} = \frac{45 + 6 + 1}{4} = 13.$$

**L'inégalité est démontrée**, et elle est une égalité quand $a = b = c = \frac{1}{3}$.

## Going further

Pourquoi a-t-on choisi la droite $\frac{15 - 9x}{16}$ dans l'outil 1 ? Tracer la courbe de
$x \mapsto \frac{1}{1+x}$ et cette droite, et regarder ce qui se passe en $x = \frac{1}{3}$.

On peut aussi remarquer que $5 + 2x + x^2 = 4 + (1 + x)^2$, donc que
$\dfrac{5 + 2x + x^2}{1+x} = \dfrac{4}{1+x} + (1 + x)$. Montrer l'inégalité lorsque, dans chaque
fraction, la même lettre apparaît au numérateur et au dénominateur, c'est-à-dire pour
$\sum \frac{5 + 2a + a^2}{1+a}$.
