---
id: "0702"
title: "Combien d'entiers entre 81 et 2023 ?"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 5
tags: [denombrement, comptage, intervalle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Combien y a-t-il d'entiers naturels compris entre $81$ et $2023$

a) si l'on compte aussi $81$ et $2023$ ?

b) si l'on ne compte ni $81$ ni $2023$ ?

## Hints

1. Essaie d'abord la même question avec de tout petits nombres : combien y a-t-il d'entiers de $5$ à $9$ ? Compte-les sur tes doigts, puis compare avec $9 - 5$.
2. Le calcul $9 - 5$ donne $4$, mais il y a bien $5$ entiers. D'où vient le $1$ qui manque ?
3. Une image : des piquets et les intervalles entre les piquets. Il y a toujours un piquet de plus que d'intervalles.

## Solution

**Le piège.**

Comptons d'abord les entiers de $5$ à $9$ : ce sont $5$, $6$, $7$, $8$, $9$. Il y en a $5$. Pourtant $9 - 5 = 4$.

La soustraction $9-5$ ne compte pas les nombres, elle compte les *pas* qu'il faut faire pour aller de $5$ à $9$ : un pas de $5$ à $6$, un de $6$ à $7$, un de $7$ à $8$, un de $8$ à $9$, soit $4$ pas. Comme pour une clôture, il y a toujours un piquet de plus que d'intervalles. Il faut donc ajouter $1$ :

$$\text{nombre d'entiers de } a \text{ à } b \text{ (compris)} = b - a + 1$$

**a) Avec les bornes.**

$$2023 - 81 + 1 = 1943$$

**b) Sans les bornes.**

Il suffit de retirer les deux bornes de la liste précédente :

$$1943 - 2 = 1941$$

On peut aussi le voir ainsi : sans les bornes, on compte les entiers de $82$ à $2022$, ce qui donne $2022 - 82 + 1 = 1941$.

**Réponse : $1943$ entiers si l'on compte $81$ et $2023$, et $1941$ sinon.**

## Going further

Le mot « entre » ne dit pas si les bornes comptent ou non : c'est pour cela que l'énoncé pose les deux questions. Quand tu rencontres « entre » dans un problème, demande-toi toujours lequel des deux sens est voulu.
