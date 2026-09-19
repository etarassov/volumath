---
id: "0406"
title: "Un long produit qui se simplifie"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [identites remarquables, fractions, produit, simplification]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 14, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Calculer la valeur exacte du produit
$$\left(1 - \frac{1}{4}\right) \times \left(1 - \frac{1}{9}\right) \times \left(1 - \frac{1}{16}\right) \times \dots \times \left(1 - \frac{1}{400}\right),$$
où les dénominateurs sont les carrés $4, 9, 16, \dots, 400$.

(Il y a $19$ facteurs : calculer le résultat à la main sans réfléchir prendrait la soirée.)

## Hints

1. Les dénominateurs $4, 9, 16, \dots, 400$ sont les carrés de quels nombres ? Écrivez le facteur qui occupe la place numéro $k$.
2. Un facteur s'écrit $1 - \dfrac{1}{k^2}$, c'est-à-dire une différence de deux carrés. Quelle identité remarquable connaissez-vous pour $a^2 - b^2$ ?
3. Vérifiez que $1 - \dfrac{1}{k^2} = \dfrac{k-1}{k} \times \dfrac{k+1}{k}$, puis écrivez les trois ou quatre premiers facteurs sous cette forme, sans rien calculer.
4. Rassemblez d'un côté toutes les fractions $\dfrac{k-1}{k}$ et de l'autre toutes les fractions $\dfrac{k+1}{k}$. Dans chaque produit, que se passe-t-il entre deux fractions voisines ?

## Solution

**L'idée : factoriser chaque facteur au lieu de le calculer.**

Les dénominateurs sont $2^2, 3^2, 4^2, \dots, 20^2$. Le produit s'écrit donc
$$P = \left(1 - \frac{1}{2^2}\right)\left(1 - \frac{1}{3^2}\right) \dots \left(1 - \frac{1}{20^2}\right).$$

Chaque facteur est une différence de deux carrés, puisque $1 = 1^2$. L'identité $a^2 - b^2 = (a-b)(a+b)$ donne
$$1 - \frac{1}{k^2} = \left(1 - \frac{1}{k}\right)\left(1 + \frac{1}{k}\right) = \frac{k-1}{k} \times \frac{k+1}{k}.$$

**On écrit tout le produit sous cette forme.**

$$P = \underbrace{\frac{1}{2} \times \frac{3}{2}}_{k=2} \times \underbrace{\frac{2}{3} \times \frac{4}{3}}_{k=3} \times \underbrace{\frac{3}{4} \times \frac{5}{4}}_{k=4} \times \dots \times \underbrace{\frac{19}{20} \times \frac{21}{20}}_{k=20}.$$

Un produit ne dépend pas de l'ordre de ses facteurs : rangeons d'un côté les fractions $\dfrac{k-1}{k}$ et de l'autre les fractions $\dfrac{k+1}{k}$ :
$$P = \left(\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \dots \times \frac{19}{20}\right) \times \left(\frac{3}{2} \times \frac{4}{3} \times \frac{5}{4} \times \dots \times \frac{21}{20}\right).$$

**Les simplifications en cascade.**

Dans le premier produit, le numérateur de chaque fraction est le dénominateur de la précédente : le $2$ du numérateur de $\frac{2}{3}$ simplifie le $2$ du dénominateur de $\frac{1}{2}$, puis le $3$ simplifie le $3$, et ainsi de suite. Il ne reste que le premier numérateur et le dernier dénominateur :
$$\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \dots \times \frac{19}{20} = \frac{1}{20}.$$

Dans le second produit, même phénomène : les nombres $3, 4, 5, \dots, 20$ disparaissent, et il reste le dernier numérateur et le premier dénominateur :
$$\frac{3}{2} \times \frac{4}{3} \times \frac{5}{4} \times \dots \times \frac{21}{20} = \frac{21}{2}.$$

**Conclusion.**

$$P = \frac{1}{20} \times \frac{21}{2} = \frac{21}{40}.$$

Le produit vaut exactement $\dfrac{21}{40}$, c'est-à-dire $\text{0,525}$.

## Going further

1. Reprenez le calcul avec les dénominateurs $4, 9, \dots, n^2$. Que vaut le produit ? Vers quelle valeur se rapproche-t-il quand $n$ devient très grand ?
2. Calculez de la même manière
   $$\left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{4}\right) \dots \left(1 - \frac{1}{100}\right).$$
