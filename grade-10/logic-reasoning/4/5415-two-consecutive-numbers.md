---
id: "5415"
title: "Deux nombres consécutifs"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [information, deduction, dialogue, elimination]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « It's All Logical », problème 4"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

Léo annonce à Marie et à Jérôme qu'il a choisi deux entiers **consécutifs** compris entre $1$ et $10$. Il souffle l'un des deux nombres à l'oreille de Marie, et l'autre à l'oreille de Jérôme. Chacun connaît donc son propre nombre, mais pas celui de l'autre.

S'ensuit ce dialogue, que tous les deux entendent :

> **Marie** : je ne connais pas ton nombre.
>
> **Jérôme** : je ne connais pas le tien non plus.
>
> **Marie** : ah, maintenant je connais le tien.

Marie et Jérôme raisonnent tous les deux parfaitement, et disent la vérité.

Quels nombres Marie peut-elle avoir en main ? Quelle est la somme de ces nombres possibles ?

## Hints

1. Les deux nombres sont deux entiers consécutifs entre $1$ et $10$ : faites la liste de toutes les paires possibles.
2. Si Marie avait le nombre $1$, saurait-elle tout de suite ce qu'a Jérôme ? Et si elle avait $10$ ?
3. Chaque phrase du dialogue est une information : elle élimine des possibilités pour tout le monde, y compris pour celui qui parle.
4. Après la première phrase, Jérôme sait que le nombre de Marie n'est ni $1$ ni $10$. Quels nombres Jérôme peut-il alors avoir sans savoir ce qu'a Marie ?
5. Pour la troisième phrase : Marie connaît son nombre $m$ et sait que Jérôme a $m-1$ ou $m+1$. Quand est-elle capable de trancher ?

## Solution

Les deux nombres forment une des paires

$$(1,2), \ (2,3), \ (3,4), \ (4,5), \ (5,6), \ (6,7), \ (7,8), \ (8,9), \ (9,10) .$$

Celui qui détient le nombre $n$ sait que l'autre détient $n - 1$ ou $n + 1$ — sauf aux extrémités, où il n'y a pas le choix.

### Première phrase : Marie ne sait pas

Si Marie avait $1$, le nombre de Jérôme serait forcément $2$, et elle le saurait. Si elle avait $10$, ce serait forcément $9$. Comme elle déclare ne pas savoir, son nombre $m$ vérifie

$$2 \le m \le 9 .$$

Cette information est maintenant connue de Jérôme aussi.

### Deuxième phrase : Jérôme ne sait pas non plus

Notons $j$ le nombre de Jérôme. Pour la même raison que ci-dessus, $j$ n'est ni $1$ ni $10$. Mais Jérôme en sait davantage : il a entendu Marie.

- Si Jérôme avait $2$, Marie aurait $1$ ou $3$. Or elle n'a pas $1$ d'après la première phrase : Jérôme saurait donc qu'elle a $3$.
- Si Jérôme avait $9$, Marie aurait $8$ ou $10$. Or elle n'a pas $10$ : Jérôme saurait qu'elle a $8$.

Comme Jérôme déclare ne pas savoir, son nombre vérifie

$$3 \le j \le 8 .$$

### Troisième phrase : Marie sait

Marie a le nombre $m$, et elle sait maintenant que Jérôme a $m - 1$ ou $m + 1$, avec $3 \le j \le 8$. Elle peut conclure exactement quand **une seule** des deux valeurs $m-1$ et $m+1$ tombe dans l'intervalle de $3$ à $8$.

| $m$ | $m-1$ | $m+1$ | dans $[3\,;8]$ ? | Marie conclut-elle ? |
|---|---|---|---|---|
| $2$ | $1$ | $3$ | seulement $3$ | oui, Jérôme a $3$ |
| $3$ | $2$ | $4$ | seulement $4$ | oui, Jérôme a $4$ |
| $4$ | $3$ | $5$ | les deux | non |
| $5$ | $4$ | $6$ | les deux | non |
| $6$ | $5$ | $7$ | les deux | non |
| $7$ | $6$ | $8$ | les deux | non |
| $8$ | $7$ | $9$ | seulement $7$ | oui, Jérôme a $7$ |
| $9$ | $8$ | $10$ | seulement $8$ | oui, Jérôme a $8$ |

Les nombres possibles pour Marie sont donc

$$2, \quad 3, \quad 8, \quad 9 ,$$

et il faut vérifier que chacun est bien compatible avec tout le dialogue : pour $m = 2$ la paire est $(2,3)$, pour $m=3$ elle est $(3,4)$, pour $m = 8$ elle est $(8,7)$ et pour $m = 9$ elle est $(9,8)$. Dans les quatre cas, le nombre de Jérôme est entre $3$ et $8$, donc les trois phrases sont bien vraies.

**Conclusion.** Marie peut avoir $2$, $3$, $8$ ou $9$, et la somme de ces nombres vaut

$$2 + 3 + 8 + 9 = 22 .$$

**Ce qu'il faut retenir.** Une phrase comme « je ne sais pas » n'a l'air de rien, mais elle transporte de l'information : elle dit à l'autre ce que celui qui parle n'a pas. Deux phrases de ce genre suffisent ici à réduire les possibilités au point que Marie peut trancher.

## Going further

1. Et si Jérôme avait parlé le premier ? Quels nombres pourrait-il alors annoncer connaître ?
2. Reprenez le problème avec des entiers consécutifs entre $1$ et $100$. Marie a-t-elle plus de choix ?
3. Le dialogue continue : après la troisième phrase, Jérôme dit à son tour « alors je connais ton nombre ». Cela apporte-t-il quelque chose ?
