---
id: "8532"
title: "Ariane, Bérénice et un diviseur commun"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, nombres-premiers, diviseurs, jeu-a-deux, strategie-gagnante]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Entraînement de fin de parcours » du Groupe A, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $n$ un entier tel que $1 \leqslant n \leqslant 30$. Ariane et Bérénice jouent au jeu
suivant.

Ariane choisit d'abord $n$ nombres, deux à deux distincts, parmi les entiers
$1, 2, \ldots, 30$. Ensuite, en voyant les choix d'Ariane, Bérénice choisit un entier
$d \geqslant 2$.

Bérénice gagne si $d$ divise au moins deux des nombres choisis par Ariane. Sinon, c'est
Ariane qui gagne.

Pour quelles valeurs de $n$ Ariane peut-elle être sûre de gagner ?

## Hints

1. Pour qu'Ariane gagne, il faut que ses $n$ nombres soient deux à deux premiers entre eux. Quelle est la plus grande famille de nombres deux à deux premiers entre eux dans $\{1, \ldots, 30\}$ ?
2. Les nombres premiers sont un bon point de départ. Combien y a-t-il de nombres premiers inférieurs ou égaux à $30$ ? N'oublie pas $1$, qui est premier avec tout le monde.
3. Pour montrer que Bérénice gagne au-delà, range les entiers de $1$ à $30$ dans des tiroirs. Un bon tiroir : tous les nombres qui ont le même plus petit facteur premier.
4. Combien de tiroirs obtiens-tu ainsi, en comptant celui de $1$ ?

## Solution

### Ariane gagne pour $n \leqslant 11$

Les nombres premiers inférieurs ou égaux à $30$ sont

$$2, \; 3, \; 5, \; 7, \; 11, \; 13, \; 17, \; 19, \; 23, \; 29 ,$$

soit $10$ nombres. Ajoutons-leur $1$ : nous obtenons la liste de $11$ entiers

$$1, \; 2, \; 3, \; 5, \; 7, \; 11, \; 13, \; 17, \; 19, \; 23, \; 29 .$$

Deux de ces nombres sont toujours premiers entre eux : deux nombres premiers distincts n'ont
aucun facteur commun, et $1$ n'a aucun diviseur autre que lui-même.

Si $n \leqslant 11$, Ariane choisit $n$ nombres dans cette liste. Aucun entier
$d \geqslant 2$ ne peut alors diviser deux d'entre eux, et Ariane gagne.

### Bérénice gagne pour $n \geqslant 12$

**Les tiroirs.** Rangeons les entiers de $1$ à $30$ ainsi :

- un tiroir contient le seul nombre $1$ ;
- pour chaque nombre premier $p \leqslant 30$, un tiroir contient tous les entiers
  $k \leqslant 30$ dont **le plus petit facteur premier est $p$**.

Tout entier $k$ compris entre $2$ et $30$ possède un plus petit facteur premier, qui est
inférieur ou égal à $k$, donc à $30$ : chaque entier est donc rangé dans exactement un
tiroir.

Comme il y a $10$ nombres premiers inférieurs ou égaux à $30$, cela fait $10 + 1 = 11$
tiroirs.

**Le principe des tiroirs.** Si $n \geqslant 12$, Ariane choisit au moins $12$ nombres, et il
n'y a que $11$ tiroirs : deux de ses nombres, disons $a$ et $b$, sont dans le même tiroir.

Ce tiroir contient deux nombres, ce n'est donc pas celui de $1$ : c'est celui associé à un
nombre premier $p$. Par définition, $p$ divise à la fois $a$ et $b$.

Bérénice choisit alors $d = p$ et gagne.

### Conclusion

Ariane peut être sûre de gagner exactement pour

$$n \leqslant 11 .$$

## Going further

On peut préciser le résultat : Bérénice n'a jamais besoin de choisir autre chose que
$d = 2$, $3$ ou $5$. En effet, si un entier composé $k \leqslant 30$ a pour plus petit
facteur premier $p$, alors $k/p$ est un entier supérieur à $1$ dont aucun facteur premier
n'est plus petit que $p$, donc $k/p \geqslant p$ et $p^2 \leqslant k \leqslant 30 < 36$,
d'où $p \leqslant 5$. Seuls les tiroirs de $2$, $3$ et $5$ contiennent au moins deux
entiers.
