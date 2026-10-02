---
id: "13006"
title: "Cinq steaks en cinq minutes"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [organisation, construction, optimisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercices pour les élèves de collège et de seconde, exercice 2 ; corrigé 2017-09_coupe_automne_2012_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Pour préparer un steak, il faut le cuire une minute sur chacune de ses deux faces. On ne dispose que d'une seule poêle, dans laquelle on peut mettre deux steaks à la fois.

1. Comment préparer quatre steaks en quatre minutes ?
2. Comment préparer cinq steaks en cinq minutes ?

On ne tient pas compte du temps passé à retourner ou à changer les steaks.

## Hints

1. Pour quatre steaks, commence par en cuire deux complètement.
2. Pour cinq steaks, la méthode précédente donne six minutes : pendant la dernière, la poêle n'est qu'à moitié pleine. Il faut donc que la poêle soit pleine à chaque minute.
3. Rien n'oblige à cuire les deux faces d'un steak l'une juste après l'autre. Nomme $A_1$ et $A_2$ les deux faces du steak $A$, et ainsi de suite, puis cherche à cuire deux faces de deux steaks différents à chaque minute.

## Solution

**Quatre steaks.** Appelons-les $A$, $B$, $C$, $D$.

- Minute 1 : on cuit une face de $A$ et une face de $B$.
- Minute 2 : on les retourne. $A$ et $B$ sont prêts.
- Minutes 3 et 4 : on fait de même avec $C$ et $D$.

**Cinq steaks : pourquoi c'est plus délicat.** Avec la même méthode, on cuit $A$ et $B$ (deux minutes), puis $C$ et $D$ (deux minutes), puis $E$ tout seul (deux minutes) : cela fait six minutes. Le défaut est que pendant les deux dernières minutes, la poêle contient un seul steak.

Or il y a $5 \times 2 = 10$ faces à cuire, et la poêle en cuit $2$ par minute. Pour finir en $5$ minutes, il faut que la poêle soit **pleine à chaque minute**.

**Cinq steaks en cinq minutes.** Appelons $A_1$ et $A_2$ les deux faces du steak $A$, $B_1$ et $B_2$ celles de $B$, et ainsi de suite jusqu'à $E$. On cuit, minute par minute :

| Minute | Faces dans la poêle |
|---|---|
| 1 | $A_1$ et $B_1$ |
| 2 | $B_2$ et $C_1$ |
| 3 | $C_2$ et $D_1$ |
| 4 | $D_2$ et $E_1$ |
| 5 | $E_2$ et $A_2$ |

À chaque minute, les deux faces appartiennent à deux steaks différents, ce qui est bien possible dans la poêle. Chacune des dix faces est cuite exactement une minute.

**Conclusion.** Le steak $A$ attend simplement sur le côté entre la minute 1 et la minute 5. Au bout de cinq minutes, les cinq steaks sont cuits sur leurs deux faces.

## Going further

1. Combien de minutes faut-il au minimum pour cuire $n$ steaks avec cette poêle, pour $n \geqslant 2$ ? Et pour un seul steak ?
2. Même question avec une poêle qui contient trois steaks.
