---
id: "7522"
title: "Les produits d'inverses de tous les sous-ensembles"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [developpement, produit, sous-ensembles, telescopage, recurrence]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 56 (une étoile ; solution p. 246, résolu par Ewen Goisot)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On considère tous les sous-ensembles non vides de $\{1, 2, \ldots, n\}$ ; il y en a $2^n - 1$.

Pour chacun d'eux, on calcule le produit des **inverses** de ses éléments. Par exemple, le sous-ensemble $\{2, 5\}$ donne $\dfrac{1}{2} \times \dfrac{1}{5} = \dfrac{1}{10}$.

Calculer la somme de tous ces produits.

## Hints

1. Fais le calcul complet pour $n = 1$, $n = 2$ et $n = 3$. Le résultat est étonnamment simple.
2. Pour $n = 3$ : les sous-ensembles sont $\{1\}, \{2\}, \{3\}, \{1,2\}, \{1,3\}, \{2,3\}, \{1,2,3\}$. Additionne les sept produits.
3. Pense à développer le produit $\left(1+\dfrac11\right)\left(1+\dfrac12\right)\cdots\left(1+\dfrac1n\right)$. Quand on développe, d'où vient chaque terme ?
4. Chaque facteur $\left(1 + \dfrac1k\right)$ propose deux choix : prendre $1$ (ne pas mettre $k$ dans le sous-ensemble) ou prendre $\dfrac1k$ (l'y mettre).
5. Ce produit se simplifie en cascade. Écris $1 + \dfrac1k$ sous la forme d'une seule fraction.

## Solution

**Étape 1. On essaie.**

$n = 1$ : un seul sous-ensemble, $\{1\}$, qui donne $1$. Somme $= 1$.

$n = 2$ : $\{1\} \to 1$, $\{2\} \to \frac12$, $\{1,2\} \to \frac12$. Somme $= 1 + \frac12 + \frac12 = 2$.

$n = 3$ : $1 + \frac12 + \frac13 + \frac12 + \frac13 + \frac16 + \frac16 = \frac{6+3+2+3+2+1+1}{6} = \frac{18}{6} = 3$.

On conjecture que la somme vaut $n$.

**Étape 2. Le produit qui contient toutes les réponses.**

Considérons

$$P = \left(1 + \frac11\right)\left(1 + \frac12\right)\left(1 + \frac13\right) \cdots \left(1 + \frac1n\right).$$

Développons-le, c'est-à-dire choisissons dans chaque parenthèse l'un des deux termes, et additionnons tous les produits obtenus.

Choisir $\dfrac1k$ dans la $k$-ième parenthèse, c'est décider de « mettre $k$ dans le sous-ensemble » ; choisir $1$, c'est décider de ne pas l'y mettre. Chaque façon de choisir correspond donc à exactement un sous-ensemble $S$ de $\{1, \ldots, n\}$, et le produit correspondant est exactement le produit des inverses des éléments de $S$.

Donc, en notant $\Sigma$ la somme cherchée (sur les sous-ensembles **non vides**) :

$$P = \underbrace{1}_{S = \varnothing} \;+\; \Sigma.$$

Le terme $1$ correspond au choix « $1$ dans chaque parenthèse », c'est-à-dire au sous-ensemble vide, dont le produit vide vaut $1$ par convention.

**Étape 3. On calcule $P$.**

Écrivons chaque facteur sous forme d'une seule fraction :

$$1 + \frac1k = \frac{k+1}{k}.$$

Donc

$$P = \frac{2}{1} \times \frac{3}{2} \times \frac{4}{3} \times \cdots \times \frac{n+1}{n}.$$

Tout se simplifie en cascade : le $2$ du premier numérateur avec le $2$ du deuxième dénominateur, le $3$ du deuxième numérateur avec le $3$ du troisième dénominateur, et ainsi de suite. Il ne reste que le dernier numérateur et le premier dénominateur :

$$P = \frac{n+1}{1} = n+1.$$

**Étape 4. On conclut.**

$$\Sigma = P - 1 = (n+1) - 1 = n.$$

**Réponse.** La somme des produits d'inverses sur tous les sous-ensembles non vides de $\{1, \ldots, n\}$ vaut exactement $n$.

## Going further

Le même raisonnement, mené avec $\left(1 + x_1\right)\left(1+x_2\right)\cdots\left(1+x_n\right)$, donne une identité utile partout :

$$\prod_{k=1}^{n} (1 + x_k) \;=\; \sum_{S \subseteq \{1,\ldots,n\}} \;\prod_{k \in S} x_k,$$

autrement dit : développer un produit de parenthèses, c'est parcourir tous les sous-ensembles. En prenant $x_k = 1$ pour tout $k$, on retrouve d'ailleurs que $\{1, \ldots, n\}$ a $2^n$ sous-ensembles.

À toi de jouer : que vaut la somme des produits des éléments (et non plus de leurs inverses) sur tous les sous-ensembles non vides de $\{1, \ldots, n\}$ ? La réponse s'écrit très simplement avec une factorielle.
