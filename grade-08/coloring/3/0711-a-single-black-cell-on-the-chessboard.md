---
id: "0711"
title: "Une seule case noire sur l'échiquier ?"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, echiquier, invariant, parite, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 30"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

On part d'un échiquier de $8 \times 8$ cases, colorié comme d'habitude : les cases noires et les cases blanches alternent, et il y a donc $32$ cases de chaque couleur.

Une opération consiste à choisir une ligne entière, ou bien une colonne entière, et à changer la couleur de toutes ses cases : chaque case noire de cette ligne (ou colonne) devient blanche, et chaque case blanche devient noire.

Peut-on, en répétant cette opération autant de fois que l'on veut, obtenir un échiquier qui ne comporte plus qu'**une seule** case noire ?

## Hints

1. Essaie sur un tout petit plateau, par exemple $2 \times 2$ ou $4 \times 4$. Arrives-tu à descendre à une seule case noire ? À combien de cases noires arrives-tu ?
2. Une ligne contient $8$ cases. Si elle contient $n$ cases noires avant l'opération, combien en contient-elle après ?
3. De combien le nombre total de cases noires de l'échiquier change-t-il lors d'une opération ? Écris ce changement avec $n$ et regarde s'il peut être impair.
4. Au départ il y a $32$ cases noires. À la fin on en voudrait $1$. Compare.

## Solution

**Étape 1. Ce que fait une opération au décompte des cases noires.**

Une ligne (ou une colonne) contient $8$ cases. Supposons qu'elle contienne $n$ cases noires juste avant l'opération ; les $8 - n$ autres sont blanches.

Après l'opération, les couleurs sont échangées : les $n$ cases noires deviennent blanches et les $8-n$ cases blanches deviennent noires. Cette ligne contient donc maintenant $8 - n$ cases noires.

Les autres cases de l'échiquier n'ont pas bougé. Le nombre total de cases noires a donc varié de

$$(8 - n) - n = 8 - 2n$$

**Étape 2. L'invariant.**

Le nombre $8 - 2n$ est **toujours pair**, quelle que soit la valeur de $n$, car $8$ et $2n$ sont tous les deux pairs.

Donc chaque opération modifie le nombre de cases noires d'une quantité paire, et la **parité du nombre de cases noires ne change jamais**.

**Étape 3. Conclusion.**

Au départ, l'échiquier compte $32$ cases noires, et $32$ est pair. Donc, après n'importe quelle suite d'opérations, le nombre de cases noires reste pair.

Or $1$ est impair.

**Réponse : non, on ne peut jamais obtenir un échiquier avec exactement une seule case noire.**

## Going further

Le même argument interdit tout nombre impair de cases noires : $3$, $5$, $7$, $63$ sont également hors d'atteinte.

Attention cependant : l'argument ne dit pas que tous les nombres pairs sont atteignables. En cherchant toutes les configurations possibles, on trouve que le nombre de cases noires ne peut valoir que

$$0,\ 8,\ 14,\ 16,\ 20,\ 24,\ 26,\ 28,\ 30,\ 32,\ 34,\ 36,\ 38,\ 40,\ 44,\ 48,\ 50,\ 56,\ 64$$

Par exemple $2$ cases noires est pair, et pourtant impossible. Un invariant montre qu'une chose est impossible ; il ne promet jamais que le reste est possible.
