---
id: "2815"
title: "La somme des inverses ne s'arrête jamais"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 35
tags: [suite, limite, serie-harmonique, minoration, regroupement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Limits of Sequences"
  reference: "Handout-1698-1574.pdf, section A, dernière limite à trois étoiles"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1698-1574.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on pose

$$H_n = 1 + \frac12 + \frac13 + \cdots + \frac1n .$$

Les termes ajoutés deviennent de plus en plus petits et tendent vers $0$. On pourrait croire que la somme finit par se stabiliser.

1. Calculer $H_1$, $H_2$, $H_4$ et $H_8$ (valeurs exactes ou approchées).
2. Montrer que pour tout entier $n \geqslant 1$ :
   $$H_{2n} - H_n \geqslant \frac12 .$$
3. En déduire que pour tout entier $k \geqslant 0$ :
   $$H_{2^k} \geqslant 1 + \frac{k}{2}.$$
4. Quelle est la limite de la suite $(H_n)$ ?
5. À partir de quel rang est-on **sûr** que $H_n \geqslant 10$ ?

## Hints

1. Pour la question 2, écris $H_{2n} - H_n$ en entier : c'est une somme de combien de termes ? Lequel est le plus petit ?
2. Minore chacun de ces termes par le plus petit d'entre eux. Tu obtiens une minoration très simple.
3. Pour la question 3, la relation de la question 2 appliquée avec $n = 2^k$ relie $H_{2^{k+1}}$ à $H_{2^k}$. C'est exactement ce qu'il faut pour une récurrence.
4. Une suite croissante qui dépasse n'importe quel nombre fixé à l'avance ne peut pas converger.
5. Pour la question 5, cherche le plus petit $k$ tel que $1 + \frac{k}{2} \geqslant 10$. Attention, cela donne un rang qui **suffit**, pas le premier rang possible.

## Solution

**1. Les premières valeurs.**

$$H_1 = 1, \qquad H_2 = 1 + \frac12 = \text{1,5}, \qquad H_4 = 1 + \frac12 + \frac13 + \frac14 \approx \text{2,083},$$
$$H_8 = H_4 + \frac15 + \frac16 + \frac17 + \frac18 \approx \text{2,718}.$$

La croissance est lente, mais on remarque que chaque doublement de $n$ fait gagner un peu plus de 0,5. C'est précisément ce qu'on va démontrer.

**2. Chaque doublement rapporte au moins $\frac12$.**

Pour $n \geqslant 1$,

$$H_{2n} - H_n = \frac{1}{n+1} + \frac{1}{n+2} + \cdots + \frac{1}{2n} .$$

Cette somme comporte exactement $n$ termes (ceux d'indices $n+1$ jusqu'à $2n$). Chacun de ces termes est **supérieur ou égal au dernier**, car les indices sont plus petits ou égaux à $2n$ et l'inverse décroît :

$$\frac{1}{n+1} \geqslant \frac{1}{2n}, \quad \frac{1}{n+2} \geqslant \frac{1}{2n}, \quad \ldots, \quad \frac{1}{2n} \geqslant \frac{1}{2n}.$$

En additionnant ces $n$ minorations :

$$H_{2n} - H_n \geqslant n \times \frac{1}{2n} = \frac12 .$$

**3. La minoration par récurrence.**

Montrons par récurrence sur $k \geqslant 0$ que $H_{2^k} \geqslant 1 + \dfrac{k}{2}$.

*Initialisation.* Pour $k = 0$ : $H_{2^0} = H_1 = 1$ et $1 + \dfrac{0}{2} = 1$. L'inégalité est vraie (c'est une égalité).

*Hérédité.* Supposons $H_{2^k} \geqslant 1 + \dfrac{k}{2}$ pour un certain $k \geqslant 0$. En appliquant la question 2 avec $n = 2^k$ :

$$H_{2^{k+1}} = H_{2 \times 2^k} \geqslant H_{2^k} + \frac12 \geqslant 1 + \frac{k}{2} + \frac12 = 1 + \frac{k+1}{2}.$$

C'est l'inégalité au rang $k+1$.

*Conclusion.* Pour tout entier $k \geqslant 0$, $H_{2^k} \geqslant 1 + \dfrac{k}{2}$.

**4. La limite.**

La suite $(H_n)$ est croissante, puisque $H_{n+1} - H_n = \dfrac{1}{n+1} > 0$.

Soit $M$ un nombre réel quelconque, aussi grand qu'on veut. Choisissons un entier $k$ tel que $1 + \dfrac{k}{2} \geqslant M$, par exemple $k = \lceil 2M \rceil$. Alors $H_{2^k} \geqslant M$, et comme la suite est croissante, $H_n \geqslant M$ pour tout $n \geqslant 2^k$.

Autrement dit, tout intervalle de la forme $[M ; +\infty[$ contient tous les termes de la suite à partir d'un certain rang :

$$\lim_{n \to +\infty} H_n = +\infty .$$

**5. Dépasser $10$.**

On cherche $k$ tel que $1 + \dfrac{k}{2} \geqslant 10$, soit $k \geqslant 18$. Donc

$$H_{2^{18}} \geqslant 10, \qquad \text{avec } 2^{18} = 262\,144 .$$

À partir du rang $262\,144$, on est certain que $H_n \geqslant 10$.

**Conclusion.** La somme $1 + \frac12 + \frac13 + \cdots + \frac1n$ tend vers $+\infty$ : elle finit par dépasser n'importe quel nombre. Mais elle le fait terriblement lentement. La minoration ci-dessus demande environ $262\,000$ termes pour atteindre $10$ ; en réalité il en faut « seulement » $12\,367$, ce qui reste énorme. Pour dépasser $100$, il faudrait un nombre de termes de l'ordre de $10^{43}$.

**La morale.** Des termes qui tendent vers $0$ ne suffisent pas à faire converger une somme. Tout dépend de la **vitesse** à laquelle ils tendent vers $0$.

## Going further

1. Montrer que la somme $1 + \dfrac{1}{2^2} + \dfrac{1}{3^2} + \cdots + \dfrac{1}{n^2}$ reste, elle, toujours inférieure à $2$. (Indication : $\dfrac{1}{k^2} \leqslant \dfrac{1}{k(k-1)} = \dfrac{1}{k-1} - \dfrac{1}{k}$ pour $k \geqslant 2$.)
2. Montrer que $H_{2^k} \leqslant 1 + k$, en regroupant les termes de la même façon mais en majorant.
3. Que devient le résultat si l'on ne garde que les inverses des nombres **impairs** : $1 + \frac13 + \frac15 + \cdots$ ?
