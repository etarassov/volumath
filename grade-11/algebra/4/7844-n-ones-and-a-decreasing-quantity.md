---
id: "7844"
title: "n uns au tableau, et une quantité qui ne remonte jamais"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [monovariant, inegalite, inverse, moyenne-harmonique]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On écrit $n$ fois le nombre $1$ au tableau.

À chaque étape, on choisit deux des nombres écrits, disons $a$ et $b$, on les efface tous les
deux, et on écrit à leur place le seul nombre
$$\frac{a + b}{4} .$$

Il y a donc un nombre de moins à chaque étape. Au bout de $n - 1$ étapes, il ne reste qu'un
seul nombre, que l'on note $x$.

Montrer que
$$x \geq \frac{1}{n} .$$

## Hints

1. Essaie avec $n = 2$, puis $n = 3$, en variant les choix. Le résultat final dépend-il des
   choix faits ?
2. La conclusion porte sur $\frac1x$ plutôt que sur $x$ : l'inégalité $x \geq \frac1n$ s'écrit
   aussi $\frac1x \leq n$. Cela suggère de suivre la **somme des inverses** des nombres écrits.
3. Au départ, que vaut la somme des inverses ? Et à la fin ?
4. Il reste à montrer que cette somme ne peut que diminuer. Pour $a, b > 0$, compare
   $\dfrac1a + \dfrac1b$ et $\dfrac{4}{a+b}$ : tout revient à une identité remarquable.

## Solution

**Étape 0 : tous les nombres écrits restent strictement positifs.**

Au départ ce sont des $1$, et la moyenne divisée par deux de deux nombres strictement positifs
reste strictement positive. Les inverses ont donc toujours un sens.

**Étape 1 : le bon outil.**

Montrons que pour tous réels $a, b > 0$,
$$\frac{1}{a} + \frac{1}{b} \geq \frac{4}{a+b} . \qquad (\star)$$

En effet, en réduisant au même dénominateur, $(\star)$ équivaut à
$$\frac{a+b}{ab} \geq \frac{4}{a+b} .$$

Les deux dénominateurs $ab$ et $a+b$ sont strictement positifs, donc on peut faire le produit en
croix sans changer le sens :
$$(a+b)^2 \geq 4ab ,$$
c'est-à-dire
$$a^2 + 2ab + b^2 - 4ab \geq 0 , \qquad \text{soit} \qquad (a - b)^2 \geq 0 ,$$
ce qui est toujours vrai. L'inégalité $(\star)$ est démontrée.

**Étape 2 : la somme des inverses ne remonte jamais.**

Notons $S_k$ la somme des inverses de tous les nombres écrits au tableau après $k$ étapes.

Une étape efface $a$ et $b$ et écrit $c = \dfrac{a+b}{4}$. La contribution à la somme des
inverses passe donc de $\dfrac1a + \dfrac1b$ à
$$\frac{1}{c} = \frac{4}{a+b} .$$

D'après $(\star)$, la nouvelle contribution est **inférieure ou égale** à l'ancienne. Tous les
autres nombres sont inchangés, donc
$$S_{k+1} \leq S_k .$$

La suite $(S_k)$ est décroissante : c'est ce qu'on appelle un **monovariant**.

**Étape 3 : on compare le départ et l'arrivée.**

Au départ, le tableau porte $n$ fois le nombre $1$, dont les inverses valent tous $1$ :
$$S_0 = n .$$

Après $n-1$ étapes, il ne reste que le nombre $x$, donc
$$S_{n-1} = \frac{1}{x} .$$

La décroissance donne
$$\frac{1}{x} = S_{n-1} \leq S_{n-2} \leq \cdots \leq S_0 = n .$$

**Étape 4 : on conclut.**

De $\dfrac1x \leq n$ et $x > 0$, $n > 0$, on tire par passage à l'inverse (qui renverse le sens
pour des nombres strictement positifs) :
$$x \geq \frac{1}{n} .$$

*Le cas d'égalité.* Il faudrait l'égalité dans $(\star)$ à chaque étape, donc $a = b$ à chaque
fois. C'est possible pour $n = 2$ : on écrit $1$ et $1$, on obtient $\frac{1+1}{4} = \frac12$,
et $\frac12 = \frac1n$ exactement. Pour $n = 4$ en appariant les nombres deux par deux : $1,1$
donne $\frac12$, $1,1$ donne $\frac12$, puis $\frac12, \frac12$ donne $\frac14 = \frac1n$.
