---
id: "7864"
title: "Sept nombres dont chacun divise leur somme"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [diviseurs, minimum, encadrement, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 36 (résolu par Antoine Stark)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On cherche sept entiers strictement positifs, tous différents les uns des autres, tels que **chacun
des sept divise leur somme**.

Avec trois nombres, c'est facile : $1$, $2$ et $3$ ont pour somme $6$, et chacun des trois divise
bien $6$.

Trouver sept tels entiers dont la somme est **la plus petite possible**, et démontrer qu'on ne peut
pas faire mieux.

## Hints

1. Appelle $S$ la somme des sept nombres. Chacun d'eux est un diviseur de $S$. Peut-il être égal à
   $S$ lui-même ?
2. Il faut donc que $S$ possède au moins sept diviseurs **strictement plus petits que $S$**. Cela
   élimine énormément de valeurs de $S$.
3. Les sept nombres sont distincts et strictement positifs : quelle est la plus petite somme
   qu'ils puissent avoir, même en oubliant la condition de divisibilité ?
4. Pour chaque $S$ candidat, regarde ses sept plus petits diviseurs. Si même **eux** ont une somme
   plus grande que $S$, alors aucun choix ne peut marcher.
5. Essaie $S = 48$.

## Solution

### La réponse

La plus petite somme possible est $\boxed{48}$, par exemple avec les sept nombres
$$1, \quad 2, \quad 3, \quad 4, \quad 6, \quad 8, \quad 24.$$

Vérifions : leur somme vaut $1 + 2 + 3 + 4 + 6 + 8 + 24 = 48$, et chacun divise bien $48$, puisque
$$48 = 48 \times 1 = 24 \times 2 = 16 \times 3 = 12 \times 4 = 8 \times 6 = 6 \times 8 = 2 \times 24.$$

Il reste à montrer qu'aucune somme plus petite n'est possible.

### Étape 1 : deux contraintes sur la somme

Notons $S$ la somme des sept nombres.

**Chacun des sept est un diviseur de $S$, strictement plus petit que $S$.** Il est bien diviseur par
hypothèse. Et il ne peut pas valoir $S$ : s'il valait $S$, les six autres nombres auraient une somme
nulle, ce qui est impossible puisqu'ils sont strictement positifs.

Donc **$S$ possède au moins sept diviseurs autres que lui-même.**

**$S$ vaut au moins $28$.** Les sept nombres sont des entiers strictement positifs distincts, donc
les plus petits possibles sont $1, 2, 3, 4, 5, 6, 7$, et
$$S \geq 1+2+3+4+5+6+7 = 28.$$

### Étape 2 : les candidats entre $28$ et $47$

Cherchons les entiers $S$ compris entre $28$ et $47$ qui ont au moins sept diviseurs autres
qu'eux-mêmes. En les passant en revue, on n'en trouve que quatre :

| $S$ | ses diviseurs autres que $S$ | combien |
|---|---|---|
| $30$ | $1, 2, 3, 5, 6, 10, 15$ | $7$ |
| $36$ | $1, 2, 3, 4, 6, 9, 12, 18$ | $8$ |
| $40$ | $1, 2, 4, 5, 8, 10, 20$ | $7$ |
| $42$ | $1, 2, 3, 6, 7, 14, 21$ | $7$ |

Tous les autres entiers de cet intervalle en ont six ou moins. Par exemple $32$ n'a que
$1, 2, 4, 8, 16$, et $44$ n'a que $1, 2, 4, 11, 22$ ; quant aux nombres premiers comme $29$, $31$,
$37$, $41$, $43$ et $47$, ils n'ont que le diviseur $1$.

### Étape 3 : aucun des quatre ne marche

L'argument est le même à chaque fois. Si l'on doit choisir sept diviseurs de $S$, alors la somme la
plus petite qu'on puisse obtenir est celle des **sept plus petits** diviseurs. Il suffit donc de
calculer cette somme minimale : si elle dépasse déjà $S$, c'est perdu.

| $S$ | ses sept plus petits diviseurs | leur somme | comparaison |
|---|---|---|---|
| $30$ | $1, 2, 3, 5, 6, 10, 15$ | $42$ | $42 > 30$ |
| $36$ | $1, 2, 3, 4, 6, 9, 12$ | $37$ | $37 > 36$ |
| $40$ | $1, 2, 4, 5, 8, 10, 20$ | $50$ | $50 > 40$ |
| $42$ | $1, 2, 3, 6, 7, 14, 21$ | $54$ | $54 > 42$ |

Dans les quatre cas, même le choix le plus économe donne une somme trop grande. Aucune valeur de $S$
entre $28$ et $47$ ne convient.

### Conclusion

La somme vaut donc au moins $48$, et $48$ est atteint avec $1, 2, 3, 4, 6, 8, 24$.

**La plus petite somme possible est $48$.**

## Going further

La solution avec la somme $48$ n'est pas unique. Les diviseurs de $48$ autres que lui-même sont
$$1, 2, 3, 4, 6, 8, 12, 16, 24,$$
et ils sont neuf. Leur somme totale vaut $76$ ; pour en garder sept dont la somme fasse $48$, il faut
en retirer deux dont la somme fasse $76 - 48 = 28$. Deux paires conviennent : $4 + 24$ et
$12 + 16$. On obtient ainsi exactement **deux** familles de sept nombres :
$$\{1, 2, 3, 6, 8, 12, 16\} \qquad \text{et} \qquad \{1, 2, 3, 4, 6, 8, 24\}.$$

Un nombre dont les diviseurs autres que lui-même ont pour somme le nombre lui-même s'appelle un
nombre **parfait** : $6 = 1+2+3$ et $28 = 1+2+4+7+14$ en sont. Ici on demande moins, puisqu'on a le
droit de ne prendre que sept des diviseurs ; c'est ce qui rend la question possible pour $48$.
