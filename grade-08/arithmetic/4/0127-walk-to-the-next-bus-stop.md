---
id: "0127"
title: "Faut-il marcher jusqu'à l'arrêt suivant ?"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [vitesse, mouvement, fractions, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 9, задача 6"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Un garçon attend le bus à un arrêt et il commence à avoir froid. Le bus n'arrive toujours pas. L'arrêt suivant se trouve à exactement $1$ km, dans le sens où roule le bus, et le garçon se demande s'il ne ferait pas mieux de marcher jusque-là au lieu de geler sur place.

Le bus viendra forcément de derrière lui, et il ne s'arrête qu'aux arrêts. Le garçon court quatre fois moins vite que le bus. Il aperçoit le bus dès que celui-ci est encore à $2$ km de lui : à ce moment-là, il peut se mettre à courir, soit en arrière vers l'arrêt qu'il a quitté, soit en avant vers l'arrêt suivant.

Le garçon a-t-il intérêt à partir, ou risque-t-il de rater le bus ?

## Hints

1. Appelle $v$ la vitesse du garçon quand il court. Celle du bus est alors $4v$. Quand il aperçoit le bus, le garçon a deux possibilités : revenir en arrière ou continuer. Étudie-les l'une après l'autre.
2. S'il revient en arrière, il court à la rencontre du bus : les $2$ km qui les séparent sont parcourus par les deux en même temps. Le bus va quatre fois plus vite, donc il en parcourt quatre fois plus. Quelle part des $2$ km le garçon parcourt-il ?
3. S'il continue vers l'arrêt suivant, le bus le rattrape. L'écart de $2$ km ne diminue plus qu'à la vitesse $4v - v$. Quelle distance le garçon parcourt-il avant d'être rattrapé ?
4. Tu obtiens deux distances de sécurité : $\frac{2}{5}$ km en arrière et $\frac{2}{3}$ km en avant. Compare leur somme à $1$ km.

## Solution

**L'idée : séparer les deux cas, courir en arrière ou courir en avant, et mesurer jusqu'où le garçon est encore sauvé dans chacun.**

Notons $v$ la vitesse du garçon quand il court. Le bus roule alors à $4v$.

Imaginons que le garçon soit déjà quelque part entre les deux arrêts au moment où il aperçoit le bus, à $2$ km derrière lui.

**Cas 1 : il fait demi-tour et court vers l'arrêt de départ.**

Le garçon et le bus vont l'un vers l'autre. Ensemble, ils doivent parcourir les $2$ km qui les séparent. Pendant le même temps, le bus parcourt quatre fois plus de chemin que le garçon : sur ces $2$ km, le garçon en fait $1$ part et le bus $4$ parts, soit $5$ parts en tout. Le garçon parcourt donc

$$\frac{1}{5} \times 2 = \frac{2}{5} \text{ km} = 400 \text{ m}.$$

Autrement dit : **s'il ne s'est pas éloigné de plus de $\frac{2}{5}$ km de l'arrêt de départ, il peut y revenir avant le bus.**

**Cas 2 : il continue vers l'arrêt suivant.**

Cette fois le bus le poursuit. À chaque heure, le bus gagne $4v - v = 3v$ sur lui : l'écart de $2$ km se referme à la vitesse $3v$, alors que le garçon avance à la vitesse $v$. Pendant que l'écart de $2$ km disparaît, le garçon parcourt donc trois fois moins, c'est-à-dire

$$\frac{1}{3} \times 2 = \frac{2}{3} \text{ km}.$$

Autrement dit : **s'il lui reste au plus $\frac{2}{3}$ km jusqu'à l'arrêt suivant, il y arrive avant le bus.**

**Étape 3. Les deux zones de sécurité se recouvrent.**

Appelons $d$ la distance déjà parcourue depuis l'arrêt de départ, avec $0 \leqslant d \leqslant 1$ (en km).

- Le garçon est sauvé en revenant en arrière si $d \leqslant \dfrac{2}{5}$.
- Il est sauvé en continuant s'il lui reste au plus $\dfrac{2}{3}$ km, c'est-à-dire si $1 - d \leqslant \dfrac{2}{3}$, donc si $d \geqslant \dfrac{1}{3}$.

Comparons ces deux bornes en les mettant au même dénominateur :

$$\frac{1}{3} = \frac{5}{15} \qquad \text{et} \qquad \frac{2}{5} = \frac{6}{15},$$

donc $\dfrac{1}{3} < \dfrac{2}{5}$.

Les deux zones se chevauchent entre $\frac{1}{3}$ km et $\frac{2}{5}$ km : il n'y a aucun endroit du kilomètre où le garçon serait perdu. Si $d < \frac{1}{3}$, il est aussi plus petit que $\frac{2}{5}$, donc le garçon revient en arrière ; et si $d \geqslant \frac{1}{3}$, il continue vers l'arrêt suivant.

On peut dire la même chose en une ligne : les deux distances de sécurité couvrent ensemble

$$\frac{2}{5} + \frac{2}{3} = \frac{6}{15} + \frac{10}{15} = \frac{16}{15} > 1,$$

c'est-à-dire plus que le kilomètre à couvrir.

**Conclusion.**

Où qu'il se trouve sur le trajet quand le bus apparaît, le garçon peut toujours atteindre un arrêt à temps, en revenant en arrière ou en continuant. Il a donc **tout intérêt à partir vers l'arrêt suivant** : il ne risque pas de rater le bus, et il a moins froid.

## Going further

1. À quelle distance faudrait-il que soit l'arrêt suivant pour que le garçon prenne un vrai risque en partant ?
2. Reprends le problème avec un garçon qui court six fois moins vite que le bus, tout le reste étant inchangé. A-t-il encore intérêt à partir ?
