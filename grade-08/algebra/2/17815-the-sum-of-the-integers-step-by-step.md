---
id: "17815"
title: "La somme des entiers de 0 à n, de proche en proche"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [recurrence, somme-des-entiers]
adapted_from: null
see_also: ["1801", "17816"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 1, p.49 ; solution p.50"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

On veut montrer que, pour tout entier $n \geq 0$,

$$0 + 1 + 2 + \cdots + n = \frac{n(n+1)}{2} .$$

1. Vérifier que la formule est vraie pour $n = 0$, puis pour $n = 1$, $n = 2$ et $n = 3$.
2. On suppose que la formule est vraie pour un certain entier $n$. Montrer qu'elle est alors vraie aussi pour l'entier suivant $n + 1$.
3. Expliquer pourquoi les questions 1 et 2 suffisent pour conclure que la formule est vraie pour tous les entiers $n \geq 0$.

## Hints

1. Pour $n + 1$, la formule à obtenir est $0 + 1 + \cdots + n + (n+1) = \frac{(n+1)(n+2)}{2}$.
2. Dans la somme jusqu'à $n + 1$, remplacez le début $0 + 1 + \cdots + n$ par ce que vous savez déjà.
3. Mettez $(n+1)$ en facteur.
4. Pour la question 3, pensez à une rangée de dominos.

## Solution

**1. Les premiers cas.** Pour $n = 0$ : la somme vaut $0$ et $\frac{0 \times 1}{2} = 0$. Pour $n = 1$ : $0 + 1 = 1$ et $\frac{1 \times 2}{2} = 1$. Pour $n = 2$ : $0 + 1 + 2 = 3$ et $\frac{2 \times 3}{2} = 3$. Pour $n = 3$ : $0 + 1 + 2 + 3 = 6$ et $\frac{3 \times 4}{2} = 6$. La formule est vraie dans ces quatre cas.

**2. Passer de $n$ à $n + 1$.** Supposons que $0 + 1 + \cdots + n = \frac{n(n+1)}{2}$ pour un certain entier $n$. La somme jusqu'à $n + 1$ est la somme jusqu'à $n$, plus le dernier terme $n + 1$ :

$$0 + 1 + \cdots + n + (n+1) = \frac{n(n+1)}{2} + (n+1) .$$

On met $(n+1)$ en facteur :

$$\frac{n(n+1)}{2} + (n+1) = (n+1)\left(\frac{n}{2} + 1\right) = \frac{(n+1)(n+2)}{2} .$$

C'est exactement la formule pour l'entier $n + 1$, où l'on remplace $n$ par $n+1$ : $\frac{(n+1)(n+1+1)}{2} = \frac{(n+1)(n+2)}{2}$.

**3. Pourquoi c'est suffisant.** La formule est vraie pour $0$. D'après la question 2, elle est donc vraie pour $1$. Encore d'après la question 2, elle est donc vraie pour $2$, puis pour $3$, puis pour $4$, et ainsi de suite, sans jamais s'arrêter. Comme une rangée de dominos : le premier tombe, et chaque domino qui tombe fait tomber le suivant, donc ils tombent tous.

**Conclusion :** pour tout entier $n \geq 0$, $0 + 1 + 2 + \cdots + n = \frac{n(n+1)}{2}$.

Cette façon de raisonner s'appelle le **raisonnement par récurrence**. La question 1 (le premier cas) s'appelle l'initialisation, et la question 2 (le passage de $n$ à $n+1$) s'appelle l'hérédité.

## Going further

Une autre démonstration, sans récurrence : écrivons la somme $S = 1 + 2 + \cdots + n$ deux fois, une fois à l'endroit et une fois à l'envers, et additionnons terme à terme.

$$2S = (1 + n) + (2 + (n-1)) + \cdots + (n + 1) = n(n+1) ,$$

car chacune des $n$ parenthèses vaut $n + 1$. On retrouve $S = \frac{n(n+1)}{2}$. Selon une histoire célèbre, le jeune Gauss aurait ainsi calculé $1 + 2 + \cdots + 100 = 5050$ en quelques secondes.
