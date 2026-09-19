---
id: "0557"
title: "Cent chevaliers, cent menteurs et leurs amis"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [chevaliers-et-menteurs, denombrement, appariement, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 12 «Рыцари и лжецы», задача 5"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Sur une île vivent des **chevaliers**, qui disent toujours la vérité, et des **menteurs**, qui mentent toujours.

Dans un village de cette île habitent $100$ chevaliers et $100$ menteurs. Chaque habitant a exactement un ami, et l'amitié est réciproque : si Alice est l'amie de Bruno, alors Bruno est l'ami d'Alice.

Un matin, chaque habitant du village a prononcé l'une des deux phrases suivantes :

> « Mon ami est un chevalier. »   ou   « Mon ami est un menteur. »

et chacune des deux phrases a été prononcée par exactement $100$ habitants.

Quel est le plus petit nombre possible de paires d'amis formées d'un chevalier et d'un menteur ?

## Hints

1. Chaque habitant a exactement un ami et l'amitié est réciproque : comment les $200$ habitants se répartissent-ils ?
2. Il y a trois sortes de paires : deux chevaliers, deux menteurs, ou bien un chevalier et un menteur. Dans chacun des trois cas, que disent les deux habitants de la paire ?
3. Commencer par une paire mixte (un chevalier et un menteur). Le chevalier dit la vérité sur son ami ; le menteur ment sur le sien. Aboutissent-ils à la même phrase ?
4. Noter $x$ le nombre de paires mixtes, et compter combien d'habitants au total prononcent la phrase « Mon ami est un menteur ».

## Solution

**Étape 1 : le village se découpe en paires.**

Chaque habitant a exactement un ami, et l'amitié est réciproque. Les $200$ habitants se regroupent donc deux par deux : le village compte exactement

$$\frac{200}{2} = 100 \text{ paires d'amis.}$$

Il y a trois sortes de paires :

- les paires **CC** : deux chevaliers ;
- les paires **MM** : deux menteurs ;
- les paires **mixtes** : un chevalier et un menteur.

**Étape 2 : ce que dit chaque habitant, selon sa paire.**

*Dans une paire mixte.* L'ami du chevalier est un menteur ; le chevalier dit la vérité, donc il dit « Mon ami est un menteur ». L'ami du menteur est un chevalier ; le menteur ment, donc il dit lui aussi « Mon ami est un menteur ».

$\Rightarrow$ **les deux habitants d'une paire mixte disent « Mon ami est un menteur ».**

*Dans une paire CC.* L'ami de chaque chevalier est un chevalier, et le chevalier dit la vérité : tous deux disent « Mon ami est un chevalier ».

*Dans une paire MM.* L'ami de chaque menteur est un menteur, et le menteur ment : tous deux disent « Mon ami est un chevalier ».

$\Rightarrow$ **dans une paire non mixte, les deux habitants disent « Mon ami est un chevalier ».**

On voit donc ceci, qui est le cœur du problème : la phrase « Mon ami est un menteur » est prononcée **exactement** par les habitants des paires mixtes, et par personne d'autre.

**Étape 3 : compter.**

Notons $x$ le nombre de paires mixtes. Elles contiennent $2x$ habitants, et ce sont précisément les habitants qui ont dit « Mon ami est un menteur ». Or l'énoncé nous dit que cette phrase a été prononcée par exactement $100$ habitants. Donc

$$2x = 100, \qquad x = 50.$$

**Étape 4 : une telle situation existe bien.**

Il faut vérifier que ce n'est pas une valeur impossible. Prenons $50$ paires mixtes : elles utilisent $50$ chevaliers et $50$ menteurs. Il reste $50$ chevaliers, que l'on regroupe en $25$ paires CC, et $50$ menteurs, que l'on regroupe en $25$ paires MM. On a bien $50 + 25 + 25 = 100$ paires. Les $100$ habitants des paires mixtes disent « Mon ami est un menteur », les $100$ autres disent « Mon ami est un chevalier ». Tout est conforme à l'énoncé. $\checkmark$

**Conclusion.**

Le nombre de paires mixtes vaut $\boxed{50}$.

Remarquons que l'énoncé demandait le **plus petit** nombre possible, mais le calcul dit plus que cela : le nombre de paires mixtes vaut forcément $50$. Ce n'est pas seulement la plus petite valeur possible, c'est la seule.

## Going further

1. Montrer que le nombre d'habitants ayant dit « Mon ami est un menteur » est forcément pair. Que faudrait-il en conclure si l'énoncé annonçait $101$ habitants pour cette phrase et $99$ pour l'autre ?
2. Mêmes données, mais $120$ habitants ont dit « Mon ami est un chevalier » et $80$ ont dit « Mon ami est un menteur ». Combien y a-t-il de paires mixtes ?
3. Le nombre de chevaliers et de menteurs joue-t-il un rôle dans le raisonnement de l'étape 3 ? Que se passerait-il avec $130$ chevaliers et $70$ menteurs, les autres données étant inchangées ?
