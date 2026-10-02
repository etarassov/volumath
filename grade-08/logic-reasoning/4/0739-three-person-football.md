---
id: "0739"
title: "Le foot à trois"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [denombrement, comptage-double, parite, alternance]
adapted_from: null
see_also: []
same_as: ["0689"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 25, d'après Coupe Animath d'Automne 2017, P3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

Le foot à trois personnes se joue en phases successives : un joueur est gardien pendant que les deux autres, appelés « joueurs de champ », tentent de marquer un but. Dès qu'un joueur marque, la phase se termine et il devient gardien pour la phase suivante.

Amandine, Bobby et Charles jouent à ce jeu. La partie terminée, ils se souviennent qu'Amandine a été $12$ fois joueuse de champ, Bobby $21$ fois joueur de champ, et Charles $8$ fois gardien.

1. Combien y a-t-il eu de phases au total ?
2. Qui a marqué le sixième but ?

## Hints

1. Pour la première question, compte les places de joueur de champ : à chaque phase, il y en a exactement deux.
2. Note $N$ le nombre de phases. Charles a été gardien $8$ fois, donc joueur de champ $N - 8$ fois. Écris l'égalité et résous.
3. Pour la deuxième question, commence par compter combien de fois chacun des trois a été gardien.
4. Peut-on être gardien deux phases de suite ? Souviens-toi que le gardien d'une phase est celui qui a marqué à la phase d'avant.
5. Amandine a été gardienne $13$ fois sur $25$ phases, sans jamais l'être deux phases de suite. Regroupe les phases deux par deux : $(1,2)$, $(3,4)$, …, $(23,24)$, et la phase $25$ toute seule. Combien de fois au maximum Amandine peut-elle être gardienne dans chaque paquet ?

## Solution

**1. Le nombre de phases.**

Notons $N$ le nombre de phases. À chaque phase il y a exactement deux joueurs de champ, donc en tout $2N$ places de joueur de champ ont été occupées.

Amandine en a occupé $12$, Bobby $21$, et Charles autant de fois qu'il n'a pas été gardien, c'est-à-dire $N - 8$. Donc

$$12 + 21 + (N - 8) = 2N , \qquad \text{c'est-à-dire} \qquad N + 25 = 2N , \qquad \text{donc} \qquad N = 25 .$$

Il y a eu **$25$ phases**.

**2. Qui a été gardien, et quand.**

Comptons les tours de gardien :

- Amandine : $25 - 12 = 13$ fois ;
- Bobby : $25 - 21 = 4$ fois ;
- Charles : $8$ fois.

Vérification : $13 + 4 + 8 = 25$, une par phase.

**Personne n'est gardien deux phases de suite.**

Le gardien d'une phase est le joueur qui a marqué à la phase précédente. Or, pour marquer, il faut être joueur de champ. Le gardien de la phase $k+1$ était donc joueur de champ à la phase $k$ : il n'était pas gardien à la phase $k$.

**Les $13$ tours d'Amandine sont forcés.**

Regroupons les $25$ phases ainsi : $(1,2)$, $(3,4)$, $(5,6)$, …, $(23,24)$, puis la phase $25$ toute seule. Cela fait $12$ paquets de deux, plus une phase isolée.

Dans un paquet de deux phases consécutives, Amandine est gardienne au plus une fois. Elle l'est donc au plus $12 + 1 = 13$ fois. Comme elle l'est exactement $13$ fois, il n'y a aucune marge : elle est gardienne **exactement une fois dans chaque paquet**, et aussi à la phase $25$.

Partons de la fin : elle est gardienne à la phase $25$, donc pas à la phase $24$ ; comme elle l'est une fois dans le paquet $(23,24)$, c'est à la phase $23$. Donc pas à la phase $22$, donc c'est à la phase $21$, et ainsi de suite. Amandine est gardienne exactement aux phases impaires :

$$1,\ 3,\ 5,\ \ldots,\ 23,\ 25 .$$

**On conclut.**

Chaque phase se termine par un but, donc le sixième but est celui qui a mis fin à la phase $6$. Celui qui l'a marqué est devenu gardien à la phase $7$. Or $7$ est impair : le gardien de la phase $7$ est Amandine.

C'est donc **Amandine** qui a marqué le sixième but.

## Going further

Que peut-on dire des phases paires ? Bobby y a été gardien $4$ fois et Charles $8$ fois, soit $12$ fois en tout, et il y a bien $12$ phases paires. En revanche, on ne peut pas savoir lesquelles : plusieurs répartitions sont possibles, et l'énoncé ne permet pas de dire qui a marqué le septième but.
