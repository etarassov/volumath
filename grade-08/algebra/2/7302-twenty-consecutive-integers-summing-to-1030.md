---
id: "7302"
title: "Vingt entiers consécutifs de somme 1030"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [entiers, consecutifs, somme, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En TPE », exercice 52 (résolu par Alice Héliou) ; repris dans stage_ete_2008.pdf, « Les exercices de TPE », exercice 45"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On écrit vingt entiers qui se suivent, comme $7, 8, 9, \ldots$ jusqu'au vingtième. Leur somme vaut $1030$.

Quel est le plus petit de ces vingt entiers ?

## Hints

1. Appelle $n$ le plus petit des vingt entiers. Écris les dix-neuf autres en fonction de $n$.
2. La somme s'écrit $n + (n+1) + (n+2) + \cdots + (n+19)$. Combien y a-t-il de « $n$ » en tout ?
3. Les nombres ajoutés à part sont $0, 1, 2, \ldots, 19$. Sais-tu calculer rapidement leur somme ?
4. Tu obtiens une équation du premier degré en $n$. Résous-la.

## Solution

**Mise en équation.**

Notons $n$ le plus petit des vingt entiers. Les vingt entiers sont alors
$$n,\ n+1,\ n+2,\ \ldots,\ n+19 .$$

Leur somme vaut
$$S = n + (n+1) + (n+2) + \cdots + (n+19).$$

**On sépare les deux morceaux.**

Dans cette somme, le nombre $n$ apparaît vingt fois. Ce qui reste, ce sont les nombres $0, 1, 2, \ldots, 19$ ajoutés les uns aux autres. Donc

$$S = 20n + (0 + 1 + 2 + \cdots + 19).$$

Pour calculer $0 + 1 + 2 + \cdots + 19$, on regroupe les termes deux par deux en partant des extrémités :
$$(0 + 19) + (1 + 18) + (2 + 17) + \cdots + (9 + 10).$$
Il y a dix paquets, chacun valant $19$, donc cette somme vaut $10 \times 19 = 190$.

On obtient
$$S = 20n + 190 .$$

**Résolution.**

L'énoncé dit que $S = 1030$, donc
$$20n + 190 = 1030,$$
$$20n = 840,$$
$$n = 42 .$$

**Vérification.**

Les vingt entiers vont de $42$ à $61$. Leur somme vaut $20 \times 42 + 190 = 840 + 190 = 1030$. C'est bien cela.

**Conclusion.** Le plus petit des vingt entiers est $\boxed{42}$.

## Going further

1. Une autre façon de voir : la somme de vingt entiers consécutifs est aussi $10 \times (\text{somme des deux termes du milieu})$. Retrouve $42$ avec cette remarque.
2. Peut-on trouver vingt entiers consécutifs dont la somme vaut $1031$ ? Et $1000$ ? À quelle condition sur la somme le problème a-t-il une solution entière ?
3. Même question avec **vingt-et-un** entiers consécutifs. Pourquoi est-ce plus simple ?
