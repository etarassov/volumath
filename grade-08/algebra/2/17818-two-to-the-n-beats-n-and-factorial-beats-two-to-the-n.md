---
id: "17818"
title: "2ⁿ dépasse n, et n! dépasse 2ⁿ"
grade: 8
theme: algebra
difficulty: 2
duration_min: 20
tags: [recurrence, puissances-de-deux, factorielle, inegalite]
adapted_from: null
see_also: ["8218"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 8, p.49-50 ; solution p.51"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Pour un entier $n \geq 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$ (on lit « factorielle $n$ »).

1. Montrer que $2^n > n$ pour tout entier $n \geq 0$.
2. Montrer que $n! > 2^n$ pour tout entier $n \geq 4$. Est-ce encore vrai pour $n = 1, 2, 3$ ?

## Hints

1. Vérifiez la première inégalité pour $n = 0$. Ensuite, si $2^n > n$ pour un certain entier $n$, que peut-on dire de $2^{n+1} = 2 \times 2^n$ ?
2. Si $2^n > n$ et que ce sont deux entiers, alors $2^n \geq n + 1$.
3. Pour la deuxième question, commencez à $n = 4$. On passe de $n!$ à $(n+1)!$ en multipliant par $n + 1$, et de $2^n$ à $2^{n+1}$ en multipliant par $2$. Lequel des deux facteurs est le plus grand ?

## Solution

On raisonne de proche en proche : on vérifie l'inégalité pour la première valeur, puis on montre que si elle est vraie pour un entier, elle est vraie pour le suivant. Elle est alors vraie pour toutes les valeurs, comme une rangée de dominos qui tombent l'un après l'autre. C'est un raisonnement par récurrence.

**1.** Pour $n = 0$ : $2^0 = 1 > 0$.

Supposons que $2^n > n$ pour un certain entier $n \geq 0$. Comme $2^n$ et $n$ sont des entiers, et qu'il n'y a pas d'entier strictement entre $n$ et $n + 1$, on a en fait $2^n \geq n + 1$. En multipliant par $2$ :

$$2^{n+1} \geq 2(n + 1) = (n + 1) + (n + 1) > n + 1 ,$$

car $n + 1 > 0$. Donc $2^{n+1} > n + 1$ : l'inégalité est vraie pour l'entier suivant.

**Conclusion : $2^n > n$ pour tout entier $n \geq 0$.**

**2.** Pour $n = 4$ : $4! = 1 \times 2 \times 3 \times 4 = 24$ et $2^4 = 16$, donc $4! > 2^4$.

Supposons que $n! > 2^n$ pour un certain entier $n \geq 4$. On a $(n+1)! = n! \times (n+1)$ et $2^{n+1} = 2^n \times 2$. Or $n! > 2^n$ et $n + 1 \geq 5 > 2$, donc, tous les nombres étant positifs,

$$(n+1)! = n! \times (n+1) > 2^n \times (n+1) > 2^n \times 2 = 2^{n+1} .$$

L'inégalité est vraie pour l'entier suivant.

**Conclusion : $n! > 2^n$ pour tout entier $n \geq 4$.**

Pour les petites valeurs, ce n'est pas vrai : $1! = 1 < 2$, $2! = 2 < 4$ et $3! = 6 < 8$. C'est pour cela que l'on commence à $n = 4$.
