---
id: "7123"
title: "Deux mille treize nombres dont chaque dizaine compte"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [inegalites, ordre, extremum, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

On considère $2013$ nombres, positifs ou négatifs, tels que la somme de **dix quelconques**
d'entre eux soit strictement positive.

Montrer que la somme des $2013$ nombres est strictement positive.

## Hints

1. L'hypothèse porte sur **toutes** les façons de choisir dix nombres. Sers-t'en sur le
   choix le plus défavorable : les dix plus petits.
2. Range les $2013$ nombres dans l'ordre croissant. Que sais-tu de la somme des dix
   premiers ?
3. Si le dixième nombre était négatif ou nul, que vaudrait la somme des dix premiers ?
4. Une fois que tu sais le signe du dixième, tu connais le signe de tous les suivants.

## Solution

Rangeons les $2013$ nombres dans l'ordre croissant et notons-les

$$a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{2013} .$$

**L'hypothèse appliquée aux dix plus petits.** Les dix nombres $a_1, a_2, \ldots, a_{10}$
sont dix des nombres donnés, donc par hypothèse

$$a_1 + a_2 + \cdots + a_{10} > 0 . \qquad (\star)$$

**Le dixième nombre est strictement positif.** Supposons le contraire, c'est-à-dire
$a_{10} \leqslant 0$. Comme les nombres sont rangés dans l'ordre croissant, on aurait alors

$$a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{10} \leqslant 0 ,$$

donc dix nombres tous négatifs ou nuls, dont la somme serait négative ou nulle. Cela
contredit $(\star)$.

Donc $a_{10} > 0$.

**Tous les suivants aussi.** Pour tout indice $k$ entre $11$ et $2013$, on a
$a_k \geqslant a_{10} > 0$. Les $2003$ nombres $a_{11}, a_{12}, \ldots, a_{2013}$ sont donc
tous strictement positifs, et leur somme l'est aussi :

$$a_{11} + a_{12} + \cdots + a_{2013} > 0 .$$

**On conclut.** Découpons la somme totale en deux morceaux :

$$a_1 + a_2 + \cdots + a_{2013} = \underbrace{(a_1 + \cdots + a_{10})}_{> \,0 \ \text{par} \ (\star)}
\; + \; \underbrace{(a_{11} + \cdots + a_{2013})}_{> \,0} .$$

C'est une somme de deux nombres strictement positifs, donc elle est strictement positive.

**La somme des $2013$ nombres est bien strictement positive.**

## Going further

Le ressort de la démonstration est de n'appliquer l'hypothèse qu'**une seule fois**, mais au
bon endroit : sur les dix plus petits nombres. C'est un réflexe qui sert souvent. Quand une
hypothèse vaut pour tous les choix possibles, on gagne presque toujours à la tester sur le
choix extrême, celui qui a le plus de chances de la mettre en défaut.

Le nombre $2013$ n'a joué aucun rôle : il suffisait qu'il soit au moins égal à $10$. Une
question pour continuer : que se passe-t-il si l'on n'a que neuf nombres, et que l'hypothèse
porte sur les sommes de dix ?
