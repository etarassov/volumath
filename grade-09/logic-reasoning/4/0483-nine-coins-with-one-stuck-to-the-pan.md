---
id: "0483"
title: "Neuf pièces et une pièce collée"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [pesees, balance, strategie, fausse-piece, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 13, задача 4, с. 56–57"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

On dispose de neuf pièces de monnaie d'aspect identique. L'une d'elles est fausse : elle est
un peu plus légère que les autres, qui pèsent toutes exactement le même poids.

Pour les comparer, on n'a qu'une balance à deux plateaux, sans aucune masse marquée. Elle
indique seulement lequel des deux plateaux est le plus léger, ou bien que les deux plateaux
s'équilibrent.

Ennui supplémentaire : l'une des neuf pièces est restée collée au plateau de droite, et on n'a
pas le temps de la décoller. On ne sait pas si c'est la fausse ou une vraie, et elle participe
à toutes les pesées, du côté droit.

Comment trouver la pièce fausse en deux pesées ?

## Hints

1. Une pesée a trois résultats possibles : plateau gauche plus léger, plateau droit plus
   léger, équilibre. Avec deux pesées, combien de situations différentes peux-tu au maximum
   distinguer ? Compare ce nombre au nombre de pièces.
2. Il n'y a donc aucune marge : chaque pesée doit diviser le nombre de suspects par trois
   exactement. La première pesée oppose trois pièces à trois pièces.
3. La pièce collée compte dans son plateau : mets-la dans le groupe de droite avec deux autres
   pièces, et pose trois pièces sur le plateau de gauche. Trois pièces restent sur la table.
4. Pour la deuxième pesée il ne te reste que trois suspectes : pose-en une à gauche, une à
   droite, et complète chaque plateau avec des pièces dont tu sais déjà qu'elles sont vraies.
   La pièce collée peut très bien servir de simple lest.

## Solution

**Pourquoi on peut espérer y arriver en deux pesées.**

Une pesée a trois résultats possibles. Deux pesées permettent donc de distinguer au plus
$3 \times 3 = 9$ situations, et il y a justement neuf pièces suspectes. Il n'y a aucune marge :
chaque pesée doit faire passer le nombre de suspectes de neuf à trois, puis de trois à une.
C'est ce qui guide toute la construction.

**Les notations.** Numérotons les pièces de $1$ à $9$, la pièce collée portant le numéro $9$.
Elle est sur le plateau de droite. Rappelons que la fausse est plus légère : le plateau qui la
contient est le plateau le plus léger.

### Première pesée

À gauche : les pièces $1$, $2$, $3$. À droite : les pièces $7$, $8$ et la pièce collée $9$.

Trois pièces de chaque côté ; les pièces $4$, $5$, $6$ restent sur la table. Trois cas.

### Cas 1 : les deux plateaux s'équilibrent

Si l'une des six pièces posées était la fausse, son plateau serait plus léger. L'équilibre
prouve donc qu'elles sont toutes vraies : la fausse est parmi $4$, $5$, $6$, et les pièces
$1$, $2$, $3$, $7$, $8$, $9$ sont vraies.

**Deuxième pesée.** À gauche : $4$ et $1$. À droite : $5$ et la pièce collée $9$.

Les pièces $1$ et $9$ sont vraies : elles se compensent, et seules $4$ et $5$ peuvent faire
pencher la balance.

- équilibre : $4$ et $5$ sont vraies, donc **la fausse est la pièce $6$** ;
- plateau gauche plus léger : **la fausse est la pièce $4$** ;
- plateau droit plus léger : **la fausse est la pièce $5$**.

### Cas 2 : le plateau de droite est plus léger

La fausse est du côté le plus léger : elle est parmi $7$, $8$, $9$. Les pièces $1$ à $6$ sont
donc vraies.

**Deuxième pesée.** À gauche : $1$ et $7$. À droite : $2$ et la pièce collée $9$.

Les pièces $1$ et $2$ sont vraies et se compensent. Les deux suspectes $7$ et $9$ sont sur des
plateaux opposés.

- équilibre : $7$ et $9$ pèsent pareil, donc aucune des deux n'est la fausse (elle serait plus
  légère) ; **la fausse est la pièce $8$** ;
- plateau gauche plus léger : **la fausse est la pièce $7$** ;
- plateau droit plus léger : **la fausse est la pièce $9$**.

### Cas 3 : le plateau de gauche est plus léger

La fausse est parmi $1$, $2$, $3$, et les pièces $4$ à $9$ sont vraies.

**Deuxième pesée.** Exactement la même qu'au cas 2 : à gauche $1$ et $7$, à droite $2$ et la
pièce collée $9$. Mais cette fois ce sont $7$ et $9$ qui servent de lest, et les suspectes sont
$1$ et $2$.

- équilibre : ni $1$ ni $2$ n'est la fausse, donc **la fausse est la pièce $3$** ;
- plateau gauche plus léger : **la fausse est la pièce $1$** ;
- plateau droit plus léger : **la fausse est la pièce $2$**.

**Conclusion.**

Dans les trois cas, deux pesées suffisent pour désigner la pièce fausse. La pièce collée ne
pose pas de problème : à la première pesée on la compte comme un membre du groupe de droite, à
la seconde on s'en sert comme lest ou on la met à l'épreuve, selon le cas.

## Going further

1. Sans pièce collée, on sait trouver la fausse parmi neuf pièces en deux pesées. Combien de
   pièces peut-on traiter en trois pesées ?
2. Avec la pièce collée, pourrait-on encore réussir en deux pesées s'il y avait dix pièces ?
3. Plus difficile : et si l'on ne savait pas si la pièce fausse est plus légère ou plus lourde
   que les autres ?
