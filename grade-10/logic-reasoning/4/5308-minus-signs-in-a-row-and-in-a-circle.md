---
id: "5308"
title: "Des moins en ligne, des moins en cercle"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie gagnante, symetrie, strategie de copie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 11 (a) et (b) ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

On écrit $n$ signes « $-$ » à la suite sur une feuille.

Chacun à son tour, un joueur choisit l'un des deux coups suivants :

- transformer **un** signe « $-$ » en « $+$ » ;
- transformer **deux signes « $-$ » voisins** en deux « $+$ ».

Un signe « $+$ » ne redevient jamais « $-$ ». Le joueur qui transforme le **dernier** signe « $-$ » a gagné. Alice commence.

1. Les $n$ signes sont écrits **en ligne**. Lequel des deux joueurs a une stratégie gagnante ?
2. Les $n$ signes sont maintenant écrits **en cercle**, avec $n \geqslant 3$ : chaque signe a deux voisins, et le premier est voisin du dernier. Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Jouer la version en ligne pour $n = 1$, $2$, $3$, $4$, $5$. Le premier joueur gagne-t-il à chaque fois ?
2. Après un coup, la ligne est coupée en deux morceaux séparés par au moins un « $+$ ». Un coup ne peut jamais toucher deux morceaux à la fois : pourquoi ?
3. Dans la version en ligne, le premier joueur peut jouer **au milieu** pour laisser deux morceaux identiques. Comment doit-il jouer ensuite ?
4. Pour le cercle : après le tout premier coup, à quoi ressemble ce qui reste ? Est-ce encore un cercle ?

## Solution

### Question 1 : en ligne, le premier joueur gagne, quel que soit $n$

**La stratégie d'Alice : couper la ligne en deux morceaux identiques, puis copier.**

Au premier coup, Alice joue au milieu :

- si $n$ est **impair**, elle transforme le signe du milieu ; il reste deux morceaux de $\dfrac{n-1}{2}$ signes « $-$ » chacun ;
- si $n$ est **pair**, elle transforme les **deux** signes du milieu ; il reste deux morceaux de $\dfrac{n-2}{2}$ signes « $-$ » chacun.

Dans les deux cas, la figure est symétrique : deux paquets de « $-$ » de même longueur, séparés par des « $+$ ».

Ensuite, **Alice répond à chaque coup de Bob par le coup symétrique dans l'autre paquet.**

Pourquoi est-ce toujours possible ?

- Un coup ne peut jamais toucher deux paquets à la fois. Les deux signes d'un coup double doivent être voisins et tous les deux « $-$ » ; or les paquets sont séparés par au moins un « $+$ ».
- Juste avant chaque coup de Bob, les deux paquets sont dans **exactement le même état** (c'est vrai après le premier coup d'Alice, et cela le reste puisque Alice recopie). Donc si Bob peut jouer un coup dans un paquet, la place symétrique dans l'autre paquet porte les mêmes signes « $-$ » : Alice peut recopier son coup.

Alice a donc toujours une réponse. Comme le nombre de « $-$ » diminue à chaque coup, la partie s'arrête, et elle ne peut s'arrêter qu'après un coup d'Alice : **c'est Alice qui transforme le dernier « $-$ »**.

Les petits cas rentrent dans ce cadre : pour $n = 1$, Alice transforme l'unique signe ; pour $n = 2$, elle transforme les deux d'un coup. Dans les deux cas elle laisse deux paquets vides.

**Conclusion : en ligne, Alice gagne pour tout $n \geqslant 1$.**

### Question 2 : en cercle, c'est le second joueur qui gagne

**Réponse : pour $n \geqslant 3$, c'est Bob qui gagne.**

Regardons ce qui reste après le tout premier coup d'Alice, qui est forcément un coup sur le cercle :

- si elle transforme un seul signe, les « $-$ » restants forment **un seul arc** de $n-1$ signes consécutifs ;
- si elle transforme deux signes voisins, les « $-$ » restants forment **un seul arc** de $n-2$ signes consécutifs.

Dans les deux cas, comme $n \geqslant 3$, il reste au moins un « $-$ », et tous les « $-$ » restants sont côte à côte, bornés des deux côtés par des « $+$ ».

Or un tel arc se joue **exactement comme une ligne** : deux signes de l'arc sont voisins sur le cercle si et seulement s'ils sont voisins dans la ligne correspondante, et le « $+$ » posé par Alice empêche tout coup double de passer par-dessus.

Bob se retrouve donc dans la situation du **premier joueur d'une partie en ligne**, avec $n-1$ ou $n-2$ signes. D'après la question 1, il gagne : il coupe l'arc en deux morceaux identiques, puis il copie tous les coups d'Alice.

**Conclusion : en cercle et pour $n \geqslant 3$, Bob gagne.**

Le cercle renverse donc le résultat : alors que la ligne est toujours favorable à celui qui commence, le cercle l'est toujours à celui qui suit. La raison est simple à retenir : sur un cercle, il n'y a pas de milieu, et le premier coup fabrique lui-même la ligne que l'adversaire attendait.

(Pour $n = 1$ et $n = 2$, le cercle n'a pas vraiment de sens, et de toute façon Alice gagne immédiatement.)

## Going further

1. On change la règle : le joueur qui transforme le **dernier** « $-$ » a perdu. Qui gagne alors, en ligne ?
2. On autorise maintenant à transformer **un, deux ou trois** signes « $-$ » voisins. La stratégie de copie fonctionne-t-elle encore ?
3. Le premier joueur gagne la version en ligne sans jamais avoir à regarder $n$ de près. Retrouve-t-on ce phénomène dans d'autres jeux, comme celui des pièces posées sur une table ronde ?
