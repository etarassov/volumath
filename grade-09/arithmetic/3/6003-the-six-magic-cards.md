---
id: "6003"
title: "Les six cartes qui devinent un nombre"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [puissances de deux, ecriture binaire, unicite, tour de magie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Good Things Come in Unexpected Packages » (Nathan Borchelt)"
  reference: "2018-Fall-MTCircular.pdf, p. 4-7 : le jeu « Mystery Calculator » trouvé dans une papillote de Noël"
  url: "https://mathcircles.org/activity/good-things-come-in-unexpected-packages/"
  original_language: "en"
  local_copy: "sources/originals/namc/2018-Fall-MTCircular.pdf"
---

## Statement

Voici six cartes. Sur chacune est écrite une liste de nombres compris entre $1$ et $63$.

**Carte 1** : 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63

**Carte 2** : 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23, 26, 27, 30, 31, 34, 35, 38, 39, 42, 43, 46, 47, 50, 51, 54, 55, 58, 59, 62, 63

**Carte 4** : 4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31, 36, 37, 38, 39, 44, 45, 46, 47, 52, 53, 54, 55, 60, 61, 62, 63

**Carte 8** : 8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 29, 30, 31, 40, 41, 42, 43, 44, 45, 46, 47, 56, 57, 58, 59, 60, 61, 62, 63

**Carte 16** : 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63

**Carte 32** : 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63

**Le tour.** Tu demandes à quelqu'un de choisir en secret un nombre entre $1$ et $63$. Tu lui montres les six cartes une à une et, pour chacune, tu lui demandes seulement : « ton nombre est-il sur cette carte ? » Tu additionnes ensuite les numéros des cartes où il a répondu oui, et tu annonces le total : c'est son nombre.

1. Ton camarade a choisi $45$. Sur quelles cartes va-t-il répondre oui ?
2. Quelqu'un répond oui aux cartes 2, 8 et 32, et non aux trois autres. Quel nombre a-t-il choisi ?
3. Expliquer pourquoi le tour marche à tous les coups.

## Hints

1. Les six numéros de cartes sont $1$, $2$, $4$, $8$, $16$, $32$. Que remarques-tu sur cette suite de nombres ?
2. Prends un nombre au hasard, par exemple $22$, regarde sur quelles cartes il se trouve, et additionne les numéros de ces cartes.
3. La vraie question est celle-ci : un nombre entre $1$ et $63$ peut-il toujours s'écrire comme une somme de nombres pris parmi $1$, $2$, $4$, $8$, $16$, $32$, chacun utilisé au plus une fois ?
4. Pour l'écrire : retire le plus grand de ces six nombres qui ne dépasse pas ton nombre, puis recommence avec ce qui reste.
5. Pour le tour, il faut aussi qu'il n'y ait **qu'une seule** façon de l'écrire. Combien y a-t-il de sommes possibles en tout, en comptant la somme vide ? Et combien de valeurs à atteindre ?

## Solution

### Question 1 : où se trouve 45 ?

On cherche $45$ dans les six listes. Il est sur la carte 1, la carte 4, la carte 8 et la carte 32, et sur aucune autre.

Et en effet
$$1 + 4 + 8 + 32 = 45.$$

### Question 2 : cartes 2, 8 et 32

Le nombre annoncé est
$$2 + 8 + 32 = 42.$$
On vérifie dans les listes : $42$ figure bien sur les cartes 2, 8 et 32, et sur aucune autre.

### Question 3 : pourquoi le tour marche

Les six numéros de cartes sont les puissances de $2$ :
$$1,\ 2,\ 4,\ 8,\ 16,\ 32.$$

**La règle cachée.** La carte numérotée $p$ contient exactement les nombres de $1$ à $63$ dont l'écriture comme somme de puissances de $2$ contient $p$. Par exemple $45 = 32 + 8 + 4 + 1$, donc $45$ figure sur les cartes 32, 8, 4 et 1, et sur aucune autre. C'est exactement ce qu'on a observé.

Si cette règle est vraie, le tour marche : les cartes où l'on répond oui sont les morceaux de la somme, et les additionner redonne le nombre. Il reste deux choses à établir.

**Premier point : tout nombre de $1$ à $63$ s'écrit ainsi.** On procède par retraits successifs. Partons de $n$, et retirons la plus grande puissance de $2$ (parmi les six) qui ne dépasse pas $n$. Sur un exemple, $n = 45$ :
$$45 - 32 = 13, \qquad 13 - 8 = 5, \qquad 5 - 4 = 1, \qquad 1 - 1 = 0.$$
On obtient $45 = 32 + 8 + 4 + 1$.

Cette méthode ne coince jamais et ne réutilise jamais deux fois la même puissance. En effet, si l'on vient de retirer $p$, le reste est strictement plus petit que $p$ : sinon le reste vaudrait au moins $p$, donc $n$ vaudrait au moins $2p$, et c'est $2p$ qu'il aurait fallu retirer au lieu de $p$. Comme le reste est chaque fois plus petit que la dernière puissance retirée, les puissances utilisées sont toutes différentes et de plus en plus petites, et le procédé s'arrête à $0$.

**Second point : il n'y a qu'une seule écriture.** Comptons. Choisir une somme, c'est décider pour chacune des six puissances si on la prend ou non : cela fait
$$2 \times 2 \times 2 \times 2 \times 2 \times 2 = 2^6 = 64$$
choix possibles. Ces $64$ sommes valent toutes entre $0$ (on ne prend rien) et
$$1 + 2 + 4 + 8 + 16 + 32 = 63$$
(on prend tout), ce qui fait aussi $64$ valeurs possibles, de $0$ à $63$.

Or le premier point dit que **chacune** de ces $64$ valeurs est atteinte au moins une fois. On a $64$ sommes qui couvrent $64$ valeurs : aucune valeur ne peut donc être atteinte deux fois, sinon une autre ne le serait pas du tout.

Chaque nombre de $1$ à $63$ a donc **une et une seule** écriture comme somme de puissances de $2$ distinctes, et les six réponses « oui » ou « non » la désignent sans ambiguïté. Le tour marche à tous les coups.

## Going further

1. Combien de nombres figurent sur chaque carte ? Pourquoi ce nombre est-il le même pour les six ?
2. Quel est le plus petit nombre de chaque carte ? Cela explique pourquoi on peut écrire le numéro de la carte dans son coin, sans rien ajouter au dos.
3. Avec sept cartes, jusqu'où pourrait-on aller ? Et avec $k$ cartes ?
4. Les auteurs de l'article se demandent ce que donnerait le même jeu en base $3$. Une carte ne suffit plus à répondre par oui ou non : il faudrait demander « ton nombre est-il sur la première liste, la deuxième, ou aucune ? ». Essaie de construire un tel jeu pour les nombres de $1$ à $26$.
