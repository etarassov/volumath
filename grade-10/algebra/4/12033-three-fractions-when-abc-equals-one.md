---
id: "12033"
title: "Trois fractions quand abc = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalites, fractions, carres, somme cyclique, produit egal a un]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-1.pdf, exercice 3 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-1.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que $abc = 1$. Démontrer que

$$\frac{1}{1 + a^2 + (b + 1)^2} + \frac{1}{1 + b^2 + (c + 1)^2} + \frac{1}{1 + c^2 + (a + 1)^2} \;\leqslant\; \frac{1}{2} .$$

## Hints

1. Que vaut le membre de gauche quand $a = b = c = 1$ ?
2. Développez $(b + 1)^2$, puis utilisez $a^2 + b^2 \geqslant 2ab$ pour minorer le premier dénominateur par $2(ab + b + 1)$.
3. Il reste à calculer la somme
$$\frac{1}{ab + b + 1} + \frac{1}{bc + c + 1} + \frac{1}{ca + a + 1} .$$
Multipliez le numérateur et le dénominateur de la deuxième fraction par $ab$, et ceux de la troisième par $b$, puis utilisez $abc = 1$.

## Solution

**Étape 1 : minorer chaque dénominateur.** Pour tous réels $x$ et $y$, on a $(x - y)^2 \geqslant 0$, c'est-à-dire $x^2 + y^2 \geqslant 2xy$. Pour le premier dénominateur, cela donne

$$1 + a^2 + (b + 1)^2 = a^2 + b^2 + 2b + 2 \;\geqslant\; 2ab + 2b + 2 = 2\,(ab + b + 1) .$$

Les deux membres sont strictement positifs. Le plus grand dénominateur donne la plus petite fraction, donc

$$\frac{1}{1 + a^2 + (b + 1)^2} \;\leqslant\; \frac{1}{2\,(ab + b + 1)} .$$

De la même façon, en remplaçant $(a, b)$ par $(b, c)$, puis par $(c, a)$ :

$$\frac{1}{1 + b^2 + (c + 1)^2} \leqslant \frac{1}{2\,(bc + c + 1)} , \qquad \frac{1}{1 + c^2 + (a + 1)^2} \leqslant \frac{1}{2\,(ca + a + 1)} .$$

En ajoutant les trois inégalités, on voit qu'il suffit de montrer que

$$T = \frac{1}{ab + b + 1} + \frac{1}{bc + c + 1} + \frac{1}{ca + a + 1}$$

vaut au plus $1$. En fait, $T$ vaut exactement $1$.

**Étape 2 : calculer $T$.** On met les trois fractions au même dénominateur $ab + b + 1$, en utilisant $abc = 1$.

- Deuxième fraction : on multiplie le numérateur et le dénominateur par $ab$. Le dénominateur devient $ab^2c + abc + ab = b \times abc + abc + ab = b + 1 + ab$. Donc
$$\frac{1}{bc + c + 1} = \frac{ab}{ab + b + 1} .$$
- Troisième fraction : on multiplie le numérateur et le dénominateur par $b$. Le dénominateur devient $abc + ab + b = 1 + ab + b$. Donc
$$\frac{1}{ca + a + 1} = \frac{b}{ab + b + 1} .$$

Par conséquent

$$T = \frac{1 + ab + b}{ab + b + 1} = 1 .$$

**Conclusion.** En ajoutant les trois inégalités de l'étape 1, on obtient

$$\frac{1}{1 + a^2 + (b + 1)^2} + \frac{1}{1 + b^2 + (c + 1)^2} + \frac{1}{1 + c^2 + (a + 1)^2} \;\leqslant\; \frac{T}{2} = \frac{1}{2} .$$

Il y a égalité quand $a = b = c = 1$ : chaque fraction vaut alors $1/6$.

## Going further

L'égalité $T = 1$ est vraie pour tous les réels strictement positifs $a$, $b$, $c$ tels que $abc = 1$. Elle sert souvent. Par exemple, en déduire que, si $abc = 1$, l'un au moins des trois nombres $ab + b + 1$, $bc + c + 1$, $ca + a + 1$ est supérieur ou égal à $3$.
