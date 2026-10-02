---
id: "8243"
title: "Une longue plage sans aucun nombre premier"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, factorielle, divisibilite, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Modulo, TD » (Aline Cahuzac), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Les nombres premiers deviennent de plus en plus rares quand on avance dans les entiers, mais
on n'en manque jamais vraiment : il y en a une infinité.

On se demande malgré tout s'il peut exister de longs « déserts ».

Soit $n$ un entier supérieur ou égal à $1$. Peut-on toujours trouver $n$ entiers **consécutifs**
dont aucun n'est premier ?

*Rappel de notation.* Pour un entier $k \ge 1$, on note $k!$ (lire « factorielle $k$ ») le produit
de tous les entiers de $1$ à $k$ :

$$k! = 1 \times 2 \times 3 \times \cdots \times k .$$

Par exemple $4! = 1 \times 2 \times 3 \times 4 = 24$. Remarque utile : **tout entier compris
entre $2$ et $k$ divise $k!$**, puisqu'il figure dans le produit.

## Hints

1. Il ne s'agit pas de chercher un tel désert dans une table de nombres premiers : il s'agit d'en
   **fabriquer** un, aussi long qu'on veut.
2. Pour qu'un entier $N$ ne soit pas premier, il suffit de lui exhiber un diviseur strictement
   compris entre $1$ et $N$.
3. Si on veut que $2$ divise le premier nombre, que $3$ divise le deuxième, que $4$ divise le
   troisième, etc., quel nombre de départ serait commode ?
4. Essaie $(n+1)! + 2,\ (n+1)! + 3,\ \ldots$

## Solution

**La réponse est oui : pour tout $n$, un tel désert existe.**

**La construction.**

Posons $A = (n+1)!$ et considérons les $n$ entiers consécutifs

$$A + 2,\quad A + 3,\quad A + 4,\quad \ldots,\quad A + (n+1) .$$

Il y en a bien $n$ : ce sont les $A + k$ pour $k$ allant de $2$ à $n+1$, et de $2$ à $n+1$ il y a
$n$ entiers.

**Aucun n'est premier.**

Soit $k$ un entier avec $2 \le k \le n+1$. Comme $k$ figure dans le produit
$1 \times 2 \times \cdots \times (n+1)$, l'entier $k$ divise $A$. Et $k$ se divise lui-même. Donc

$$k \ \text{divise} \ A + k .$$

Il reste à vérifier que ce diviseur $k$ n'est ni $1$, ni $A+k$ tout entier :

- $k \ge 2$, donc $k \ne 1$ ;
- $A = (n+1)! \ge 2$, donc $A + k > k$, et $k$ est un diviseur **strict** de $A + k$.

Ainsi $A+k$ possède un diviseur strictement compris entre $1$ et lui-même : **$A+k$ n'est pas
premier.**

**Conclusion.**

Les $n$ entiers consécutifs $(n+1)!+2,\ \ldots,\ (n+1)!+(n+1)$ ne contiennent aucun nombre
premier. Il existe donc des plages sans aucun nombre premier, aussi longues qu'on le souhaite.

**Un exemple pour $n = 4$.**

Ici $A = 5! = 120$, et les quatre nombres sont

$$122 = 2 \times 61, \qquad 123 = 3 \times 41, \qquad 124 = 4 \times 31, \qquad 125 = 5 \times 25 .$$

Aucun n'est premier, comme annoncé.

## Going further

1. L'exemple ci-dessus donne quatre entiers consécutifs non premiers à partir de $122$. Mais on
   en trouve bien plus tôt : quelle est la première plage de quatre entiers consécutifs non
   premiers ? La construction est **très loin** d'être optimale, et c'est normal : elle vise la
   simplicité, pas la précocité.
2. Montrer de la même façon qu'il existe $n$ entiers consécutifs dont aucun n'est le carré d'un
   entier. (Celui-là est beaucoup plus facile qu'il n'en a l'air.)
3. Ces déserts arbitrairement longs sont-ils en contradiction avec le fait qu'il y a une infinité
   de nombres premiers ?
