---
id: "0884"
title: "Les cent billes d'Alice"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [restes, carres, principe-des-tiroirs, pire-des-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 6, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Alice met $100$ billes dans un sac. Sur chaque bille, elle a écrit le carré d'un entier. Bob souhaite trouver deux billes dont la différence des numéros est un multiple de $7$.

Combien de billes doit-il piocher au minimum pour être sûr de remplir son objectif, quels que soient les numéros choisis par Alice au départ ?

## Hints

1. « Leur différence est un multiple de $7$ » : traduis cela en termes de restes dans la division par $7$.
2. Quels restes un carré peut-il laisser dans la division par $7$ ? Calcule les restes de $0^2$, $1^2$, $2^2$, …, $6^2$ et fais la liste de ce que tu obtiens.
3. Tu ne devrais trouver que quatre restes possibles. Que se passe-t-il alors si Bob pioche cinq billes ?
4. Attention, la réponse a deux moitiés : il faut aussi montrer que quatre billes ne suffisent pas. Construis un sac méchant, dans lequel Bob peut tomber sur quatre restes tous différents.

## Solution

**La réponse : $5$ billes.**

**Étape 1. Traduire l'objectif.** Deux entiers ont une différence multiple de $7$ exactement lorsqu'ils laissent **le même reste** dans la division par $7$. En effet, si les deux nombres s'écrivent $7q + r$ et $7q' + r'$, leur différence vaut $7(q - q') + (r - r')$, et comme $r$ et $r'$ sont compris entre $0$ et $6$, leur différence $r - r'$ est un multiple de $7$ seulement si elle est nulle.

Bob cherche donc deux billes portant des numéros de même reste modulo $7$.

**Étape 2. Un carré ne laisse pas n'importe quel reste.** Écrivons un entier sous la forme $7q + r$ avec $r$ entre $0$ et $6$. Son carré vaut
$$(7q+r)^2 = 49q^2 + 14qr + r^2 = 7(7q^2 + 2qr) + r^2,$$
donc il laisse le même reste que $r^2$. Il suffit donc d'examiner $r = 0, 1, \ldots, 6$ :

| $r$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|---|
| $r^2$ | 0 | 1 | 4 | 9 | 16 | 25 | 36 |
| reste de $r^2$ par 7 | 0 | 1 | 4 | 2 | 2 | 4 | 1 |

**Le carré d'un entier ne peut laisser que l'un des quatre restes $0$, $1$, $2$ ou $4$.**

**Étape 3. Cinq billes suffisent.** Si Bob pioche $5$ billes, il a cinq numéros, chacun portant l'un des quatre restes $0$, $1$, $2$, $4$. Cinq objets rangés dans quatre tiroirs : deux d'entre eux sont dans le même tiroir. Deux des billes piochées ont donc le même reste, et leur différence est un multiple de $7$. **Avec $5$ billes, Bob réussit à coup sûr.**

**Étape 4. Quatre billes ne suffisent pas.** Montrons qu'Alice peut remplir le sac de façon que $4$ billes puissent échouer. Elle prépare $25$ billes de chacun des quatre types suivants :

- des carrés de reste $0$ : $0^2 = 0$, $7^2 = 49$, $14^2 = 196$, … ;
- des carrés de reste $1$ : $1^2 = 1$, $8^2 = 64$, $15^2 = 225$, … ;
- des carrés de reste $2$ : $3^2 = 9$, $10^2 = 100$, $17^2 = 289$, … ;
- des carrés de reste $4$ : $2^2 = 4$, $9^2 = 81$, $16^2 = 256$, … .

Cela fait bien $100$ billes. Si Bob pioche une bille de chaque type, il a quatre numéros de restes $0$, $1$, $2$ et $4$, tous différents : aucune de leurs différences n'est un multiple de $7$. **Quatre billes ne suffisent donc pas dans le pire des cas.**

**Conclusion : Bob doit piocher au minimum $5$ billes.**

## Going further

Le nombre $7$ n'a rien de magique, mais le nombre de restes possibles pour un carré, lui, dépend du diviseur. Modulo $7$ il y en a $4$ ; modulo $5$ il n'y en a que $3$ (les restes $0$, $1$ et $4$), et la réponse à la même question serait alors $4$ billes. De façon générale, pour un nombre premier impair $p$, un carré ne peut prendre que $\dfrac{p+1}{2}$ restes différents : il faut donc piocher $\dfrac{p+1}{2} + 1$ billes. Pour $p = 7$ cela donne bien $4 + 1 = 5$.
