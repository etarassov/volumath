---
id: "7064"
title: "Trois fractions dont la somme dépasse 1"
grade: 12
theme: algebra
difficulty: 5
duration_min: 45
tags: [inegalite, changement de variable, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 6, d'après OIM 2008 problème 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $x$, $y$, $z$ des réels, **tous différents de $1$**, tels que
$$xyz = 1 .$$

Montrer que
$$\frac{x^2}{(x-1)^2} + \frac{y^2}{(y-1)^2} + \frac{z^2}{(z-1)^2} \geq 1 .$$

## Hints

1. Les trois fractions ont la même forme. Donne-lui un nom : pose
   $a = \dfrac{x}{x-1}$, et de même $b$ et $c$.
2. L'inégalité à démontrer devient alors très simple à écrire. Que devient-elle ?
3. Il faut traduire la contrainte $xyz = 1$ en une contrainte sur $a$, $b$, $c$. Commence par
   exprimer $x$ en fonction de $a$.
4. Calcule $a - 1$. Tu devrais trouver $a - 1 = \dfrac{1}{x-1}$, donc
   $x = \dfrac{a}{a-1}$.
5. Écris $xyz = 1$ avec ces expressions, et développe le produit
   $(a-1)(b-1)(c-1)$.
6. Tu obtiendras une relation entre $a+b+c$ et $ab+bc+ca$. Combine-la avec
   $a^2+b^2+c^2 = (a+b+c)^2 - 2(ab+bc+ca)$.

## Solution

**Changer de variable.**

Posons
$$a = \frac{x}{x-1}, \qquad b = \frac{y}{y-1}, \qquad c = \frac{z}{z-1} .$$

C'est licite puisque $x$, $y$, $z$ sont tous différents de $1$.

L'inégalité à démontrer s'écrit alors simplement
$$a^2 + b^2 + c^2 \geq 1 .$$

**Revenir en arrière.**

Calculons $a - 1$ :
$$a - 1 = \frac{x}{x-1} - 1 = \frac{x - (x-1)}{x-1} = \frac{1}{x-1} .$$

En particulier $a \neq 1$, et
$$\frac{a}{a-1} = \frac{x/(x-1)}{1/(x-1)} = x .$$

Donc $x = \dfrac{a}{a-1}$, et de même $y = \dfrac{b}{b-1}$, $z = \dfrac{c}{c-1}$.

**Traduire la contrainte.**

La condition $xyz = 1$ devient
$$\frac{a}{a-1} \times \frac{b}{b-1} \times \frac{c}{c-1} = 1,
\qquad \text{c'est-à-dire} \qquad abc = (a-1)(b-1)(c-1) .$$

Développons le membre de droite :
$$(a-1)(b-1)(c-1) = abc - (ab + bc + ca) + (a + b + c) - 1 .$$

En simplifiant par $abc$ des deux côtés :
$$0 = -(ab+bc+ca) + (a+b+c) - 1 ,$$
c'est-à-dire
$$ab + bc + ca = a + b + c - 1 .$$

**Conclure.**

Notons $s = a + b + c$. L'identité remarquable
$$a^2 + b^2 + c^2 = (a+b+c)^2 - 2(ab + bc + ca)$$
donne alors
$$a^2 + b^2 + c^2 = s^2 - 2(s - 1) = s^2 - 2s + 2 = (s-1)^2 + 1 .$$

Comme $(s-1)^2 \geq 0$, on obtient
$$a^2 + b^2 + c^2 \geq 1 ,$$
ce qui est exactement l'inégalité demandée. $\blacksquare$

**Cas d'égalité.**

Il y a égalité exactement quand $s = a + b + c = 1$, et c'est possible. Prenons par exemple
$$x = -2, \qquad y = -2, \qquad z = \frac14 .$$
Le produit vaut bien $(-2) \times (-2) \times \dfrac14 = 1$, aucun des trois ne vaut $1$, et
$$\frac{4}{9} + \frac{4}{9} + \frac{1/16}{9/16} = \frac49 + \frac49 + \frac19 = 1 .$$
(Dans les nouvelles variables, cela correspond à $a = b = \dfrac23$ et $c = -\dfrac13$, dont
la somme vaut bien $1$.)

## Going further

Cet exercice est la première partie du problème 2 de l'Olympiade internationale de
mathématiques 2008. La seconde partie demandait de montrer qu'il y a **une infinité** de
triplets de nombres **rationnels** $x$, $y$, $z$ pour lesquels l'égalité a lieu.

Avec le changement de variable, la question devient presque facile : il faut trouver une
infinité de triplets rationnels $(a ; b ; c)$ avec $a + b + c = 1$ et
$ab + bc + ca = 0$ (c'est la contrainte, réécrite avec $s = 1$). On peut alors prendre $c$
comme paramètre et résoudre en $a$ et $b$.

La leçon à retenir est la puissance du changement de variable. L'énoncé de départ, avec ses
carrés au dénominateur et sa contrainte multiplicative, semble inextricable. Après
substitution, il ne reste qu'une identité remarquable de troisième.
