---
id: "0585"
title: "Le tournoi du baron de Münchhausen"
grade: 8
theme: combinatorics
difficulty: 5
duration_min: 35
tags: [absurde, denombrement, parite, tournoi, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 5 «Доказательство от противного», задача 7"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Dans un tournoi d'échecs, chacun des huit participants a joué une partie contre chacun des sept autres. Lorsqu'une partie se terminait par un match nul, et seulement dans ce cas, elle était rejouée une fois exactement, et c'est le résultat de cette seconde partie qui était inscrit au tableau.

Le baron de Münchhausen raconte qu'à la fin du tournoi, deux participants avaient joué $11$ parties chacun, un participant en avait joué $10$, trois participants en avaient joué $8$ chacun, et les deux derniers en avaient joué $7$ chacun.

Le baron peut-il dire vrai ?

## Hints

1. Combien de parties un participant joue-t-il s'il ne fait aucun match nul ?
2. Pour chaque participant, calcule le nombre de parties **rejouées** auxquelles il a pris part. Tu obtiens huit nombres.
3. Combien de fois au maximum deux participants donnés peuvent-ils se rencontrer dans une partie rejouée ?
4. Appelle $A$ et $B$ les deux participants qui ont rejoué $4$ parties. Contre qui ont-ils pu les jouer ? Deux participants n'ont rejoué aucune partie : élimine-les.
5. Compte de deux façons les parties rejouées auxquelles ont pris part les quatre participants qui en ont rejoué $3$, $1$, $1$ et $1$.

## Solution

**L'idée : raisonner par l'absurde, et compter les parties rejouées.**

Supposons que le baron dise vrai.

**Étape 1. De combien de parties rejouées parle-t-on ?**

Chaque participant joue une partie contre chacun des sept autres : cela fait déjà $7$ parties pour tout le monde. Toute partie supplémentaire est une partie rejouée. Donc, pour chaque participant,
$$\text{nombre de parties rejouées} = \text{nombre total de parties} - 7$$

D'après le baron, les huit participants ont joué $11$, $11$, $10$, $8$, $8$, $8$, $7$ et $7$ parties. Les nombres de parties rejouées sont donc
$$4, \quad 4, \quad 3, \quad 1, \quad 1, \quad 1, \quad 0, \quad 0$$

Donnons-leur des noms :

- $A$ et $B$ ont rejoué $4$ parties chacun ;
- $C$ a rejoué $3$ parties ;
- $D$, $E$ et $F$ ont rejoué $1$ partie chacun ;
- $G$ et $H$ n'ont rejoué aucune partie.

*Remarque.* Une première vérification ne donne rien : chaque partie rejouée est comptée chez deux joueurs, donc la somme $4+4+3+1+1+1+0+0 = 14$ doit être paire, et elle l'est. Il faut donc chercher plus loin. (Au passage, cela veut dire qu'il y aurait $14 : 2 = 7$ parties rejouées en tout.)

**Étape 2. Un point important : deux joueurs ne se rejouent qu'une fois au plus.**

Deux participants donnés jouent une seule partie, et si elle est nulle, elle est rejouée **une seule fois**. Donc, entre deux participants, il y a au plus **une** partie rejouée.

Conséquence : les $4$ parties rejouées de $A$ l'ont été contre $4$ adversaires **différents**.

**Étape 3. Contre qui $A$ et $B$ ont-ils rejoué ?**

$G$ et $H$ n'ont rejoué aucune partie : personne n'a rejoué contre eux. Les $4$ adversaires de $A$ sont donc à chercher parmi $B$, $C$, $D$, $E$, $F$, c'est-à-dire parmi $5$ personnes. En écartant $B$, il en reste $4$ : donc **au moins $3$** des parties rejouées par $A$ l'ont été contre $C$, $D$, $E$ ou $F$.

Le même raisonnement s'applique à $B$ : au moins $3$ de ses parties rejouées l'ont été contre $C$, $D$, $E$ ou $F$.

**Étape 4. On compte de deux façons.**

Comptons les parties rejouées auxquelles le groupe $\{C, D, E, F\}$ a pris part.

- **D'un côté**, l'étape 3 en fournit déjà au moins $3 + 3 = 6$ : au moins $3$ contre $A$ et au moins $3$ contre $B$. Ces parties sont toutes différentes, car les unes ont $A$ pour adversaire et les autres $B$.
- **De l'autre côté**, $C$ a rejoué $3$ parties, $D$, $E$ et $F$ une chacun : en tout, les membres du groupe ont pris part à
$$3 + 1 + 1 + 1 = 6$$
parties rejouées, adversaires de toutes sortes confondus.

Le compte est donc exactement de $6$ des deux côtés. Il n'y a pas de place pour une partie rejouée de plus : **toutes** les parties rejouées de $C$, $D$, $E$ et $F$ l'ont été contre $A$ ou contre $B$.

**Étape 5. La contradiction.**

Regardons $C$. Il a rejoué $3$ parties, et l'étape 4 dit qu'elles ont toutes été jouées contre $A$ ou contre $B$. Mais d'après l'étape 2, $C$ a rejoué au plus une partie contre $A$ et au plus une partie contre $B$, soit au plus $2$ parties en tout.

Il faudrait donc que $3 \leq 2$, ce qui est faux.

**Conclusion.**

La supposition de départ est impossible : le baron de Münchhausen ne peut pas dire vrai.

## Going further

1. Le baron annonce maintenant $11$, $11$, $10$, $8$, $8$, $8$, $8$ et $7$ parties. Montrer que c'est impossible sans refaire tout le raisonnement : la remarque de l'étape 1 suffit à elle seule.
2. Et s'il annonce $11$, $10$, $9$, $8$, $8$, $8$, $7$ et $7$ parties ? Cette fois, essaie de construire un tournoi qui colle à son histoire, en indiquant quelles parties ont été rejouées.
3. Et s'il annonce $11$, $11$, $10$, $8$, $8$, $8$, $8$ et $8$ parties ? Pourquoi le raisonnement des étapes 3 et 4 ne fonctionne-t-il plus ?
