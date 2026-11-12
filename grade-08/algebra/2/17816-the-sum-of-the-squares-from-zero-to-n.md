---
id: "17816"
title: "La somme des carrés de 0 à n"
grade: 8
theme: algebra
difficulty: 2
duration_min: 20
tags: [recurrence, somme-de-carres, factorisation]
adapted_from: null
see_also: ["17815"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 2, p.49 ; solution p.50"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Montrer que, pour tout entier $n \geq 0$,

$$0^2 + 1^2 + 2^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6} .$$

On pourra vérifier la formule pour $n = 0$, puis montrer que si elle est vraie pour un entier $n$, alors elle est vraie aussi pour l'entier suivant $n + 1$.

## Hints

1. Vérifiez la formule pour $n = 0, 1, 2, 3$ : on doit trouver $0$, $1$, $5$, $14$.
2. Pour l'entier $n + 1$, la formule à obtenir est $\frac{(n+1)(n+2)(2n+3)}{6}$.
3. Ajoutez $(n+1)^2$ à $\frac{n(n+1)(2n+1)}{6}$ et mettez $(n+1)$ en facteur.
4. Développez $(n+2)(2n+3)$ et comparez.

## Solution

**Le premier cas.** Pour $n = 0$, la somme vaut $0$ et $\frac{0 \times 1 \times 1}{6} = 0$. (On peut aussi vérifier $n = 1$ : $1 = \frac{1 \times 2 \times 3}{6}$, et $n = 2$ : $0 + 1 + 4 = 5 = \frac{2 \times 3 \times 5}{6}$.)

**Passer de $n$ à $n + 1$.** Supposons la formule vraie pour un certain entier $n$. La somme jusqu'à $(n+1)^2$ est la somme jusqu'à $n^2$, plus le dernier terme $(n+1)^2$ :

$$0^2 + 1^2 + \cdots + n^2 + (n+1)^2 = \frac{n(n+1)(2n+1)}{6} + (n+1)^2 .$$

On met tout sur le dénominateur $6$, puis $(n+1)$ en facteur :

$$\frac{n(n+1)(2n+1) + 6(n+1)^2}{6} = \frac{(n+1)\,[\,n(2n+1) + 6(n+1)\,]}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} .$$

Or, en développant, $(n+2)(2n+3) = 2n^2 + 3n + 4n + 6 = 2n^2 + 7n + 6$. Donc

$$0^2 + 1^2 + \cdots + (n+1)^2 = \frac{(n+1)(n+2)(2n+3)}{6} .$$

C'est la formule annoncée pour l'entier $n + 1$ : en remplaçant $n$ par $n + 1$ dans $\frac{n(n+1)(2n+1)}{6}$, on obtient bien $\frac{(n+1)(n+2)(2n+3)}{6}$.

**Conclusion.** La formule est vraie pour $0$, et chaque fois qu'elle est vraie pour un entier, elle est vraie pour le suivant. Elle est donc vraie pour $1$, puis pour $2$, puis pour $3$, et ainsi de suite : **elle est vraie pour tout entier $n \geq 0$.** C'est un raisonnement par récurrence.

## Going further

Le raisonnement par récurrence permet de vérifier une formule, mais pas de la trouver. Pour la somme des cubes, calculez $0^3 + 1^3 + \cdots + n^3$ pour les petites valeurs de $n$ et comparez avec la somme $0 + 1 + \cdots + n$ : que remarquez-vous ? On peut ensuite démontrer cette conjecture de la même façon.
