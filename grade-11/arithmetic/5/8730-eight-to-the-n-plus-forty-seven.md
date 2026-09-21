---
id: "8730"
title: "8ⁿ + 47 n'est jamais premier"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres-premiers, congruences, cycles, disjonction-de-cas, systeme-couvrant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, entraînement de mi-parcours"
  reference: "poly_valbonne_2024.pdf, Groupe A, entraînement de mi-parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Existe-t-il un entier $n \geqslant 1$ tel que $8^n + 47$ soit un nombre premier ?

## Hints

1. Calcule $8^n + 47$ pour $n = 1, 2, 3, 4$ et **factorise** chaque résultat. Les petits facteurs que tu trouveras sont la clé de tout l'exercice.
2. Tu trouveras $55 = 5 \times 11$, puis $111 = 3 \times 37$, puis $559 = 13 \times 43$. Retiens les diviseurs $5$, $3$ et $13$.
3. Pour chacun de ces trois nombres, cherche pour quels $n$ il divise $8^n+47$. Regarde le cycle des restes de $8^n$ modulo $5$, modulo $3$, puis modulo $13$.
4. Tu obtiendras trois familles de $n$. Vérifie qu'ensemble elles couvrent **tous** les entiers $n \geqslant 1$.
5. Dernière précaution : trouver un diviseur ne suffit pas, il faut qu'il soit **strictement plus petit** que le nombre lui-même.

## Solution

**Réponse : non. Pour tout $n \geqslant 1$, le nombre $8^n + 47$ est composé.**

### D'où vient l'idée

Regardons les premières valeurs, en les factorisant :

| $n$ | $8^n+47$ | factorisation |
|---|---|---|
| $1$ | $55$ | $5 \times 11$ |
| $2$ | $111$ | $3 \times 37$ |
| $3$ | $559$ | $13 \times 43$ |
| $4$ | $4143$ | $3 \times 1381$ |

Trois petits diviseurs apparaissent : $5$, $3$ et $13$. L'idée est de montrer que chacun s'occupe d'une famille d'exposants, et que les trois familles couvrent tous les entiers.

Notons d'abord que pour tout $n \geqslant 1$,

$$8^n + 47 \;\geqslant\; 8 + 47 = 55 ,$$

donc $8^n+47$ est strictement plus grand que $3$, que $5$ et que $13$. Si l'un de ces trois nombres le divise, il n'est pas premier.

### Famille 1 : $n$ pair, le diviseur est 3

Modulo $3$, on a $8 = 9 - 1$, donc $8$ laisse le reste $-1$.

Si $n$ est pair, $8^n$ laisse le reste $(-1)^n = 1$. Par ailleurs $47 = 45 + 2$ laisse le reste $2$. Donc

$$8^n + 47 \equiv 1 + 2 = 3 \equiv 0 \pmod 3 .$$

Le nombre $3$ divise $8^n+47$, qui n'est donc pas premier.

### Famille 2 : $n$ de la forme $4k+1$, le diviseur est 5

Modulo $5$, on a $8 = 5+3$, donc $8$ laisse le reste $3$. Les puissances de $3$ modulo $5$ forment un cycle :

$$3^1 \equiv 3, \quad 3^2 \equiv 4, \quad 3^3 \equiv 2, \quad 3^4 \equiv 1, \quad 3^5 \equiv 3, \ldots$$

Le cycle a pour longueur $4$. Donc si $n = 4k+1$,

$$8^n \equiv 3^{4k+1} \equiv \left(3^4\right)^k \times 3 \equiv 1^k \times 3 = 3 \pmod 5 .$$

Et $47 = 45+2$ laisse le reste $2$ modulo $5$. Donc

$$8^n + 47 \equiv 3 + 2 = 5 \equiv 0 \pmod 5 .$$

Le nombre $5$ divise $8^n+47$, qui n'est donc pas premier.

### Famille 3 : $n$ de la forme $4k+3$, le diviseur est 13

Modulo $13$, calculons $8^2 = 64 = 52 + 12$, donc

$$8^2 \equiv 12 \equiv -1 \pmod{13} .$$

C'est très commode. Si $n = 4k+3$, alors $n$ est impair et

$$8^n = 8^{4k+3} = \left(8^2\right)^{2k+1} \times 8 \equiv (-1)^{2k+1} \times 8 = -8 \pmod{13} .$$

Par ailleurs $47 = 39 + 8$, donc $47 \equiv 8 \pmod{13}$. Donc

$$8^n + 47 \equiv -8 + 8 = 0 \pmod{13} .$$

Le nombre $13$ divise $8^n+47$, qui n'est donc pas premier.

### Les trois familles couvrent tout

Tout entier $n \geqslant 1$ est soit pair, soit impair. S'il est impair, son reste dans la division par $4$ vaut $1$ ou $3$. Donc :

- $n$ pair : famille 1, diviseur $3$ ;
- $n = 4k+1$ : famille 2, diviseur $5$ ;
- $n = 4k+3$ : famille 3, diviseur $13$.

Aucun entier n'échappe à ces trois cas.

### Conclusion

$$\boxed{\text{Pour tout } n \geqslant 1, \ 8^n + 47 \text{ est composé.}}$$

*Sur la méthode.* Ce que l'on vient de construire s'appelle un **système couvrant** : un petit nombre de conditions sur $n$, chacune associée à un diviseur, et dont la réunion est l'ensemble de tous les entiers. Le point de départ n'est pas une intuition mystérieuse : on factorise les premières valeurs, on relève les petits diviseurs qui apparaissent, et on regarde à quels exposants chacun correspond. Presque tous les exercices de ce type se résolvent ainsi.

## Going further

1. Refais la démonstration en commençant par le diviseur $3$ : il s'occupe de la moitié des entiers d'un coup. Pourquoi faut-il ensuite **deux** diviseurs pour les impairs, et non un seul ?

2. Montre que $4^n + 15$ n'est jamais premier pour $n \geqslant 1$. *Indication : un seul diviseur suffit cette fois.*

3. Un cas célèbre : montre que $n^4 + 4$ n'est jamais premier pour $n \geqslant 2$. Ici ce n'est plus une congruence qui sert, mais une factorisation. *Indication : ajoute et retranche $4n^2$.*

4. Cherche un entier $c$ tel que $8^n + c$ soit premier pour au moins une valeur de $n$, et montre-le.
