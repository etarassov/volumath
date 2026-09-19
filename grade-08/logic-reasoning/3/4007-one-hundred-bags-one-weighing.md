---
id: "4007"
title: "Cent sacs et une seule pesée"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [pesee, strategie, numerotation, masse]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2B, Permutations (Part 1)"
  reference: "Handout-2484-2196.pdf, exercice d'échauffement (sans corrigé dans le fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2484-2196.pdf"
---

## Statement

On dispose de $100$ sacs, numérotés de $1$ à $100$, contenant chacun $100$ pièces.

Dans $99$ de ces sacs, chaque pièce pèse exactement $10$ g. Dans un seul sac, dont on ignore
le numéro, chaque pièce pèse $\text{10,1}$ g.

On a une balance électronique qui affiche la masse exacte de ce qu'on pose dessus, mais sa
pile est presque vide : **on ne peut s'en servir qu'une seule fois**.

Comment retrouver à coup sûr le numéro du sac aux pièces plus lourdes ?

## Hints

1. Si tu poses un sac entier sur la balance, tu n'apprends qu'une chose : ce sac est le bon, ou il ne l'est pas. En une seule pesée, c'est trop peu. Rien n'oblige à peser des sacs entiers.
2. Essaie d'abord avec $3$ sacs au lieu de $100$. Que peux-tu poser sur la balance pour que le résultat te dise lequel des trois est le bon ?
3. Prends un nombre de pièces différent dans chaque sac, et arrange-toi pour que chaque sac laisse une trace différente sur l'affichage.
4. Prends $1$ pièce dans le sac n° $1$, $2$ pièces dans le sac n° $2$, ..., $100$ pièces dans le sac n° $100$.

## Solution

**La stratégie.**

On prend $1$ pièce dans le sac n° $1$, $2$ pièces dans le sac n° $2$, $3$ pièces dans le sac
n° $3$, et ainsi de suite jusqu'à $100$ pièces dans le sac n° $100$. C'est possible, car
chaque sac contient $100$ pièces. Puis on pose **tout ce tas d'un coup** sur la balance :
c'est l'unique pesée.

**Combien de pièces au total ?**

$$1 + 2 + 3 + \cdots + 100 = \frac{100 \times 101}{2} = 5050 \text{ pièces}.$$

**Ce qu'affiche la balance.**

Si toutes les pièces pesaient $10$ g, la balance afficherait

$$5050 \times 10 = 50\,500 \text{ g}.$$

Mais le sac lourd, disons le sac n° $k$, a fourni $k$ pièces, et chacune de ces $k$ pièces
pèse $\text{0,1}$ g de plus que prévu. L'affichage est donc

$$50\,500 + \text{0,1} \times k \quad \text{grammes}.$$

**Conclure.**

Il suffit de retrancher $50\,500$ g de l'affichage, puis de multiplier l'excédent par $10$ :
on obtient $k$, le numéro du sac cherché.

Par exemple, si la balance affiche $\text{50 503,7}$ g, l'excédent vaut $\text{3,7}$ g et le
sac lourd est le sac n° $37$.

Cela fonctionne toujours, car les $100$ excédents possibles

$$\text{0,1} \ \text{g}, \quad \text{0,2} \ \text{g}, \quad \ldots, \quad \text{10} \ \text{g}$$

sont tous différents : deux sacs différents ne peuvent pas donner le même affichage.

**Réponse : prendre $k$ pièces dans le sac n° $k$ pour chaque $k$, tout peser d'un coup, et
lire le numéro du sac dans l'excédent de masse.**

## Going further

La même idée fonctionne si l'on ne sait même pas combien de sacs sont lourds : en prenant
$1, 2, 4, 8, 16, \ldots$ pièces (les puissances de $2$) dans les sacs successifs, l'excédent
de masse se décompose d'une seule façon en somme de puissances de $2$, ce qui désigne
exactement l'ensemble des sacs lourds. C'est l'écriture binaire d'un nombre.
