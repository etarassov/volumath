---
id: "0382"
title: "Dates ambiguës"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, dates, calendrier, principe-multiplicatif]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 8 «Сложить или умножить?», задача 4"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Aux États-Unis, on écrit une date en donnant d'abord le numéro du mois, puis le numéro du jour, puis l'année : $09.12.2015$ y désigne le $12$ septembre $2015$.

En France, on écrit d'abord le numéro du jour, puis celui du mois, puis l'année : le $12$ septembre $2015$ s'écrit $12.09.2015$.

Combien y a-t-il de jours dans l'année dont la date, écrite de cette façon, ne peut pas être lue de manière sûre lorsqu'on ignore quelle est la convention utilisée ?

## Hints

1. Une date écrite comporte deux nombres avant l'année. Écris les deux lectures possibles de ces deux nombres.
2. Pour qu'il y ait un doute, il faut que les deux lectures donnent chacune une vraie date. Que peut-on dire alors des deux nombres ?
3. Si le numéro du jour est plus grand que $12$, aucune confusion n'est possible. Pourquoi ?
4. Compte d'abord tous les couples de nombres compris entre $1$ et $12$. Puis enlève ceux pour lesquels les deux lectures désignent le même jour.

## Solution

**On décrit précisément ce qu'est une ambiguïté.**

Une date écrite se présente comme deux nombres, $p$ puis $q$, suivis de l'année. Il y a deux lectures possibles :

- la lecture française : le jour numéro $p$ du mois numéro $q$ ;
- la lecture américaine : le jour numéro $q$ du mois numéro $p$.

La date est ambiguë exactement lorsque **les deux lectures donnent chacune un vrai jour de l'année, et que ces deux jours sont différents**.

**Quand les deux lectures sont-elles possibles ?**

Dans la lecture française, $q$ est un numéro de mois, donc $1 \le q \le 12$.
Dans la lecture américaine, $p$ est un numéro de mois, donc $1 \le p \le 12$.

Il faut donc que les deux nombres soient compris entre $1$ et $12$.

Inversement, si $p$ et $q$ sont tous les deux entre $1$ et $12$, les deux lectures sont valables : un jour dont le numéro est inférieur ou égal à $12$ existe dans tous les mois de l'année.

C'est pour cela qu'une date comme $25.03$ ne pose aucun problème : $25$ ne peut pas être un numéro de mois, donc c'est forcément le jour, et il s'agit du $25$ mars dans les deux pays.

**On compte les écritures où les deux lectures sont possibles.**

D'après le principe multiplicatif, il y a $12$ valeurs possibles pour $p$ et, pour chacune d'elles, $12$ valeurs possibles pour $q$, soit

$$12 \times 12 = 144$$

écritures.

**On enlève celles qui ne sont pas ambiguës.**

Parmi ces $144$ écritures, celles où $p = q$ ne posent aucun problème : les deux lectures donnent le même jour. Par exemple $05.05$ est le $5$ mai dans les deux conventions. Il y a $12$ écritures de ce type, une par valeur commune.

Il reste donc

$$144 - 12 = 132$$

écritures ambiguës. Chacune correspond, dans la convention française, à un jour bien précis de l'année, et deux écritures différentes donnent deux jours différents : ces $132$ écritures correspondent donc à $132$ jours distincts.

**Conclusion.** Il y a $132$ jours dans l'année dont la date ne peut pas être lue de façon sûre. Ce sont exactement les jours dont le numéro du jour et le numéro du mois sont tous les deux inférieurs ou égaux à $12$, et différents l'un de l'autre.

## Going further

1. Un Américain et une Française lisent la même date $04.07$. De quel jour parle chacun d'eux ?
2. Combien de jours de l'année ont au contraire une date que l'on peut lire sans aucun doute ?
3. La réponse à la question posée change-t-elle une année bissextile ?
