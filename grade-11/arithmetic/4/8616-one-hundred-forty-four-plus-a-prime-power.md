---
id: "8616"
title: "144 plus une puissance de nombre premier qui donne un carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [factorisation, nombres premiers, diviseurs d une puissance, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de mi-parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les triplets $(p, n, k)$ d'entiers strictement positifs, avec $p$ premier, tels que

$$144 + p^n = k^2 .$$

## Hints

1. $144$ est un carré. Fais passer ce qu'il faut de l'autre côté et reconnais une identité remarquable.
2. Tu obtiens un produit de deux facteurs égal à $p^n$. Quels sont les diviseurs positifs de $p^n$ ?
3. Écris donc $k - 12 = p^a$ et $k + 12 = p^b$. Que valent $a + b$ ? Et la différence $p^b - p^a$ ?
4. Traite à part le cas $a = 0$. Dans le cas $a \geqslant 1$, factorise par $p^a$ : que peux-tu dire de $p$ ?
5. Pour $p = 2$, remarque que $2^{b-a} - 1$ est impair : cela détermine $a$ d'un coup.

## Solution

**Mise en forme.** Comme $144 = 12^2$, l'équation se récrit

$$p^n = k^2 - 12^2 = (k-12)(k+12) .$$

Comme $p^n > 0$ et $k + 12 > 0$, le facteur $k - 12$ est lui aussi strictement positif, donc $k > 12$.

**Les deux facteurs sont des puissances de $p$.** Les nombres $k-12$ et $k+12$ sont des diviseurs positifs de $p^n$. Or les seuls diviseurs positifs de $p^n$ sont $1, p, p^2, \ldots, p^n$. Écrivons donc

$$k - 12 = p^a \qquad \text{et} \qquad k + 12 = p^b ,$$

avec $a$ et $b$ entiers positifs ou nuls. Comme $k - 12 < k + 12$, on a $a < b$. Et en multipliant, $p^{a+b} = p^n$, donc

$$a + b = n .$$

En soustrayant les deux égalités, on obtient l'équation clé :

$$(\star) \qquad p^b - p^a = 24 .$$

**Premier cas : $a = 0$.**

Alors $k - 12 = 1$, donc $k = 13$, et $(\star)$ donne $p^b = 25$. Donc $p = 5$ et $b = 2$, d'où $n = 0 + 2 = 2$.

On obtient le triplet $(p, n, k) = (5, 2, 13)$.

**Second cas : $a \geqslant 1$.**

Factorisons $(\star)$ par $p^a$ :

$$p^a \left( p^{\,b-a} - 1 \right) = 24 .$$

Le nombre premier $p$ divise le membre de gauche (car $a \geqslant 1$), donc il divise $24 = 2^3 \times 3$. Donc $p = 2$ ou $p = 3$.

*Sous-cas $p = 2$.* On a $2^a\left(2^{\,b-a} - 1\right) = 2^3 \times 3$. Comme $b > a$, le nombre $2^{\,b-a}$ est pair, donc $2^{\,b-a} - 1$ est **impair** : toute la puissance de $2$ est portée par le facteur $2^a$. Donc

$$2^a = 8, \quad \text{soit } a = 3, \qquad \text{et} \qquad 2^{\,b-3} - 1 = 3 .$$

De $2^{\,b-3} = 4$ on tire $b - 3 = 2$, soit $b = 5$. Alors $n = a + b = 8$ et $k = 12 + 2^3 = 20$.

On obtient le triplet $(p, n, k) = (2, 8, 20)$.

*Sous-cas $p = 3$.* On a $3^a\left(3^{\,b-a} - 1\right) = 24$. Comme $3^{\,b-a}$ est un multiple de $3$, le nombre $3^{\,b-a} - 1$ n'est pas divisible par $3$ : toute la puissance de $3$ est portée par $3^a$. Or $24 = 3 \times 8$ ne contient qu'un seul facteur $3$, donc $a = 1$, et

$$3^{\,b-1} - 1 = 8, \qquad \text{donc} \qquad 3^{\,b-1} = 9, \qquad \text{donc} \qquad b = 3 .$$

Alors $n = a + b = 4$ et $k = 12 + 3 = 15$.

On obtient le triplet $(p, n, k) = (3, 4, 15)$.

**Vérification.** Les trois triplets conviennent bien :

$$144 + 5^2 = 144 + 25 = 169 = 13^2, \qquad 144 + 2^8 = 144 + 256 = 400 = 20^2, \qquad 144 + 3^4 = 144 + 81 = 225 = 15^2 .$$

**Conclusion.** Les solutions sont exactement

$$\boxed{(5, 2, 13), \quad (2, 8, 20) \quad \text{et} \quad (3, 4, 15)} .$$

## Going further

La méthode se résume en une phrase : **quand une équation contient un carré et une puissance de nombre premier, on factorise, et on utilise que les diviseurs de $p^n$ sont tous des puissances de $p$.** C'est ce qui transforme une équation à trois inconnues en la petite équation $p^b - p^a = 24$.

Essaie la même chose avec $100 + p^n = k^2$. Combien de solutions trouves-tu ?
