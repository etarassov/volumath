---
id: "2802"
title: "Le coefficient de x²⁸"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, polynome, developpement, inclusion-exclusion]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 21 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On développe entièrement le produit

$$\left(1 + x + x^2 + \cdots + x^{27}\right)\left(1 + x + x^2 + \cdots + x^{14}\right)^2 .$$

Quel est le coefficient de $x^{28}$ dans le résultat ?

## Hints

1. Le produit comporte **trois** facteurs : le grand, puis deux fois le petit. Pour fabriquer un terme du développement, on choisit une puissance de $x$ dans chacun des trois. Quelles puissances a-t-on le droit de choisir dans chaque facteur ?
2. Si on choisit $x^a$ dans le premier, $x^b$ dans le deuxième et $x^c$ dans le troisième, quel terme obtient-on ? À quelle condition contribue-t-il à $x^{28}$ ?
3. Le coefficient cherché est donc le **nombre** de triplets $(a, b, c)$ d'entiers positifs ou nuls vérifiant $a + b + c = 28$, avec $a \leqslant 27$, $b \leqslant 14$ et $c \leqslant 14$.
4. Commence par oublier les trois bornes et compter tous les triplets d'entiers positifs ou nuls de somme $28$ : fixe $a$, puis compte les $b$ possibles.
5. Il reste à retirer les triplets interdits. Combien y en a-t-il avec $b \geqslant 15$ ? Poser $b' = b - 15$ ramène à un comptage déjà fait. Peut-on avoir deux interdictions en même temps ?

## Solution

**Traduire le développement en un problème de comptage.**

Le produit s'écrit $A \times B \times B$ avec $A = 1 + x + \cdots + x^{27}$ et $B = 1 + x + \cdots + x^{14}$. Développer, c'est choisir un terme dans chacun des trois facteurs et multiplier :

- dans $A$ on choisit $x^a$ avec $0 \leqslant a \leqslant 27$ ;
- dans le premier $B$ on choisit $x^b$ avec $0 \leqslant b \leqslant 14$ ;
- dans le second $B$ on choisit $x^c$ avec $0 \leqslant c \leqslant 14$.

Le terme obtenu est $x^a \cdot x^b \cdot x^c = x^{a+b+c}$, et son coefficient vaut $1$ puisque tous les coefficients des trois facteurs valent $1$.

Le coefficient de $x^{28}$ dans le développement est donc exactement le **nombre de triplets** $(a, b, c)$ d'entiers vérifiant

$$a + b + c = 28, \qquad 0 \leqslant a \leqslant 27, \qquad 0 \leqslant b \leqslant 14, \qquad 0 \leqslant c \leqslant 14 .$$

**Première étape : compter sans les bornes supérieures.**

Comptons d'abord tous les triplets $(a, b, c)$ d'entiers **positifs ou nuls** tels que $a + b + c = 28$, sans imposer $a \leqslant 27$ ni $b, c \leqslant 14$.

Fixons $a$. Il peut valoir $0, 1, \ldots, 28$. Une fois $a$ choisi, il reste $b + c = 28 - a$, et $b$ peut prendre toutes les valeurs de $0$ à $28 - a$, ce qui fait $29 - a$ possibilités ; $c$ est alors imposé. Le nombre total vaut donc

$$\sum_{a=0}^{28} (29 - a) = 29 + 28 + 27 + \cdots + 2 + 1 = \frac{29 \times 30}{2} = 435 .$$

**Deuxième étape : retirer les triplets interdits.**

*Les triplets avec $a \geqslant 28$.* Comme $a \leqslant a+b+c = 28$, cela force $a = 28$, donc $b = c = 0$. Il y a exactement **$1$** tel triplet.

*Les triplets avec $b \geqslant 15$.* Posons $b' = b - 15$, qui est alors un entier positif ou nul. La condition devient

$$a + b' + c = 28 - 15 = 13, \qquad a, b', c \geqslant 0 .$$

On compte comme ci-dessus : $a$ va de $0$ à $13$, et pour chaque $a$ il y a $14 - a$ valeurs de $b'$. Cela donne

$$14 + 13 + \cdots + 1 = \frac{14 \times 15}{2} = 105 \text{ triplets.}$$

*Les triplets avec $c \geqslant 15$.* Le rôle de $c$ est identique à celui de $b$, donc il y en a aussi **$105$**.

**Troisième étape : vérifier qu'aucun triplet n'est retiré deux fois.**

C'est le point délicat. Si deux interdictions étaient réalisées en même temps, la somme $a + b + c$ serait trop grande :

- $a \geqslant 28$ et $b \geqslant 15$ donneraient $a + b + c \geqslant 43 > 28$ ;
- $b \geqslant 15$ et $c \geqslant 15$ donneraient $a + b + c \geqslant 30 > 28$ ;
- $a \geqslant 28$ et $c \geqslant 15$ : même chose que le premier cas.

Aucun de ces cas n'est possible. Les trois familles de triplets interdits sont donc **deux à deux disjointes**, et on peut simplement soustraire leurs effectifs.

**Le compte final.**

$$435 - 1 - 105 - 105 = 224 .$$

**Conclusion.** Le coefficient de $x^{28}$ dans le développement vaut

$$224.$$

## Going further

1. Quel est le degré du polynôme développé ? Quel est le coefficient de son terme de plus haut degré ?
2. Le polynôme obtenu est-il symétrique, c'est-à-dire le coefficient de $x^k$ est-il égal à celui de $x^{d-k}$, où $d$ est le degré ? Le justifier sans développer, en revenant aux triplets $(a,b,c)$.
3. En déduire, sans nouveau calcul, le coefficient de $x^{27}$.
