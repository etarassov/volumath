---
id: "4812"
title: "Trois navires qui ne pèsent rien"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [vote, coalitions, disjonction-de-cas, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Voting: Power, Procedures, and Problems (Clint Givens)"
  reference: "Handout-189-206.pdf, exercice 2 (réponses dans Handout-190-206.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-189-206.pdf"
---

## Statement

Six navires pirates envoient chacun un représentant à l'assemblée de la flotte. Pour que l'assemblée soit juste, on a décidé que chaque représentant disposerait d'un nombre de voix proportionnel à la taille de son équipage :

| Navire | Voix |
|---|---|
| $A$ — la Vengeance de la reine Anne | $9$ |
| $B$ — le Joyeux Roger | $9$ |
| $C$ — la Perle noire | $7$ |
| $D$ — la Sucette | $3$ |
| $E$ — la Tarentule | $1$ |
| $F$ — la Fantaisie | $1$ |

Il y a donc $30$ voix en tout, et une motion est adoptée dès qu'elle recueille **strictement plus de la moitié** des voix, c'est-à-dire au moins $16$ voix.

Les équipages de $D$, $E$ et $F$ trouvent le système injuste, alors que leurs voix sont pourtant bien proportionnelles à leur taille. Ils t'engagent comme avocat.

Démontrer qu'ils ont raison : montrer que le sort de toute motion est décidé par $A$, $B$ et $C$ seuls, et que les voix de $D$, $E$ et $F$ ne changent jamais rien au résultat.

## Hints

1. Appelons *coalition gagnante* un groupe de navires dont les voix réunies atteignent $16$. Commence par en trouver quelques-unes.
2. Additionne les voix de deux quelconques des trois gros navires $A$, $B$, $C$. Que constates-tu, même pour la plus petite des trois sommes ?
3. Maintenant fais le contraire : additionne les voix d'un seul gros navire et de **tous** les petits. Combien cela fait-il ?
4. Tu devrais aboutir à une règle très simple : une coalition gagne si et seulement si elle contient au moins deux des navires $A$, $B$, $C$. Il reste à en tirer la conclusion sur $D$, $E$ et $F$.

## Solution

**Ce qu'on veut établir.** Appelons *coalition gagnante* un groupe de navires dont le total des voix atteint $16$. Nous allons montrer :

> Une coalition est gagnante si et seulement si elle contient au moins **deux** des trois navires $A$, $B$, $C$.

**Sens 1 : deux gros navires suffisent.** Les trois sommes possibles sont
$$A + B = 9 + 9 = 18, \qquad A + C = 9 + 7 = 16, \qquad B + C = 9 + 7 = 16 .$$
La plus petite vaut déjà $16$. Donc dès qu'une coalition contient deux des trois gros navires, elle atteint le seuil, quels que soient les petits navires qui l'accompagnent.

**Sens 2 : un seul gros navire ne suffit jamais.** Supposons qu'une coalition contienne au plus un des navires $A$, $B$, $C$. Son total est au maximum
$$\underbrace{9}_{\text{le plus gros des trois}} + \underbrace{3 + 1 + 1}_{D,\, E,\, F \text{ réunis}} = 9 + 5 = 14 .$$
Or $14 < 16$. Une telle coalition n'est donc jamais gagnante, même si elle réunit les trois petits navires.

Ces deux points établissent la règle annoncée.

**La conclusion pour $D$, $E$ et $F$.** Prenons une motion, et regardons seulement comment votent $A$, $B$ et $C$.

- Si au moins deux d'entre eux votent **pour**, la motion est adoptée (sens 1), que $D$, $E$, $F$ votent pour ou contre.
- Si au moins deux d'entre eux votent **contre**, alors le camp du « pour » contient au plus un des trois gros navires, donc il ne peut pas atteindre $16$ voix (sens 2) : la motion est rejetée, là encore quoi que fassent $D$, $E$, $F$.

Comme $A$, $B$, $C$ sont trois, l'un de ces deux cas se produit toujours : soit deux au moins votent pour, soit deux au moins votent contre.

**Le résultat ne dépend donc jamais des voix de $D$, $E$ et $F$.** On dit que ces trois navires sont des votants *fantoches* : ils ont des voix, mais aucun pouvoir.

**Réponse : le système est bel et bien injuste. Tout se décide à la majorité entre $A$, $B$ et $C$, exactement comme si $D$, $E$ et $F$ n'étaient pas dans la salle.**

## Going further

1. Une coalition est *minimale gagnante* si elle est gagnante et si elle cesse de l'être dès qu'on en retire n'importe lequel de ses membres. Fais la liste des coalitions minimales gagnantes de cette assemblée.
2. Combien y a-t-il de coalitions gagnantes en tout ? (On peut compter : choisir deux ou trois gros navires, puis n'importe quelle partie de $\{D, E, F\}$.)
3. Modifie le seuil : à partir de combien de voix requises les petits navires cessent-ils d'être des fantoches ? Et si on baissait le seuil à $14$ voix ?
