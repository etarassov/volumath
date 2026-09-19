---
id: "0304"
title: "Le réservoir et les trois bidons"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [ppcm, divisibilite, fractions, probleme-concret]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 9 «НОД и НОК», задача 2 (с. 54)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Un réservoir était rempli d'eau. On a versé toute cette eau en parts égales dans trois bidons.

L'eau occupe alors la moitié du premier bidon, les deux tiers du deuxième et les trois quarts du troisième.

Le réservoir et chacun des trois bidons ont une contenance égale à un nombre entier de litres.

Quelle est la plus petite contenance possible du réservoir ?

## Hints

1. Appeler $x$ la contenance du réservoir, en litres. Combien de litres reçoit chaque bidon ?
2. Le premier bidon reçoit $\dfrac{x}{3}$ litres, et cela remplit la moitié du bidon. Quelle est donc sa contenance, en fonction de $x$ ?
3. Écrire de même la contenance du deuxième et du troisième bidon. On obtient trois expressions qui doivent toutes être des nombres entiers.
4. Par quels nombres $x$ doit-il être divisible ? Le plus petit $x$ qui convient est alors leur PPCM. Ne pas oublier de vérifier que ce $x$ marche vraiment.

## Solution

**On met le problème en équations.**

Notons $x$ la contenance du réservoir, en litres. Comme l'eau est partagée en trois parts égales, chaque bidon reçoit
$$\frac{x}{3} \text{ litres.}$$

Notons $V_1$, $V_2$, $V_3$ les contenances des trois bidons.

- Premier bidon : l'eau occupe la moitié du bidon, donc $\dfrac{V_1}{2} = \dfrac{x}{3}$, d'où $V_1 = \dfrac{2x}{3}$.
- Deuxième bidon : l'eau occupe les deux tiers, donc $\dfrac{2V_2}{3} = \dfrac{x}{3}$, d'où $V_2 = \dfrac{x}{2}$.
- Troisième bidon : l'eau occupe les trois quarts, donc $\dfrac{3V_3}{4} = \dfrac{x}{3}$, d'où $V_3 = \dfrac{4x}{9}$.

**Les conditions de divisibilité.**

L'énoncé dit que $x$, $V_1$, $V_2$ et $V_3$ sont tous des nombres entiers. Traduisons :

- $V_2 = \dfrac{x}{2}$ est entier, donc **$x$ est divisible par $2$**.
- $V_3 = \dfrac{4x}{9}$ est entier, donc $9$ divise $4x$. Or $9$ et $4$ n'ont aucun facteur premier commun, donc **$x$ est divisible par $9$**.
- $V_1 = \dfrac{2x}{3}$ est entier : cette condition est automatiquement remplie dès que $x$ est divisible par $9$, donc par $3$.

**On cherche le plus petit $x$.**

$x$ doit être un multiple de $2$ et un multiple de $9$, donc un multiple de
$$\mathrm{PPCM}(2, 9) = 18 .$$

Le plus petit candidat est donc $x = 18$.

**Vérification.** Avec $x = 18$ litres, chaque bidon reçoit $18 \div 3 = 6$ litres, et

$$V_1 = \frac{2 \times 18}{3} = 12, \qquad V_2 = \frac{18}{2} = 9, \qquad V_3 = \frac{4 \times 18}{9} = 8 .$$

Ce sont bien trois nombres entiers de litres. Et en effet : $6$ litres, c'est la moitié de $12$, les deux tiers de $9$, et les trois quarts de $8$. Tout colle.

**Conclusion.** La plus petite contenance possible du réservoir est de $\mathbf{18}$ litres.

## Going further

1. Mêmes questions si l'eau occupe la moitié du premier bidon, les trois cinquièmes du deuxième et les cinq sixièmes du troisième.
2. Toujours avec les fractions $\dfrac{1}{2}$, $\dfrac{2}{3}$ et $\dfrac{3}{4}$ : quelles sont toutes les contenances possibles du réservoir inférieures à $100$ litres ?
