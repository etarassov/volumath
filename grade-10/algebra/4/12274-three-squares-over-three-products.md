---
id: "12274"
title: "Trois carrés divisés par trois produits"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, fractions, identites-remarquables, inegalite-de-nesbitt, changement-de-variable]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de mars 2017"
  reference: "2017-10_ofm-2016-2017-test-mars.pdf, test du 22 mars 2017, exercice 2 (groupe B, élèves nés en 2002 ou après) ; pas de corrigé publié, solution rédigée pour cette base et vérifiée numériquement (la différence des deux membres ne descend jamais sous 0, et vaut 0 pour a = b = c)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mars.pdf"
---

## Statement

Montrer que, pour tous réels $a$, $b$, $c$ strictement positifs,
$$\frac{(a+b)^2}{ab} + \frac{(b+c)^2}{bc} + \frac{(c+a)^2}{ca} \geqslant 9 + 2\left(\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b}\right).$$

## Hints

1. Développe le carré dans $\frac{(a+b)^2}{ab}$, puis sépare la fraction en trois morceaux.
2. Le membre de gauche s'écrit $6$ plus une somme de six fractions. Regroupe les deux fractions qui ont $a$ au numérateur, et compare $\frac{a}{b} + \frac{a}{c}$ avec $\frac{a}{b+c}$. Le carré $(b - c)^2$ peut servir.
3. Tu dois obtenir que le membre de gauche est au moins $6 + 4S$, où $S = \frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b}$. Il reste à montrer que $S \geqslant \frac{3}{2}$.
4. Pour montrer que $S \geqslant \frac{3}{2}$, ajoute $1$ à chacune des trois fractions de $S$, et pose $x = b + c$, $y = c + a$, $z = a + b$.

## Solution

On note $S = \dfrac{a}{b+c} + \dfrac{b}{c+a} + \dfrac{c}{a+b}$. Il s'agit de montrer que le membre de gauche est au moins $9 + 2S$.

**Étape 1. On simplifie le membre de gauche.**

En développant le carré,
$$\frac{(a+b)^2}{ab} = \frac{a^2 + 2ab + b^2}{ab} = \frac{a}{b} + 2 + \frac{b}{a}.$$
On fait de même avec les deux autres fractions, et l'on regroupe les termes qui ont le même numérateur. Le membre de gauche vaut donc
$$6 + \left(\frac{a}{b} + \frac{a}{c}\right) + \left(\frac{b}{c} + \frac{b}{a}\right) + \left(\frac{c}{a} + \frac{c}{b}\right).$$

**Étape 2. Une première minoration.**

On a
$$\frac{a}{b} + \frac{a}{c} = a \times \frac{c + b}{bc}.$$
Or $(b + c)^2 - 4bc = b^2 - 2bc + c^2 = (b - c)^2 \geqslant 0$, donc $0 < bc \leqslant \frac{(b+c)^2}{4}$. En passant aux inverses, qui sont rangés dans l'ordre contraire,
$$\frac{1}{bc} \geqslant \frac{4}{(b+c)^2}, \qquad \text{donc} \qquad \frac{a}{b} + \frac{a}{c} \geqslant a \times \frac{(b+c) \times 4}{(b+c)^2} = \frac{4a}{b+c}.$$
De la même façon, $\frac{b}{c} + \frac{b}{a} \geqslant \frac{4b}{c+a}$ et $\frac{c}{a} + \frac{c}{b} \geqslant \frac{4c}{a+b}$. En ajoutant ces trois inégalités, on obtient que le membre de gauche est au moins
$$6 + 4S.$$

**Étape 3. Ce qu'il reste à montrer.**

On a $6 + 4S = 9 + 2S + (2S - 3)$. Il suffit donc de montrer que $2S - 3 \geqslant 0$, c'est-à-dire
$$S \geqslant \frac{3}{2}.$$

**Étape 4. On montre que $S \geqslant \frac{3}{2}$.**

On pose $x = b + c$, $y = c + a$ et $z = a + b$, qui sont strictement positifs, et l'on note $s = a + b + c$. On remarque que
$$\frac{a}{b+c} + 1 = \frac{a + b + c}{b + c} = \frac{s}{x},$$
et de même pour les deux autres fractions. En ajoutant $1$ à chacune des trois fractions de $S$, on obtient donc
$$S + 3 = s\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right).$$
De plus $x + y + z = 2(a + b + c) = 2s$, donc $s = \frac{x + y + z}{2}$ et
$$S + 3 = \frac{1}{2}\,(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right).$$

On développe ce produit. Il contient trois termes égaux à $1$, comme $x \times \frac{1}{x}$, et six autres termes, que l'on regroupe par deux :
$$(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right) = 3 + \left(\frac{x}{y} + \frac{y}{x}\right) + \left(\frac{y}{z} + \frac{z}{y}\right) + \left(\frac{z}{x} + \frac{x}{z}\right).$$

Pour tout réel $t > 0$, on a $t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t-1)^2}{t} \geqslant 0$, donc $t + \frac{1}{t} \geqslant 2$. Chacune des trois parenthèses est de cette forme, avec $t = \frac{x}{y}$, $t = \frac{y}{z}$ et $t = \frac{z}{x}$. Le produit vaut donc au moins $3 + 2 + 2 + 2 = 9$, et
$$S + 3 \geqslant \frac{9}{2}, \qquad \text{c'est-à-dire} \qquad S \geqslant \frac{3}{2}.$$

**Conclusion.**

D'après les étapes 2 et 4, le membre de gauche est au moins $6 + 4S = 9 + 2S + (2S - 3) \geqslant 9 + 2S$. Pour tous réels $a$, $b$, $c$ strictement positifs,
$$\frac{(a+b)^2}{ab} + \frac{(b+c)^2}{bc} + \frac{(c+a)^2}{ca} \geqslant 9 + 2\left(\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b}\right).$$

Pour $a = b = c$, les deux membres valent $12$ : on ne peut pas remplacer $9$ par un nombre plus grand.

## Going further

1. On peut remarquer rapidement que chacune des trois fractions du membre de gauche vaut au moins $4$, donc que le membre de gauche vaut au moins $12$. Pourquoi cela ne suffit-il pas à démontrer l'inégalité ? Cherche des valeurs de $a$, $b$, $c$ pour lesquelles le membre de droite dépasse $12$.
2. L'inégalité $S \geqslant \frac{3}{2}$ s'appelle l'inégalité de Nesbitt. Montre plus généralement que, pour $n$ réels strictement positifs $x_1, \ldots, x_n$, on a $(x_1 + \cdots + x_n)\left(\frac{1}{x_1} + \cdots + \frac{1}{x_n}\right) \geqslant n^2$.
