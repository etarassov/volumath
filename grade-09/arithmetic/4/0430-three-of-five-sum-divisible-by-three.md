---
id: "0430"
title: "Cinq nombres, une somme divisible par 3"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, restes, tiroirs, demonstration]
adapted_from: null
see_also: ["7436"]
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 1 «Логика», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

On se donne cinq entiers naturels quelconques. Ils ne se suivent pas forcément, et ils peuvent même être égaux entre eux.

Montrer qu'on peut toujours en choisir trois dont la somme est divisible par $3$.

## Hints

1. Essaie d'abord sur des exemples : $7, 7, 7, 1, 5$ puis $2, 4, 9, 11, 30$. À chaque fois, trouve trois nombres qui conviennent.
2. Divise chacun des cinq nombres par $3$ et ne garde que le reste. Chaque nombre devient alors un $0$, un $1$ ou un $2$. Est-ce que cette information suffit pour savoir si une somme est divisible par $3$ ?
3. Quels sont les triplets de restes dont la somme est divisible par $3$ ? Il n'y en a pas beaucoup : cherche d'abord ceux où les trois restes sont égaux, puis ceux où ils sont tous différents.
4. Il reste à montrer qu'avec cinq nombres on tombe forcément sur l'un de ces bons triplets. Sépare deux cas : ou bien les trois restes $0$, $1$, $2$ apparaissent tous les trois, ou bien il en manque au moins un.

## Solution

**L'idée : ne garder que les restes dans la division par 3.**

Divisons chaque nombre par $3$ : le reste vaut $0$, $1$ ou $2$. Chacun des cinq nombres reçoit donc une étiquette parmi trois.

Pourquoi cela suffit-il ? Prenons trois des nombres, $a$, $b$ et $c$, de restes respectifs $r$, $s$ et $t$. On peut écrire

$$a = 3k + r, \qquad b = 3\ell + s, \qquad c = 3m + t$$

avec $k$, $\ell$, $m$ entiers. En additionnant :

$$a + b + c = 3(k + \ell + m) + (r + s + t)$$

Le premier morceau est divisible par $3$. Donc :

> $a + b + c$ est divisible par $3$ si et seulement si $r + s + t$ l'est.

Tout le problème se ramène donc aux étiquettes.

**Étape 1. Les bons triplets d'étiquettes.**

Cherchons les triplets de restes dont la somme est divisible par $3$.

*Trois étiquettes égales :*
$$0 + 0 + 0 = 0, \qquad 1 + 1 + 1 = 3, \qquad 2 + 2 + 2 = 6$$
Ces trois sommes sont divisibles par $3$. Cela marche donc à chaque fois.

*Trois étiquettes toutes différentes :* il n'y a qu'une possibilité, $0$, $1$ et $2$, et
$$0 + 1 + 2 = 3$$
qui est bien divisible par $3$.

Il nous suffit donc de trouver, parmi nos cinq nombres, **soit trois nombres de même étiquette, soit trois nombres d'étiquettes toutes différentes**.

**Étape 2. On tombe toujours sur l'un des deux cas.**

Séparons deux cas, selon les étiquettes qui apparaissent réellement.

*Cas 1 : les trois étiquettes $0$, $1$ et $2$ apparaissent toutes les trois.*
On choisit un nombre de chaque étiquette. Leurs étiquettes sont toutes différentes, donc leur somme est divisible par $3$. C'est gagné.

*Cas 2 : au moins une étiquette n'apparaît pas.*
Nos cinq nombres se répartissent alors sur au plus deux étiquettes. Si chacune de ces étiquettes était portée par au plus deux nombres, on aurait au plus
$$2 \times 2 = 4$$
nombres en tout, alors qu'il y en a cinq. C'est le principe des tiroirs : une étiquette est donc portée par au moins trois nombres. On choisit ces trois-là : ils ont la même étiquette, donc leur somme est divisible par $3$. C'est encore gagné.

**Conclusion.** Dans les deux cas on a trouvé trois nombres dont la somme est divisible par $3$. Parmi cinq entiers naturels quelconques, un tel choix est donc toujours possible.

**Ce qu'il faut retenir.** Deux idées se combinent ici : remplacer les nombres par leurs restes, ce qui ramène une infinité de valeurs à trois étiquettes seulement ; puis le principe des tiroirs pour montrer qu'un des bons cas se produit forcément.

## Going further

1. Est-ce encore vrai avec seulement **quatre** nombres ? Trouve quatre entiers dont aucun choix de trois n'a une somme divisible par $3$.
2. La même idée avec $2$ au lieu de $3$ : montrer que parmi trois entiers quelconques, on peut toujours en choisir deux dont la somme est paire.
3. Parmi cinq entiers quelconques, peut-on toujours en choisir trois dont la somme est divisible par $5$ ?
