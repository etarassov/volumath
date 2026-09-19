---
id: "0709"
title: "Un produit de chiffres qui est pair"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, chiffres, parite, complementaire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 10"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Combien y a-t-il de nombres de trois chiffres dont le produit des chiffres est pair ?

Par exemple $138$ convient, car $1 \times 3 \times 8 = 24$ est pair, mais $135$ ne convient pas, car $1 \times 3 \times 5 = 15$ est impair.

## Hints

1. Si tu essaies de compter directement, tu vas devoir séparer beaucoup de cas : un seul chiffre pair, deux chiffres pairs, trois chiffres pairs... Est-ce vraiment la bonne route ?
2. Il est souvent plus rapide de compter ce que l'on **ne** veut **pas**, puis de le retirer du total. Quels sont les nombres à trois chiffres dont le produit des chiffres est impair ?
3. Un produit de plusieurs facteurs est impair exactement quand tous les facteurs sont impairs. Il suffit qu'un seul facteur soit pair pour que le produit devienne pair.

## Solution

**Étape 1. L'idée : compter les mauvais.**

Les nombres à trois chiffres se répartissent en deux familles : ceux dont le produit des chiffres est pair, et ceux dont il est impair. Il est beaucoup plus simple de compter la seconde famille, puis de la retirer du total.

**Étape 2. Quand le produit est-il impair ?**

Un produit est impair exactement lorsque tous ses facteurs sont impairs. En effet, dès qu'un seul facteur est pair, le produit contient le facteur $2$ et devient pair.

Donc le produit des trois chiffres est impair exactement quand **les trois chiffres sont impairs**.

**Étape 3. Compter les mauvais.**

Les chiffres impairs sont $1$, $3$, $5$, $7$, $9$ : il y en a $5$.

- Chiffre des centaines : $5$ possibilités. Aucune d'elles n'est $0$, donc il n'y a pas de piège ici : tous ces choix donnent bien un nombre à trois chiffres.
- Chiffre des dizaines : $5$ possibilités.
- Chiffre des unités : $5$ possibilités.

Cela fait

$$5 \times 5 \times 5 = 125$$

nombres à trois chiffres dont le produit des chiffres est impair.

**Étape 4. Conclusion.**

Il y a $900$ nombres à trois chiffres en tout (de $100$ à $999$). Donc le nombre cherché est

$$900 - 125 = 775$$

**Réponse : il y a $775$ nombres de trois chiffres dont le produit des chiffres est pair.**

## Going further

Attention à ne pas confondre avec une autre question : combien de nombres à trois chiffres ont une **somme** de chiffres paire ? Le raisonnement du complémentaire ne marche plus aussi simplement, car une somme est paire dès qu'il y a un nombre pair de termes impairs. Essaie : la réponse est $450$, exactement la moitié.
