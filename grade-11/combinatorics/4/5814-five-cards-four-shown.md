---
id: "5814"
title: "Cinq cartes, quatre montrées"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [principe des tiroirs, permutations, information, cartes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Magic for Muggles (Paul Zeitz)"
  reference: "ZeitzMathMuggles.pdf, problème 12 « Mind-Reader? » (solution p. 10 ; tour dû à Fitch Cheney)"
  url: "https://mathcircles.org/activity/mathematical-magic-for-muggles/"
  original_language: "en"
  local_copy: "sources/originals/namc/ZeitzMathMuggles.pdf"
---

## Statement

Un jeu de $52$ cartes ordinaire : quatre couleurs (trèfle, carreau, cœur, pique) et treize
valeurs par couleur (as, $2$, $3$, …, $10$, valet, dame, roi).

Le magicien et son assistante ont préparé leur numéro ensemble, mais le magicien va rester les
yeux bandés pendant toute la préparation. Voici ce qui se passe.

1. Une spectatrice choisit librement **cinq** cartes dans le jeu et les montre à l'assistante.
2. L'assistante remet **une** de ces cinq cartes dans le jeu, sans que le magicien la voie, et
   pose les **quatre** autres en pile devant lui, dans l'ordre qu'elle veut, toutes faces
   visibles et dans le même sens.
3. La spectatrice a le droit de battre le jeu autant qu'elle veut.
4. Le magicien retire son bandeau, regarde les quatre cartes dans l'ordre où elles sont posées,
   et annonce la carte cachée.

Les cartes ne sont pas truquées, l'assistante ne fait aucun signe, et les quatre cartes sont
posées bien proprement : la **seule** information que reçoit le magicien, ce sont les quatre
cartes et leur ordre.

Montrer que l'assistante et le magicien peuvent se mettre d'accord à l'avance sur une méthode qui
réussit **à tous les coups**, et décrire cette méthode.

## Hints

1. L'assistante choisit deux choses : quelle carte cacher, et dans quel ordre poser les quatre
   autres. Ces deux choix portent l'information. Commence par compter combien d'ordres elle peut
   donner à quatre cartes dont la première est imposée.
2. Parmi cinq cartes tirées d'un jeu qui n'a que quatre couleurs, que peut-on affirmer à coup
   sûr ?
3. Si l'assistante s'arrange pour que la carte cachée ait la **même couleur** que la première
   carte posée, que reste-t-il à transmettre au magicien ?
4. Range les treize valeurs d'une couleur en rond, comme les heures sur un cadran de $13$ heures.
   Étant données deux valeurs, quelle est la distance à parcourir de l'une à l'autre en tournant
   toujours dans le même sens ? Et si on part de l'autre ?
5. Combien de rangements différents peut-on donner à trois cartes ? Compare ce nombre avec le
   plus grand écart que tu as obtenu à la question précédente.

## Solution

**L'idée générale.** L'assistante va s'arranger pour que la **première** carte posée donne la
couleur de la carte cachée et un point de départ pour sa valeur, et pour que l'**ordre** des
trois dernières donne le reste du chemin.

**Étape 1 : deux cartes de la même couleur.**

La spectatrice a choisi cinq cartes, et le jeu n'a que quatre couleurs. D'après le principe des
tiroirs, deux des cinq cartes au moins ont la même couleur. L'assistante en repère deux, disons
$X$ et $Y$, de même couleur.

**Étape 2 : laquelle cacher.**

Numérotons les valeurs d'une couleur de $1$ à $13$ : as $= 1$, puis $2, 3, \ldots, 10$, valet
$= 11$, dame $= 12$, roi $= 13$. Disposons ces treize valeurs en rond, comme sur un cadran de
$13$ heures.

Pour deux valeurs $x$ et $y$ distinctes, notons $d(x, y)$ le nombre de crans à parcourir pour
aller de $x$ à $y$ **en tournant toujours dans le même sens**, c'est-à-dire l'unique entier $d$
entre $1$ et $12$ tel que $x + d$ et $y$ laissent le même reste dans la division par $13$. En
faisant le tour complet, on a
$$d(x, y) + d(y, x) = 13 .$$

Deux entiers de somme $13$ ne peuvent pas être tous les deux supérieurs ou égaux à $7$. Donc
**l'un au moins des deux nombres $d(x, y)$ et $d(y, x)$ est compris entre $1$ et $6$.**

L'assistante choisit alors ses deux cartes dans ce sens-là : elle **montre** celle dont on part,
et **cache** celle où l'on arrive, de façon que la distance $d$ soit comprise entre $1$ et $6$.
Elle pose la carte montrée **en premier** dans la pile.

Le magicien, en voyant cette première carte, connaît déjà la couleur de la carte cachée et sa
valeur de départ. Il lui manque uniquement le nombre $d$, un entier entre $1$ et $6$.

**Étape 3 : transmettre un nombre entre $1$ et $6$.**

Il reste trois cartes à poser, et trois cartes se rangent de
$$3! = 3 \times 2 \times 1 = 6$$
façons différentes. Comme il y a exactement six valeurs possibles pour $d$, il suffit d'associer
à l'avance, une fois pour toutes, chaque rangement à un nombre.

Pour cela on fixe un ordre total sur les $52$ cartes, connu des deux : par exemple on compare
d'abord les valeurs ($1 < 2 < \cdots < 13$), et en cas d'égalité les couleurs, dans l'ordre
trèfle $<$ carreau $<$ cœur $<$ pique. Trois cartes distinctes se rangent alors toujours de façon
non ambiguë, de la plus petite $a$ à la plus grande $c$, et on convient de la table :

| rangement posé | $a, b, c$ | $a, c, b$ | $b, a, c$ | $b, c, a$ | $c, a, b$ | $c, b, a$ |
|---|---|---|---|---|---|---|
| nombre transmis | 1 | 2 | 3 | 4 | 5 | 6 |

**Étape 4 : le magicien conclut.**

Il regarde la première carte : elle lui donne la couleur et une valeur de départ $x$. Il regarde
les trois suivantes, les classe mentalement en $a < b < c$, lit dans la table le nombre $d$
correspondant à l'ordre où elles sont posées, puis avance de $d$ crans à partir de $x$ sur le
cadran de $13$. Il obtient la valeur cachée, dans la couleur de la première carte. Il annonce la
carte.

La méthode ne rate jamais, puisque chacune des trois étapes est toujours réalisable.

**Un exemple complet.**

La spectatrice choisit les cinq cartes suivantes : le $3$ de trèfle, le valet de cœur, le $10$ de
carreau, la dame de trèfle et l'as de pique.

- Deux cartes de trèfle : le $3$ (valeur $3$) et la dame (valeur $12$). On calcule
  $d(12, 3) = 4$, car en partant de $12$ et en avançant de $4$ on passe par $13, 1, 2, 3$. Et
  $d(3, 12) = 9$. C'est $4$ qui est entre $1$ et $6$ : l'assistante **montre la dame de trèfle**
  et **cache le $3$ de trèfle**.
- Il reste le valet de cœur, le $10$ de carreau et l'as de pique. Classés : as de pique (valeur
  $1$) $<$ $10$ de carreau (valeur $10$) $<$ valet de cœur (valeur $11$). Donc
  $a = \text{as de pique}$, $b = 10$ de carreau, $c = $ valet de cœur.
- Il faut transmettre $4$, c'est-à-dire le rangement $b, c, a$.

La pile posée devant le magicien est donc, de haut en bas :
$$\text{dame de trèfle}, \quad 10 \text{ de carreau}, \quad \text{valet de cœur}, \quad \text{as de pique}.$$

Le magicien lit : première carte, dame de trèfle, donc la carte cachée est un trèfle, et on part
de $12$. Les trois autres sont posées dans l'ordre $b, c, a$, ce qui vaut $4$. Il avance de $4$
à partir de $12$ : $13$, $1$, $2$, $3$. La carte cachée est le **$3$ de trèfle**.

**Conclusion.** Le principe des tiroirs garantit deux cartes de même couleur, le cadran de $13$
garantit un écart au plus égal à $6$ dans le bon sens, et les $3! = 6$ rangements de trois cartes
suffisent tout juste à transmettre cet écart. Le tour réussit toujours.

## Going further

Remarque comme tout tient de justesse : six rangements pour six écarts possibles, pas un de trop.
C'est le signe qu'on est à la limite de ce que l'ordre de quatre cartes peut transporter.

On peut préciser cette limite. Si la spectatrice choisit cinq cartes dans un jeu de $n$ cartes et
que l'assistante en montre quatre dans l'ordre, le tour reste possible tant que
$$n \leqslant 4! \times 5 + 4 = 124,$$
et il devient impossible dès que le jeu dépasse $124$ cartes. Le jeu ordinaire de $52$ cartes est
donc très loin du compte : la méthode ci-dessus n'utilise même pas toute la marge disponible.

Cherche d'abord pourquoi aucune méthode ne peut marcher avec un jeu de $200$ cartes. Un simple
comptage des messages possibles suffit.
