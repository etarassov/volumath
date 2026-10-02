---
id: "10419"
title: "Trois écarts plus grands que le troisième nombre"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [valeur-absolue, factorisation, identites-remarquables, signe-d-un-produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels tels que

$$|a - b| \geqslant |c|, \qquad |b - c| \geqslant |a| \qquad \text{et} \qquad |c - a| \geqslant |b| .$$

Montrer que l'un des trois nombres $a$, $b$, $c$ est la somme des deux autres.

## Hints

1. Pour deux réels $u$ et $v$, l'inégalité $|u| \geqslant |v|$ équivaut à $u^2 \geqslant v^2$. Réécris les trois hypothèses sans valeur absolue.
2. Fais passer tout du même côté et factorise chaque inégalité avec l'identité $u^2 - v^2 = (u - v)(u + v)$.
3. Tu dois voir apparaître seulement trois expressions, $-a + b + c$, $a - b + c$ et $a + b - c$. Multiplie les trois inégalités obtenues membre à membre.

## Solution

**Étape 1 : enlever les valeurs absolues.** Pour deux réels $u$ et $v$, on a $|u| \geqslant |v|$ si et seulement si $u^2 \geqslant v^2$, car $|u|^2 = u^2$, $|v|^2 = v^2$, et deux nombres positifs ou nuls sont rangés dans le même ordre que leurs carrés. La première hypothèse s'écrit donc $(a - b)^2 \geqslant c^2$, c'est-à-dire

$$(a - b)^2 - c^2 \geqslant 0 , \qquad \text{soit} \qquad (a - b - c)(a - b + c) \geqslant 0 .$$

De même, les deux autres hypothèses donnent

$$(b - c - a)(b - c + a) \geqslant 0 \qquad \text{et} \qquad (c - a - b)(c - a + b) \geqslant 0 .$$

**Étape 2 : trois expressions seulement.** Posons

$$X = -a + b + c, \qquad Y = a - b + c, \qquad Z = a + b - c .$$

Alors $a - b - c = -X$ et $a - b + c = Y$ ; puis $b - c - a = -Y$ et $b - c + a = Z$ ; enfin $c - a - b = -Z$ et $c - a + b = X$. Les trois inégalités deviennent

$$-XY \geqslant 0, \qquad -YZ \geqslant 0, \qquad -ZX \geqslant 0 .$$

**Étape 3 : multiplier.** Un produit de nombres positifs ou nuls est positif ou nul. En multipliant les trois inégalités membre à membre, on obtient

$$(-XY)(-YZ)(-ZX) \geqslant 0, \qquad \text{c'est-à-dire} \qquad -X^2 Y^2 Z^2 \geqslant 0 .$$

Mais $X^2 Y^2 Z^2 = (XYZ)^2$ est un carré, donc positif ou nul. On a donc à la fois $(XYZ)^2 \geqslant 0$ et $(XYZ)^2 \leqslant 0$, d'où $(XYZ)^2 = 0$, puis $XYZ = 0$. Un produit est nul seulement si l'un des facteurs est nul :

- si $X = 0$, alors $a = b + c$ ;
- si $Y = 0$, alors $b = a + c$ ;
- si $Z = 0$, alors $c = a + b$.

**Conclusion.** Dans tous les cas, l'un des trois nombres $a$, $b$, $c$ est la somme des deux autres.

## Going further

1. La réciproque est-elle vraie ? Si $a = b + c$, les trois inégalités de l'énoncé sont-elles forcément vérifiées ?
2. Trouver trois réels $a$, $b$, $c$, tous non nuls, qui vérifient les trois inégalités de l'énoncé.
