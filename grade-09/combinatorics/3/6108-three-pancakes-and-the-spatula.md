---
id: "6108"
title: "Trois crêpes et une spatule"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [permutations, recherche-exhaustive, strategie, tri]
adapted_from: null
see_also: ["6109"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter/Spring 2016, rubrique « In Session »"
  reference: "MTCircularWS2016.pdf, pages 16 à 18, « Flipping Pancakes » par Katie Haymaker, séance du Philadelphia Area MTC. Le texte annonce que la pile la plus difficile est unique pour trois crêpes, sans dire laquelle ni publier de solution."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWS2016.pdf"
---

## Statement

Un serveur sort de la cuisine avec une assiette de crêpes empilées, toutes de tailles différentes. Il voudrait les servir bien rangées : la plus petite tout en haut, la plus grande tout en bas, en pyramide.

Il n'a qu'une main libre, et un seul geste possible : glisser sa spatule quelque part dans la pile et **retourner d'un bloc tout ce qui se trouve au-dessus de la spatule**. Le paquet retourné se repose sur le reste de la pile, à l'envers.

Par exemple, avec trois crêpes rangées de haut en bas dans l'ordre moyenne, grande, petite, s'il glisse la spatule sous les deux crêpes du haut, la pile devient grande, moyenne, petite.

Numérotons les crêpes par leur taille : $1$ la plus petite, $2$ la moyenne, $3$ la plus grande. Une pile se décrit alors de haut en bas, par exemple $132$ pour « la petite en haut, la grande au milieu, la moyenne en bas ». La pile bien rangée est $123$.

a) Montrer que le serveur peut ranger **n'importe quelle** pile de trois crêpes en au plus $3$ retournements.

b) Une seule pile de trois crêpes exige vraiment $3$ retournements. Laquelle ? Démontrer que deux retournements ne lui suffisent pas.

## Hints

1. Avec trois crêpes, il n'y a que six piles possibles. Écris-les toutes.
2. Depuis une pile donnée, il n'y a que deux gestes utiles : retourner les deux crêpes du haut, ou retourner les trois. (Retourner la seule crêpe du haut ne change rien, puisqu'une crêpe seule retournée reste au même endroit.)
3. Pour chaque pile, essaie les deux gestes et note où ils mènent. Tu obtiens un petit plan de six cases.
4. Pour b), pars de la pile candidate et regarde toutes les piles atteignables en un geste, puis toutes celles atteignables en deux. La pile rangée $123$ y est-elle ?

## Solution

**Les gestes possibles.**

Avec trois crêpes, la spatule peut se glisser sous les deux du haut ou sous les trois. La glisser sous la seule crêpe du haut ne change rien à l'ordre. Notons donc :

- $R_2$ : retourner les deux crêpes du haut (elles échangent leur place, la troisième ne bouge pas) ;
- $R_3$ : retourner les trois (la pile est lue à l'envers).

**a) Trois retournements suffisent toujours.**

Il n'y a que $6$ piles. Voici, pour chacune, une suite de gestes qui la range, et le nombre de retournements utilisés :

| Pile de départ | Gestes | Nombre |
|---|---|---|
| $123$ | rien à faire | $0$ |
| $213$ | $R_2$ donne $123$ | $1$ |
| $321$ | $R_3$ donne $123$ | $1$ |
| $312$ | $R_3$ donne $213$, puis $R_2$ donne $123$ | $2$ |
| $231$ | $R_2$ donne $321$, puis $R_3$ donne $123$ | $2$ |
| $132$ | $R_2$ donne $312$, puis $R_3$ donne $213$, puis $R_2$ donne $123$ | $3$ |

Aucune pile ne demande plus de $3$ retournements.

**b) La pile $132$ exige vraiment trois retournements.**

Il s'agit de la pile « petite en haut, grande au milieu, moyenne en bas ». Le tableau ci-dessus montre que $3$ retournements suffisent. Montrons que $2$ ne suffisent pas.

Partons de $132$ et déplions tous les chemins.

*En un geste*, on atteint :

- $R_2$ : $312$ ;
- $R_3$ : $231$.

Ni l'une ni l'autre n'est $123$. Donc un seul retournement ne suffit pas.

*En deux gestes*, il faut repartir de $312$ ou de $231$ :

- depuis $312$ : $R_2$ redonne $132$, et $R_3$ donne $213$ ;
- depuis $231$ : $R_2$ donne $321$, et $R_3$ redonne $132$.

Les piles atteintes en deux gestes sont donc $132$, $213$ et $321$. Aucune n'est $123$.

Donc $132$ ne peut pas être rangée en deux retournements, et il en faut exactement $3$.

**Pourquoi cette pile est-elle la plus dure ?** Dans les cinq autres piles, il y a toujours quelque chose à quoi s'accrocher : soit la grande crêpe est déjà tout en bas ($123$ et $213$), soit la pile est exactement à l'envers et un seul geste la remet d'aplomb ($321$), soit deux crêpes de tailles consécutives sont déjà posées l'une sur l'autre dans le bon ordre ($312$ avec la $1$ sur la $2$, $231$ avec la $2$ sur la $3$). Dans $132$, rien de tout cela : la grande crêpe n'est pas en bas, la pile n'est pas à l'envers, et aucune paire de tailles consécutives n'est correctement empilée.

## Going further

Le nombre de retournements nécessaires dans le pire des cas pour $n$ crêpes s'appelle le $n$-ième **nombre de crêpes**. On vient de voir qu'il vaut $3$ pour $n = 3$. Pour $n = 4$, il vaut $4$, et cette fois ce ne sont pas une mais trois piles qui exigent quatre retournements : sauras-tu les trouver ?

Ce problème a été posé en 1975 par Jacob Goodman, sous le pseudonyme « Harry Dweighter » (dis-le vite en anglais). Le premier article publié à son sujet a pour co-auteur un étudiant nommé Bill Gates. Le nombre de crêpes reste inconnu au-delà de $19$ crêpes.
