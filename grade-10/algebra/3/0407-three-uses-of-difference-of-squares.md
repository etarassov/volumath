---
id: "0407"
title: "Trois questions, une seule identité"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [identites-remarquables, difference-de-carres, equation, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 14, задача 6 (l'année 2015 de l'original est remplacée par 2025)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Les trois questions suivantes se résolvent avec la même identité. À vous de trouver laquelle.

1. Résoudre l'équation
   $$x^2 = 20252024 \times 20252026 + 1.$$
2. Deux nombres **différents** $x$ et $y$ (pas forcément entiers) vérifient
   $$x^2 - 2025x = y^2 - 2025y.$$
   Combien vaut $x + y$ ?
3. Deux nombres non nuls et **différents** $a$ et $b$ vérifient
   $$\frac{a}{b} + a = \frac{b}{a} + b.$$
   Combien vaut $\dfrac{1}{a} + \dfrac{1}{b}$ ?

## Hints

1. L'identité en question est $a^2 - b^2 = (a-b)(a+b)$. Elle sert dans les trois questions, tantôt de gauche à droite, tantôt de droite à gauche.
2. Question 1 : regardez les deux grands nombres $20252024$ et $20252026$. Quel nombre rond se trouve juste entre les deux ? Appelez-le $N$ et récrivez le produit.
3. Question 2 : rassemblez les carrés d'un côté et le reste de l'autre, puis factorisez chaque membre.
4. Questions 2 et 3 : vous arrivez à une égalité de la forme $(x-y) \times A = (x-y) \times B$. L'énoncé dit que les deux nombres sont différents. À quoi cela sert-il ? Attention, sans cette précision on n'aurait pas le droit de conclure.

## Solution

**L'identité utile.** Dans les trois questions, tout repose sur
$$a^2 - b^2 = (a-b)(a+b).$$

### 1. L'équation avec les grands nombres

Les deux facteurs encadrent le nombre $N = 20252025$ :
$$20252024 = N - 1, \qquad 20252026 = N + 1.$$

Donc
$$20252024 \times 20252026 = (N-1)(N+1) = N^2 - 1,$$
et l'équation devient
$$x^2 = N^2 - 1 + 1 = N^2.$$

Les solutions sont $x = N$ et $x = -N$, c'est-à-dire
$$x = 20252025 \quad \text{ou} \quad x = -20252025.$$

### 2. Les deux nombres $x$ et $y$

Rassemblons les carrés à gauche :
$$x^2 - y^2 = 2025x - 2025y.$$

Factorisons chaque membre :
$$(x-y)(x+y) = 2025(x-y).$$

Ici intervient l'hypothèse : $x$ et $y$ sont différents, donc $x - y \neq 0$, et on peut diviser les deux membres par $x-y$ :
$$x + y = 2025.$$

(Si on avait le droit de prendre $x = y$, l'égalité de départ serait vraie sans rien apprendre sur $x+y$ : c'est bien pour cela que l'énoncé exige $x \neq y$.)

### 3. Les deux nombres $a$ et $b$

Rassemblons les fractions à gauche et le reste à droite :
$$\frac{a}{b} - \frac{b}{a} = b - a.$$

Réduisons au même dénominateur $ab$ :
$$\frac{a^2 - b^2}{ab} = b - a,$$
puis factorisons le numérateur :
$$\frac{(a-b)(a+b)}{ab} = -(a-b).$$

Comme $a \neq b$, on a $a - b \neq 0$ et on peut diviser par $a-b$ :
$$\frac{a+b}{ab} = -1.$$

Or c'est exactement la quantité demandée, puisque
$$\frac{1}{a} + \frac{1}{b} = \frac{b}{ab} + \frac{a}{ab} = \frac{a+b}{ab}.$$

Donc
$$\frac{1}{a} + \frac{1}{b} = -1.$$

**Conclusion.** Les réponses sont $x = \pm\,20252025$, puis $x+y = 2025$, puis $\dfrac{1}{a} + \dfrac{1}{b} = -1$. Dans les trois cas, l'idée est de faire apparaître une différence de deux carrés et de la factoriser.

## Going further

1. Trouvez un couple de nombres $a$ et $b$ qui vérifie réellement la condition de la question 3, et vérifiez la réponse sur cet exemple.
2. Calculez sans calculatrice $\dfrac{2025^2 - 2024^2}{2025 + 2024}$, puis $2025^2 - 2024^2 + 2023^2 - 2022^2 + \dots + 3^2 - 2^2 + 1^2$.
