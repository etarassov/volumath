---
id: "5412"
title: "Les jours fériés de la république des Kangourous"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, multiples, parite, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « Hopping Around », problème 4 (d'après un problème du concours Kangourou)"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

Dans la république des Kangourous, chaque mois compte $40$ jours, numérotés de $1$ à $40$.

Un jour est **férié** si son numéro est un multiple de $6$. Un jour est férié aussi si son numéro est un nombre premier. Tous les autres jours sont **travaillés**.

Combien de fois, dans un mois, arrive-t-il qu'un jour travaillé soit coincé entre deux jours fériés, c'est-à-dire que le jour précédent et le jour suivant soient tous les deux fériés ?

## Hints

1. Écrivez la liste des $40$ numéros et entourez les jours fériés. C'est un peu long, mais cela répond à la question.
2. Pour comprendre le résultat, essayez plutôt de raisonner. Si le jour travaillé porte un numéro impair, que peut-on dire de ses deux voisins ?
3. Un jour férié de numéro pair, c'est quoi exactement ? Il n'y a pas beaucoup de possibilités.
4. Si le jour travaillé porte un numéro pair, ses deux voisins sont impairs. Un jour férié de numéro impair, c'est forcément quoi ?
5. Deux nombres premiers qui ne diffèrent que de $2$ : dressez la liste de toutes ces paires jusqu'à $40$.

## Solution

### La réponse par la liste

Les jours fériés sont :

- les multiples de $6$ : $6$, $12$, $18$, $24$, $30$, $36$ ;
- les nombres premiers : $2$, $3$, $5$, $7$, $11$, $13$, $17$, $19$, $23$, $29$, $31$, $37$.

En parcourant les jours travaillés et en regardant leurs voisins, on trouve un seul cas : le jour $4$, encadré par le $3$ et le $5$, qui sont premiers, alors que $4$ n'est ni premier ni multiple de $6$.

La réponse est donc : **une seule fois**. Mais pourquoi si peu ?

### La raison

Soit $n$ un jour travaillé coincé entre deux jours fériés $n-1$ et $n+1$.

**Le numéro $n$ ne peut pas être impair.** Si $n$ était impair, $n-1$ et $n+1$ seraient pairs. Or un jour férié de numéro pair est soit le nombre premier $2$, soit un multiple de $6$. Deux multiples de $6$ diffèrent d'au moins $6$, jamais de $2$ ; il faudrait donc que l'un des deux voisins soit $2$, c'est-à-dire $n - 1 = 2$ et $n+1 = 4$. Mais $4$ n'est ni premier, ni multiple de $6$ : ce n'est pas un jour férié. Impossible.

**Donc $n$ est pair**, et ses deux voisins $n-1$ et $n+1$ sont impairs. Un jour férié impair n'est jamais un multiple de $6$ (les multiples de $6$ sont pairs) : c'est donc un nombre premier. Autrement dit, $n-1$ et $n+1$ sont deux nombres premiers qui ne diffèrent que de $2$.

Voici toutes ces paires jusqu'à $40$, avec le nombre $n$ coincé entre les deux :

| paire | $3$ et $5$ | $5$ et $7$ | $11$ et $13$ | $17$ et $19$ | $29$ et $31$ |
|---|---|---|---|---|---|
| $n$ | $4$ | $6$ | $12$ | $18$ | $30$ |

Il reste à vérifier que $n$ est bien un jour **travaillé**. Or $6$, $12$, $18$ et $30$ sont des multiples de $6$ : ce sont des jours fériés, ils ne conviennent pas. Seul $n = 4$ survit.

**Conclusion.** Cela n'arrive qu'**une seule fois** par mois, le jour $4$.

**Ce qu'il faut retenir.** Le tableau montre un fait joli et général : à part pour la paire $3$ et $5$, le nombre coincé entre deux nombres premiers jumeaux est toujours un multiple de $6$. En voici la raison. Soient $p$ et $p+2$ deux nombres premiers plus grands que $3$. Parmi les trois nombres consécutifs $p$, $p+1$, $p+2$, il y a toujours un multiple de $3$ ; ce n'est ni $p$ ni $p+2$, qui sont premiers et plus grands que $3$ ; donc c'est $p+1$. Et $p+1$ est pair, puisque $p$ est premier et plus grand que $2$, donc impair. Étant à la fois multiple de $2$ et de $3$, le nombre $p+1$ est un multiple de $6$.

C'est pour cela que la règle « férié si multiple de $6$ » avale presque tous les candidats.

## Going further

1. Et si le mois comptait $100$ jours ? Combien de fois cela arriverait-il ?
2. On change la règle : férié si le numéro est premier, ou multiple de $4$. Combien de jours travaillés isolés dans un mois de $40$ jours ?
3. Trouvez trois jours travaillés consécutifs encadrés par deux jours fériés.
