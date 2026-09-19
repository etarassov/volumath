---
id: "1617"
title: "Un jeu équitable avec une pièce truquée"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [probabilites, independance, suite-geometrique, symetrie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 11 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

Anne et Bruno possèdent une pièce **truquée** : à chaque lancer, elle tombe sur pile avec une
probabilité $p$ et sur face avec la probabilité $1-p$, où $0 < p < 1$. Les lancers sont
indépendants les uns des autres.

Le problème : ils ne connaissent pas la valeur de $p$, et ils n'ont aucune autre pièce ni
aucun dé.

Inventer une règle de jeu, n'utilisant que cette pièce, telle que chacun des deux joueurs ait
exactement une chance sur deux de gagner. Démontrer que la règle proposée convient.

## Hints

1. Avec un seul lancer, c'est impossible : l'un des deux serait favorisé dès que $p \ne \frac12$. Essaie deux lancers.
2. Avec deux lancers, il y a quatre résultats possibles : PP, PF, FP et FF. Calcule la probabilité de chacun en fonction de $p$.
3. Deux de ces quatre probabilités sont égales, quelle que soit la valeur de $p$. Lesquelles ?
4. Que faire quand on tombe sur l'un des deux autres résultats ? Rien n'interdit de recommencer. Il faudra alors vérifier que le jeu se termine.

## Solution

**L'idée : on ne peut pas équilibrer un lancer, mais on peut équilibrer deux lancers, car
« pile puis face » et « face puis pile » ont toujours la même probabilité.**

**La règle proposée.**

> On lance la pièce deux fois de suite.
> - Si le résultat est **pile puis face**, Anne gagne.
> - Si le résultat est **face puis pile**, Bruno gagne.
> - Si les deux lancers donnent le même côté (PP ou FF), on annule et on recommence depuis le
>   début, avec deux nouveaux lancers.

**Étape 1. Les quatre résultats d'une manche.**

Les deux lancers étant indépendants :
$$P(\text{PP}) = p^2, \quad P(\text{PF}) = p(1-p), \quad P(\text{FP}) = (1-p)\,p, \quad P(\text{FF}) = (1-p)^2 .$$

Le point clé est que la multiplication est commutative :
$$P(\text{PF}) = p(1-p) = (1-p)\,p = P(\text{FP}) .$$

Ces deux probabilités sont égales **quelle que soit la valeur de $p$**, y compris si on ne la
connaît pas. C'est tout ce dont nous avons besoin.

Posons
$$r = p(1-p) \quad (\text{probabilité que la manche désigne Anne}), \qquad
q = 1 - 2r \quad (\text{probabilité que la manche soit annulée}).$$

Comme $0 < p < 1$, on a $r > 0$, donc $0 \le q < 1$.

**Étape 2. Le jeu se termine.**

Les manches sont indépendantes les unes des autres. La probabilité que les $n$ premières
manches soient toutes annulées vaut $q^{\,n}$. Comme $0 \le q < 1$, la suite géométrique
$(q^{\,n})$ tend vers $0$.

La probabilité que le jeu ne se termine jamais est donc inférieure à $q^{\,n}$ pour tout $n$,
c'est-à-dire **nulle** : avec la probabilité $1$, une manche finit par désigner un vainqueur.

**Étape 3. Chacun gagne avec la probabilité $\frac12$.**

*Premier argument, par symétrie.* Échanger les rôles de « pile » et « face » dans la
règle échange exactement les rôles d'Anne et de Bruno, et laisse inchangée la probabilité de
chaque manche, puisque $P(\text{PF}) = P(\text{FP})$. Donc Anne et Bruno ont la même
probabilité de gagner. Comme, d'après l'étape 2, l'un des deux gagne avec la probabilité $1$,
ces deux probabilités valent chacune $\dfrac12$.

*Deuxième argument, par le calcul.* Anne gagne à la manche numéro $n+1$ si les $n$ premières
manches ont été annulées puis la suivante donne PF, ce qui a pour probabilité $q^{\,n} r$. Ces
événements étant deux à deux incompatibles,
$$P(\text{Anne gagne}) = \sum_{n=0}^{+\infty} q^{\,n}\, r = r \times \frac{1}{1-q} = \frac{r}{2r} = \frac12 ,$$
en utilisant la somme d'une série géométrique de raison $q \in [0,1[$ et $1 - q = 2r$.

**Conclusion : la règle proposée donne à chacun exactement une chance sur deux, sans qu'il
soit nécessaire de connaître $p$.**

**Exemple chiffré.** Pour $p = \text{0,9}$, une manche est annulée avec la probabilité
$\text{0,81} + \text{0,01} = \text{0,82}$ : il faut en moyenne un peu plus de cinq manches, soit une dizaine
de lancers. Le jeu est équitable, mais il peut être long.

## Going further

Ce procédé est dû à John von Neumann (1951). Il est utilisé en informatique pour fabriquer
des bits vraiment équilibrés à partir d'une source physique légèrement biaisée.

Son défaut est le gaspillage : on ne retient en moyenne qu'un résultat pour $\dfrac{1}{p(1-p)}$
lancers, soit au mieux $4$ lancers quand $p = \frac12$. Il existe des raffinements qui
récupèrent une partie de l'information contenue dans les manches annulées.
