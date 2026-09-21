---
id: "7711"
title: "Trois rapports et leurs carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, produit egal a un, carres, changement de variable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, test de mi-parcours du vendredi 22 août"
  reference: "stage_ete_2014.pdf, « Test de mi parcours », Groupe B, exercice 4 (la solution du document passe par les moyennes ; celle donnée ici est élémentaire)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois réels strictement positifs. Montrer que

$$\frac{x^2}{y^2} + \frac{y^2}{z^2} + \frac{z^2}{x^2} \;\geqslant\; \frac{x}{y} + \frac{y}{z} + \frac{z}{x} .$$

## Hints

1. Pose $a = \dfrac{x}{y}$, $b = \dfrac{y}{z}$, $c = \dfrac{z}{x}$. Que devient l'inégalité ? Et que vaut le produit $abc$ ?
2. Il s'agit donc de montrer que $a^2 + b^2 + c^2 \geqslant a + b + c$ pour trois réels strictement positifs de produit $1$.
3. Commence par une inégalité qui ne coûte rien : développe $(a-b)^2 + (b-c)^2 + (c-a)^2 \geqslant 0$ et compare $3(a^2+b^2+c^2)$ à $(a+b+c)^2$.
4. Il reste à montrer que $a + b + c \geqslant 3$. Pour cela, remarque qu'au moins l'un des trois nombres est $\geqslant 1$ et qu'au moins l'un est $\leqslant 1$.
5. Si $a \geqslant 1$ et $b \leqslant 1$, le produit $(a-1)(1-b)$ est positif. Développe-le. Et n'oublie pas que $t + \dfrac{1}{t} \geqslant 2$ pour tout $t > 0$.

## Solution

**Étape 0 : on change de variables.** Posons

$$a = \frac{x}{y}, \qquad b = \frac{y}{z}, \qquad c = \frac{z}{x} .$$

Ce sont trois réels strictement positifs, et leur produit vaut

$$abc = \frac{x}{y} \times \frac{y}{z} \times \frac{z}{x} = 1 .$$

L'inégalité à démontrer s'écrit alors simplement

$$a^2 + b^2 + c^2 \;\geqslant\; a + b + c , \qquad \text{sachant que } a, b, c > 0 \text{ et } abc = 1 .$$

**Étape 1 : une inégalité gratuite.** Un carré est toujours positif, donc

$$(a-b)^2 + (b-c)^2 + (c-a)^2 \geqslant 0 .$$

En développant, le membre de gauche vaut $2(a^2+b^2+c^2) - 2(ab+bc+ca)$, donc

$$a^2 + b^2 + c^2 \;\geqslant\; ab + bc + ca .$$

Ajoutons $a^2+b^2+c^2$ aux deux membres :

$$2(a^2+b^2+c^2) \;\geqslant\; a^2+b^2+c^2 + ab+bc+ca ,$$

puis ajoutons encore $a^2+b^2+c^2$ :

$$3(a^2+b^2+c^2) \;\geqslant\; a^2+b^2+c^2 + 2(ab+bc+ca) = (a+b+c)^2 .$$

Notons $S = a+b+c$. On vient donc d'établir

$$a^2 + b^2 + c^2 \;\geqslant\; \frac{S^2}{3} . \qquad (1)$$

**Étape 2 : la somme vaut au moins 3.** Montrons que $S \geqslant 3$.

Appelons $a$ le plus grand des trois nombres et $b$ le plus petit (quitte à leur changer de nom), et $c$ celui qui reste.

- Si l'on avait $a < 1$, les trois nombres seraient tous $< 1$ et leur produit serait $< 1$ : impossible puisque $abc = 1$. Donc $a \geqslant 1$.
- Si l'on avait $b > 1$, les trois nombres seraient tous $> 1$ et leur produit serait $> 1$ : impossible. Donc $b \leqslant 1$.

Ainsi $a - 1 \geqslant 0$ et $1 - b \geqslant 0$, donc leur produit est positif :

$$(a-1)(1-b) \geqslant 0 .$$

En développant : $a - ab - 1 + b \geqslant 0$, c'est-à-dire

$$a + b \;\geqslant\; 1 + ab .$$

Or $abc = 1$ donne $ab = \dfrac{1}{c}$. Donc

$$S = a + b + c \;\geqslant\; 1 + \frac{1}{c} + c .$$

Enfin, pour tout réel $t > 0$ on a $t + \dfrac{1}{t} \geqslant 2$ : en effet $(t-1)^2 \geqslant 0$ donne $t^2 + 1 \geqslant 2t$, et il suffit de diviser par $t > 0$. Avec $t = c$ :

$$S \;\geqslant\; 1 + 2 = 3 . \qquad (2)$$

**Étape 3 : on assemble.** D'après $(1)$ puis $(2)$ :

$$a^2 + b^2 + c^2 \;\geqslant\; \frac{S^2}{3} = S \times \frac{S}{3} \;\geqslant\; S \times \frac{3}{3} = S = a+b+c .$$

Le passage du milieu est licite car $S > 0$.

**Conclusion.** On a bien $a^2+b^2+c^2 \geqslant a+b+c$, c'est-à-dire

$$\frac{x^2}{y^2} + \frac{y^2}{z^2} + \frac{z^2}{x^2} \;\geqslant\; \frac{x}{y} + \frac{y}{z} + \frac{z}{x} .$$

L'égalité a lieu exactement lorsque $a = b = c = 1$, c'est-à-dire lorsque $x = y = z$.

## Going further

La contrainte $abc = 1$ est essentielle. Sans elle, l'inégalité $a^2+b^2+c^2 \geqslant a+b+c$ est fausse : prends $a = b = c = \tfrac{1}{2}$, qui donne $\tfrac{3}{4} < \tfrac{3}{2}$.
