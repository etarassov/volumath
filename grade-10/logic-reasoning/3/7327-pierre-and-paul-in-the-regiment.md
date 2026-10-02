---
id: "7327"
title: "Pierre et Paul dans le régiment"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [maximum, minimum, tableau, comparaison]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », en TD, logique et structures, exercice 63 ; repris de stage_ete_2007.pdf, « En TPE », exercice 67 (résolu par Alice Héliou)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Un régiment au garde-à-vous est disposé sur une place en un rectangle de $n$ rangs et $m$ colonnes : un soldat à chaque intersection. Tous les soldats ont des tailles différentes.

L'adjudant procède en deux temps.

1. Il repère le soldat **le plus petit** de chaque rang. Parmi ces $n$ soldats, il désigne **le plus grand** : appelons-le **Pierre**.
2. Il repère ensuite le soldat **le plus grand** de chaque colonne. Parmi ces $m$ soldats, il désigne **le plus petit** : appelons-le **Paul**.

Trois questions :

**a)** Pierre peut-il être le même soldat que Paul ?

**b)** Pierre peut-il être plus grand que Paul ?

**c)** Pierre peut-il être plus petit que Paul ?

## Hints

1. Commence par un petit exemple concret : un carré $2 \times 2$ avec les tailles $1$, $2$, $3$, $4$ placées comme tu veux. Essaie plusieurs dispositions.
2. Pour la question b), qui demande une **démonstration**, regarde le soldat situé à l'intersection du rang de Pierre et de la colonne de Paul. Appelons-le $s$.
3. Pierre est le plus petit de son rang, et $s$ est dans ce rang. Que peut-on dire ?
4. Paul est le plus grand de sa colonne, et $s$ est dans cette colonne. Que peut-on dire ?
5. Mets bout à bout les deux inégalités.

## Solution

Nous allons montrer que **Pierre n'est jamais plus grand que Paul**, et que les deux autres situations sont possibles.

### b) Pierre n'est jamais plus grand que Paul

Notons $R$ le rang de Pierre et $C$ la colonne de Paul, et soit $s$ le soldat situé à l'intersection du rang $R$ et de la colonne $C$. (Ce soldat existe toujours, et il peut d'ailleurs être Pierre, ou Paul, ou aucun des deux.)

- Pierre est **le plus petit de son rang** $R$. Or $s$ est dans le rang $R$. Donc
$$\text{taille(Pierre)} \leqslant \text{taille}(s) .$$
- Paul est **le plus grand de sa colonne** $C$. Or $s$ est dans la colonne $C$. Donc
$$\text{taille}(s) \leqslant \text{taille(Paul)} .$$

En mettant les deux ensemble :
$$\text{taille(Pierre)} \leqslant \text{taille(Paul)} .$$

**Pierre n'est donc jamais plus grand que Paul.** La réponse à b) est **non**.

### a) Pierre peut être le même soldat que Paul

Prenons un carré $2 \times 2$ et plaçons les tailles ainsi (les rangs sont les lignes) :

| | colonne 1 | colonne 2 |
|---|---|---|
| **rang 1** | $1$ | $2$ |
| **rang 2** | $3$ | $4$ |

- Le plus petit de chaque rang : $1$ et $3$. Le plus grand des deux est $3$ : **Pierre** est le soldat de taille $3$.
- Le plus grand de chaque colonne : $3$ et $4$. Le plus petit des deux est $3$ : **Paul** est le soldat de taille $3$.

C'est le même soldat, celui du rang $2$, colonne $1$. La réponse à a) est **oui**.

*Ce qui se passe ici :* ce soldat est à la fois le plus petit de son rang et le plus grand de sa colonne. On dit que c'est un **point-selle** du tableau. Dès qu'il en existe un, Pierre et Paul sont ce soldat-là.

### c) Pierre peut être plus petit que Paul

Reprenons un carré $2 \times 2$, avec une autre disposition :

| | colonne 1 | colonne 2 |
|---|---|---|
| **rang 1** | $1$ | $4$ |
| **rang 2** | $3$ | $2$ |

- Le plus petit de chaque rang : $1$ et $2$. Le plus grand des deux est $2$ : **Pierre** a la taille $2$.
- Le plus grand de chaque colonne : $3$ et $4$. Le plus petit des deux est $3$ : **Paul** a la taille $3$.

Ici Pierre mesure $2$ et Paul mesure $3$ : Pierre est strictement plus petit. La réponse à c) est **oui**.

### Conclusion

$$\text{taille(Pierre)} \leqslant \text{taille(Paul)} \quad \text{toujours}.$$

L'égalité peut se produire (et alors c'est le même soldat, puisque les tailles sont toutes différentes), l'inégalité stricte aussi. Mais l'inverse, jamais.

## Going further

1. Pourquoi, si Pierre et Paul ont la même taille, sont-ils forcément le même soldat ? Où utilise-t-on que les tailles sont toutes différentes ?
2. Montre que si un soldat est à la fois le plus petit de son rang et le plus grand de sa colonne, alors il est à la fois Pierre et Paul.
3. Donne un tableau $3 \times 3$ où l'écart entre la taille de Pierre et celle de Paul est le plus grand possible, avec les tailles $1, 2, \ldots, 9$.
