---
id: "10845"
title: "Un ensemble infini dont aucune somme n'est une puissance"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [puissances, construction, encadrement, recurrence, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 1 (arithmétique)"
  reference: "2017-10_pofm-2017-2018-envoi1-1.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-11_pofm-2017-2018-envoi1-corrige.pdf (le comptage du corrigé, avec un logarithme, est remplacé ici par un comptage jusqu'à 4^j)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/pofm-2017-2018-envoi1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_pofm-2017-2018-envoi1-1.pdf"
---

## Statement

Dans cet exercice, on appelle **puissance** un entier de la forme $a^b$, où $a$ et $b$ sont des entiers supérieurs ou égaux à $2$. Les premières puissances sont $4, 8, 9, 16, 25, 27, 32, 36, \ldots$

Existe-t-il un ensemble infini $A$ d'entiers naturels tel qu'aucune somme finie d'éléments **distincts** de $A$ ne soit une puissance ?

(Une somme d'un seul élément compte aussi : aucun élément de $A$ ne doit lui-même être une puissance.)

## Hints

1. Commence petit. L'ensemble $\{2\}$ convient. Quel nombre peux-tu lui ajouter ? Et ensuite ?
2. Construis $A$ élément par élément. Si tu as déjà choisi $a_1 < a_2 < \cdots < a_n$ qui conviennent, quelles conditions le nouvel élément $c$ doit-il vérifier ?
3. Pose $m = a_1 + a_2 + \cdots + a_n$. Il suffit de trouver un entier $c > a_n$ tel qu'aucun des nombres $c, c + 1, \ldots, c + m$ ne soit une puissance.
4. Les puissances sont rares. Si $a^b \leqslant 4^j$, montre que $b \leqslant 2j$ et $a \leqslant 2^j$. Combien y a-t-il au plus de puissances entre $1$ et $4^j$ ? Compare avec $4^j$.

## Solution

**Réponse : oui.**

L'idée est de construire $A$ élément par élément, en choisissant chaque nouvel élément assez grand pour qu'en l'ajoutant aux anciennes sommes on ne tombe jamais sur une puissance. Pour cela, on montre d'abord que les puissances sont assez rares pour laisser de longues plages d'entiers consécutifs qui n'en contiennent aucune.

### Étape 1 : de longues plages sans puissance

**Lemme.** Soient $K \geqslant 0$ et $m \geqslant 0$ deux entiers. Il existe un entier $c > K$ tel qu'aucun des $m + 1$ nombres $c, c + 1, \ldots, c + m$ ne soit une puissance.

*Choix d'un grand entier $j$.* On a $2^j \geqslant j^2$ pour tout $j \geqslant 4$ : c'est vrai pour $j = 4$ ($16 \geqslant 16$), et si c'est vrai pour un $j \geqslant 4$, alors $2^{j+1} \geqslant 2j^2 = j^2 + j \times j \geqslant j^2 + 4j > (j+1)^2$. Choisissons un entier $j \geqslant 4$ tel que
$$j \geqslant 2m + 3 \qquad \text{et} \qquad 2^j \geqslant K + m + 1 .$$
C'est possible, car $2^j$ devient aussi grand qu'on veut. Alors $j^2 - 2j(m + 1) = j\left(j - 2m - 2\right) \geqslant j \geqslant 1$, donc
$$2^j - 1 \geqslant j^2 - 1 \geqslant 2j(m + 1) .$$

*Les puissances jusqu'à $N = 4^j$.* Soit $a^b \leqslant N$ une puissance, avec $a \geqslant 2$ et $b \geqslant 2$. D'une part $2^b \leqslant a^b \leqslant 2^{2j}$, donc $b \leqslant 2j$. D'autre part $a^2 \leqslant a^b \leqslant \left(2^j\right)^2$, donc $a \leqslant 2^j$. Le couple $(a, b)$ ne peut donc prendre qu'au plus $2^j \times 2j$ valeurs : **il y a au plus $2j \times 2^j$ puissances entre $1$ et $N$.**

*On découpe en blocs.* Découpons les entiers $K + 1, K + 2, \ldots, N$ en blocs de $m + 1$ entiers consécutifs : le premier bloc va de $K + 1$ à $K + m + 1$, le suivant de $K + m + 2$ à $K + 2m + 2$, et ainsi de suite, en laissant de côté les quelques entiers qui restent à la fin. Si $q$ est le nombre de blocs complets, alors $(q + 1)(m + 1) > N - K$, donc
$$q\,(m + 1) > N - K - (m + 1) \geqslant 4^j - 2^j = 2^j\left(2^j - 1\right) \geqslant 2^j \times 2j\,(m + 1) .$$
En divisant par $m + 1$, on obtient $q > 2j \times 2^j$.

*Conclusion du lemme.* Il y a plus de blocs que de puissances entre $1$ et $N$. Chaque puissance tombe dans au plus un bloc, donc au moins un bloc ne contient aucune puissance. Si $c$ est le premier entier de ce bloc, alors $c > K$ et aucun des nombres $c, c + 1, \ldots, c + m$ n'est une puissance.

### Étape 2 : on ajoute les éléments un par un

On pose $a_1 = 2$, qui n'est pas une puissance.

Supposons qu'on a déjà choisi $a_1 < a_2 < \cdots < a_n$ de façon qu'aucune somme d'éléments distincts de $\{a_1, \ldots, a_n\}$ ne soit une puissance. Notons $S$ l'ensemble de ces sommes, auquel on ajoute $0$ (la somme de zéro élément), et
$$m = a_1 + a_2 + \cdots + a_n ,$$
qui est la plus grande somme. Tous les éléments de $S$ sont compris entre $0$ et $m$.

D'après le lemme, appliqué avec $K = a_n$ et ce $m$, il existe $c > a_n$ tel qu'aucun des nombres $c, c + 1, \ldots, c + m$ ne soit une puissance. On pose $a_{n+1} = c$.

*Vérification.* Prenons une somme d'éléments distincts de $\{a_1, \ldots, a_{n+1}\}$.

- Si elle n'utilise pas $a_{n+1}$, c'est un élément non nul de $S$ : ce n'est pas une puissance par hypothèse.
- Si elle utilise $a_{n+1}$, elle s'écrit $c + s$ avec $s \in S$, donc $0 \leqslant s \leqslant m$. Elle fait partie des nombres $c, c + 1, \ldots, c + m$ : ce n'est pas une puissance.

### Étape 3 : l'ensemble $A$

En répétant l'étape 2 indéfiniment, on obtient une suite strictement croissante $a_1 < a_2 < a_3 < \cdots$. Posons $A = \{a_1, a_2, a_3, \ldots\}$ : cet ensemble est infini, puisque ses éléments sont tous différents.

Une somme finie d'éléments distincts de $A$ n'utilise qu'un nombre fini d'éléments. Si $a_n$ est le plus grand d'entre eux, c'est une somme d'éléments distincts de $\{a_1, \ldots, a_n\}$, et d'après l'étape 2 ce n'est pas une puissance.

**Il existe donc bien un ensemble infini $A$ dont aucune somme finie d'éléments distincts n'est une puissance.**

*Un exemple.* Si l'on prend à chaque fois le plus petit $c$ possible, on obtient $A = \{2, 3, 10, 18, 35, 38, \ldots\}$. Par exemple, les sommes d'éléments distincts de $\{2, 3, 10\}$ sont $2, 3, 5, 10, 12, 13, 15$ : aucune n'est une puissance.

## Going further

1. Dans l'étape 2, pourquoi a-t-on mis $0$ dans l'ensemble $S$ ? Que risquerait-on sinon ?
2. Montre qu'aucune somme d'éléments distincts de l'ensemble $\{2, 8, 32, 128, \ldots\}$ des nombres $2^{2k+1}$ n'est un carré. *Indication : regarde la plus grande puissance de $2$ qui divise une telle somme.* Pourquoi cet ensemble ne répond-il pourtant pas à l'exercice ?
