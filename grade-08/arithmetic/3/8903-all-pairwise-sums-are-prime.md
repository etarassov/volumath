---
id: "8903"
title: "Toutes les sommes deux à deux sont premières"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, parite, tiroirs, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 3 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

On écrit au tableau $n$ entiers strictement positifs, tous différents les uns des autres, avec $n \geq 2$.

Ces nombres ont la propriété suivante : **si on en choisit deux, n'importe lesquels, leur somme est un nombre premier.**

Quelle est la plus grande valeur de $n$ pour laquelle c'est possible ?

## Hints

1. Essayez d'abord de réussir avec $n = 2$, puis tentez vraiment d'en écrire trois. Vous allez buter sur quelque chose. Quoi ?
2. Un entier est soit pair, soit impair. Si on en écrit trois au tableau, que peut-on dire de leurs parités ?
3. Que vaut la somme de deux nombres pairs ? De deux nombres impairs ? Cette somme peut-elle être un nombre premier ?
4. Attention au seul nombre premier pair : $2$. Vérifiez que la somme obtenue est bien trop grande pour valoir $2$.
5. Pour répondre à « quelle est la plus grande valeur », il faut **deux** choses : montrer qu'on ne peut pas faire mieux, et donner un exemple qui atteint le maximum annoncé.

## Solution

La réponse est $n = 2$. Il y a deux choses à démontrer.

**1. On peut écrire $2$ nombres.**

Écrivons $2$ et $3$ au tableau. Ce sont bien deux entiers strictement positifs distincts, et la seule somme possible est $2 + 3 = 5$, qui est premier. Donc $n = 2$ convient.

**2. On ne peut pas en écrire $3$ ou plus.**

Supposons qu'on ait réussi à écrire au moins trois nombres. Chacun est soit pair, soit impair : cela fait deux catégories seulement. Comme il y a au moins trois nombres pour deux catégories, **deux d'entre eux sont dans la même catégorie** : appelons-les $a$ et $b$, avec $a < b$ (ils sont distincts, donc l'un est plus petit que l'autre).

- Si $a$ et $b$ sont tous les deux pairs, leur somme est paire.
- Si $a$ et $b$ sont tous les deux impairs, leur somme est paire aussi.

Dans les deux cas, $a + b$ est un nombre pair, donc divisible par $2$.

Reste à vérifier que cette somme est trop grande pour être le nombre premier $2$. Comme les nombres sont des entiers strictement positifs distincts, on a $a \geq 1$ et $b \geq 2$, donc

$$a + b \geq 3.$$

Un nombre pair supérieur ou égal à $3$ vaut au moins $4$. Donc $a + b$ est un nombre pair strictement plus grand que $2$ : il a $2$ pour diviseur en plus de $1$ et de lui-même, il n'est **pas** premier.

C'est une contradiction avec l'énoncé. On ne peut donc pas écrire trois nombres ou plus.

**Conclusion.**

$$\boxed{n = 2 \text{ est la plus grande valeur possible.}}$$

*Deux pièges de la Coupe.* Beaucoup de candidats ont oublié de donner l'exemple pour $n = 2$ : montrer qu'on ne peut pas faire mieux ne prouve pas qu'on peut faire aussi bien. Et beaucoup ont oublié de traiter le cas de $2$, le seul nombre premier pair : « la somme est paire donc pas première » est faux tout seul, il faut ajouter qu'elle dépasse $2$.

## Going further

1. Et si on autorisait les nombres à être égaux entre eux ? Par exemple, peut-on écrire trois fois le même nombre ?
2. Et si on demandait seulement que la somme de deux nombres **voisins** dans la liste soit première, les nombres étant rangés dans l'ordre croissant ? Combien peut-on en écrire alors ?
