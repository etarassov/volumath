---
id: "0201"
title: "Trois coureurs et une seule trottinette"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [vitesse, optimisation, majoration, exemple]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 23, задача 7 (p. 51-52)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Une équipe de trois mathématiciens se présente au départ de la « course joyeuse », longue de $3000$ mètres. On leur prête une seule trottinette, à une place.

La piste est droite, les trois partent en même temps, et le temps de l'équipe est celui du **dernier** arrivé. Chacun court à $125$ mètres par minute et roule à $250$ mètres par minute. On peut poser la trottinette n'importe où sur la piste, et un camarade qui passe par là peut la reprendre.

Quel est le plus petit temps possible pour l'équipe ?

## Hints

1. Combien de temps met un mathématicien qui fait tout le parcours en courant ? Et tout le parcours en trottinette ?
2. Un coureur roule $r$ mètres et court les $3000 - r$ autres. Écris son temps en fonction de $r$. Combien de temps gagne-t-il pour chaque mètre roulé au lieu d'être couru ?
3. La trottinette n'avance que le long d'une piste de $3000$ mètres. Que peut-on dire de la somme des trois distances roulées ?
4. Si le dernier arrive au bout de $T$ minutes, alors chacun des trois met au plus $T$ minutes. Additionne ces trois inégalités.
5. Pour l'exemple : essaie de faire rouler chacun exactement $1000$ mètres.

## Solution

Il y a deux choses à faire, comme dans tout problème de ce type : **majorer** (montrer qu'on ne peut pas faire mieux qu'une certaine valeur) et **donner un exemple** qui atteint cette valeur.

**Étape 1. Le temps d'un coureur, en fonction de ce qu'il roule.**

Faire les $3000$ mètres entièrement en courant prend

$$\frac{3000}{125} = 24 \text{ minutes.}$$

Un mètre couru prend $\frac{1}{125}$ minute, un mètre roulé prend $\frac{1}{250}$ minute. Chaque mètre roulé au lieu d'être couru fait donc gagner

$$\frac{1}{125} - \frac{1}{250} = \frac{2}{250} - \frac{1}{250} = \frac{1}{250} \text{ minute.}$$

Si un mathématicien roule $r$ mètres et court les $3000 - r$ autres, son temps est

$$\frac{r}{250} + \frac{3000 - r}{125} = 24 - \frac{r}{250}.$$

**Étape 2. La majoration : on ne peut pas descendre sous $20$ minutes.**

Notons $r_1$, $r_2$, $r_3$ les distances que les trois roulent. La trottinette avance vers l'arrivée le long d'une piste de $3000$ mètres (on verra à l'étape 4 que la faire revenir en arrière n'aide jamais). Les trois portions roulées sont donc trois morceaux de piste qui ne se chevauchent pas :

$$r_1 + r_2 + r_3 \leqslant 3000.$$

Appelons $T$ le temps de l'équipe, c'est-à-dire celui du dernier arrivé. Chacun arrive au plus tard au bout de $T$ minutes, donc

$$T \geqslant 24 - \frac{r_1}{250}, \qquad T \geqslant 24 - \frac{r_2}{250}, \qquad T \geqslant 24 - \frac{r_3}{250}.$$

En additionnant ces trois inégalités :

$$3T \geqslant 72 - \frac{r_1 + r_2 + r_3}{250} \geqslant 72 - \frac{3000}{250} = 72 - 12 = 60,$$

d'où $T \geqslant 20$. **L'équipe ne peut pas faire mieux que $20$ minutes.**

**Étape 3. L'exemple : $20$ minutes sont possibles.**

Chacun roule exactement $1000$ mètres et court $2000$ mètres :

- le premier roule du départ jusqu'au $1000^{\text{e}}$ mètre, pose la trottinette, puis court ;
- le deuxième court jusqu'au $1000^{\text{e}}$ mètre, prend la trottinette, roule jusqu'au $2000^{\text{e}}$ mètre, la pose, puis court ;
- le troisième court jusqu'au $2000^{\text{e}}$ mètre, prend la trottinette et roule jusqu'à l'arrivée.

Chacun met alors

$$\frac{1000}{250} + \frac{2000}{125} = 4 + 16 = 20 \text{ minutes.}$$

Vérifions que la trottinette est toujours là au bon moment. Le premier la pose au $1000^{\text{e}}$ mètre au bout de $4$ minutes ; le deuxième n'y arrive qu'au bout de $\frac{1000}{125} = 8$ minutes, la trottinette l'attend. Le deuxième la pose au $2000^{\text{e}}$ mètre au bout de $8 + 4 = 12$ minutes ; le troisième n'y arrive qu'au bout de $\frac{2000}{125} = 16$ minutes. Tout se passe bien, et les trois franchissent la ligne ensemble.

**Étape 4. Pourquoi ne jamais faire revenir la trottinette en arrière ?**

Supposons qu'un coureur recule d'un mètre avec la trottinette, pour la laisser plus tôt à un camarade. Ce mètre, il devra le refaire vers l'avant : il le parcourt donc deux fois, ce qui lui coûte au moins $2 \times \frac{1}{250}$ minute de plus. En échange, la trottinette sert sur un mètre de plus, ce qui fait gagner $\frac{1}{250}$ minute à un seul coureur. On perd plus qu'on ne gagne, et comme c'est le dernier arrivé qui compte, reculer n'améliore jamais le temps de l'équipe.

**Conclusion.**

Le plus petit temps possible pour l'équipe est de **$20$ minutes**.

## Going further

1. Même question avec seulement deux mathématiciens et une trottinette. (Le temps est-il meilleur ou moins bon ?)
2. Et avec quatre mathématiciens ?
3. Avec $n$ mathématiciens, chacun roule $\frac{3000}{n}$ mètres et le temps de l'équipe vaut $24 - \frac{12}{n}$ minutes. À partir de combien de coureurs l'équipe met-elle plus de $22$ minutes ?
