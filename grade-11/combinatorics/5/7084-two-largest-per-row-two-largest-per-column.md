---
id: "7084"
title: "Les deux plus grands de chaque ligne, les deux plus grands de chaque colonne"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [tableau, principe-extremal, raisonnement-par-labsurde, denombrement-double, ordre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des avancés"
  reference: "stage_junior_2012.pdf, « Mardi : combinatoire », TD du groupe des avancés, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Dans chaque case d'un tableau carré $n \times n$, avec $n \geq 2$, on écrit un nombre réel.

On constate deux choses :

- dans chaque **ligne**, la somme des deux plus grands nombres de cette ligne vaut toujours le même nombre $a$ ;
- dans chaque **colonne**, la somme des deux plus grands nombres de cette colonne vaut toujours le même nombre $b$.

Démontrer que $a = b$.

*Précision sur les égalités : « les deux plus grands » signifie qu'on range les $n$ nombres de la ligne du plus grand au plus petit, en répétant une valeur autant de fois qu'elle apparaît, et qu'on additionne les deux premiers.*

## Hints

1. Raisonne par l'absurde : suppose $a \neq b$. Les lignes et les colonnes jouent des rôles interchangeables, donc tu peux supposer en plus que $a > b$.
2. Appelle un nombre du tableau **gros** lorsqu'il est strictement plus grand que $\dfrac{b}{2}$. Regarde le plus grand nombre d'une ligne : montre qu'il est forcément gros. Combien de gros nombres y a-t-il donc au minimum dans le tableau ?
3. Regarde maintenant une colonne. Que se passerait-il si elle contenait deux gros nombres ? Combien de gros nombres y a-t-il donc au maximum dans le tableau ?
4. En comparant les deux comptes, tu obtiens la position exacte des gros nombres : il y en a exactement un par ligne, et exactement un par colonne.
5. Note $g$ le plus petit de tous les gros nombres. Dans sa ligne, $g$ est le plus grand nombre. Note $m$ le deuxième plus grand de cette ligne : $m + g = a$, et $m$ n'est pas gros.
6. Descends maintenant dans la colonne où se trouve $m$. Elle contient exactement un gros nombre $G$, qui en est donc le plus grand. Écris la relation qui donne $b$, puis compare chaque morceau avec $g$ et $m$.

## Solution

Raisonnons par l'absurde et supposons $a \neq b$. Échanger le rôle des lignes et celui des colonnes revient à échanger $a$ et $b$, donc on peut supposer

$$a > b.$$

**Un vocabulaire.** Disons qu'un nombre $x$ du tableau est **gros** lorsque

$$x > \frac{b}{2}.$$

**Chaque ligne contient au moins un gros nombre.** Dans une ligne donnée, notons $u \geq v$ ses deux plus grands nombres. Par hypothèse $u + v = a$. Comme $u \geq v$, on a $2u \geq u + v = a$, donc

$$u \geq \frac{a}{2} > \frac{b}{2},$$

la dernière inégalité venant de $a > b$. Le plus grand nombre de chaque ligne est donc gros. Il y a $n$ lignes, donc **au moins $n$ gros nombres** dans le tableau.

**Chaque colonne contient au plus un gros nombre.** Supposons qu'une colonne contienne deux gros nombres. Ses deux plus grands nombres sont alors tous les deux $> \dfrac{b}{2}$, et leur somme serait strictement supérieure à $b$. Or cette somme vaut exactement $b$. Contradiction. Il y a $n$ colonnes, donc **au plus $n$ gros nombres** dans le tableau.

**Bilan du comptage.** Il y a donc exactement $n$ gros nombres, répartis à raison d'un par ligne et d'un par colonne. En particulier, dans chaque ligne comme dans chaque colonne, le gros nombre est le plus grand de tous, puisque tous les autres sont $\leq \dfrac{b}{2}$.

**Le plus petit des gros nombres.** Notons $g$ le plus petit des $n$ gros nombres, et regardons la ligne où il se trouve. Comme $g$ y est le plus grand nombre, le deuxième plus grand de cette ligne, notons-le $m$, vérifie

$$m + g = a.$$

Ce nombre $m$ n'est pas gros, puisque sa ligne ne contient qu'un seul gros nombre, qui est $g$. Donc $m \leq \dfrac{b}{2}$.

**La colonne de $m$.** Cette colonne contient exactement un gros nombre ; notons-le $G$. Ce n'est pas $m$, qui n'est pas gros. Comme $G$ est le plus grand nombre de sa colonne, le deuxième plus grand de cette colonne, notons-le $m'$, vérifie

$$G + m' = b.$$

Comparons maintenant les quatre nombres $g$, $m$, $G$, $m'$ :

- $G \geq g$, car $G$ est un gros nombre et $g$ est le plus petit des gros nombres ;
- $m' \geq m$, car $m$ et $m'$ sont tous les deux dans cette colonne, $m \neq G$, et $m'$ est le plus grand de la colonne une fois $G$ mis de côté.

En additionnant ces deux inégalités :

$$b = G + m' \geq g + m = a.$$

On obtient $b \geq a$, ce qui contredit $a > b$.

**Conclusion.** L'hypothèse $a \neq b$ est intenable, donc

$$\boxed{a = b}.$$

## Going further

Le cœur de la preuve est un **double comptage** suivi d'un **choix extrémal**.

Le double comptage sert à localiser les gros nombres. On ne sait rien du tableau, mais deux bornes opposées sur le même effectif ("au moins $n$", "au plus $n$") forcent l'égalité, et l'égalité dans un comptage de ce genre dit toujours beaucoup plus que le comptage lui-même : ici elle donne exactement un gros nombre par ligne et par colonne, c'est-à-dire la structure d'une permutation.

Le choix extrémal sert ensuite à fermer le piège. En partant du **plus petit** des gros nombres, on s'assure que l'inégalité $G \geq g$ va dans le bon sens. Si on était parti d'un gros nombre quelconque, la comparaison n'aurait rien donné.

Pour voir que l'énoncé n'est pas creux, construis un tableau $3 \times 3$ qui vérifie vraiment les hypothèses. Le plus simple : écris le même nombre $c$ dans les neuf cases. Alors $a = b = 2c$. Un exemple moins plat : place $1$ sur la diagonale et $0$ partout ailleurs, ce qui donne $a = b = 1$.
