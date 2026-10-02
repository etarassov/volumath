---
id: "13458"
title: "Marie n'écrira jamais 5"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres-premiers, diviseurs, parite, puissances, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 12 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Marie écrit le nombre $2$ au tableau. Ensuite, chaque minute, elle fait ceci :

- elle calcule le produit de tous les nombres déjà écrits au tableau, et ajoute $1$ ; on note $N$ le résultat ;
- elle écrit au tableau le plus grand nombre premier qui divise $N$.

Marie n'efface jamais rien.

Montrer que Marie n'écrira jamais le nombre $5$ au tableau.

## Hints

1. Calcule les premiers nombres écrits au tableau. Au début, le produit vaut $2$, donc $N = 3$, et Marie écrit $3$. Continue pendant quatre ou cinq minutes.
2. Le nombre $N$ peut-il être pair ? Peut-il être un multiple de $3$ ? Qu'en déduis-tu sur les nombres écrits après $2$ ?
3. Suppose que Marie écrive $5$. Quels nombres premiers peuvent alors diviser $N$ ? Montre que $N$ est une puissance de $5$.
4. Montre qu'une puissance de $5$, moins $1$, est toujours un multiple de $4$. Le produit des nombres du tableau peut-il être un multiple de $4$ ?

## Solution

On note $p_1 = 2$, puis $p_2$, $p_3$, ... les nombres écrits successivement par Marie.

**Les premiers nombres.** Au début, le produit vaut $2$ et $N = 3$, donc $p_2 = 3$. Ensuite $N = 2 \times 3 + 1 = 7$, donc $p_3 = 7$. Puis $N = 2 \times 3 \times 7 + 1 = 43$, qui est premier, donc $p_4 = 43$. Puis $N = 1806 + 1 = 1807 = 13 \times 139$, donc $p_5 = 139$. On voit au passage que $N$ n'est pas toujours premier.

**Étape 1 : $N$ n'est divisible par aucun nombre du tableau.** Soit $p$ un nombre déjà écrit au tableau. Il divise le produit $P$ de tous les nombres du tableau. S'il divisait aussi $N = P + 1$, il diviserait la différence $N - P = 1$, ce qui est impossible. Donc aucun nombre du tableau ne divise $N$.

En particulier, comme $2$ est au tableau dès le début, **$N$ est toujours impair**. Tous les nombres écrits après le premier sont des diviseurs d'un nombre impair : ils sont impairs. Le nombre $2$ n'apparaît donc qu'une seule fois au tableau.

**Étape 2 : si Marie écrit $5$, alors $N$ est une puissance de $5$.** Supposons qu'à une certaine minute, Marie écrive $5$. Ce n'est pas l'un des deux premiers nombres ($2$ et $3$), donc à ce moment-là, $2$ et $3$ sont déjà au tableau. D'après l'étape 1, ni $2$ ni $3$ ne divisent le nombre $N$ calculé à cette minute.

Tous les nombres premiers qui divisent $N$ sont donc au moins égaux à $5$, puisque $2$ et $3$ sont exclus. Mais le plus grand d'entre eux vaut $5$. Le seul nombre premier qui divise $N$ est donc $5$ : $N$ est une puissance de $5$, et on peut écrire $N = 5^m$ avec $m \geqslant 1$.

Le produit $P$ des nombres du tableau vérifie alors

$$P = N - 1 = 5^m - 1.$$

**Étape 3 : $5^m - 1$ est un multiple de $4$.** Un nombre de la forme $4a + 1$, multiplié par un nombre de la forme $4b + 1$, donne

$$(4a + 1)(4b + 1) = 16ab + 4a + 4b + 1 = 4(4ab + a + b) + 1,$$

qui est encore de la forme « un multiple de $4$, plus $1$ ». Comme $5 = 4 + 1$ est de cette forme, en multipliant plusieurs fois par $5$ on obtient que $5^m$ est toujours de la forme $4c + 1$. Donc $5^m - 1 = 4c$ est un multiple de $4$.

**Étape 4 : la contradiction.** D'après l'étape 1, le tableau contient le nombre $2$ une seule fois, et tous les autres nombres sont impairs. Leur produit $P$ s'écrit donc $2 \times (\text{un nombre impair})$, et ce n'est pas un multiple de $4$. Cela contredit l'étape 3.

**Conclusion.** L'hypothèse « Marie écrit $5$ » mène à une contradiction : Marie n'écrira jamais le nombre $5$ au tableau.

*Remarque.* À la minute suivante, le produit vaut $1806 \times 139 = 251\,034$, et $N = 251\,035 = 5 \times 50\,207$. Le nombre $5$ divise donc bien ce $N$, mais ce n'est pas le plus grand diviseur premier : Marie écrit $50\,207$, qui est premier. La preuve montre que cela se produit toujours : quand $5$ divise $N$, il y a forcément un autre diviseur premier, plus grand.

## Going further

Marie change de règle : elle écrit maintenant le **plus petit** nombre premier qui divise $N$. Vérifier qu'elle écrit successivement $2$, $3$, $7$, $43$, $13$, $53$, puis $5$ (on pourra utiliser $23\,479 = 53 \times 443$). Quelle étape de la preuve ne marche plus avec cette nouvelle règle ?
