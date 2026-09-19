---
id: "1004"
title: "Le cercle de Josèphe"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 50
tags: [recurrence, puissances de deux, elimination, invariant, numeration binaire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction continued: the Josephus problem"
  reference: "Handout-4793-4967.pdf, problèmes 3 à 8"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4793-4967.pdf"
---

## Statement

$41$ personnes forment un cercle. On les numérote $1, 2, \ldots, 41$ dans le sens du cercle.

La personne $1$ élimine sa voisine, la personne $2$, qui quitte le cercle. Puis la personne $3$, qui est maintenant la voisine suivante encore en jeu, élimine à son tour sa voisine, la personne $4$. Et ainsi de suite : à chaque tour, la personne dont c'est le tour élimine la suivante encore en jeu, puis passe la main à celle qui suit.

Le cercle se referme après chaque départ, et le tour continue indéfiniment jusqu'à ce qu'il ne reste qu'une personne.

1. Quel numéro survit ? On notera $J(n)$ le numéro du survivant lorsque le cercle compte $n$ personnes ; on cherche donc $J(41)$.
2. Trouver une formule donnant $J(n)$ pour tout $n \geqslant 1$, et la démontrer.

## Hints

1. Commencez petit. Faites tourner le jeu à la main pour $n = 2, 3, 4, 5, 6, 7, 8, 9$ et notez $J(n)$ à chaque fois.
2. Montrez d'abord que $J(n)$ est toujours **impair**. Que se passe-t-il pendant le premier tour de cercle ?
3. Regardez les valeurs de $n$ pour lesquelles $J(n) = 1$. Que remarquez-vous ?
4. Écrivez $n = 2^m + r$ où $2^m$ est la plus grande puissance de $2$ inférieure ou égale à $n$, et comparez $r$ et $J(n)$.
5. Pour la démonstration : après un premier tour complet de cercle avec $n = 2p$ personnes, combien en reste-t-il, et qui a la main ? Le jeu qui recommence ressemble beaucoup au jeu de départ, mais avec moins de monde. Traitez séparément $n$ pair et $n$ impair.

## Solution

### Les petits cas

Déroulons le jeu à la main. Pour $n = 2$ : la personne $1$ élimine la $2$, donc $J(2) = 1$.
Pour $n = 3$ : $1$ élimine $2$, puis $3$ a la main et élimine $1$ ; il reste $3$, donc $J(3) = 3$.

En continuant :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $J(n)$ | 1 | 1 | 3 | 1 | 3 | 5 | 7 | 1 | 3 | 5 | 7 | 9 | 11 | 13 | 15 | 1 | 3 |

Deux choses sautent aux yeux :

- $J(n)$ est toujours impair ;
- $J(n)$ vaut $1$ exactement quand $n$ est une puissance de $2$, et entre deux puissances de $2$ consécutives, $J$ monte de $2$ en $2$.

### Pourquoi $J(n)$ est impair

Pendant le premier tour de cercle, ce sont les personnes $2, 4, 6, \ldots$ qui partent : tous les numéros pairs disparaissent avant que le premier tour ne soit fini. Le survivant porte donc un numéro impair.

### La formule

Écrivons $n$ sous la forme
$$n = 2^m + r, \qquad \text{avec } 0 \leqslant r < 2^m,$$
où $2^m$ est la plus grande puissance de $2$ inférieure ou égale à $n$. On lit sur le tableau que
$$\boxed{J(n) = 2r + 1.}$$

Par exemple $n = 13 = 8 + 5$ donne $J(13) = 2 \times 5 + 1 = 11$, ce que confirme le tableau.

### La démonstration

Tout repose sur deux relations qui ramènent un cercle de $n$ personnes à un cercle plus petit.

**Cas $n$ pair, $n = 2p$.**

Pendant le premier tour complet, les $p$ personnes de numéro pair sont éliminées, l'une après l'autre : $2$, puis $4$, …, jusqu'à $2p$. Une fois $2p$ éliminée, la main revient à la personne $1$, qui n'a pas encore rejoué.

Il reste alors les $p$ personnes de numéros $1, 3, 5, \ldots, 2p-1$, disposées en cercle, et c'est la première d'entre elles qui a la main. C'est **exactement la situation de départ avec $p$ personnes**, à ceci près que la $i$-ième personne restante porte le numéro $2i - 1$ au lieu de $i$.

Donc si le survivant du jeu à $p$ personnes est le numéro $J(p)$, le survivant du jeu à $2p$ personnes est
$$J(2p) = 2J(p) - 1.$$

**Cas $n$ impair, $n = 2p + 1$.**

Le premier tour élimine $2, 4, \ldots, 2p$. Cette fois la main passe ensuite à la personne $2p+1$, qui n'a pas encore joué : elle élimine sa voisine suivante, c'est-à-dire la personne $1$.

Il reste les $p$ personnes $3, 5, \ldots, 2p+1$, et la main est à la première d'entre elles, la personne $3$. On est encore une fois dans la situation de départ avec $p$ personnes, la $i$-ième restante portant le numéro $2i + 1$. Donc
$$J(2p+1) = 2J(p) + 1.$$

**La récurrence.**

Montrons par récurrence forte sur $n \geqslant 1$ que $J(n) = 2r + 1$ lorsque $n = 2^m + r$ avec $0 \leqslant r < 2^m$.

*Initialisation.* Pour $n = 1$ : $m = 0$, $r = 0$, et la formule donne $J(1) = 1$. C'est correct, la seule personne survit.

*Hérédité.* Soit $n \geqslant 2$, et supposons la formule vraie pour tous les entiers strictement plus petits que $n$. Écrivons $n = 2^m + r$ avec $0 \leqslant r < 2^m$ ; comme $n \geqslant 2$, on a $m \geqslant 1$.

- Si $n$ est pair, $n = 2p$. Alors $r$ est pair, $r = 2s$, et $p = 2^{m-1} + s$ avec $0 \leqslant s < 2^{m-1}$. Comme $p < n$, l'hypothèse de récurrence donne $J(p) = 2s + 1$, d'où
$$J(n) = 2J(p) - 1 = 2(2s+1) - 1 = 4s + 1 = 2r + 1.$$
- Si $n$ est impair, $n = 2p+1$. Alors $r$ est impair, $r = 2s + 1$, et $p = 2^{m-1} + s$ avec $0 \leqslant s < 2^{m-1}$. L'hypothèse de récurrence donne $J(p) = 2s+1$, d'où
$$J(n) = 2J(p) + 1 = 4s + 3 = 2(2s+1) + 1 = 2r + 1.$$

Dans les deux cas la formule est vérifiée au rang $n$, ce qui achève la récurrence.

### La réponse

$41 = 32 + 9 = 2^5 + 9$, donc $m = 5$ et $r = 9$ :
$$J(41) = 2 \times 9 + 1 = 19.$$

**Conclusion.** C'est la personne numéro $19$ qui survit.

*(Le problème doit son nom à l'historien Flavius Josèphe, qui raconte dans* La Guerre des Juifs *s'être trouvé, avec quarante compagnons, dans une situation de ce genre — et s'en être sorti vivant.)*

## Going further

1. Écrire $n$ et $J(n)$ en base $2$ pour $n = 2$ à $20$. Quelle opération très simple sur l'écriture binaire de $n$ donne celle de $J(n)$ ?
2. Où faut-il se placer dans un cercle de $100$ personnes ? Et de $1000$ ?
3. Montrer que pour tout entier impair $j$, il existe une infinité de valeurs de $n$ telles que $J(n) = j$.
4. Le jeu où l'on élimine une personne sur **trois** au lieu d'une sur deux n'admet pas de formule aussi simple. Programmer le calcul et chercher tout de même une régularité.
