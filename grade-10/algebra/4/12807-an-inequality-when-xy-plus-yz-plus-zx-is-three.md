---
id: "12807"
title: "Une inégalité sous la condition xy + yz + zx = 3"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, racines-carrees, fractions, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test junior, exercice 3 ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

Soit $x$, $y$, $z$ des réels strictement positifs tels que $xy + yz + zx = 3$. Démontrer que

$$\frac{x+3}{y+z} + \frac{y+3}{z+x} + \frac{z+3}{x+y} + 3 \geq 27\, \frac{\left(\sqrt{x} + \sqrt{y} + \sqrt{z}\right)^2}{(x+y+z)^3}.$$

## Hints

1. Ne développez pas tout. Posez $s = x + y + z$. Répartissez le $3$ isolé du membre de gauche, un $1$ dans chaque fraction : que devient alors chaque numérateur ?
2. Le membre de gauche s'écrit $(s + 3)\left(\frac{1}{y+z} + \frac{1}{z+x} + \frac{1}{x+y}\right)$. Minorez la parenthèse à l'aide de l'inégalité $(a+b+c)\left(\frac{1}{a}+\frac{1}{b}+\frac{1}{c}\right) \geq 9$, que vous pouvez démontrer en développant.
3. Majorez le membre de droite en montrant que $\left(\sqrt{x}+\sqrt{y}+\sqrt{z}\right)^2 \leq 3s$. Pensez à $\left(\sqrt{x}-\sqrt{y}\right)^2 \geq 0$.
4. Il ne reste qu'une inégalité sur $s$. Pour la terminer, il faut savoir que $s \geq 3$ : comparez $s^2$ et $3(xy + yz + zx)$.

## Solution

Posons $s = x + y + z$, et notons $L$ et $D$ les membres de gauche et de droite. On va minorer $L$ et majorer $D$ par des expressions qui ne dépendent que de $s$.

### Trois inégalités utiles

**(a)** Pour tout réel $t > 0$, on a $t + \frac{1}{t} \geq 2$. En effet, $t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t-1)^2}{t} \geq 0$.

Conséquence : pour $a, b, c > 0$,

$$(a + b + c)\left(\frac{1}{a} + \frac{1}{b} + \frac{1}{c}\right) = 3 + \left(\frac{a}{b} + \frac{b}{a}\right) + \left(\frac{b}{c} + \frac{c}{b}\right) + \left(\frac{c}{a} + \frac{a}{c}\right) \geq 3 + 2 + 2 + 2 = 9.$$

**(b)** Pour $u, v \geq 0$, on a $2\sqrt{u}\sqrt{v} \leq u + v$, car $u + v - 2\sqrt{u}\sqrt{v} = \left(\sqrt{u} - \sqrt{v}\right)^2 \geq 0$. Conséquence :

$$\left(\sqrt{x} + \sqrt{y} + \sqrt{z}\right)^2 = x + y + z + 2\sqrt{x}\sqrt{y} + 2\sqrt{y}\sqrt{z} + 2\sqrt{z}\sqrt{x} \leq s + (x+y) + (y+z) + (z+x) = 3s.$$

**(c)** On a $x^2 + y^2 + z^2 \geq xy + yz + zx$, car la différence vaut $\frac{1}{2}\left[(x-y)^2 + (y-z)^2 + (z-x)^2\right] \geq 0$. Conséquence :

$$s^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx) \geq 3(xy + yz + zx) = 9, \qquad \text{donc} \qquad s \geq 3.$$

### Minorer le membre de gauche

On répartit le $3$ isolé en ajoutant $1$ à chaque fraction :

$$\frac{x + 3}{y + z} + 1 = \frac{x + y + z + 3}{y + z} = \frac{s + 3}{y + z},$$

et de même pour les deux autres. Donc

$$L = (s + 3)\left(\frac{1}{y+z} + \frac{1}{z+x} + \frac{1}{x+y}\right).$$

L'inégalité (a), appliquée à $a = y + z$, $b = z + x$, $c = x + y$, dont la somme vaut $2s$, donne $\frac{1}{y+z} + \frac{1}{z+x} + \frac{1}{x+y} \geq \frac{9}{2s}$. Ainsi

$$L \geq \frac{9(s+3)}{2s}.$$

### Majorer le membre de droite

D'après (b),

$$D = 27\,\frac{\left(\sqrt{x}+\sqrt{y}+\sqrt{z}\right)^2}{s^3} \leq 27 \times \frac{3s}{s^3} = \frac{81}{s^2}.$$

### Conclusion

Il suffit donc de montrer que $\frac{9(s+3)}{2s} \geq \frac{81}{s^2}$. En multipliant par $\frac{2s^2}{9} > 0$, cela revient à

$$s(s + 3) \geq 18, \qquad \text{c'est-à-dire} \qquad s^2 + 3s - 18 \geq 0, \qquad \text{c'est-à-dire} \qquad (s - 3)(s + 6) \geq 0.$$

C'est vrai, car $s \geq 3$ d'après (c). Donc

$$L \geq \frac{9(s+3)}{2s} \geq \frac{81}{s^2} \geq D.$$

**L'inégalité est démontrée.** Il y a égalité pour $x = y = z = 1$ : les deux membres valent alors $9$.

## Going further

1. Vérifiez que chacune des trois inégalités (a), (b), (c) est une égalité quand $x = y = z = 1$. Pourquoi est-ce un bon signe quand on cherche à enchaîner des inégalités ?
