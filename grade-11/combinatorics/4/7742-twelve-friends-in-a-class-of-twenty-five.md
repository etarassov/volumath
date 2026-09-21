---
id: "7742"
title: "Un élève qui a au moins douze amis"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, amis, disjonction de cas, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 après-midi (Margaret Bilu), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Une classe compte $25$ élèves. L'amitié est réciproque : si $X$ est ami de $Y$, alors $Y$ est ami de $X$.

On suppose que, **parmi trois élèves quelconques, il y en a toujours au moins deux qui sont amis**.

Montrer qu'il existe un élève qui a au moins $12$ amis dans la classe.

## Hints

1. Sépare en deux cas : ou bien tout le monde est ami avec tout le monde, ou bien il existe deux élèves qui ne sont pas amis.
2. Le premier cas est immédiat. Place-toi donc dans le second, et appelle $A$ et $B$ deux élèves qui ne sont pas amis.
3. Prends un troisième élève $C$ et applique l'hypothèse au trio $\{A, B, C\}$. Qu'est-ce que cela impose à $C$ ?
4. Il reste $23$ élèves en dehors de $A$ et $B$, et chacun est ami avec $A$ ou avec $B$. Combien au minimum sont amis avec le même des deux ?

## Solution

**Premier cas : tout le monde est ami avec tout le monde.** Alors chaque élève a $24$ amis, et $24 \geqslant 12$. C'est réglé.

**Second cas : deux élèves ne sont pas amis.** Notons $A$ et $B$ deux élèves qui ne sont pas amis.

**Chaque autre élève est ami avec $A$ ou avec $B$.** Soit $C$ l'un des $23$ autres élèves. Appliquons l'hypothèse au trio $\{A, B, C\}$ : parmi ces trois, deux au moins sont amis. Ce ne sont pas $A$ et $B$, puisqu'ils ne le sont pas. Donc $C$ est ami avec $A$, ou $C$ est ami avec $B$ (ou les deux).

**Le principe des tiroirs.** Rangeons chacun des $23$ élèves restants dans un tiroir :

- le tiroir « ami de $A$ » ;
- le tiroir « ami de $B$ ».

(Un élève ami des deux, on le range dans l'un des deux, peu importe lequel.) Tout le monde est rangé, d'après le point précédent.

Si chacun des deux tiroirs contenait au plus $11$ élèves, il y en aurait au plus

$$11 + 11 = 22 ,$$

ce qui est trop peu pour $23$ élèves. L'un des deux tiroirs contient donc au moins $12$ élèves.

**On conclut.** Si c'est le tiroir « ami de $A$ », alors $A$ a au moins $12$ amis. Si c'est le tiroir « ami de $B$ », alors $B$ a au moins $12$ amis.

**Conclusion : dans les deux cas, il existe un élève ayant au moins $12$ amis.**

## Going further

L'hypothèse se relit ainsi : il n'existe pas trois élèves deux à deux non amis. C'est une contrainte très forte, et le résultat montre à quel point : elle oblige quelqu'un à être ami avec au moins la moitié de la classe.

Le nombre $12$ est le meilleur possible avec $25$ élèves. Pour le voir, partage la classe en deux camps de $12$ et $13$ élèves, chaque camp étant entièrement composé d'amis, et décrète que deux élèves de camps différents ne sont jamais amis. Parmi trois élèves quelconques, deux sont forcément dans le même camp, donc amis : l'hypothèse est respectée. Et personne n'a plus de $12$ amis.
