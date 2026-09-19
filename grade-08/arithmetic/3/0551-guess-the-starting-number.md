---
id: "0551"
title: "Retrouver le nombre de départ"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [multiples, encadrement, divisibilite, recherche-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 11 «В целых числах», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Paul a choisi un nombre entier et l'a écrit sur un papier, sans le montrer à personne.

- Claire a multiplié ce nombre soit par $5$, soit par $6$.
- Julien a ajouté au résultat de Claire soit $5$, soit $6$.
- Lucas a retranché du résultat de Julien soit $5$, soit $6$.

On obtient finalement $73$.

Quel nombre Paul a-t-il pu choisir ? Donner toutes les possibilités.

## Hints

1. Il y a $2 \times 2 \times 2 = 8$ scénarios possibles. On pourrait les essayer tous, mais il y a beaucoup plus rapide.
2. Regarder ensemble les deux dernières étapes : on ajoute $5$ ou $6$, puis on retranche $5$ ou $6$. De combien le nombre peut-il changer en tout ?
3. Le résultat de Claire ne peut donc être que $72$, $73$ ou $74$.
4. Lequel de ces trois nombres est un multiple de $5$ ? Lequel est un multiple de $6$ ?

## Solution

**L'idée : regrouper les deux dernières étapes.**

Julien ajoute $5$ ou $6$, puis Lucas retranche $5$ ou $6$. Mis bout à bout, ces deux gestes changent le nombre de

$$5 - 5 = 0, \qquad 5 - 6 = -1, \qquad 6 - 5 = +1, \qquad 6 - 6 = 0.$$

Donc, quoi qu'aient fait Julien et Lucas, le résultat final diffère du résultat de Claire de $-1$, de $0$ ou de $+1$.

**Ce que vaut le résultat de Claire.**

Le résultat final est $73$. Le résultat de Claire est donc

$$72, \qquad 73 \qquad \text{ou} \qquad 74.$$

Or ce résultat de Claire est le nombre de Paul multiplié par $5$ ou par $6$ : c'est donc un multiple de $5$ ou un multiple de $6$.

- Multiples de $5$ dans les parages : $70$ et $75$. Ni $72$, ni $73$, ni $74$ n'est un multiple de $5$. Claire n'a donc pas multiplié par $5$.
- Multiples de $6$ dans les parages : $72$ et $78$. Parmi nos trois nombres, seul $72$ est un multiple de $6$.

Il ne reste qu'une possibilité : Claire a multiplié par $6$ et a obtenu $72$.

**Le nombre de Paul.**

$$72 = 6 \times 12,$$

donc Paul avait choisi $12$.

**Vérification.** Il faut s'assurer que ce scénario est réalisable. Pour passer de $72$ à $73$, il faut un changement de $+1$ : Julien a ajouté $6$ et Lucas a retranché $5$. En effet

$$12 \times 6 = 72, \qquad 72 + 6 = 78, \qquad 78 - 5 = 73. \quad \checkmark$$

Le seul nombre que Paul a pu choisir est $\boxed{12}$.

## Going further

1. Mêmes règles, mais le résultat final est $74$. Quel nombre Paul a-t-il pu choisir ?
2. Trouver un résultat final pour lequel il y aurait **plusieurs** nombres de départ possibles.
