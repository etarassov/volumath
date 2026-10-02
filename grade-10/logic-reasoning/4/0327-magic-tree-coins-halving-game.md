---
id: "0327"
title: "Les pièces d'or de l'arbre magique"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie, positions-gagnantes, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 12, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Une nuit, $300$ pièces d'or ont poussé sur un arbre magique. Le Renard et le Chat se mettent d'accord : chacun leur tour, ils iront à l'arbre et cueilleront des pièces. Chaque visite, celui dont c'est le tour doit cueillir **au moins une pièce**, et **au plus la moitié** des pièces encore accrochées à l'arbre.

Celui qui, à son tour, ne peut plus cueillir la moindre pièce a perdu : il doit donner à l'autre tout ce qu'il avait ramassé.

C'est le Renard qui commence. Lequel des deux se retrouve perdant, si tous les deux jouent au mieux ?

## Hints

1. Combien de pièces doit-il rester sur l'arbre pour que celui dont c'est le tour ne puisse plus rien cueillir ?
2. Joue la partie avec très peu de pièces au départ : $1$, puis $2$, puis $3$, puis $4$, puis $5$... Pour quels nombres de pièces celui qui doit jouer est-il perdant ?
3. Les nombres perdants que tu trouves sont $1$, $3$, $7$, $15$, $31$, ... Écris-les autrement : chacun vaut une puissance de $2$ diminuée de $1$.
4. S'il reste $n$ pièces, quels nombres de pièces peux-tu laisser à ton adversaire ? Montre que le plus petit que tu puisses lui laisser est la moitié de $n$ arrondie vers le haut.
5. Cherche la plus grande puissance de $2$ diminuée de $1$ qui soit inférieure à $300$.

## Solution

**Le vocabulaire.** Appelons *position* le nombre de pièces encore accrochées à l'arbre au moment où un joueur arrive. Une position est **perdante** si celui qui doit cueillir va perdre quoi qu'il fasse, et **gagnante** s'il peut s'assurer la victoire.

**Ce qu'un coup permet de laisser.**

Supposons qu'il reste $n$ pièces. Le joueur cueille $k$ pièces, avec
$$1 \leqslant k \leqslant \frac{n}{2}.$$
Comme $k$ est un entier, cela veut dire $1 \leqslant k \leqslant E\!\left(\frac{n}{2}\right)$, où $E$ désigne la partie entière.

Il laisse donc $m = n - k$ pièces, et $m$ peut être n'importe quel entier tel que
$$n - E\!\left(\frac{n}{2}\right) \leqslant m \leqslant n-1 .$$

Le nombre $n - E(n/2)$ est exactement $n/2$ arrondi vers le haut. Retenons :

> **depuis $n$ pièces, on peut laisser n'importe quel nombre de pièces compris entre « la moitié de $n$ arrondie vers le haut » et $n-1$.**

**Les petits cas.**

- $n = 1$ : la moitié de $1$ est $\text{0,5}$, donc on ne peut cueillir aucune pièce entière. Celui qui arrive a perdu. **$1$ est perdante.**
- $n = 2$ : on cueille $1$ pièce et on laisse $1$. **Gagnante.**
- $n = 3$ : on ne peut cueillir qu'une pièce, donc on laisse $2$, qui est gagnante pour l'adversaire. **$3$ est perdante.**
- $n = 4, 5, 6$ : on peut laisser $3$ pièces. **Gagnantes.**
- $n = 7$ : on peut laisser $4$, $5$ ou $6$, toutes gagnantes. **$7$ est perdante.**

Les positions perdantes trouvées sont $1$, $3$, $7$. On devine la suite :
$$1 = 2^1 - 1, \quad 3 = 2^2 - 1, \quad 7 = 2^3 - 1, \quad 15 = 2^4 - 1, \ \ldots$$

**La règle générale.**

> Une position de $n$ pièces est perdante si et seulement si $n$ s'écrit $2^k - 1$.

Pour le montrer, il suffit de vérifier deux choses.

**(A) Depuis $n = 2^k - 1$, on ne peut jamais laisser un nombre de la forme $2^j - 1$.**

La moitié de $2^k - 1$ arrondie vers le haut vaut $2^{k-1}$. On laisse donc un nombre $m$ avec
$$2^{k-1} \leqslant m \leqslant 2^k - 2 .$$
Or la puissance de $2$ diminuée de $1$ juste en dessous est $2^{k-1} - 1$, qui est **trop petite** ($2^{k-1}-1 < 2^{k-1}$), et la suivante est $2^k - 1$, qui est **trop grande** ($2^k - 1 > 2^k - 2$). Aucune ne tombe dans l'intervalle.

**(B) Depuis un $n$ qui n'est pas de la forme $2^k - 1$, on peut toujours laisser un nombre de cette forme.**

Prenons la plus grande puissance de $2$ diminuée de $1$ qui soit strictement plus petite que $n$, appelons-la $2^k - 1$. Comme la suivante, $2^{k+1}-1$, est plus grande que $n$, on a
$$2^k \leqslant n \leqslant 2^{k+1} - 2 .$$
Vérifions que l'on peut bien laisser $2^k - 1$ pièces :

- il en faut moins que $n$ : $2^k - 1 < 2^k \leqslant n$, c'est bon ;
- il en faut au moins la moitié de $n$ arrondie vers le haut : comme $n \leqslant 2^{k+1}-2$, on a $\dfrac{n}{2} \leqslant 2^k - 1$, et $2^k-1$ étant entier, il est bien supérieur ou égal à la moitié de $n$ arrondie vers le haut.

Donc le coup est autorisé.

Ces deux points suffisent : celui qui arrive sur $2^k - 1$ pièces est obligé de laisser une position gagnante à l'autre, qui la lui renverra sous forme d'une nouvelle position $2^j - 1$, plus petite. Comme le nombre de pièces diminue à chaque coup, on descend forcément jusqu'à $1$, et c'est le joueur coincé sur $1$ qui perd.

**Et avec $300$ pièces ?**

Les positions perdantes sont
$$1,\ 3,\ 7,\ 15,\ 31,\ 63,\ 127,\ 255,\ 511,\ \ldots$$

$300$ n'en fait pas partie : c'est donc une position **gagnante**, et le Renard, qui commence, l'emporte. Son premier coup : laisser $255 = 2^8 - 1$ pièces, c'est-à-dire en cueillir
$$300 - 255 = 45 .$$
Ce coup est autorisé, car $45 \leqslant 150 = \dfrac{300}{2}$.

Ensuite, à chaque tour, le Renard ramène l'arbre à $127$, puis $63$, puis $31$, $15$, $7$, $3$, et enfin $1$ pièce, et le Chat, ne pouvant plus rien cueillir, doit tout lui rendre.

**Réponse : c'est le Chat qui se retrouve perdant. Le Renard gagne en cueillant $45$ pièces au premier coup, puis en laissant à chaque fois sur l'arbre un nombre de pièces de la forme $2^k - 1$.**

## Going further

1. Pour quels nombres de pièces au départ, entre $1$ et $1000$, le Chat gagnerait-il ?
2. On change la règle : on peut cueillir au plus le **tiers** des pièces présentes. Quelles sont les positions perdantes ?
