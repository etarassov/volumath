---
id: "10403"
title: "Un ensemble qui compte comme ses inverses"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inverse, denombrement, produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Juniors, exercice 3 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Soit $E$ un ensemble fini et non vide de nombres réels strictement positifs. On suppose que, pour **tout** réel $x > 0$, l'ensemble $E$ contient autant d'éléments strictement plus grands que $x$ que d'éléments strictement plus petits que $\dfrac{1}{x}$.

Que vaut le produit de tous les éléments de $E$ ?

## Hints

1. Essaie avec un petit exemple : l'ensemble $\{\frac{1}{2},\, 1,\, 2\}$ vérifie-t-il la condition ? Et l'ensemble $\{1, 2\}$ ?
2. Un élément $e$ de $E$ est plus petit que $\frac{1}{x}$ exactement quand $\frac{1}{e}$ est plus grand que $x$. Introduis l'ensemble $F$ des inverses des éléments de $E$ et traduis la condition avec $F$.
3. La condition dit alors que, pour tout $x > 0$, $E$ et $F$ ont autant d'éléments plus grands que $x$. Montre que cela force $E = F$. Pour savoir si un nombre $t$ est dans $E$, compare le nombre d'éléments plus grands que $t$ et le nombre d'éléments plus grands qu'un $x$ un tout petit peu inférieur à $t$.
4. Si $E$ contient l'inverse de chacun de ses éléments, regroupe chaque élément avec son inverse dans le produit.

## Solution

Pour un ensemble fini $A$ de réels et un réel $x$, notons $N_A(x)$ le nombre d'éléments de $A$ strictement plus grands que $x$.

**Étape 1 : traduire la condition.** Notons $F$ l'ensemble des inverses des éléments de $E$ : $F = \left\{ \frac{1}{e} : e \in E \right\}$. Pour $e > 0$ et $x > 0$,

$$e < \frac{1}{x} \iff \frac{1}{e} > x ,$$

car la fonction inverse est décroissante sur $]0, +\infty[$. Le nombre d'éléments de $E$ plus petits que $\frac{1}{x}$ est donc égal au nombre d'éléments de $F$ plus grands que $x$, c'est-à-dire à $N_F(x)$. La condition de l'énoncé s'écrit ainsi :

$$N_E(x) = N_F(x) \qquad \text{pour tout } x > 0 .$$

**Étape 2 : cette condition force $E = F$.** Soit $t > 0$ un réel quelconque. Les ensembles $E$ et $F$ sont finis, on peut donc choisir un réel $x$ avec $0 < x < t$ si proche de $t$ qu'aucun élément de $E$ ni de $F$ ne se trouve dans l'intervalle $[x, t[$.

Comptons les éléments de $E$ strictement compris entre $x$ et $t$, ou égaux à $t$ : c'est $N_E(x) - N_E(t)$. Par le choix de $x$, le seul candidat est $t$ lui-même. Donc $N_E(x) - N_E(t)$ vaut $1$ si $t \in E$, et $0$ sinon.

Le même raisonnement donne $N_F(x) - N_F(t) = 1$ si $t \in F$ et $0$ sinon.

Mais d'après l'étape 1, $N_E(x) = N_F(x)$ et $N_E(t) = N_F(t)$. Les deux différences sont donc égales, et $t$ est dans $E$ si et seulement si $t$ est dans $F$. Comme $t$ était quelconque, $E = F$.

Autrement dit : **l'inverse de tout élément de $E$ est encore dans $E$**.

**Étape 3 : le produit.** Rangeons les éléments de $E$ en paquets :

- un élément $e \neq 1$ est regroupé avec son inverse $\frac{1}{e}$, qui est aussi dans $E$ et différent de $e$. Le produit du paquet vaut $e \times \frac{1}{e} = 1$ ;
- l'élément $1$, s'il est dans $E$, reste seul, et son paquet a pour produit $1$.

Chaque élément est dans exactement un paquet, donc le produit de tous les éléments de $E$ est un produit de $1$.

**Conclusion.** Le produit de tous les éléments de $E$ vaut $\boxed{1}$.

De tels ensembles existent : $E = \{\frac{1}{2}, 1, 2\}$ convient. Pour $x = 1$ par exemple, un seul élément est plus grand que $1$ et un seul est plus petit que $\frac{1}{1} = 1$.

## Going further

1. Réciproquement, montrer que tout ensemble fini de réels strictement positifs qui contient l'inverse de chacun de ses éléments vérifie la condition de l'énoncé.
2. Que peut-on dire de la somme des éléments d'un tel ensemble à $n$ éléments ? Montrer qu'elle vaut au moins $n$.
