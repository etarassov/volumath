---
id: "7918"
title: "Quand la différence ne divise jamais la somme"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe des tiroirs, divisibilite, multiples de 3, sous-ensemble, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 10 (énoncé p. 23, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $S = \{1, 2, 3, \ldots, 2016\}$.

On cherche le plus grand entier $n$ pour lequel il existe une partie $A$ de $S$ possédant $n$ éléments telle que : **la différence de deux éléments quelconques de $A$ ne divise jamais leur somme.**

Déterminer ce plus grand $n$.

## Hints

1. Commence petit. Dans $\{1,2,3,4,5,6\}$, quelle est la plus grande partie qui convient ?
2. Deux entiers dont la différence vaut $1$ sont toujours interdits ensemble. Pourquoi ?
3. Pour construire une grande partie $A$, essaie de prendre des nombres tous congrus entre eux modulo $3$. Que vaut alors la différence ? Et la somme ?
4. Pour la borne supérieure, découpe $S$ en paquets de trois entiers consécutifs, et montre que $A$ ne peut pas contenir deux éléments d'un même paquet.

## Solution

**La réponse : $n = 672$.**

Dans tout ce qui suit, « deux éléments » signifie deux éléments **distincts**, et leur différence est comptée positivement.

**Étape 1 : une partie à $672$ éléments qui convient.**

Prenons

$$A = \{1, 4, 7, 10, \ldots, 2014\} ,$$

c'est-à-dire tous les entiers de la forme $3k+1$ pour $k$ allant de $0$ à $671$. Il y en a bien $672$, et le plus grand, $3 \times 671 + 1 = 2014$, est bien dans $S$.

Soient deux éléments $a = 3k+1$ et $b = 3k'+1$ de $A$, avec $k > k'$. Alors

$$a - b = 3(k - k') \qquad \text{et} \qquad a + b = 3(k + k') + 2 .$$

La différence est un multiple de $3$. Si elle divisait la somme, alors $3$ diviserait la somme. Or la somme laisse le reste $2$ dans la division par $3$ : c'est impossible.

Donc $A$ convient, et $n \ge 672$.

**Étape 2 : on ne peut pas faire mieux.**

Découpons $S$ en $672$ paquets de trois entiers consécutifs :

$$\{1,2,3\}, \quad \{4,5,6\}, \quad \ldots, \quad \{2014, 2015, 2016\} .$$

Le paquet numéro $j$ (pour $j = 0, \ldots, 671$) est $\{3j+1,\ 3j+2,\ 3j+3\}$.

Montrons qu'une partie $A$ qui convient ne peut pas contenir deux éléments d'un même paquet. Deux éléments d'un même paquet diffèrent de $1$ ou de $2$.

- **Différence $1$ :** le nombre $1$ divise tout, donc il divise la somme. Interdit.
- **Différence $2$ :** les deux éléments sont alors $3j+1$ et $3j+3$. Leur somme vaut $6j + 4$, qui est paire, donc divisible par $2$. Interdit.

Ainsi $A$ contient au plus un élément par paquet, donc au plus $672$ éléments.

**Conclusion.** Le plus grand entier cherché est $n = \boxed{672}$.

## Going further

La construction de l'étape 1 n'est pas la seule : $\{2, 5, 8, \ldots, 2015\}$ convient tout aussi bien, pour exactement la même raison (la somme de deux de ses éléments laisse le reste $1$ dans la division par $3$).

En revanche $\{3, 6, 9, \ldots, 2016\}$ **ne convient pas** : la différence et la somme y sont toutes deux des multiples de $3$, et par exemple $6 - 3 = 3$ divise $6 + 3 = 9$. C'est bien le reste non nul qui fait tout le travail.
