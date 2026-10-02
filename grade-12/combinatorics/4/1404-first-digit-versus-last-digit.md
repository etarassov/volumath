---
id: "1404"
title: "Le premier chiffre ou le dernier ?"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, chiffres, bijection, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 3 « Combinatorics », problème 5 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

On note :

- $A$ l'ensemble des nombres de quatre chiffres dont le **premier** chiffre est égal à la somme des trois autres ;
- $B$ l'ensemble des nombres de quatre chiffres dont le **dernier** chiffre est égal à la somme des trois autres.

Par exemple $9234 \in A$ car $2 + 3 + 4 = 9$, et $1236 \in B$ car $1 + 2 + 3 = 6$.

Lequel des deux ensembles est le plus grand, et de combien d'éléments ?

## Hints

1. Un nombre de quatre chiffres $\overline{abcd}$ a son premier chiffre $a$ compris entre $1$ et $9$, les trois autres entre $0$ et $9$.
2. Décrire $A$ : se donner un élément de $A$, c'est se donner le triplet $(b, c, d)$ ; le chiffre $a$ est alors imposé. Quelle condition doit vérifier ce triplet ?
3. Décrire $B$ de la même manière : se donner un élément de $B$, c'est se donner le triplet $(a, b, c)$. Quelle condition supplémentaire porte sur $a$, qui n'existait pas pour le triplet précédent ?
4. On compare donc deux familles de triplets de chiffres de somme comprise entre $1$ et $9$ : l'une sans condition sur le premier terme, l'autre avec $a \geqslant 1$. La différence se compte toute seule.
5. Les triplets qui sont dans la première famille et pas dans la seconde sont ceux dont le premier terme vaut $0$. Il reste à compter des couples.

## Solution

Écrivons un nombre de quatre chiffres $\overline{abcd}$, avec $1 \leqslant a \leqslant 9$ et $0 \leqslant b, c, d \leqslant 9$.

**Décrire $A$.**

$\overline{abcd} \in A$ signifie $a = b + c + d$. Le nombre est donc entièrement déterminé par le triplet $(b, c, d)$, qui doit vérifier deux choses : c'est un triplet de chiffres, et sa somme $b+c+d$ doit être un chiffre **non nul** (car $a \geqslant 1$), donc comprise entre $1$ et $9$.

$$|A| = \#\{(b, c, d) \text{ chiffres} \;:\; 1 \leqslant b + c + d \leqslant 9\}.$$

**Décrire $B$.**

$\overline{abcd} \in B$ signifie $d = a + b + c$. Le nombre est déterminé par le triplet $(a, b, c)$, avec cette fois deux conditions : la somme $a+b+c$ doit être un chiffre, donc au plus $9$, et le **premier** terme $a$ doit valoir au moins $1$. Au passage, la somme est alors automatiquement au moins $1$.

$$|B| = \#\{(a, b, c) \text{ chiffres} \;:\; a \geqslant 1 \text{ et } a + b + c \leqslant 9\}.$$

**Comparer.**

Les deux ensembles sont comptés par des triplets de chiffres de somme comprise entre $1$ et $9$. La seule différence est que, pour $B$, le premier terme doit être non nul. Autrement dit, la famille qui compte $B$ est **contenue** dans celle qui compte $A$, et les triplets qui manquent sont exactement ceux dont le premier terme vaut $0$.

Donc $A$ est le plus grand, et

$$|A| - |B| = \#\{(0, c, d) \;:\; c, d \text{ chiffres},\; 1 \leqslant c + d \leqslant 9\} = \#\{(c, d) \text{ chiffres} \;:\; 1 \leqslant c + d \leqslant 9\}.$$

**Compter ces couples.**

Pour une somme $c + d = t$ fixée avec $t \leqslant 9$, il y a exactement $t+1$ couples de chiffres possibles : $(0, t), (1, t-1), \ldots, (t, 0)$, et aucun terme ne dépasse $9$ puisque $t \leqslant 9$. En faisant varier $t$ de $1$ à $9$ :

$$|A| - |B| = \sum_{t=1}^{9} (t+1) = 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 54 .$$

**Conclusion.** L'ensemble $A$ est le plus grand : il compte exactement $\boxed{54}$ éléments de plus que $B$.

**Les effectifs, si on les veut.** Le même raisonnement par somme fixée donne, pour un triplet de chiffres de somme $s \leqslant 9$, un nombre de possibilités égal à $\binom{s+2}{2}$. D'où

$$|A| = \sum_{s=1}^{9} \binom{s+2}{2} = 3 + 6 + 10 + 15 + 21 + 28 + 36 + 45 + 55 = 219,$$

et $|B| = 219 - 54 = 165$. On retrouve bien $219 - 165 = 54$.

## Going further

1. Combien y a-t-il de nombres de quatre chiffres dont le deuxième chiffre est égal à la somme des trois autres ?
2. Reprendre l'exercice avec des nombres de **cinq** chiffres : premier chiffre égal à la somme des quatre autres, contre dernier chiffre égal à la somme des quatre autres. Quelle est la différence ?
3. Pourquoi l'argument « pour une somme $s \leqslant 9$, il y a $\binom{s+2}{2}$ triplets de chiffres » cesse-t-il d'être vrai dès que $s \geqslant 10$ ?
