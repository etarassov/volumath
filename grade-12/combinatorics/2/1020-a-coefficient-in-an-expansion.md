---
id: "1020"
title: "Le coefficient de x⁷y²"
grade: 12
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [binome-de-newton, coefficient-binomial, developpement, signe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercices 15 et 17 (réponses dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

1. Dans le développement de $(x+y)^{10}$, quel est le coefficient de $x^{4}y^{6}$ ? Et celui de $x^{6}y^{4}$ ? Expliquer pourquoi ces deux coefficients sont égaux sans les calculer.
2. Dans le développement de $(2y - x)^{9}$, quel est le coefficient de $x^{7}y^{2}$ ?

## Hints

1. La formule du binôme s'écrit $\displaystyle (a+b)^{n} = \sum_{k=0}^{n}\binom{n}{k}a^{\,n-k}b^{\,k}$.
2. Pour la question 1, repérez la valeur de $k$ qui donne le terme cherché.
3. Pour l'égalité des deux coefficients, pensez à $\binom{n}{k} = \binom{n}{n-k}$, ou bien remarquez que $(x+y)^{10} = (y+x)^{10}$.
4. Pour la question 2, appliquez la formule avec $a = 2y$ et $b = -x$. Attention, le coefficient cherché contient trois morceaux : le coefficient binomial, une puissance de $2$ et un signe.
5. Ne perdez pas le signe moins : $(-x)^{7} = -x^{7}$.

## Solution

### Question 1

La formule du binôme donne
$$(x+y)^{10} = \sum_{k=0}^{10}\binom{10}{k}x^{\,10-k}y^{\,k}.$$

Le terme en $x^{4}y^{6}$ correspond à $k = 6$, donc son coefficient est
$$\binom{10}{6} = \frac{10 \times 9 \times 8 \times 7}{4 \times 3 \times 2 \times 1} = 210.$$

Le terme en $x^{6}y^{4}$ correspond à $k = 4$, donc son coefficient est $\binom{10}{4}$, qui vaut aussi $210$.

**Pourquoi sont-ils égaux ?** Choisir $4$ objets parmi $10$, c'est la même chose que choisir les $6$ que l'on écarte : $\binom{10}{4} = \binom{10}{6}$. Autrement dit, développer $(x+y)^{10}$, c'est, dans chacun des $10$ facteurs, choisir de prendre $x$ ou $y$ ; le nombre de façons d'obtenir quatre $x$ est le nombre de façons d'obtenir six $y$, puisque c'est le même choix vu des deux côtés.

Plus directement encore : $(x+y)^{10} = (y+x)^{10}$, donc échanger les rôles de $x$ et $y$ ne change pas le développement. Le coefficient de $x^{4}y^{6}$ est donc égal à celui de $y^{4}x^{6}$.

De façon générale, le coefficient de $x^{k}y^{10-k}$ et celui de $x^{10-k}y^{k}$ valent tous deux $\binom{10}{k}$.

### Question 2

Appliquons la formule du binôme avec $a = 2y$ et $b = -x$, et $n = 9$ :
$$(2y - x)^{9} = \sum_{k=0}^{9}\binom{9}{k}(2y)^{\,9-k}(-x)^{\,k}.$$

Le terme en $x^{7}y^{2}$ correspond à $k = 7$ (et alors $9 - k = 2$). Ce terme vaut
$$\binom{9}{7}(2y)^{2}(-x)^{7} = \binom{9}{7}\times 4y^{2}\times(-x^{7}) = -4\binom{9}{7}\,x^{7}y^{2}.$$

Or $\displaystyle \binom{9}{7} = \binom{9}{2} = \frac{9\times 8}{2} = 36$. Donc le coefficient vaut
$$-4 \times 36 = -144.$$

**Conclusion.** Le coefficient de $x^{4}y^{6}$ dans $(x+y)^{10}$ vaut $210$, comme celui de $x^{6}y^{4}$. Le coefficient de $x^{7}y^{2}$ dans $(2y-x)^{9}$ vaut $-144$.

**Le piège.** Beaucoup répondent $36$, en oubliant les deux facteurs cachés : le $2$ élevé au carré et le signe moins élevé à la puissance $7$. Quand la formule du binôme s'applique à autre chose que $x$ et $y$ tout nus, il faut écrire le terme en entier avant de conclure.

## Going further

1. Quelle est la somme de tous les coefficients de $(2y-x)^{9}$ ? *Indication* : remplacer $x$ et $y$ par $1$.
2. Quel est le coefficient de $x^{5}y^{4}$ dans $(2y-x)^{9}$ ? Y a-t-il un terme en $x^{7}y^{3}$ ?
3. Combien de termes compte le développement de $(a + b + c)^{6}$ après réduction ? Quel est le coefficient de $a^{2}b^{3}c$ ?
4. Montrer que la somme $\binom{n}{0} + \binom{n}{1} + \cdots + \binom{n}{n}$ vaut $2^{n}$, et donner une interprétation en termes de choix.
