---
id: "0126"
title: "Les deux nageurs et le radeau"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [vitesse, courant, mouvement, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 9, задача 9"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Un radeau descend une rivière, simplement porté par le courant.

Deux nageurs sautent du radeau au même instant et partent dans des directions opposées : le premier descend la rivière, dans le sens du courant, le second remonte la rivière, contre le courant. Au bout de cinq minutes, chacun fait demi-tour et revient vers le radeau.

Lequel des deux rejoint le radeau le premier ?

En eau calme, les deux nageurs ne nagent pas forcément aussi vite l'un que l'autre.

## Hints

1. Essaie avec des nombres. Prends un courant de $2$ km/h et un nageur qui avance à $3$ km/h en eau calme. À quelle vitesse descend-il la rivière ? Et à quelle vitesse la remonte-t-il ?
2. Ne mesure pas les distances depuis la berge, mais depuis le radeau. À quelle vitesse le premier nageur s'éloigne-t-il du radeau ? Et à quelle vitesse revient-il vers lui ?
3. Le radeau n'a pas de moteur : il est porté par le courant, donc il ne bouge pas par rapport à l'eau. Que devient alors la vitesse d'un nageur par rapport au radeau, à l'aller comme au retour ?

## Solution

**L'idée : regarder depuis le radeau, pas depuis la berge.**

**Étape 1. Un exemple avec des nombres.**

Supposons que le courant emporte l'eau à $2$ km/h et que le premier nageur avance à $3$ km/h en eau calme.

*À l'aller*, il descend la rivière : le courant l'aide, il avance donc à $3 + 2 = 5$ km/h par rapport à la berge. Pendant ce temps le radeau avance à $2$ km/h. L'écart entre eux grandit de

$$5 - 2 = 3 \text{ km/h}.$$

*Au retour*, il remonte la rivière : le courant le freine, il avance à $3 - 2 = 1$ km/h par rapport à la berge, et vers l'amont. Le radeau, lui, continue de descendre à $2$ km/h. Ils se rapprochent donc de

$$1 + 2 = 3 \text{ km/h}.$$

Le même nombre, $3$ km/h, à l'aller et au retour : c'est exactement la vitesse du nageur en eau calme.

**Étape 2. Le second nageur.**

Il remonte la rivière. Supposons qu'il nage à $4$ km/h en eau calme. À l'aller, il avance à $4 - 2 = 2$ km/h vers l'amont, pendant que le radeau descend à $2$ km/h : ils s'écartent de $2 + 2 = 4$ km/h. Au retour, il descend à $4 + 2 = 6$ km/h et le radeau à $2$ km/h : il se rapproche de $6 - 2 = 4$ km/h.

Encore une fois, la même vitesse à l'aller et au retour : sa vitesse en eau calme.

**Étape 3. Pourquoi c'est toujours vrai.**

Le radeau n'avance pas tout seul : il est porté par le courant, donc **il ne bouge pas par rapport à l'eau**. L'eau et le radeau voyagent ensemble.

Par rapport à l'eau, un nageur avance toujours à sa propre vitesse, qu'il descende ou qu'il remonte la rivière : le courant emporte l'eau, le nageur et le radeau exactement de la même façon.

Donc, vu du radeau, chaque nageur s'éloigne à sa vitesse propre pendant $5$ minutes, puis revient à cette même vitesse. Il lui faut donc $5$ minutes de plus pour parcourir le chemin du retour.

**Conclusion.**

Chaque nageur revient au radeau $5 + 5 = 10$ minutes après le départ. Les deux nageurs rejoignent donc le radeau **en même temps**, et cela quelles que soient leurs vitesses et quelle que soit la vitesse du courant.

## Going further

1. Un rameur perd son chapeau au moment où il passe sous un pont, et continue de remonter la rivière. Il s'en aperçoit $10$ minutes plus tard, fait demi-tour et rattrape son chapeau à $1$ km en aval du pont. Quelle est la vitesse du courant ?
2. Dans l'énoncé, que se passe-t-il si le second nageur nage moins vite que le courant, et se retrouve donc entraîné vers l'aval alors qu'il essaie de remonter ? La réponse change-t-elle ?
