---
id: "0132"
title: "Mesurer le temps avec des cordons qui brûlent"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [temps, strategie, raisonnement, duree]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 14, задача 1"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

On dispose d'un cordon qui brûle en exactement $20$ minutes lorsqu'on l'allume par un bout.

**Attention :** ce cordon n'est pas régulier. Il brûle plus vite à certains endroits et plus lentement à d'autres, et on ne sait pas où. On ne peut donc surtout pas dire que la moitié du cordon brûle en $10$ minutes. En revanche, en un endroit donné du cordon, le feu avance toujours de la même façon, qu'il arrive par la droite ou par la gauche.

On a des allumettes, et on peut allumer un cordon par le bout que l'on veut, au moment que l'on veut. On ne dispose d'aucune montre.

1. Comment mesurer exactement $10$ minutes avec un seul cordon ?
2. On dispose maintenant de deux cordons de ce type, chacun brûlant en $20$ minutes lorsqu'il est allumé par un bout. Comment mesurer exactement $15$ minutes ?

## Hints

1. Question 1 : couper le cordon en deux ne sert à rien, puisqu'on ne sait pas combien de temps brûle chaque morceau. Mais rien n'oblige à allumer le cordon par un seul bout.
2. Question 1 : allume les deux bouts en même temps et attends que les deux flammes se rencontrent. Il reste à comprendre pourquoi cela prend exactement $10$ minutes, même avec un cordon irrégulier.
3. Question 2 : commence les deux cordons en même temps, mais pas de la même façon. Applique la question 1 à l'un des deux seulement.
4. Question 2 : au bout de $10$ minutes, combien de temps de combustion reste-t-il dans le second cordon ? Et que sais-tu faire avec un cordon dont il reste $10$ minutes ?

## Solution

### Question 1 : allumer les deux bouts en même temps.

On allume le cordon par ses deux extrémités au même instant. Les deux flammes avancent l'une vers l'autre et finissent par se rencontrer : à cet instant, tout le cordon a brûlé. Il s'est alors écoulé exactement $10$ minutes.

**Pourquoi exactement $10$ minutes, même si le cordon est irrégulier ?**

Appelons $T$ la durée écoulée jusqu'à la rencontre des deux flammes. Le point de rencontre coupe le cordon en deux morceaux :

- le morceau de gauche a été brûlé par la flamme de gauche, ce qui a pris $T$ minutes ;
- le morceau de droite a été brûlé par la flamme de droite, ce qui a pris $T$ minutes aussi.

Imaginons maintenant que l'on ait allumé le cordon **par la gauche seulement**. La flamme aurait mis $T$ minutes pour atteindre le point de rencontre, exactement comme avant. Puis elle aurait brûlé le morceau de droite. Or ce morceau met le même temps à brûler dans un sens que dans l'autre, puisque le feu avance de la même façon en chaque endroit : il aurait donc pris encore $T$ minutes.

Le cordon entier, allumé par un seul bout, aurait donc brûlé en $T + T$ minutes. Comme on sait que cela fait $20$ minutes :

$$2T = 20 \qquad \text{donc} \qquad T = 10.$$

### Question 2 : $10$ minutes, puis $5$ minutes.

Au même instant, on allume :

- le **premier cordon par ses deux bouts** ;
- le **second cordon par un seul bout**.

**Au bout de $10$ minutes**, le premier cordon a fini de brûler, d'après la question 1. C'est notre signal : on n'a besoin d'aucune montre pour le repérer.

À cet instant précis, le second cordon brûle depuis $10$ minutes par un seul bout. Comme il lui faut $20$ minutes en tout, le morceau qui reste demanderait encore $10$ minutes de combustion depuis son bout allumé.

**On allume alors le second bout du second cordon.** On se retrouve exactement dans la situation de la question 1, avec un morceau qui brûlerait en $10$ minutes par un bout et qui est maintenant allumé des deux côtés : il disparaît en $5$ minutes.

**Conclusion.**

Le second cordon s'éteint

$$10 + 5 = 15 \text{ minutes}$$

après le début de l'expérience. On a bien mesuré $15$ minutes.

## Going further

1. Pourquoi ne peut-on pas mesurer $10$ minutes en coupant simplement le cordon en deux morceaux de même longueur ?
2. Avec ces deux mêmes cordons de $20$ minutes, quelles autres durées peut-on mesurer ?
3. On dispose de deux cordons brûlant chacun en une heure. Comment mesurer $45$ minutes ?
