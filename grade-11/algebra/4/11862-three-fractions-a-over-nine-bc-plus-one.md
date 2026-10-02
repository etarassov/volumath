---
id: "11862"
title: "Trois fractions a/(9bc + 1) et la somme a + b + c"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, lemme-de-titu, inegalite-arithmetico-geometrique, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 6 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Démontrer que, pour tous réels $a$, $b$, $c$ strictement positifs,
$$\frac{a}{9bc + 1} + \frac{b}{9ca + 1} + \frac{c}{9ab + 1} \geqslant \frac{a + b + c}{1 + (a + b + c)^2}.$$

## Hints

1. Multiplier le haut et le bas de la première fraction par $a$. Que remarque-t-on dans les trois nouveaux dénominateurs ?
2. Montrer que pour $x, y$ réels et $u, v > 0$, on a $\dfrac{x^2}{u} + \dfrac{y^2}{v} \geqslant \dfrac{(x+y)^2}{u+v}$. En déduire la même inégalité avec trois fractions.
3. Notons $s = a + b + c$. Il reste à comparer $s^3$ et $27abc$.

## Solution

Notons $s = a + b + c$.

**Rappel 1 (lemme de Titu).** Pour tous réels $x$, $y$ et tous réels $u, v > 0$,
$$\frac{x^2}{u} + \frac{y^2}{v} \geqslant \frac{(x+y)^2}{u+v}.$$
*Preuve.* On multiplie les deux membres par $uv(u+v) > 0$. L'inégalité devient
$$x^2 v(u+v) + y^2 u(u+v) \geqslant (x+y)^2 uv,$$
soit, après développement et simplification des termes $x^2uv$ et $y^2uv$ présents des deux côtés,
$$x^2 v^2 + y^2 u^2 - 2xyuv \geqslant 0, \quad \text{c'est-à-dire} \quad (xv - yu)^2 \geqslant 0,$$
ce qui est vrai. En appliquant deux fois ce résultat, on obtient la version avec trois fractions : pour $u, v, w > 0$,
$$\frac{x^2}{u} + \frac{y^2}{v} + \frac{z^2}{w} \geqslant \frac{(x+y)^2}{u+v} + \frac{z^2}{w} \geqslant \frac{(x+y+z)^2}{u+v+w}.$$

**Rappel 2.** Pour tous réels $a, b, c > 0$, on a $s^3 \geqslant 27abc$.
*Preuve.* En développant,
$$s^3 = (a^3 + b^3 + c^3) + 3\left(a^2b + a^2c + b^2a + b^2c + c^2a + c^2b\right) + 6abc.$$

- D'une part $a^2 + c^2 \geqslant 2ac$ car $(a - c)^2 \geqslant 0$, donc $a^2b + c^2b \geqslant 2abc$. De même $b^2a + c^2a \geqslant 2abc$ et $a^2c + b^2c \geqslant 2abc$. La grande parenthèse vaut donc au moins $6abc$.
- D'autre part, on vérifie en développant que
  $$a^3 + b^3 + c^3 - 3abc = \frac{1}{2}(a + b + c)\left((a-b)^2 + (b-c)^2 + (c-a)^2\right) \geqslant 0.$$

Donc $s^3 \geqslant 3abc + 3 \times 6abc + 6abc = 27abc$.

**Étape 1 : faire apparaître des carrés.** On multiplie le haut et le bas de chaque fraction par son numérateur :
$$\frac{a}{9bc + 1} = \frac{a^2}{9abc + a}, \qquad \frac{b}{9ca + 1} = \frac{b^2}{9abc + b}, \qquad \frac{c}{9ab + 1} = \frac{c^2}{9abc + c}.$$

**Étape 2 : le lemme de Titu.** Par le rappel 1 avec trois fractions, la somme de gauche, notée $G$, vérifie
$$G \geqslant \frac{(a + b + c)^2}{27abc + a + b + c} = \frac{s^2}{27abc + s}.$$

**Étape 3 : on compare avec le membre de droite.** Par le rappel 2, $27abc \leqslant s^3$, donc le dénominateur vérifie $0 < 27abc + s \leqslant s^3 + s = s(1 + s^2)$. Par conséquent
$$G \geqslant \frac{s^2}{27abc + s} \geqslant \frac{s^2}{s(1 + s^2)} = \frac{s}{1 + s^2}.$$

**Conclusion.** **Pour tous réels $a, b, c > 0$, on a bien**
$$\frac{a}{9bc + 1} + \frac{b}{9ca + 1} + \frac{c}{9ab + 1} \geqslant \frac{a + b + c}{1 + (a + b + c)^2}.$$

Il y a égalité dès que $a = b = c$ : si $a = b = c = t$, les deux membres valent $\dfrac{3t}{1 + 9t^2}$.

## Going further

Le rappel 2 est l'inégalité entre la moyenne arithmétique et la moyenne géométrique pour trois nombres : $\dfrac{a + b + c}{3} \geqslant \sqrt[3]{abc}$. Le rappel 1 est un cas particulier de l'inégalité de Cauchy-Schwarz.
