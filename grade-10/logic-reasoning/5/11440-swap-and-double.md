---
id: "11440"
title: "Échanger et doubler"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [processus, terminaison, plus-petit-contre-exemple, puissances-de-2, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Juniors, exercice 9 ; corrigé 2023-03_corrige-envoi-4.pdf ; l'énoncé ne dit pas le signe des nombres, le corrigé suppose sans le dire qu'ils sont strictement positifs, les autres signes sont traités dans « Pour aller plus loin »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Plusieurs nombres **strictement positifs** sont écrits sur une ligne. Une **opération** consiste à
choisir deux nombres voisins tels que celui de gauche soit strictement plus grand que celui de
droite, à les échanger, puis à multiplier chacun des deux par $2$.

Par exemple, sur la ligne $5, \ 3, \ 4$, on peut choisir $5$ et $3$, et l'on obtient la ligne
$6, \ 10, \ 4$.

Montrer qu'on ne peut faire qu'un nombre fini d'opérations : quels que soient les choix, on finit
toujours par arriver à une ligne où aucune opération n'est possible.

## Hints

1. Écris chaque nombre sur une carte : une opération échange deux cartes voisines et double les
   nombres qu'elles portent. Regarde la carte qui porte, au départ, le plus petit nombre. Peut-elle
   un jour se déplacer vers la droite ?
2. Si une carte $Y$ se trouve juste à droite de la plus petite carte $M$, compare le nombre de fois
   où $Y$ a été doublée avec le nombre de fois où $M$ l'a été. Sépare les cas où $Y$ était au départ à
   droite ou à gauche de $M$.
3. Si $M$ ne va que vers la gauche, elle finit par s'arrêter. Que se passe-t-il ensuite entre les
   cartes de sa gauche et celles de sa droite ? Raisonne sur une ligne qui aurait le moins de nombres
   possible parmi celles qui permettent une infinité d'opérations.

## Solution

Écrivons chaque nombre sur une carte. Une opération échange deux cartes voisines et double les deux
nombres qu'elles portent. Les positions sont numérotées $1, 2, 3, \ldots$ de gauche à droite.

Deux remarques simples serviront plusieurs fois.

- Une carte qui participe à une opération change de place d'une position exactement. Donc une
  carte qui s'est déplacée de $p$ positions au total (vers la gauche, disons) a participé à **au
  moins $p$ opérations**, et son nombre a été doublé au moins $p$ fois.
- Juste après une opération, la carte de gauche porte le double du plus petit des deux nombres, et
  celle de droite le double du plus grand. Juste après, la carte de gauche porte donc **le plus petit
  nombre** des deux.

**Étape 1 : la plus petite carte ne va jamais vers la droite.** Soit $M$ une carte qui porte, au
départ, le plus petit des nombres (s'il y en a plusieurs, on en prend une). Notons $m$ ce nombre et
$i$ sa position de départ.

Supposons que $M$ aille un jour vers la droite, et regardons la **première** fois. Jusque-là, $M$
n'est allée que vers la gauche, disons $p$ fois. Elle est en position $i - p$ et porte $m \times 2^p$.
Soit $Y$ la carte juste à sa droite, en position $i - p + 1$. Pour que l'opération soit permise, il
faut que $Y$ porte un nombre **strictement plus petit** que $m \times 2^p$. Montrons que c'est
impossible.

*Cas 1 : au départ, $Y$ était à droite de $M$*, en une position $j \geqslant i + 1$. Elle est
maintenant en position $i - p + 1$, donc elle s'est déplacée vers la gauche d'au moins
$j - (i - p + 1) \geqslant p$ positions. Son nombre de départ $y$ a donc été doublé au moins $p$
fois. Comme $y \geqslant m$ (car $m$ était le plus petit) et que les nombres sont positifs, $Y$ porte
au moins $y \times 2^p \geqslant m \times 2^p$. Ce n'est pas strictement plus petit.

*Cas 2 : au départ, $Y$ était à gauche de $M$.* Elle est maintenant à sa droite. Or deux cartes ne
changent d'ordre que lorsqu'on les échange l'une avec l'autre : $M$ et $Y$ ont donc été échangées, et
lors de cet échange $M$ est passée à gauche de $Y$. Juste après, $M$ était en une position $q$ et
portait un nombre $u$, $Y$ était en position $q + 1$ et portait un nombre $v$, avec $u < v$ d'après
la seconde remarque.

Depuis, $M$ est allée $r$ fois vers la gauche (et jamais vers la droite) : elle est en position
$q - r$ et porte $u \times 2^r$. La carte $Y$ est passée de la position $q + 1$ à la position
$q - r + 1$ : elle s'est déplacée de $r$ positions vers la gauche, donc elle porte au moins
$v \times 2^r$, qui est strictement plus grand que $u \times 2^r$. L'opération n'est pas permise.

Dans les deux cas, on obtient une contradiction : **$M$ ne va jamais vers la droite.**

**Étape 2 : la plus petite carte finit par ne plus bouger.** Chaque opération qui concerne $M$ la
déplace d'une position vers la gauche. Partie de la position $i$, elle ne peut le faire que $i - 1$
fois au plus. Après un certain nombre d'opérations, plus aucune opération ne concerne $M$.

**Étape 3 : on coupe la ligne en deux.** Supposons qu'il existe des lignes de nombres strictement
positifs sur lesquelles on peut faire une suite **infinie** d'opérations, et prenons-en une qui a le
moins de nombres possible, disons $n$ nombres.

Faisons une suite infinie d'opérations sur cette ligne. D'après l'étape 2, à partir d'un certain
moment, la carte $M$ ne bouge plus. Ensuite, aucune carte ne peut passer de l'autre côté de $M$, et
les opérations se font soit entre deux cartes à gauche de $M$, soit entre deux cartes à droite de $M$.
La suite infinie qui reste contient donc une infinité d'opérations à gauche de $M$, ou une infinité à
droite.

Disons que c'est à gauche. Qu'une opération soit permise ne dépend que des deux cartes concernées.
Les cartes à gauche de $M$, considérées seules, forment donc une ligne de nombres strictement
positifs sur laquelle on peut faire une suite infinie d'opérations. Mais cette ligne a au plus
$n - 1$ nombres, puisque $M$ n'en fait pas partie. Cela contredit le choix de $n$. Le cas de la
droite est identique.

**Conclusion.** Aucune ligne de nombres strictement positifs ne permet une infinité d'opérations :
quels que soient les choix de Thanima, elle finit toujours par être bloquée.

## Going further

L'énoncé d'origine ne précise pas que les nombres sont positifs. Le résultat reste vrai avec des
nombres quelconques.

- Un nombre garde toujours son signe, puisqu'on le multiplie par $2$. Une opération ne peut faire
  passer à gauche que le plus petit des deux nombres. Elle ne met donc jamais un nombre positif à
  gauche d'un nombre négatif ou nul, ni un zéro à gauche d'un négatif. Le nombre de couples « mal
  rangés selon le signe » ne peut donc que diminuer, et les opérations entre nombres de signes
  différents sont en nombre fini.
- Deux zéros ne s'échangent jamais.
- Entre deux nombres négatifs, on se ramène au cas positif en changeant tous les signes et en lisant
  la ligne de droite à gauche.

Après la dernière opération entre signes différents, la ligne est coupée en blocs de même signe qui
évoluent séparément, et chaque bloc s'arrête d'après le cas positif.
