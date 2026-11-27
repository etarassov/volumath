---
id: "40886"
title: "Sophie et Germain complices : un code pour trouver le paquet"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [strategie, jeu, information, codage, disjonction-de-cas, impossibilite]
adapted_from: null
see_also: ["40884", "40885"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 2 « Bonbons cachés », partie 4 « Une stratégie pour Sophie et Germain », question 9"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Germain dispose de $n$ boîtes opaques numérotées de $1$ à $n$. Il cache un paquet de bonbons dans l'une d'elles, les autres restent vides. Le jeu se déroule en $n - 1$ tours.

- Au tour $1$, Sophie désigne une boîte, sans l'ouvrir.
- À chacun des tours $2, 3, \ldots, n-1$, Germain élimine **une** boîte, qui doit être vide, pas encore éliminée, et différente de celle que Sophie désigne à ce moment-là. Puis Sophie désigne de nouveau une boîte non éliminée : la même ou une autre.

À la fin du tour $n - 1$, Sophie ouvre la boîte qu'elle désigne.

Leur ami Évariste leur promet un paquet de bonbons si, à la fin d'une partie, Sophie ouvre la bonne boîte. Cette fois, Sophie et Germain sont donc dans le même camp. Mais Germain doit placer le paquet au hasard, et il n'a pas le droit de dire à Sophie où il l'a mis, ni de lui parler pendant la partie. Avant de commencer, ils peuvent en revanche se mettre d'accord sur une stratégie commune.

Pour quelles valeurs de $n \geqslant 3$ peuvent-ils convenir d'une stratégie qui garantit à Sophie de trouver le paquet, quelle que soit la boîte où il a été caché ?

## Hints

1. Commencez par $n = 3$. Il n'y a qu'une seule élimination. Écrivez, pour chaque position possible du paquet, ce que Germain a le droit de faire.
2. Le seul moyen pour Germain de « parler » à Sophie, c'est le choix de la boîte qu'il élimine. Avec $n = 3$, ce message peut-il distinguer trois situations ?
3. Supposez que Sophie sache qu'une certaine boîte est vide, et qu'elle la désigne. Germain peut-il l'éliminer ? Que se passe-t-il à la fin du jeu si elle la garde jusqu'au dernier tour, puis change ?
4. Pour $n \geqslant 4$, utilisez l'élimination du tour $2$ comme un message : il suffit qu'après ce message, Sophie connaisse soit la boîte du paquet, soit une boîte vide non éliminée.
5. Une idée de code : Sophie désigne la boîte $1$ ; si le paquet est dans la boîte $b$, avec $2 \leqslant b \leqslant n-1$, Germain élimine la boîte $b + 1$. Que faire dans les autres cas ?

## Solution

**Réponse : exactement pour $n \geqslant 4$.**

**Une remarque qui sert partout.** Germain n'a jamais le droit d'éliminer la boîte du paquet, ni la boîte que Sophie désigne.

**Le cas $n = 3$ : c'est impossible.** Il n'y a qu'un tour d'élimination, le tour $2$. Quelle que soit la stratégie, Sophie désigne au tour $1$ une certaine boîte ; numérotons les boîtes pour que ce soit la boîte $1$. Au tour $2$, Germain élimine la boîte $2$ ou la boîte $3$.

- Si le paquet est dans la boîte $2$, Germain est obligé d'éliminer la boîte $3$.
- Si le paquet est dans la boîte $3$, il est obligé d'éliminer la boîte $2$.
- Si le paquet est dans la boîte $1$, il élimine la boîte $2$ ou la boîte $3$ ; disons la boîte $2$ (l'autre cas est symétrique).

Quand Sophie voit la boîte $2$ éliminée, le paquet peut donc être dans la boîte $1$ ou dans la boîte $3$, et rien ne lui permet de distinguer ces deux cas : elle a vu exactement la même chose. Quelle que soit la boîte qu'elle ouvre, elle perd dans l'un des deux cas. Aucune stratégie ne garantit la victoire.

**Le cas $n \geqslant 4$ : voici une stratégie qui gagne toujours.**

*Tour 1.* Sophie désigne la boîte $1$.

*Tour 2, le message de Germain.*

- Si le paquet est dans une boîte $b$ avec $2 \leqslant b \leqslant n - 1$, Germain élimine la boîte $b + 1$.
- Si le paquet est dans la boîte $1$ ou dans la boîte $n$, Germain élimine la boîte $2$.

Ces éliminations sont permises. Dans le premier cas, la boîte $b + 1$ est l'une des boîtes $3, \ldots, n$ : ce n'est ni la boîte $1$ de Sophie, ni la boîte $b$ du paquet. Dans le second cas, la boîte $2$ n'est pas la boîte $1$, et elle est vide car $2 \neq n$.

*Ce que Sophie en déduit.*

- Si la boîte éliminée est une boîte $k \geqslant 3$, c'est le premier cas avec $b = k - 1$ : le paquet est dans la boîte $k - 1$. Sophie désigne cette boîte et ne la quitte plus. Germain ne peut jamais l'éliminer, et Sophie gagne.
- Si la boîte éliminée est la boîte $2$, le paquet est dans la boîte $1$ ou dans la boîte $n$. La boîte $3$ est alors vide, car $3 \neq 1$ et $3 \neq n$ puisque $n \geqslant 4$. Sophie désigne la boîte $3$ et la garde jusqu'au dernier tour. Germain ne peut pas éliminer la boîte $3$, ni la boîte du paquet. Après la dernière élimination, au tour $n - 1$, il reste exactement deux boîtes, puisque $n - 2$ boîtes ont été éliminées : la boîte $3$, vide, et une autre, qui est forcément celle du paquet. Sophie change pour cette autre boîte et gagne.

Ce dernier changement a bien lieu après le tour $2$ : c'est possible car $n - 1 \geqslant 3$ quand $n \geqslant 4$.

**Bilan.** Germain ne peut transmettre une information que par le choix de la boîte qu'il élimine. Avec trois boîtes, ce message est trop pauvre. Dès quatre boîtes, un seul message suffit à Sophie pour connaître soit la boîte du paquet, soit une boîte vide ; et s'installer sur une boîte vide oblige Germain à révéler la bonne à la fin.

## Going further

- Pour $n = 4$, écrivez toute la partie dans les quatre cas possibles et vérifiez que Sophie gagne à chaque fois.
- Dans les parties précédentes du sujet, Germain était l'adversaire de Sophie. S'il cache le paquet et élimine les boîtes au hasard, on montre que Sophie ne peut pas gagner avec une probabilité supérieure à $\frac{n-1}{n}$, et qu'elle atteint cette valeur en gardant sa boîte jusqu'au dernier tour puis en changeant.
