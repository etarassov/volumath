---
id: "3610"
title: "A divise B + C + D + E"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [divisibilite, permutations, denombrement, factorielle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Permutations and Combinations"
  reference: "Handout-5117-5589.pdf, problème 1.6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5117-5589.pdf"
---

## Statement

On part de la phrase

$$A \text{ divise } B + C + D + E$$

On remplace les cinq lettres $A$, $B$, $C$, $D$, $E$ par les cinq nombres $1$, $2$, $3$, $4$, $5$, chaque nombre étant utilisé exactement une fois.

Combien de ces remplacements rendent la phrase vraie ?

## Hints

1. Quelle que soit la façon de remplir les lettres, que vaut $A + B + C + D + E$ ?
2. Exprime $B + C + D + E$ en fonction de $A$ seulement.
3. Une fois la valeur de $A$ choisie, les quatre autres nombres se placent librement. De combien de façons ?

## Solution

**Étape 1. La somme totale ne change jamais.**

Les cinq lettres reçoivent les cinq nombres $1$, $2$, $3$, $4$, $5$ dans un ordre ou dans un autre, donc

$$A + B + C + D + E = 1 + 2 + 3 + 4 + 5 = 15$$

Par conséquent

$$B + C + D + E = 15 - A$$

**Étape 2. Traduire la condition.**

La phrase est vraie lorsque $A$ divise $15 - A$.

Or $A$ divise toujours $A$. Donc $A$ divise $15 - A$ si et seulement si $A$ divise la somme $(15 - A) + A = 15$.

La condition se ramène donc à : **$A$ divise $15$**.

**Étape 3. Trouver les valeurs de $A$.**

Les diviseurs de $15$ sont $1$, $3$, $5$ et $15$. Parmi les nombres disponibles $1$, $2$, $3$, $4$, $5$, ceux qui conviennent sont

$$A = 1, \quad A = 3, \quad A = 5$$

Vérifions : si $A = 1$, alors $B+C+D+E = 14$ et $1$ divise $14$ ; si $A = 3$, alors $B+C+D+E = 12$ et $3$ divise $12$ ; si $A = 5$, alors $B+C+D+E = 10$ et $5$ divise $10$. Et si $A = 2$, la somme vaut $13$, qui n'est pas pair ; si $A = 4$, la somme vaut $11$, qui n'est pas un multiple de $4$.

**Étape 4. Compter les remplacements.**

Une fois $A$ fixé, il reste quatre nombres à placer dans les quatre lettres $B$, $C$, $D$, $E$. Cela fait

$$4 \times 3 \times 2 \times 1 = 24 \text{ façons}$$

et la phrase est vraie pour chacune d'elles, puisque la condition ne dépend que de $A$.

Comme il y a $3$ valeurs possibles de $A$ :

$$3 \times 24 = 72$$

**Réponse.** $72$ remplacements rendent la phrase vraie.

## Going further

Sur les $5 \times 4 \times 3 \times 2 \times 1 = 120$ remplacements possibles, $72$ conviennent, soit exactement trois cinquièmes. C'est logique : la phrase ne dépend que du nombre placé en $A$, et $3$ des $5$ nombres conviennent.

Avec les nombres de $1$ à $6$, la somme totale devient $21$, la condition devient « $A$ divise $21$ », donc $A \in \{1, 3\}$, et le compte devient $2 \times 5! = 240$ sur $720$.
