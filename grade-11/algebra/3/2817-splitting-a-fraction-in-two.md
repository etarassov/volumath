---
id: "2817"
title: "Couper une fraction en deux sans perdre"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, fractions, cas-degalite, cauchy-schwarz]
adapted_from: null
see_also: ["2818"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Inequalities and convex functions"
  reference: "Handout-874-964.pdf, problème 8"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-874-964.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels, et $m$ et $n$ deux nombres réels **strictement positifs**.

1. Démontrer que

$$\frac{x^2}{m} + \frac{y^2}{n} \;\geqslant\; \frac{(x+y)^2}{m+n} .$$

Dans quel cas a-t-on l'égalité ?

2. En déduire que pour trois fractions, avec $m, n, p > 0$ :

$$\frac{x^2}{m} + \frac{y^2}{n} + \frac{z^2}{p} \;\geqslant\; \frac{(x+y+z)^2}{m+n+p} .$$

3. Application : on partage une somme de $1$ en trois nombres strictement positifs $a$, $b$, $c$ (donc $a+b+c = 1$). Montrer que

$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} \;\geqslant\; 9 .$$

## Hints

1. Tous les dénominateurs sont strictement positifs : on peut donc tout multiplier par $mn(m+n)$ sans changer le sens de l'inégalité.
2. Développe des deux côtés, puis simplifie. Beaucoup de termes disparaissent.
3. Ce qui reste doit être une inégalité du type « quelque chose au carré est positif ». Cherche ce carré.
4. Pour la question 2, applique deux fois la question 1 : d'abord aux deux premières fractions, puis au résultat et à la troisième.
5. Pour la question 3, écris $\dfrac1a = \dfrac{1^2}{a}$, et de même pour les deux autres.

## Solution

**1. L'inégalité à deux fractions.**

Comme $m > 0$, $n > 0$ et donc $m+n > 0$, on peut multiplier les deux membres par le nombre strictement positif $mn(m+n)$ : le sens de l'inégalité est conservé. L'inégalité à démontrer devient

$$x^2 n (m+n) + y^2 m (m+n) \;\geqslant\; mn\,(x+y)^2 .$$

Développons chaque côté.

À gauche :

$$x^2 mn + x^2 n^2 + y^2 m^2 + y^2 mn .$$

À droite :

$$mn\left(x^2 + 2xy + y^2\right) = mn x^2 + 2mn\,xy + mn\, y^2 .$$

Les termes $x^2 mn$ et $y^2 mn$ apparaissent des deux côtés et se simplifient. Il reste à démontrer

$$x^2 n^2 + y^2 m^2 \;\geqslant\; 2mn\,xy,$$

c'est-à-dire

$$x^2 n^2 - 2 (xn)(ym) + y^2 m^2 \geqslant 0, \qquad \text{soit} \qquad (xn - ym)^2 \geqslant 0 .$$

Cette dernière inégalité est vraie pour tous réels. En remontant les équivalences, l'inégalité de départ est démontrée.

**Le cas d'égalité.** Il y a égalité si et seulement si $xn = ym$, c'est-à-dire

$$\frac{x}{m} = \frac{y}{n}$$

(les deux fractions ayant un sens puisque $m$ et $n$ ne sont pas nuls). Autrement dit : les deux fractions de départ sont « proportionnelles ».

**2. Le passage à trois fractions.**

Appliquons la question 1 aux deux premières fractions :

$$\frac{x^2}{m} + \frac{y^2}{n} \geqslant \frac{(x+y)^2}{m+n}.$$

Donc

$$\frac{x^2}{m} + \frac{y^2}{n} + \frac{z^2}{p} \;\geqslant\; \frac{(x+y)^2}{m+n} + \frac{z^2}{p} .$$

Appliquons maintenant de nouveau la question 1, cette fois aux deux fractions $\dfrac{(x+y)^2}{m+n}$ et $\dfrac{z^2}{p}$ : le rôle de $x$ est tenu par $x+y$, celui de $m$ par $m+n$. Comme $m+n > 0$ et $p > 0$, c'est licite :

$$\frac{(x+y)^2}{m+n} + \frac{z^2}{p} \;\geqslant\; \frac{((x+y) + z)^2}{(m+n)+p} = \frac{(x+y+z)^2}{m+n+p}.$$

En enchaînant les deux inégalités, on obtient le résultat annoncé.

**3. L'application.**

Écrivons chaque terme comme un carré divisé par un dénominateur :

$$\frac1a + \frac1b + \frac1c = \frac{1^2}{a} + \frac{1^2}{b} + \frac{1^2}{c}.$$

La question 2 s'applique avec $x = y = z = 1$ et $m = a$, $n = b$, $p = c$, tous strictement positifs :

$$\frac{1^2}{a} + \frac{1^2}{b} + \frac{1^2}{c} \;\geqslant\; \frac{(1+1+1)^2}{a+b+c} = \frac{9}{1} = 9 .$$

**Conclusion.**

$$\frac{x^2}{m} + \frac{y^2}{n} \geqslant \frac{(x+y)^2}{m+n}, \qquad \frac{x^2}{m} + \frac{y^2}{n} + \frac{z^2}{p} \geqslant \frac{(x+y+z)^2}{m+n+p},$$

et si $a + b + c = 1$ avec $a, b, c > 0$, alors $\dfrac1a + \dfrac1b + \dfrac1c \geqslant 9$, avec égalité exactement quand $a = b = c = \dfrac13$.

**Pourquoi c'est utile.** Cette inégalité permet de regrouper plusieurs fractions en une seule, en perdant le moins possible. On l'appelle parfois « lemme d'Engel », et c'est un cas particulier de l'inégalité de Cauchy-Schwarz.

## Going further

1. Généraliser à $n$ fractions : $\dfrac{x_1^2}{m_1} + \cdots + \dfrac{x_n^2}{m_n} \geqslant \dfrac{(x_1 + \cdots + x_n)^2}{m_1 + \cdots + m_n}$, et le démontrer par récurrence.
2. En prenant $x_1 = \cdots = x_n = 1$, retrouver l'inégalité entre moyenne arithmétique et moyenne harmonique.
3. Que devient l'inégalité de la question 1 si l'on autorise $m$ ou $n$ à être négatif ? Trouver un contre-exemple.
