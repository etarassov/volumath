---
id: "3810"
title: "Multiplié par 10 puis par 15"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, fractions, divisibilite, unicite]
adapted_from: null
see_also: ["0802"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 5 (le corrigé Handout-4188-3921.pdf annonce 2/5, ce qui est faux : 10 × 2/5 = 4 n'est pas premier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Benoît multiplie un nombre par $10$ et trouve un nombre premier.

Pierre multiplie **le même nombre** par $15$ et trouve lui aussi un nombre premier.

Les deux ont-ils pu calculer juste ? Le nombre de départ n'est pas forcément entier.

Si c'est possible, trouve tous les nombres de départ qui conviennent.

## Hints

1. Commence par te demander si un entier peut convenir. Que vaut $10n$ quand $n$ est un entier plus grand que $0$ ? Est-ce que cela peut être premier ?
2. L'énoncé précise que le nombre de départ n'est pas forcément entier. Cherche donc du côté des fractions.
3. Appelle $p$ le résultat de Benoît et $q$ celui de Pierre. Peux-tu trouver une relation entre $p$ et $q$ qui ne fasse plus intervenir le nombre de départ ? (Essaie $3p$ et $2q$.)
4. Tu obtiendras $3p = 2q$. Utilise le fait que $p$ et $q$ sont premiers pour conclure.

## Solution

**L'idée : éliminer le nombre de départ entre les deux informations.**

Notons $x$ le nombre de départ, $p = 10x$ le résultat de Benoît et $q = 15x$ celui de Pierre. Par hypothèse, $p$ et $q$ sont des nombres premiers.

**Étape 1. On élimine $x$.**

Multiplions $p$ par $3$ et $q$ par $2$ :

$$3p = 3 \times 10x = 30x \qquad \text{et} \qquad 2q = 2 \times 15x = 30x.$$

Donc

$$3p = 2q.$$

**Étape 2. On exploite la primalité.**

Le nombre $2q$ est pair, donc $3p$ est pair. Comme $3$ est impair, c'est $p$ qui doit être pair.

Or $p$ est un nombre premier pair : le seul est $p = 2$.

On en déduit $2q = 3 \times 2 = 6$, donc $q = 3$, qui est bien premier.

**Étape 3. On retrouve le nombre de départ.**

$$10x = p = 2 \quad \Longrightarrow \quad x = \frac{2}{10} = \frac{1}{5} = \text{0,2}.$$

**Vérification.**

$$10 \times \frac{1}{5} = 2 \quad (\text{premier}), \qquad 15 \times \frac{1}{5} = 3 \quad (\text{premier}).$$

**Conclusion.** Oui, les deux ont pu calculer juste, et il n'y a qu'une seule possibilité : le nombre de départ est $\dfrac{1}{5}$, c'est-à-dire $\text{0,2}$.

## Going further

1. Pourquoi aucun entier ne peut-il convenir ?
2. Même question si Benoît multiplie par $10$ et Pierre par $25$ : existe-t-il un nombre de départ qui donne deux fois un nombre premier ?
3. Et si Benoît multiplie par $6$ et Pierre par $15$ ?
