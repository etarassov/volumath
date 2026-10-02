---
id: "7502"
title: "2013 nombres égaux à +1 ou à −1"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, somme, produit, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 5 (solution p. 239, résolu par Titouan Poquillon)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On écrit 2013 nombres à la suite. Chacun d'eux vaut $+1$ ou $-1$.

On suppose que leur **produit** vaut $1$.

Montrer que leur **somme** ne peut pas valoir $0$.

## Hints

1. Combien y a-t-il de $-1$ dans la liste ? Le produit te renseigne là-dessus.
2. Un produit de nombres valant $\pm 1$ vaut $1$ exactement quand il y a un nombre pair de $-1$.
3. Si tu connais la parité du nombre de $-1$, tu connais aussi celle du nombre de $+1$, puisque les deux comptes s'additionnent pour faire 2013.
4. Pour que la somme soit nulle, combien de $+1$ faut-il, et combien de $-1$ ?

## Solution

Notons $m$ le nombre de $-1$ de la liste et $p$ le nombre de $+1$. On a bien sûr

$$p + m = 2013.$$

**Étape 1. Le produit impose la parité de $m$.**

Dans le produit, chaque $+1$ ne change rien. Chaque $-1$ change le signe. Le produit vaut donc $(-1)^m$. Comme le produit vaut $1$, le nombre $m$ est **pair**.

**Étape 2. On en déduit la parité de $p$.**

Puisque $p = 2013 - m$ avec $2013$ impair et $m$ pair, le nombre $p$ est **impair**.

**Étape 3. On regarde la somme.**

La somme des 2013 nombres vaut

$$p \times 1 + m \times (-1) = p - m.$$

Pour que cette somme soit nulle, il faudrait $p = m$. Mais $p$ est impair et $m$ est pair : deux nombres de parités différentes ne peuvent pas être égaux.

**Conclusion.** La somme ne vaut jamais $0$.

## Going further

Regarde de plus près ce qu'on a vraiment utilisé. La somme vaut $p - m = 2013 - 2m$, et ce nombre est impair quel que soit $m$, donc il n'est jamais nul. Autrement dit, **l'hypothèse sur le produit ne servait à rien** : avec 2013 nombres valant $\pm 1$, la somme est toujours impaire.

C'est un réflexe utile : quand on a fini un exercice, se demander si toutes les hypothèses ont servi. Ici la réponse est non, et cela veut dire qu'on a démontré quelque chose de plus fort que ce qui était demandé.

L'énoncé devient intéressant si on remplace 2013 par un nombre pair, disons 2012. Cette fois la somme peut valoir $0$ : il suffit de prendre 1006 fois $+1$ et 1006 fois $-1$. Et le produit vaut alors $(-1)^{1006} = 1$. Avec un nombre pair de termes, l'hypothèse sur le produit est bien nécessaire, et même suffisante pour rendre la somme nulle possible.
