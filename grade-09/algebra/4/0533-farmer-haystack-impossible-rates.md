---
id: "0533"
title: "La meule de foin du fermier"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [systeme, vitesses, absurde, fractions]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 7, задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Un fermier possède une chèvre, une vache, une jument et une meule de foin. Son fils fait ses comptes et annonce trois choses :

- la meule nourrirait la chèvre et la jument pendant un mois ;
- elle nourrirait la jument et la vache pendant un tiers de mois ;
- elle nourrirait la vache et la chèvre pendant trois quarts de mois.

Le père lui répond qu'il travaille mal à l'école. Pourquoi le père est-il certain que son fils s'est trompé ?

*(Dans chacun des trois cas, les deux animaux mangent ensemble jusqu'à ce que la meule soit exactement finie.)*

## Hints

1. On ne cherche pas ici une quantité mais une **vitesse**. Note $x$, $y$ et $z$ la part de la meule que mangent respectivement la chèvre, la vache et la jument **en un mois**.
2. Si deux animaux dont les vitesses sont $y$ et $z$ mangent ensemble pendant un tiers de mois, quelle part de meule avalent-ils ? Écris que cela fait exactement une meule.
3. Tu obtiens trois équations. Additionne-les toutes les trois et regarde ce qui apparaît.
4. Compare ce que tu obtiens pour $x + y + z$ avec la valeur de $y + z$. Combien vaudrait $x$ ? Est-ce possible ?

## Solution

**L'idée : on raisonne sur des vitesses, pas sur des durées.**

C'est le point délicat du problème. Les durées ne s'additionnent pas, alors que les vitesses, si : deux animaux qui mangent ensemble avalent, chaque mois, la somme de ce que chacun avale.

Notons donc $x$, $y$ et $z$ la part de la meule que mangent respectivement **en un mois** la chèvre, la vache et la jument. Ce sont des nombres **positifs** : un animal mange, il ne recrache pas. Un animal de vitesse $x$ mange $t \times x$ meule en $t$ mois.

**Les trois affirmations du fils.**

- La chèvre et la jument finissent la meule en $1$ mois : $(x + z) \times 1 = 1$, donc

$$x + z = 1.$$

- La jument et la vache finissent la meule en $\dfrac{1}{3}$ de mois : $(y + z) \times \dfrac{1}{3} = 1$, donc

$$y + z = 3.$$

- La vache et la chèvre finissent la meule en $\dfrac{3}{4}$ de mois : $(x + y) \times \dfrac{3}{4} = 1$, donc

$$x + y = \frac{4}{3}.$$

**Le coup de la somme.**

Additionnons les trois égalités. À gauche, chaque lettre apparaît exactement deux fois :

$$2(x + y + z) = 1 + 3 + \frac{4}{3} = \frac{16}{3},$$

d'où

$$x + y + z = \frac{8}{3}.$$

**La contradiction.**

La deuxième équation affirme que $y + z = 3$. En soustrayant :

$$x = (x + y + z) - (y + z) = \frac{8}{3} - 3 = \frac{8}{3} - \frac{9}{3} = -\frac{1}{3}.$$

La chèvre mangerait donc $-\dfrac{1}{3}$ de meule par mois. C'est impossible : une vitesse de consommation ne peut pas être négative.

**Conclusion.** Les trois affirmations du fils ne peuvent pas être vraies en même temps. Le père a raison sans même avoir besoin d'aller voir les animaux : les comptes de son fils se contredisent.

**Une seconde façon de voir la contradiction, encore plus courte.** Comme $x \geqslant 0$, on a $y \leqslant x + y = \dfrac{4}{3}$ et $z \leqslant x + z = 1$. Donc

$$y + z \leqslant \frac{4}{3} + 1 = \frac{7}{3} \approx \text{2,3},$$

alors que le fils annonce $y + z = 3$. C'est bien la deuxième affirmation qui détonne : elle rend la jument et la vache beaucoup trop voraces pour le reste de l'histoire.

**L'idée à retenir.** On a raisonné **par l'absurde** : on suppose que tout est vrai, et on aboutit à quelque chose d'impossible. Et on a su choisir les bonnes inconnues, des vitesses et non des durées.

## Going further

1. Le fils corrige sa deuxième affirmation : la meule nourrirait la jument et la vache pendant **un demi-mois**. Les trois affirmations sont-elles maintenant compatibles ? Si oui, combien de temps la meule nourrirait-elle les trois animaux ensemble ?
2. Le fils annonce trois durées $a$, $b$ et $c$ pour les trois couples d'animaux. Quelle condition ces trois nombres doivent-ils vérifier pour que l'histoire soit possible ?
