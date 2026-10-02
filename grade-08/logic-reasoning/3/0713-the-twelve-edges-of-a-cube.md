---
id: "0713"
title: "Les douze arêtes du cube"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [cube, somme, double-comptage, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercices 34 et 39 (le même problème, posé deux fois ; l'exercice 39 est un envoi POFM 2012-2013)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Un cube a $8$ sommets et $12$ arêtes, et trois arêtes aboutissent à chaque sommet.

Peut-on écrire les nombres $1, 2, 3, \ldots, 12$ sur les arêtes du cube, un nombre par arête et chaque nombre une seule fois, de façon que pour chacun des huit sommets, la somme des trois nombres écrits sur les arêtes qui aboutissent à ce sommet soit toujours la même ?

## Hints

1. Suppose que c'est possible et appelle $s$ la valeur commune des huit sommes. Que peux-tu dire de $s$ ? C'est une somme de trois entiers, donc c'est un entier.
2. Additionne les huit sommes. Tu obtiens $8s$. Mais tu peux aussi calculer cette grande somme autrement : combien de fois le nombre écrit sur une arête donnée intervient-il dans le total ?
3. Chaque arête a deux extrémités, donc son nombre est compté deux fois.
4. Calcule $1 + 2 + \cdots + 12$, puis compare $8s$ au double de ce total.

## Solution

**Étape 1. Supposons que ce soit possible.**

Supposons qu'un tel étiquetage existe, et appelons $s$ la somme commune aux huit sommets. Comme chaque somme de sommet est la somme de trois entiers, $s$ est un entier.

**Étape 2. Additionner les huit sommes, de deux façons.**

*Première façon.* Il y a huit sommets, chacun de somme $s$. Le total vaut donc

$$8s$$

*Deuxième façon.* Reprenons le même total, mais en suivant les arêtes. Chaque arête a exactement **deux** extrémités, donc le nombre écrit dessus est compté dans exactement deux des huit sommes. Chaque nombre de $1$ à $12$ apparaît donc exactement deux fois dans le total, qui vaut

$$2 \times (1 + 2 + 3 + \cdots + 12)$$

Or

$$1 + 2 + \cdots + 12 = \frac{12 \times 13}{2} = 78$$

Le total vaut donc $2 \times 78 = 156$.

**Étape 3. La contradiction.**

Les deux calculs comptent la même chose, donc

$$8s = 156, \qquad \text{c'est-à-dire} \qquad s = \frac{156}{8} = \text{19,5}$$

Mais $s$ devait être un entier, puisque c'est une somme de trois entiers. Il n'existe donc pas d'étiquetage convenable.

**Réponse : non, c'est impossible.**

## Going further

Pourquoi $8$ divise-t-il si mal $156$ ? Parce que $156 = 4 \times 39$ et que $39$ est impair : $156$ est divisible par $4$ mais pas par $8$.

La même question pour un tétraèdre ($4$ sommets, $6$ arêtes, trois arêtes par sommet, nombres de $1$ à $6$) donne $4s = 2 \times 21 = 42$, donc $s = \text{10,5}$ : encore impossible. En revanche, pour un octaèdre ($6$ sommets, $12$ arêtes, quatre arêtes par sommet, nombres de $1$ à $12$) on obtient $6s = 156$, donc $s = 26$, et cette fois l'obstacle disparaît. Sauras-tu trouver un étiquetage de l'octaèdre qui marche ?
