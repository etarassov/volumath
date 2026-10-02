---
id: "3818"
title: "Cent nombres au tableau"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, somme, jeu, tableau]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 18"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Sur un tableau, on écrit chacun des nombres $1, 2, 3, \ldots, 10$ exactement dix fois. Il y a donc cent nombres écrits.

Des enfants jouent alors au jeu suivant. Un enfant efface deux nombres de son choix et écrit à la place **leur somme diminuée de $1$**. Puis un autre enfant fait de même, et ainsi de suite, jusqu'à ce qu'il ne reste plus qu'un seul nombre au tableau.

Quel est ce dernier nombre ? Dépend-il des choix des enfants ?

## Hints

1. Essaie d'abord sur un petit exemple : écris $1$, $2$ et $3$ au tableau et joue jusqu'au bout, en changeant l'ordre des coups. Que remarques-tu ?
2. Un coup fait passer de deux nombres $x$ et $y$ au seul nombre $x + y - 1$. De combien la somme de tous les nombres du tableau change-t-elle ? Et le nombre de nombres écrits ?
3. Cherche une quantité qui, elle, ne change jamais : combine la somme et le compte.

## Solution

**L'idée : trouver une quantité que le jeu ne modifie jamais, un invariant.**

**Étape 1. Ce que fait un coup.**

Un coup remplace deux nombres $x$ et $y$ par le seul nombre $x + y - 1$.

- La **somme** $S$ de tous les nombres du tableau : on retire $x$ et $y$, on ajoute $x + y - 1$. Elle diminue donc de $1$.
- Le **nombre** $N$ de nombres écrits : on en efface deux et on en écrit un. Il diminue donc de $1$.

**Étape 2. L'invariant.**

La somme et le compte diminuent tous les deux de $1$ à chaque coup. Leur différence

$$S - N$$

ne change donc jamais, quels que soient les nombres choisis et l'ordre des coups.

**Étape 3. On calcule l'invariant au départ.**

Au départ, chaque nombre de $1$ à $10$ est écrit dix fois, donc

$$N = 100$$

et

$$S = 10 \times (1 + 2 + \cdots + 10) = 10 \times 55 = 550.$$

Donc

$$S - N = 550 - 100 = 450.$$

**Étape 4. On calcule l'invariant à la fin.**

À la fin il reste un seul nombre, appelons-le $F$. Alors $N = 1$ et $S = F$, donc

$$S - N = F - 1.$$

**Étape 5. On conclut.**

Comme $S - N$ ne change jamais :

$$F - 1 = 450, \qquad \text{donc} \qquad F = 451.$$

**Vérification sur un petit cas.** Avec $1$, $2$, $3$ au tableau : $S - N = 6 - 3 = 3$, donc le dernier nombre doit valoir $4$. Essayons deux ordres différents :

- $(1, 2) \to 2$, puis il reste $2$ et $3$, qui donnent $4$ ;
- $(2, 3) \to 4$, puis il reste $1$ et $4$, qui donnent $4$.

Dans les deux cas on trouve bien $4$.

**Conclusion.** Le dernier nombre vaut toujours $451$, quels que soient les choix des enfants.

## Going further

1. On change la règle : l'enfant écrit maintenant la somme des deux nombres **augmentée de $1$**. Que devient le dernier nombre ?
2. On revient à la règle de l'énoncé, mais on écrit chaque nombre de $1$ à $n$ une seule fois. Donne une formule pour le dernier nombre en fonction de $n$.
3. Avec la règle « on écrit le produit des deux nombres », le résultat final dépend-il encore des choix des enfants ?
