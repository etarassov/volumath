---
id: "5307"
title: "Le premier qui dépasse 1000"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie-gagnante, raisonnement-a-rebours, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 9 ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Alice annonce un entier compris entre $2$ et $9$. Bob le multiplie par un entier de son choix compris entre $2$ et $9$ et annonce le résultat. Alice multiplie à son tour ce résultat par un entier compris entre $2$ et $9$, et ainsi de suite.

Le premier qui annonce un nombre **strictement plus grand que $1000$** a gagné.

Lequel des deux joueurs a une stratégie gagnante ? Que doit annoncer Alice au premier coup ?

## Hints

1. Partir de la fin. À partir de quels nombres le joueur dont c'est le tour gagne-t-il immédiatement, en un seul coup ?
2. Un joueur gagne d'un coup dès que le nombre annoncé $N$ vérifie $9N > 1000$. Quel est le plus petit entier $N$ qui convient ?
3. Continuer à reculons : quels sont les nombres à partir desquels, au contraire, on est **obligé** d'offrir la victoire à l'adversaire, c'est-à-dire ceux dont tous les multiples par $2, \ldots, 9$ sont dans la zone gagnante précédente ?
4. En remontant ainsi, on découpe les entiers en bandes, gagnantes et perdantes, en alternance. Il n'y en a que quatre à trouver avant d'arriver aux nombres de $2$ à $9$.

## Solution

**Réponse : Alice gagne. Elle doit annoncer $4$, $5$ ou $6$ au premier coup.**

Pour analyser ce jeu, on part de la fin et on remonte. Un nombre annoncé est dit **perdant** si le joueur qui doit le multiplier est condamné, et **gagnant** s'il peut s'en sortir.

### Bande 1 : les nombres supérieurs ou égaux à 112 sont gagnants

Si le nombre annoncé est $N \geqslant 112$, celui qui doit jouer multiplie par $9$ :
$$9N \geqslant 9 \times 112 = 1008 > 1000 .$$
Il gagne sur-le-champ.

Le nombre $112$ est bien le seuil, car $9 \times 111 = 999$, qui ne dépasse pas $1000$.

### Bande 2 : les nombres de 56 à 111 sont perdants

Si le nombre annoncé est $N$ avec $56 \leqslant N \leqslant 111$, tout coup le multiplie par un entier au moins égal à $2$, donc donne un résultat
$$kN \geqslant 2 \times 56 = 112 .$$

L'adversaire reçoit donc un nombre de la bande 1 et gagne. Et le joueur ne peut pas gagner lui-même tout de suite, car $9 \times 111 = 999 \leqslant 1000$.

Autrement dit : **quand on reçoit un nombre entre $56$ et $111$, on a perdu.**

### Bande 3 : les nombres de 7 à 55 sont gagnants

Soit $N$ avec $7 \leqslant N \leqslant 55$. Montrons qu'on peut toujours atterrir dans la bande $[56 ; 111]$.

Prenons pour $k$ le plus petit entier tel que $kN \geqslant 56$. Alors :

- $k \geqslant 2$, car $N \leqslant 55 < 56$ ;
- $k \leqslant 8$, car $8N \geqslant 8 \times 7 = 56$ ;
- et surtout $kN \leqslant 111$ : en effet $(k-1)N < 56$ par minimalité de $k$, donc
$$kN = (k-1)N + N < 56 + 55 = 111 .$$

Le coup $k$ est donc autorisé et envoie l'adversaire dans la bande perdante. **On gagne.**

### Bande 4 : les nombres 4, 5 et 6 sont perdants

Si le nombre annoncé est $4$, $5$ ou $6$, tout coup donne un résultat compris entre
$$2 \times 4 = 8 \qquad \text{et} \qquad 9 \times 6 = 54 ,$$
donc un nombre de la bande $[7 ; 55]$, qui est gagnante pour l'adversaire. **On a perdu.**

### Le premier coup d'Alice

Alice choisit le nombre de départ entre $2$ et $9$, et c'est **Bob** qui devra le multiplier. Elle doit donc lui annoncer un nombre perdant :

- $2$ et $3$ ne conviennent pas : ils sont gagnants pour Bob, qui répondrait $2 \times 2 = 4$ ou $2 \times 3 = 6$ et renverrait le nombre perdant à Alice ;
- $7$, $8$ et $9$ ne conviennent pas non plus : ils sont dans la bande gagnante $[7 ; 55]$ ;
- **$4$, $5$ et $6$ conviennent.**

**Alice annonce donc $4$, $5$ ou $6$, et elle gagne.**

### Une partie complète

Alice annonce $5$. Bob multiplie par $7$ et annonce $35$. Alice cherche à tomber entre $56$ et $111$ : elle multiplie par $2$ et annonce $70$. Bob est coincé ; il multiplie par $3$ et annonce $210$. Alice multiplie par $9$ :
$$210 \times 9 = 1890 > 1000 .$$
Alice gagne.

## Going further

1. Refaire l'étude avec un autre objectif : le premier qui dépasse $100$, puis le premier qui dépasse $10\,000$. Les bandes se construisent de la même façon ; le premier joueur gagne-t-il toujours ?
2. Et si le premier qui dépasse $1000$ avait **perdu** ?
