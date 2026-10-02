---
id: "5916"
title: "Les casiers et les élèves sans facteur carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, decomposition-en-facteurs-premiers, parite, denombrement, demonstration]
adapted_from: null
see_also: ["0303", "4816"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Lockers: An Open-and-Shut Case (Elgin Johnston)"
  reference: "EJohnstonLockers.pdf, problème 6b"
  url: "https://mathcircles.org/activity/lockers/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonLockers.pdf"
---

## Statement

Un lycée possède $10\,000$ casiers alignés, numérotés de $1$ à $10\,000$. Au départ, tous les casiers sont **fermés**.

Il y a aussi $10\,000$ élèves, numérotés de $1$ à $10\,000$. Quand l'élève numéro $k$ parcourt le couloir, il **change l'état** de tous les casiers dont le numéro est un multiple de $k$ : il ouvre ceux qui sont fermés et ferme ceux qui sont ouverts.

Un entier est dit **sans facteur carré** lorsqu'il n'est divisible par le carré d'aucun nombre premier. Par exemple $1$, $2$, $3$, $5$, $6$, $7$, $10$, $11$ sont sans facteur carré, tandis que $4$, $8$, $9$, $12$, $18$ ne le sont pas.

Cette fois, seuls les élèves dont le numéro est sans facteur carré parcourent le couloir. Ils passent tous, une fois chacun, dans l'ordre que l'on veut.

Quels casiers sont ouverts à la fin ?

## Hints

1. L'ordre de passage ne change rien : ce qui compte pour un casier, c'est **combien de fois** son état a changé, et non quand.
2. Le casier numéro $n$ voit son état changer une fois par élève $k$ tel que $k$ divise $n$ et $k$ est sans facteur carré. Le casier est ouvert à la fin si et seulement si ce nombre est impair.
3. Il faut donc compter les diviseurs sans facteur carré de $n$. Écris la décomposition de $n$ en facteurs premiers et regarde à quoi ressemble un tel diviseur.
4. Un diviseur sans facteur carré de $n$ ne peut contenir chaque nombre premier qu'au plus une fois. Le choisir revient donc à choisir une partie de l'ensemble des nombres premiers qui divisent $n$.
5. Combien de parties possède un ensemble à $k$ éléments ? Quand ce nombre est-il impair ?

## Solution

**Réponse : seul le casier numéro $1$ est ouvert à la fin. Tous les autres sont fermés.**

### Ce qui compte, c'est la parité

Fixons un casier, disons le casier numéro $n$. Son état change exactement une fois pour chaque élève $k$ qui passe et dont le numéro divise $n$, c'est-à-dire pour chaque **diviseur de $n$ qui est sans facteur carré**.

Le casier part fermé. Il est donc ouvert à la fin si et seulement si le nombre de ces diviseurs est **impair**. L'ordre de passage n'intervient pas.

Notons $d^*(n)$ le nombre de diviseurs de $n$ sans facteur carré.

### Le calcul de $d^*(n)$

Écrivons la décomposition de $n$ en facteurs premiers :
$$n = p_1^{\,a_1}\, p_2^{\,a_2} \cdots p_k^{\,a_k},$$
où $p_1, \ldots, p_k$ sont des nombres premiers distincts, et $a_1, \ldots, a_k \geq 1$. L'entier $k$ est donc le nombre de nombres premiers **distincts** qui divisent $n$.

Un diviseur $d$ de $n$ s'écrit $d = p_1^{\,b_1} \cdots p_k^{\,b_k}$ avec $0 \leq b_i \leq a_i$ pour chaque $i$.

Ce diviseur est sans facteur carré exactement lorsque aucun $p_i^{\,2}$ ne le divise, c'est-à-dire lorsque chaque exposant $b_i$ vaut $0$ ou $1$.

Choisir un diviseur de $n$ sans facteur carré revient donc à choisir, pour chacun des $k$ nombres premiers, s'il figure ou non : c'est choisir une partie de l'ensemble $\{p_1, \ldots, p_k\}$. Il y en a
$$d^*(n) = 2^k.$$

### La conclusion

Le nombre $2^k$ est impair si et seulement si $k = 0$, c'est-à-dire si et seulement si $n$ n'a aucun facteur premier, donc si et seulement si $n = 1$.

- Pour $n = 1$ : le seul diviseur est $1$, qui est sans facteur carré. L'élève numéro $1$ passe, et il est le seul à toucher ce casier. Il l'ouvre. $d^*(1) = 2^0 = 1$, nombre impair : **le casier $1$ est ouvert.**
- Pour tout $n \geq 2$ : on a $k \geq 1$, donc $d^*(n) = 2^k$ est pair : **le casier $n$ est fermé.**

**Conclusion.** À la fin, un seul casier est ouvert sur les $10\,000$ : le casier numéro $1$.

### Vérification sur un petit exemple

Prenons $n = 12 = 2^2 \times 3$. Ses diviseurs sont $1, 2, 3, 4, 6, 12$. Ceux qui sont sans facteur carré sont $1, 2, 3, 6$ : il y en a $4 = 2^2$, ce qui colle avec $k = 2$ (les nombres premiers $2$ et $3$). Quatre changements d'état, nombre pair : le casier $12$ finit fermé.

Prenons $n = 30 = 2 \times 3 \times 5$. Ses diviseurs sans facteur carré sont $1, 2, 3, 5, 6, 10, 15, 30$, soit $8 = 2^3$. Encore pair : fermé.

## Going further

1. Dans la version classique de ce problème, **tous** les élèves passent. Quels casiers sont alors ouverts ? (Voir l'exercice des mille casiers.)
2. Et si on ne fait passer que les élèves dont le numéro est un carré parfait, $1, 4, 9, 16, \ldots$ ? Le casier $n$ change alors d'état une fois par carré parfait qui divise $n$ : quels casiers restent ouverts ?
3. Cet exercice montre donc comment n'ouvrir que le casier $1$ : il suffit d'envoyer les élèves sans facteur carré. Attention, envoyer le seul élève numéro $1$ ne marche pas : il ouvre **tous** les casiers. Et si l'on veut que le casier $3$ soit le seul ouvert, quel groupe d'élèves faut-il envoyer ?
4. Plus fort : montre que pour **n'importe quel** ensemble $L$ de casiers, il existe un groupe d'élèves, et un seul, tel qu'à la fin les casiers ouverts soient exactement ceux de $L$. (Indication : décide un par un, dans l'ordre $1, 2, 3, \ldots$, si l'élève $k$ doit passer.)
