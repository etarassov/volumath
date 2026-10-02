---
id: "10430"
title: "Cinq nombres entre 0 et 1 et leurs carrés"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, identites-remarquables, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$, $e$ cinq nombres réels, tous compris entre $0$ et $1$ (au sens large). Montrer que

$$(1 + a + b + c + d + e)^2 \geqslant 4\,(a^2 + b^2 + c^2 + d^2 + e^2) .$$

## Hints

1. Pose $s = a + b + c + d + e$. Développe $(1 + s)^2 - 4s$. Reconnais-tu une identité remarquable ?
2. Pour un nombre $x$ compris entre $0$ et $1$, compare $x$ et $x^2$.
3. Range les trois quantités $(1 + s)^2$, $4s$ et $4(a^2 + b^2 + c^2 + d^2 + e^2)$ dans l'ordre.

## Solution

Posons $s = a + b + c + d + e$. On montre deux inégalités, puis on les enchaîne.

**Étape 1 : $(1 + s)^2 \geqslant 4s$.** En développant,

$$(1 + s)^2 - 4s = 1 + 2s + s^2 - 4s = 1 - 2s + s^2 = (1 - s)^2 .$$

Un carré est toujours positif ou nul, donc $(1 + s)^2 - 4s \geqslant 0$, c'est-à-dire $(1 + s)^2 \geqslant 4s$.

**Étape 2 : $s \geqslant a^2 + b^2 + c^2 + d^2 + e^2$.** Soit $x$ un nombre compris entre $0$ et $1$. Alors

$$x - x^2 = x\,(1 - x) ,$$

et les deux facteurs $x$ et $1 - x$ sont positifs ou nuls. Donc $x - x^2 \geqslant 0$, c'est-à-dire $x \geqslant x^2$. On applique cela à chacun des cinq nombres : $a \geqslant a^2$, $b \geqslant b^2$, $c \geqslant c^2$, $d \geqslant d^2$, $e \geqslant e^2$. En additionnant,

$$s \geqslant a^2 + b^2 + c^2 + d^2 + e^2 .$$

**Étape 3 : conclusion.** En multipliant l'inégalité de l'étape 2 par $4$ et en utilisant l'étape 1,

$$(1 + a + b + c + d + e)^2 = (1 + s)^2 \geqslant 4s \geqslant 4\,(a^2 + b^2 + c^2 + d^2 + e^2) .$$

C'est l'inégalité demandée.

## Going further

1. Montrer qu'il y a égalité exactement quand l'un des cinq nombres vaut $1$ et les quatre autres valent $0$.
2. L'hypothèse « compris entre $0$ et $1$ » est-elle utile ? Trouver cinq nombres positifs pour lesquels l'inégalité est fausse.
3. Que devient l'énoncé avec dix nombres au lieu de cinq ? Et avec un seul ?
