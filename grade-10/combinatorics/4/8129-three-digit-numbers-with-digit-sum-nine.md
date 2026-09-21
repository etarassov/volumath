---
id: "8129"
title: "Des nombres à trois chiffres dont la somme des chiffres vaut 9"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [chiffres, denombrement, inegalite, majoration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A (problème des Olympiades Balkaniques Junior 2018)"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Dénombrement et double comptage », exercice 9 (JBMO 2018)"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On écrit $n$ nombres au tableau. Ils vérifient toutes les conditions suivantes :

- chaque nombre s'écrit avec exactement trois chiffres ;
- aucun de ces chiffres n'est un $0$ ;
- deux nombres différents du tableau n'ont jamais le même chiffre des centaines, ni le même chiffre des dizaines, ni le même chiffre des unités ;
- la somme des trois chiffres de chaque nombre vaut $9$.

Quelle est la plus grande valeur possible de $n$ ?

## Hints

1. Calcule de deux façons la somme de **tous** les chiffres écrits au tableau : il y en a $3n$.
2. D'un côté, chaque nombre apporte $9$. Cela donne un total très simple.
3. De l'autre côté, regarde la colonne des centaines : elle contient $n$ chiffres tous différents et tous non nuls. Quelle est la plus petite somme possible pour une telle colonne ?
4. Les trois colonnes se traitent de la même façon. Tu obtiens une inégalité sur $n$ ; résous-la.
5. N'oublie pas de construire un exemple avec la valeur trouvée : sinon tu n'auras montré qu'une majoration.

## Solution

### Une majoration de $n$

**La somme de tous les chiffres, première façon.**

Chaque nombre du tableau a une somme de chiffres égale à $9$, et il y a $n$ nombres. Donc la somme de tous les chiffres écrits vaut

$$S = 9n.$$

**La somme de tous les chiffres, deuxième façon.**

Rangeons les chiffres en trois colonnes : centaines, dizaines, unités. Chaque colonne contient $n$ chiffres.

Prenons la colonne des centaines. Ses $n$ chiffres sont tous différents (troisième condition) et tous non nuls (deuxième condition) : ce sont donc $n$ entiers distincts pris parmi $1, 2, \ldots, 9$. La plus petite somme qu'ils peuvent avoir est obtenue en prenant les $n$ plus petits, ce qui donne

$$1 + 2 + \cdots + n = \frac{n(n+1)}{2}.$$

La somme de la colonne des centaines est donc au moins $\dfrac{n(n+1)}{2}$. Le même argument vaut pour la colonne des dizaines et pour celle des unités. En additionnant les trois colonnes :

$$S \geq 3 \times \frac{n(n+1)}{2}.$$

**L'inégalité sur $n$.**

En réunissant les deux expressions de $S$ :

$$9n \geq \frac{3n(n+1)}{2}.$$

Comme $n > 0$, on peut diviser par $3n$ :

$$3 \geq \frac{n+1}{2}, \qquad \text{donc} \qquad n + 1 \leq 6, \qquad \text{donc} \qquad n \leq 5.$$

### La valeur $5$ est atteinte

Il reste à exhiber cinq nombres qui conviennent. Par exemple :

$$135, \quad 252, \quad 324, \quad 441, \quad 513.$$

Vérifions les quatre conditions.

- Ce sont bien cinq nombres à trois chiffres, sans aucun $0$.
- Chiffres des centaines : $1, 2, 3, 4, 5$ — tous différents.
- Chiffres des dizaines : $3, 5, 2, 4, 1$ — tous différents.
- Chiffres des unités : $5, 2, 4, 1, 3$ — tous différents.
- Sommes des chiffres : $1+3+5 = 9$, $2+5+2 = 9$, $3+2+4 = 9$, $4+4+1 = 9$, $5+1+3 = 9$.

**La plus grande valeur possible est $n = 5$.**

Remarque : l'inégalité de la première partie est une **égalité** pour $n = 5$, puisque $9 \times 5 = 45 = 3 \times \dfrac{5 \times 6}{2}$. Cela impose que chaque colonne utilise exactement les chiffres $1, 2, 3, 4, 5$ : c'est pour cela que l'exemple ne contient aucun chiffre plus grand que $5$.
