---
id: "8672"
title: "Toutes les sommes deux à deux sont des puissances de 2"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [puissances-de-deux, inegalite, maximum, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 4 (niveau 1, deux étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par recherche exhaustive."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On écrit au tableau $N$ entiers strictement positifs, **tous différents**. On suppose que pour tous les couples $a$, $b$ de nombres distincts écrits au tableau, la somme $a + b$ est une puissance de $2$.

Quelle est la plus grande valeur possible de $N$ ?

## Hints

1. Trouve d'abord un exemple avec $N = 2$. Deux nombres suffisent : à toi de les choisir.
2. Essaie maintenant très fort de trouver trois nombres qui marchent. Tu n'y arriveras pas, mais tes essais vont te montrer pourquoi.
3. Suppose $a < b < c$ au tableau, avec $a+b$, $a+c$ et $b+c$ toutes des puissances de $2$. Compare les trois sommes : laquelle est la plus petite, laquelle la plus grande ?
4. Trois puissances de $2$ rangées strictement dans l'ordre : la plus grande vaut au moins le double de la deuxième.
5. Calcule $(a+b) + (a+c) - (b+c)$. Que vaut cette expression ? Et quel est son signe ?

## Solution

### Un exemple avec $N = 2$

Prenons $1$ et $3$. Leur somme vaut $4 = 2^2$. La condition est satisfaite, donc $N = 2$ est possible.

### Trois nombres, c'est impossible

Supposons qu'il y ait au moins trois nombres au tableau, et choisissons-en trois : $a < b < c$. Les trois sommes

$$a+b, \qquad a+c, \qquad b+c$$

sont des puissances de $2$. Comme $b < c$, on a $a + b < a + c$ ; et comme $a < b$, on a $a + c < b + c$. Les trois sommes sont donc **strictement croissantes** :

$$a+b \ < \ a+c \ < \ b+c .$$

Écrivons-les $a+b = 2^{x}$, $a+c = 2^{y}$, $b+c = 2^{z}$. Des inégalités strictes entre puissances de $2$ donnent des inégalités strictes entre les exposants :

$$x < y < z .$$

En particulier $z \geqslant y+1$, donc

$$2^{z} \geqslant 2^{\,y+1} = 2^{y} + 2^{y} > 2^{y} + 2^{x} ,$$

la dernière inégalité venant de $x < y$.

Mais alors, calculons

$$(a+b) + (a+c) - (b+c) = 2a .$$

C'est-à-dire

$$2a = 2^{x} + 2^{y} - 2^{z} .$$

Or on vient de voir que $2^{z} > 2^{x} + 2^{y}$, donc le membre de droite est **strictement négatif**. On aurait $2a < 0$, alors que $a$ est un entier strictement positif. C'est impossible.

### Conclusion

Il ne peut donc pas y avoir trois nombres au tableau, et deux suffisent.

$$\boxed{N = 2 .}$$

## Going further

Le cœur de l'argument tient en une phrase : **deux puissances de $2$ ne peuvent pas s'additionner pour en donner une troisième plus grande, sauf si elles sont égales.** Autrement dit, $2^x + 2^y \geqslant 2^z$ avec $x < y < z$ est toujours faux.

C'est la même raison qui fait qu'un nombre s'écrit d'une seule façon en base $2$.

Pour continuer, deux variantes :

- Même question, mais les nombres peuvent maintenant être **égaux entre eux**. Que devient la réponse ?
- Même question avec « la somme $a+b$ est une puissance de $3$ ». *(Indication : l'argument ci-dessus utilise $2^{\,y+1} = 2^y + 2^y$. Que devient-il avec des puissances de $3$ ?)*
