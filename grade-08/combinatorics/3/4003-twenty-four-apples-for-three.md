---
id: "4003"
title: "Vingt-quatre pommes pour trois"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, partage, somme-des-premiers-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 14 (réponse 190 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Alice a $24$ pommes, toutes identiques. Elle veut les partager entre Bérénice, Christophe
et elle-même, de sorte que chacune des trois personnes reçoive **au moins $2$ pommes**, et
qu'il ne reste aucune pomme.

De combien de façons peut-elle faire ce partage ? (Deux partages sont différents dès que
l'une des trois personnes ne reçoit pas le même nombre de pommes.)

## Hints

1. Commence par donner d'office $2$ pommes à chacun. Combien reste-t-il de pommes à répartir, et quelle condition reste-t-il à respecter ?
2. Le problème devient : de combien de façons peut-on écrire $18$ comme somme de trois nombres entiers positifs ou nuls, l'ordre comptant ?
3. Fixe la part d'Alice. Si elle prend $x$ pommes parmi les $18$ restantes, combien de choix reste-t-il pour la part de Bérénice ?
4. Tu vas devoir additionner $19 + 18 + 17 + \cdots + 1$.

## Solution

**Étape 1. Se débarrasser de la contrainte « au moins $2$ ».**

Commençons par donner $2$ pommes à chacune des trois personnes. Cela consomme
$3 \times 2 = 6$ pommes, et il en reste

$$24 - 6 = 18.$$

Ces $18$ pommes se répartissent ensuite librement : maintenant, chacun peut en recevoir
$0$. Chaque partage de départ correspond à exactement un partage des $18$ pommes, et
réciproquement. Il suffit donc de compter les façons d'écrire

$$x + y + z = 18,$$

où $x$, $y$ et $z$ sont des entiers supérieurs ou égaux à $0$ (les parts supplémentaires
d'Alice, de Bérénice et de Christophe), l'ordre comptant.

**Étape 2. Compter.**

Fixons d'abord $x$, la part supplémentaire d'Alice. Ce nombre peut valoir $0, 1, 2, \ldots, 18$.

Une fois $x$ choisi, il reste $18 - x$ pommes pour Bérénice et Christophe. Bérénice peut en
prendre $y = 0, 1, 2, \ldots, 18 - x$, et Christophe reçoit alors tout le reste, sans aucun
choix. Il y a donc $19 - x$ possibilités pour chaque valeur de $x$.

Le total vaut

$$\underbrace{19}_{x=0} + \underbrace{18}_{x=1} + \underbrace{17}_{x=2} + \cdots + \underbrace{1}_{x=18}.$$

C'est la somme des entiers de $1$ à $19$ :

$$1 + 2 + \cdots + 19 = \frac{19 \times 20}{2} = 190.$$

**Réponse : il y a $190$ partages possibles.**

## Going further

Le même raisonnement pour $n$ pommes à partager entre trois personnes, chacune en recevant
au moins $2$, donne $\dfrac{(n-5)(n-4)}{2}$ partages. Avec $n = 24$ : $\dfrac{19 \times 20}{2} = 190$.
