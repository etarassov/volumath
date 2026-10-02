---
id: "8613"
title: "Les nombres spéciaux d'un entier n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [decomposition-en-somme, divisibilite, identites-remarquables, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices lycéens, exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, fixé une fois pour toutes.

On dit qu'un entier $S$ est **spécial** lorsque la propriété suivante est vraie : pour tout entier $k \geqslant 1$ et pour **toute** façon d'écrire $n$ comme une somme de $k$ entiers strictement positifs

$$n = n_1 + n_2 + \cdots + n_k \qquad \text{avec} \qquad n_1 \leqslant n_2 \leqslant \cdots \leqslant n_k ,$$

on peut trouver des entiers $0 \leqslant a_1 < a_2 < \cdots < a_k$ tels que

$$a_1 n_1 + a_2 n_2 + \cdots + a_k n_k = S .$$

1. Montrer que $n^2 - 2n$ n'est jamais spécial.
2. Déterminer tous les nombres spéciaux.

## Hints

1. Attention au sens de l'énoncé : $S$ est spécial si le découpage fonctionne pour **toutes** les décompositions à la fois. Pour montrer que $S$ n'est pas spécial, il suffit d'exhiber **une seule** décomposition qui coince.
2. Commence par la décomposition la plus courte : $k = 1$, c'est-à-dire $n = n$. Que t'apprend-elle sur tout nombre spécial ?
3. Si $S$ est spécial, que dire de $S + n$ ? Regarde ce qui se passe si l'on remplace chaque $a_i$ par $a_i + 1$.
4. Pour la question 1, essaie la décomposition $n = 1 + (n-1)$, et travaille modulo $n - 1$.
5. Les questions 1 et 3 mises bout à bout éliminent d'un coup tous les multiples de $n$ strictement inférieurs à $n^2 - n$. Il ne reste plus qu'à montrer que $n^2 - n$, lui, est spécial.
6. Pour cette dernière étape, ne cherche pas les $a_i$ au hasard : pars de l'identité $(n_1 + \cdots + n_k)^2 = \sum n_i^2 + 2\sum_{j<i} n_i n_j$ et essaie d'y reconnaître une somme de la forme $\sum n_i a_i$.

## Solution

**La réponse : les nombres spéciaux sont exactement les multiples de $n$ supérieurs ou égaux à $n^2 - n$.**

### Deux remarques préliminaires

**Remarque 1 : un nombre spécial est un multiple de $n$.**

Prenons $k = 1$, donc l'unique décomposition $n = n_1$ avec $n_1 = n$. La définition fournit un entier $a_1 \geqslant 0$ avec $a_1 n = S$. Donc $n$ divise $S$, et au passage $S \geqslant 0$.

**Remarque 2 : si $S$ est spécial, alors $S + n$ l'est aussi.**

Soit $n = n_1 + \cdots + n_k$ une décomposition quelconque, et soient $0 \leqslant a_1 < \cdots < a_k$ les entiers fournis par le fait que $S$ est spécial. Posons $b_i = a_i + 1$. Alors $0 \leqslant b_1 < b_2 < \cdots < b_k$, et

$$\sum_{i=1}^{k} b_i n_i = \sum_{i=1}^{k} a_i n_i + \sum_{i=1}^{k} n_i = S + n .$$

Cela vaut pour toute décomposition, donc $S + n$ est spécial.

### Question 1 : $n^2 - 2n$ n'est pas spécial

Il suffit d'exhiber une décomposition qui résiste. Prenons $k = 2$ avec

$$n = 1 + (n-1), \qquad \text{c'est-à-dire} \qquad n_1 = 1, \quad n_2 = n-1 .$$

C'est bien une décomposition légitime : $n - 1 \geqslant 1$ et $n_1 \leqslant n_2$.

Supposons par l'absurde qu'il existe $0 \leqslant a_1 < a_2$ avec

$$a_1 + a_2 (n-1) = n^2 - 2n .$$

*Minorons $a_1$.* Travaillons modulo $n-1$. On a $n \equiv 1 \pmod{n-1}$, donc

$$n^2 - 2n \equiv 1 - 2 = -1 \equiv n - 2 \pmod{n-1} .$$

Par ailleurs $a_1 + a_2(n-1) \equiv a_1 \pmod{n-1}$. Donc $a_1 \equiv n-2 \pmod{n-1}$. Comme $0 \leqslant n-2 < n-1$, le plus petit entier positif ou nul de cette classe est exactement $n - 2$, et donc

$$a_1 \geqslant n-2 .$$

*Minorons la somme.* Comme $a_2 > a_1 \geqslant n-2$, on a $a_2 \geqslant n-1$, d'où

$$a_1 + a_2(n-1) \geqslant (n-2) + (n-1)^2 = n - 2 + n^2 - 2n + 1 = n^2 - n - 1 .$$

*Comparons.* On aurait donc $n^2 - 2n \geqslant n^2 - n - 1$, c'est-à-dire $-2n \geqslant -n-1$, c'est-à-dire $n \leqslant 1$. Or $n \geqslant 2$ : contradiction.

Donc **$n^2 - 2n$ n'est pas spécial**.

### Question 2 : la liste complète

**Aucun multiple de $n$ strictement inférieur à $n^2 - n$ n'est spécial.**

D'après la remarque 1, un nombre spécial est un multiple de $n$. Soit $S_0$ un multiple de $n$ vérifiant $S_0 < n^2 - n$ ; comme $S_0$ et $n^2 - n$ sont deux multiples de $n$, cela impose $S_0 \leqslant n^2 - 2n$. On peut donc écrire $n^2 - 2n = S_0 + jn$ pour un entier $j \geqslant 0$.

Si $S_0$ était spécial, la remarque 2 appliquée $j$ fois montrerait que $n^2 - 2n$ est spécial, ce que la question 1 interdit. Donc $S_0$ n'est pas spécial.

**Le nombre $n^2 - n$ est spécial.**

C'est le cœur du problème. Soit $n = n_1 + n_2 + \cdots + n_k$ une décomposition quelconque. Posons, pour chaque $i$,

$$a_i = 2\,(n_1 + n_2 + \cdots + n_{i-1}) + n_i - 1 ,$$

la somme entre parenthèses étant vide (donc nulle) pour $i = 1$, de sorte que $a_1 = n_1 - 1$.

*Ces entiers conviennent-ils ?* Vérifions les deux conditions.

- $a_1 = n_1 - 1 \geqslant 0$ puisque $n_1 \geqslant 1$.
- La suite est strictement croissante, car

$$a_{i+1} - a_i = 2 n_i + n_{i+1} - n_i = n_i + n_{i+1} > 0 .$$

*Et la somme ?* Calculons $\sum_i n_i a_i$ :

$$\sum_{i=1}^{k} n_i a_i = \sum_{i=1}^{k} n_i \left( 2 \sum_{j < i} n_j + n_i - 1 \right) = 2 \sum_{i=1}^{k} \sum_{j<i} n_i n_j \; + \; \sum_{i=1}^{k} n_i^2 \; - \; \sum_{i=1}^{k} n_i .$$

Or le développement du carré d'une somme donne exactement

$$\left( \sum_{i=1}^{k} n_i \right)^{2} = \sum_{i=1}^{k} n_i^2 + 2 \sum_{i=1}^{k} \sum_{j<i} n_i n_j .$$

Les deux premiers morceaux se recollent donc en $\left(\sum_i n_i\right)^2 = n^2$, et le dernier vaut $n$. D'où

$$\sum_{i=1}^{k} n_i a_i = n^2 - n .$$

Comme la décomposition était quelconque, $n^2 - n$ est bien spécial.

**Conclusion.** Par la remarque 2, tous les nombres $n^2 - n$, $n^2$, $n^2 + n$, ... sont spéciaux ; et on a vu qu'aucun autre entier ne l'est. Les nombres spéciaux sont donc exactement

$$\boxed{\text{les multiples de } n \text{ supérieurs ou égaux à } n^2 - n} .$$

## Going further

Testons la formule sur $n = 5$ et la décomposition $5 = 1 + 1 + 3$. Elle donne

$$a_1 = 1 - 1 = 0, \qquad a_2 = 2 \times 1 + 1 - 1 = 2, \qquad a_3 = 2 \times (1+1) + 3 - 1 = 6 ,$$

et en effet $1 \times 0 + 1 \times 2 + 3 \times 6 = 20 = 5^2 - 5$.

Les correcteurs signalent que beaucoup de candidats ont mal lu la question 1 : il ne s'agissait pas de trouver **un** entier $n$ pour lequel $n^2-2n$ n'est pas spécial, mais de montrer que c'est vrai pour **tout** $n$. Quand un énoncé comporte deux quantificateurs emboîtés, il vaut la peine de récrire précisément ce qu'on doit démontrer avant de se lancer.
