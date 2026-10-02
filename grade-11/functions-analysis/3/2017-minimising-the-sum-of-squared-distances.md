---
id: "2017"
title: "Le point le plus proche de n points donnés"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [minimum, forme-canonique, second-degre, moyenne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 19"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_n$ des nombres réels fixés. On considère la fonction

$$f(x) = (x - a_1)^2 + (x - a_2)^2 + \cdots + (x - a_n)^2 .$$

1. Pour quelle valeur de $x$ la fonction $f$ atteint-elle son minimum ?
2. Que vaut ce minimum ?

*Application :* les quatre nombres sont $1$, $4$, $10$ et $11$. Où est le minimum, et combien vaut-il ?

## Hints

1. Développez chaque carré et regroupez : $f$ est un trinôme du second degré en $x$. Quels sont ses coefficients ?
2. Le coefficient de $x^2$ est $n$, qui est strictement positif : la parabole est tournée vers le haut, donc il y a bien un minimum.
3. Le minimum d'un trinôme $\alpha x^2 + \beta x + \gamma$ avec $\alpha > 0$ est atteint en $x = -\dfrac{\beta}{2\alpha}$.
4. Vous devriez reconnaître un nombre très familier.

## Solution

**1. Où est le minimum ?**

Développons chaque carré :

$$(x - a_k)^2 = x^2 - 2a_k x + a_k^2 .$$

En sommant pour $k$ allant de $1$ à $n$ :

$$f(x) = n\,x^2 - 2(a_1 + a_2 + \cdots + a_n)\,x + (a_1^2 + a_2^2 + \cdots + a_n^2).$$

Notons $S = a_1 + \cdots + a_n$ et $Q = a_1^2 + \cdots + a_n^2$, de sorte que

$$f(x) = n x^2 - 2S x + Q .$$

C'est un trinôme du second degré dont le coefficient dominant $n$ est strictement positif. Sa courbe est donc une parabole tournée vers le haut, et son minimum est atteint au sommet, d'abscisse

$$x = -\frac{-2S}{2n} = \frac{S}{n} = \frac{a_1 + a_2 + \cdots + a_n}{n} .$$

**Le minimum est atteint à la moyenne des $a_k$.**

**2. Combien vaut ce minimum ?**

Remplaçons $x$ par $\dfrac{S}{n}$ :

$$f\!\left(\frac{S}{n}\right) = n \times \frac{S^2}{n^2} - 2S \times \frac{S}{n} + Q = \frac{S^2}{n} - \frac{2S^2}{n} + Q = Q - \frac{S^2}{n} .$$

Donc

$$\min f = a_1^2 + \cdots + a_n^2 - \frac{(a_1 + \cdots + a_n)^2}{n} .$$

**Application.** Avec $a_1 = 1$, $a_2 = 4$, $a_3 = 10$, $a_4 = 11$ :

$$S = 1 + 4 + 10 + 11 = 26, \qquad Q = 1 + 16 + 100 + 121 = 238, \qquad n = 4 .$$

Le minimum est atteint en $x = \dfrac{26}{4} = \text{6,5}$, et il vaut

$$238 - \frac{26^2}{4} = 238 - \frac{676}{4} = 238 - 169 = 69 .$$

Vérification directe : $(\text{6,5}-1)^2 + (\text{6,5}-4)^2 + (\text{6,5}-10)^2 + (\text{6,5}-11)^2 = \text{30,25} + \text{6,25} + \text{12,25} + \text{20,25} = 69$. $\checkmark$

## Going further

Ce résultat explique pourquoi la moyenne est partout en statistiques : c'est **le** nombre qui rend la somme des carrés des écarts la plus petite possible. Le minimum obtenu, divisé par $n$, est exactement la **variance** de la série $a_1, \ldots, a_n$ :

$$\frac{1}{n}\left(Q - \frac{S^2}{n}\right) = \frac{Q}{n} - \left(\frac{S}{n}\right)^2 ,$$

c'est-à-dire « la moyenne des carrés moins le carré de la moyenne », la formule bien connue.

Si l'on remplaçait les carrés par des valeurs absolues, $g(x) = |x-a_1| + \cdots + |x-a_n|$, la réponse changerait : le minimum serait atteint à la **médiane**, et non à la moyenne.
