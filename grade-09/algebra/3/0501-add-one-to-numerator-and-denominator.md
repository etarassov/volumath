---
id: "0501"
title: "Ajouter 1 en haut et en bas"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [fractions, comparaison, calcul-litteral, produit-en-croix]
adapted_from: null
see_also: ["1022"]
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 1 «Буквы помогают», задача 1"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Dans chacune des deux questions, dire lequel des deux nombres est le plus grand.

1. $\dfrac{20182017}{20172018}$ ou $\dfrac{20182018}{20172019}$ ?
2. $\dfrac{12345}{54321}$ ou $\dfrac{12346}{54322}$ ?

Aucune calculatrice : il faut trouver un raisonnement qui marche sans poser la division.

## Hints

1. Regarde attentivement comment on passe de la première fraction à la seconde, dans chacune des deux questions. C'est la même transformation les deux fois.
2. Note $a$ le numérateur et $b$ le dénominateur de la première fraction. La seconde s'écrit alors $\dfrac{a+1}{b+1}$. Le vrai problème est donc : comparer $\dfrac{a}{b}$ et $\dfrac{a+1}{b+1}$ pour des entiers $a$ et $b$ strictement positifs.
3. Deux fractions de dénominateurs strictement positifs se comparent par le produit en croix. Écris ce produit en croix, développe les deux côtés, et regarde ce qui reste une fois les termes communs enlevés.

## Solution

**L'idée : remplacer les gros nombres par des lettres.**

Les nombres sont bien trop grands pour être comparés à la main. Mais on remarque la même chose dans les deux questions : on passe de la première fraction à la seconde en **ajoutant $1$ au numérateur et $1$ au dénominateur**.

- Question 1 : $20182017 + 1 = 20182018$ et $20172018 + 1 = 20172019$.
- Question 2 : $12345 + 1 = 12346$ et $54321 + 1 = 54322$.

On traite donc une bonne fois pour toutes la question générale.

**Le cas général.**

Soient $a$ et $b$ deux entiers strictement positifs. Comparons

$$\frac{a}{b} \qquad \text{et} \qquad \frac{a+1}{b+1}$$

Les dénominateurs $b$ et $b+1$ sont strictement positifs, donc $b(b+1)$ aussi. Multiplier les deux fractions par $b(b+1)$ ne change pas l'ordre entre elles. Cela revient au produit en croix : comparer $\dfrac{a}{b}$ et $\dfrac{a+1}{b+1}$, c'est comparer

$$a(b+1) \qquad \text{et} \qquad b(a+1)$$

Développons les deux produits :

$$a(b+1) = ab + a \qquad \text{et} \qquad b(a+1) = ab + b$$

Les deux expressions contiennent le même terme $ab$. Comparer $ab + a$ et $ab + b$, c'est donc simplement comparer $a$ et $b$.

**Conclusion générale.** Pour $a$ et $b$ entiers strictement positifs :

- si $a > b$, alors $\dfrac{a}{b} > \dfrac{a+1}{b+1}$ ;
- si $a < b$, alors $\dfrac{a}{b} < \dfrac{a+1}{b+1}$ ;
- si $a = b$, les deux fractions valent $1$.

Autrement dit : **ajouter $1$ en haut et en bas rapproche la fraction de $1$.** Une fraction plus grande que $1$ diminue, une fraction plus petite que $1$ augmente.

**Les deux réponses.**

Question 1 : ici $a = 20182017$ et $b = 20172018$. Les deux nombres ont huit chiffres. Les quatre premiers chiffres sont $2018$ pour $a$ et $2017$ pour $b$, donc $a > b$. La première fraction est donc la plus grande :

$$\frac{20182017}{20172018} > \frac{20182018}{20172019}$$

Question 2 : ici $a = 12345$ et $b = 54321$. Les deux nombres ont cinq chiffres, et $1 < 5$ pour le chiffre des dizaines de mille, donc $a < b$. Cette fois c'est la seconde fraction qui est la plus grande :

$$\frac{12345}{54321} < \frac{12346}{54322}$$

**Réponse.** Le plus grand est le premier nombre à la question 1, et le second nombre à la question 2.

## Going further

1. Que se passe-t-il si, au lieu d'ajouter $1$, on ajoute un même entier $k > 0$ au numérateur et au dénominateur ? Comparer $\dfrac{a}{b}$ et $\dfrac{a+k}{b+k}$.
2. Et si on ajoute $1$ seulement au numérateur ? Seulement au dénominateur ?
3. On part de $\dfrac{1}{2}$ et on ajoute $1$ en haut et en bas, encore et encore : $\dfrac{1}{2}$, $\dfrac{2}{3}$, $\dfrac{3}{4}$, $\dfrac{4}{5}$, … De quel nombre ces fractions se rapprochent-elles ? Peuvent-elles l'atteindre ?
