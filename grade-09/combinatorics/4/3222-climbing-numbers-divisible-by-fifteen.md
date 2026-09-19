---
id: "3222"
title: "Les nombres montants divisibles par 15"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [chiffres, divisibilite, criteres de divisibilite, denombrement, sous-ensembles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Number theory review"
  reference: "Handout-4813-5008.pdf, exercice 6, d'après AMC 10B 2021, problème 16 (réponse dans Handout-4815-5008.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4813-5008.pdf"
---

## Statement

On dit qu'un entier strictement positif est **montant** si chacun de ses chiffres est strictement plus grand que celui qui le précède.

Par exemple $1357$, $89$ et $5$ sont montants, tandis que $32$, $1240$ et $466$ ne le sont pas.

Combien y a-t-il de nombres montants divisibles par $15$ ? Les donner tous.

## Hints

1. Un nombre est divisible par $15$ exactement quand il est à la fois divisible par $3$ et par $5$.
2. Commence par la divisibilité par $5$ : quels peuvent être les chiffres des unités ? L'une des deux possibilités se détruit toute seule pour un nombre montant.
3. Une fois le chiffre des unités fixé à $5$, que peut-on dire des autres chiffres ?
4. Un nombre montant est entièrement déterminé par l'**ensemble** de ses chiffres, puisque l'ordre est imposé. Combien y a-t-il d'ensembles possibles ?
5. Il reste la divisibilité par $3$ : la somme des chiffres doit être un multiple de $3$. Écris cette somme sous la forme $5 + (\text{somme des chiffres choisis})$.

## Solution

**Divisibilité par $5$ : le dernier chiffre.**

Un nombre est divisible par $5$ si et seulement si son chiffre des unités est $0$ ou $5$.

Le chiffre $0$ est impossible : dans un nombre montant, le chiffre des unités est le plus grand de tous. S'il valait $0$, tous les autres seraient strictement plus petits que $0$, ce qui n'existe pas. Il ne pourrait donc y avoir aucun autre chiffre, et le nombre serait $0$, qui n'est pas strictement positif.

Donc **le chiffre des unités est $5$**.

**Les autres chiffres.**

Ils sont strictement plus petits que $5$, tous différents entre eux (puisqu'ils croissent strictement) et non nuls (un nombre ne commence pas par $0$, et de toute façon ils sont rangés en ordre croissant devant le $5$).

Les autres chiffres forment donc un sous-ensemble $S$ de $\{1, 2, 3, 4\}$. Et réciproquement, à chaque sous-ensemble $S$ correspond **un seul** nombre montant : il suffit d'écrire les éléments de $S$ dans l'ordre croissant, puis le $5$.

Par exemple $S = \{1, 3\}$ donne $135$, et $S = \varnothing$ donne $5$.

Il y a $2^4 = 16$ sous-ensembles, donc $16$ candidats.

**Divisibilité par $3$ : la somme des chiffres.**

Un nombre est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Ici la somme vaut

$$5 + s, \qquad \text{où } s \text{ est la somme des éléments de } S .$$

Il faut donc $5 + s$ multiple de $3$, c'est-à-dire $s \equiv 1 \pmod 3$, autrement dit $s \in \{1, 4, 7, 10\}$ (les sommes possibles vont de $0$ à $1+2+3+4 = 10$).

**On passe les seize sous-ensembles en revue.**

| $s$ | sous-ensembles $S$ de somme $s$ | retenus ? |
|---|---|---|
| $0$ | $\varnothing$ | non |
| $1$ | $\{1\}$ | **oui** |
| $2$ | $\{2\}$ | non |
| $3$ | $\{3\}$, $\{1,2\}$ | non |
| $4$ | $\{4\}$, $\{1,3\}$ | **oui** |
| $5$ | $\{1,4\}$, $\{2,3\}$ | non |
| $6$ | $\{2,4\}$, $\{1,2,3\}$ | non |
| $7$ | $\{3,4\}$, $\{1,2,4\}$ | **oui** |
| $8$ | $\{1,3,4\}$ | non |
| $9$ | $\{2,3,4\}$ | non |
| $10$ | $\{1,2,3,4\}$ | **oui** |

Six sous-ensembles conviennent : $\{1\}$, $\{4\}$, $\{1,3\}$, $\{3,4\}$, $\{1,2,4\}$ et $\{1,2,3,4\}$.

**Les six nombres.**

$$15, \quad 45, \quad 135, \quad 345, \quad 1245, \quad 12345 .$$

**Vérification.** $15 = 15 \times 1$, $45 = 15 \times 3$, $135 = 15 \times 9$, $345 = 15 \times 23$, $1245 = 15 \times 83$, $12345 = 15 \times 823$. Tous sont bien montants.

**Conclusion.** Il y a exactement **six** nombres montants divisibles par $15$.

## Going further

1. Combien y a-t-il de nombres montants en tout ?
2. Combien de nombres montants sont divisibles par $5$ ?
3. Combien de nombres montants sont divisibles par $45$ ?
4. On appelle **descendant** un nombre dont chaque chiffre est strictement plus petit que le précédent. Combien de nombres descendants à **trois chiffres** sont divisibles par $15$ ?
