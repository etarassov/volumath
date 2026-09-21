---
id: "8215"
title: "Une inégalité qui cache un carré parfait"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalites, identites remarquables, changement de variable, cas d egalite]
adapted_from: null
see_also: ["7607", "8111"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 11. La solution imprimée développe le membre de gauche en (a+b)² − (a+b) + 1 au lieu de (a+b)² − 2(a+b) + 2 : l'inégalité reste vraie mais le cas d'égalité disparaît. La version corrigée est donnée ici."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Montrer que pour tous réels $a$ et $b$,

$$a^2 + b^2 + 2(a-1)(b-1) \ \ge\ 1 .$$

Pour quels couples $(a, b)$ y a-t-il égalité ?

## Hints

1. Développe complètement le membre de gauche, sans chercher tout de suite à être malin.
2. Une fois développé, regarde quels termes font intervenir $a$ et $b$ séparément et lesquels les mélangent. Reconnais-tu $a^2 + 2ab + b^2$ ?
3. Tout s'exprime alors avec une seule quantité : la somme $s = a + b$. Pose ce changement de variable.
4. Tu obtiens une expression du second degré en $s$. Mets-la sous forme canonique, c'est-à-dire sous la forme « un carré $+$ une constante ».
5. Le cas d'égalité ne dit pas $a = b$ : il dit quelque chose sur $s$.

## Solution

**Développer.**

$$a^2 + b^2 + 2(a-1)(b-1) = a^2 + b^2 + 2(ab - a - b + 1) = a^2 + 2ab + b^2 - 2a - 2b + 2 .$$

**Reconnaître une seule variable.**

Les trois premiers termes forment une identité remarquable : $a^2 + 2ab + b^2 = (a+b)^2$. Et les deux suivants valent $-2(a+b)$. Tout ne dépend donc que de la somme. Posons

$$s = a + b .$$

Le membre de gauche s'écrit

$$s^2 - 2s + 2 .$$

**Forme canonique.**

$$s^2 - 2s + 2 = (s^2 - 2s + 1) + 1 = (s-1)^2 + 1 .$$

Un carré étant toujours positif ou nul, on obtient

$$s^2 - 2s + 2 = (s-1)^2 + 1 \ \ge\ 1 ,$$

c'est-à-dire exactement l'inégalité demandée :

$$\boxed{a^2 + b^2 + 2(a-1)(b-1) \ \ge\ 1 .}$$

**Le cas d'égalité.**

Il y a égalité exactement quand $(s-1)^2 = 0$, c'est-à-dire quand $s = 1$ :

$$\boxed{\text{égalité} \iff a + b = 1 .}$$

Il y a donc une **infinité** de couples qui réalisent l'égalité : tous ceux situés sur la droite d'équation $a + b = 1$. Par exemple $(1, 0)$, $(0, 1)$, $(\tfrac12, \tfrac12)$, $(7, -6)$.

*Vérification sur $(7, -6)$ :* $49 + 36 + 2 \times 6 \times (-7) = 85 - 84 = 1$. ✓

*Vérification sur $(0,0)$, qui ne devrait pas donner l'égalité :* $0 + 0 + 2 \times (-1)\times(-1) = 2 > 1$. ✓

## Going further

Reprendre l'exercice avec $a^2 + b^2 + 2(a - c)(b - c) \ge$ ? , où $c$ est un réel fixé. Quelle est la meilleure minoration possible, et sur quelle droite est-elle atteinte ?
