---
id: "13052"
title: "Des nombres entre −1/2 et 1/2 dont les sommes sont entières"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [entiers, parite, encadrement, contre-exemple, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices communs, exercice 5 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

On fixe un entier $n \geqslant 2$, et on considère $n$ nombres réels $a_1, a_2, \ldots, a_n$, tous compris entre $-\dfrac{1}{2}$ et $\dfrac{1}{2}$ (inclus).

On suppose que, si l'on retire n'importe lequel de ces nombres, la somme des $n - 1$ autres est toujours un nombre entier (positif, négatif ou nul).

1. Si $n$ est pair, montrer que $a_1 = a_2 = \cdots = a_n$.
2. Si $n$ est impair, a-t-on toujours $a_1 = a_2 = \cdots = a_n$ ?

## Hints

1. Note $s = a_1 + a_2 + \cdots + a_n$. La somme obtenue en retirant $a_1$ vaut $s - a_1$. Que peux-tu dire de la différence entre deux de ces sommes ?
2. Tu dois trouver que $a_1 - a_2$ est un entier. Entre quelles valeurs est-il compris ? Quelles sont alors les possibilités ?
3. Si deux des nombres sont différents, que valent-ils ? Et que valent alors tous les autres ?
4. Dans ce cas, compte combien des nombres valent $-\dfrac{1}{2}$ et calcule une des sommes. Pour la question 2, essaie avec $n = 3$.

## Solution

Notons $s = a_1 + a_2 + \cdots + a_n$. La somme des nombres qui restent quand on retire $a_i$ vaut $s - a_i$, et c'est un entier pour chaque $i$.

**Deux nombres diffèrent d'un entier.** Pour tous $i$ et $j$,
$$a_i - a_j = (s - a_j) - (s - a_i)$$
est la différence de deux entiers, donc un entier. Or $-\dfrac{1}{2} \leqslant a_i \leqslant \dfrac{1}{2}$ et $-\dfrac{1}{2} \leqslant a_j \leqslant \dfrac{1}{2}$, donc
$$-1 \leqslant a_i - a_j \leqslant 1 .$$
Ainsi $a_i - a_j$ vaut $-1$, $0$ ou $1$. Et s'il vaut $1$, c'est que $a_i = \dfrac{1}{2}$ et $a_j = -\dfrac{1}{2}$ : c'est la seule façon d'atteindre l'écart maximal.

**Si les nombres ne sont pas tous égaux.** Il y a alors deux nombres différents. D'après ce qui précède, l'un vaut $-\dfrac{1}{2}$ et l'autre $\dfrac{1}{2}$. Chacun des autres nombres diffère de $-\dfrac{1}{2}$ par $0$ ou par $1$ (il ne peut pas être plus petit que $-\dfrac{1}{2}$), donc vaut $-\dfrac{1}{2}$ ou $\dfrac{1}{2}$.

Notons $k$ le nombre de nombres égaux à $-\dfrac{1}{2}$. Les $n - k$ autres valent $\dfrac{1}{2}$, et $1 \leqslant k \leqslant n - 1$. Retirons l'un des nombres égaux à $-\dfrac{1}{2}$ : il en reste $k - 1$ égaux à $-\dfrac{1}{2}$ et $n - k$ égaux à $\dfrac{1}{2}$, de somme
$$\frac{(n - k) - (k - 1)}{2} = \frac{n - 2k + 1}{2} .$$

**Question 1.** Si $n$ est pair, alors $n - 2k + 1$ est impair, et la somme ci-dessus n'est pas un entier. C'est contraire à l'hypothèse. Les nombres ne peuvent donc pas être différents : $a_1 = a_2 = \cdots = a_n$.

**Question 2.** Si $n$ est impair, la réponse est non. Prenons
$$a_1 = -\frac{1}{2}, \qquad a_2 = a_3 = \cdots = a_n = \frac{1}{2} .$$
- En retirant $a_1$, la somme vaut $\dfrac{n - 1}{2}$, qui est un entier car $n - 1$ est pair.
- En retirant un autre nombre, il reste $-\dfrac{1}{2}$ et $n - 2$ fois $\dfrac{1}{2}$, de somme $\dfrac{n - 3}{2}$, qui est aussi un entier.

Par exemple pour $n = 3$, avec $-\dfrac{1}{2}$, $\dfrac{1}{2}$, $\dfrac{1}{2}$, les sommes de deux nombres valent $1$ et $0$.

**Conclusion.**

1. Si $n$ est pair, les $n$ nombres sont forcément tous égaux.
2. Si $n$ est impair, ce n'est pas toujours vrai : $-\dfrac{1}{2}, \dfrac{1}{2}, \ldots, \dfrac{1}{2}$ est un contre-exemple.

## Going further

1. Lorsque $n$ est pair et que les nombres sont tous égaux à un même nombre $a$, quelles sont les valeurs possibles de $a$ ?
2. Lorsque $n$ est impair, décrire toutes les listes de nombres qui conviennent.
