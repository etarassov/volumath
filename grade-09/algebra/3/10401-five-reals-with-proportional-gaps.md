---
id: "10401"
title: "Cinq réels et des écarts proportionnels"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [valeur-absolue, parite, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Juniors, exercice 1 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Pour un nombre réel $a$, on note $|a|$ sa **valeur absolue** : $|a| = a$ si $a \geqslant 0$, et $|a| = -a$ si $a < 0$. Ainsi $|x_2 - x_1|$ est la distance entre les nombres $x_1$ et $x_2$ sur la droite graduée.

Soient $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ cinq nombres réels tels que

$$|x_2 - x_1| = 2\,|x_3 - x_2| = 3\,|x_4 - x_3| = 4\,|x_5 - x_4| = 5\,|x_1 - x_5| .$$

Montrer que ces cinq nombres sont tous égaux.

## Hints

1. Appelle $d$ la valeur commune de ces cinq quantités. Que valent alors $|x_3 - x_2|$, $|x_4 - x_3|$, $|x_5 - x_4|$ et $|x_1 - x_5|$ en fonction de $d$ ?
2. Si $|a| = b$, alors $a = b$ ou $a = -b$. Chaque écart $x_2 - x_1$, $x_3 - x_2$, … vaut donc « plus ou moins » une fraction de $d$.
3. Additionne les cinq écarts $(x_2 - x_1) + (x_3 - x_2) + (x_4 - x_3) + (x_5 - x_4) + (x_1 - x_5)$. Que vaut cette somme ?
4. Pour te débarrasser des fractions, multiplie tout par $60$. Regarde alors la parité des cinq nombres $60$, $30$, $20$, $15$, $12$.

## Solution

Notons $d$ la valeur commune des cinq quantités de l'énoncé. Alors

$$|x_2 - x_1| = d, \quad |x_3 - x_2| = \frac{d}{2}, \quad |x_4 - x_3| = \frac{d}{3}, \quad |x_5 - x_4| = \frac{d}{4}, \quad |x_1 - x_5| = \frac{d}{5} .$$

**Les écarts avec leur signe.** Si $|a| = b$, alors $a = b$ ou $a = -b$. Il existe donc cinq signes $s_1, s_2, s_3, s_4, s_5$, chacun égal à $+1$ ou à $-1$, tels que

$$x_2 - x_1 = s_1\,d, \quad x_3 - x_2 = s_2\,\frac{d}{2}, \quad x_4 - x_3 = s_3\,\frac{d}{3}, \quad x_5 - x_4 = s_4\,\frac{d}{4}, \quad x_1 - x_5 = s_5\,\frac{d}{5} .$$

**On additionne.** Dans la somme des cinq membres de gauche, tout se simplifie :

$$(x_2 - x_1) + (x_3 - x_2) + (x_4 - x_3) + (x_5 - x_4) + (x_1 - x_5) = 0 .$$

En effet, $x_2$ apparaît une fois avec le signe $+$ et une fois avec le signe $-$, de même pour $x_3$, $x_4$, $x_5$ et $x_1$. On obtient donc

$$s_1\,d + s_2\,\frac{d}{2} + s_3\,\frac{d}{3} + s_4\,\frac{d}{4} + s_5\,\frac{d}{5} = 0 .$$

Multiplions par $60$ pour chasser les dénominateurs :

$$d \times \left( 60\,s_1 + 30\,s_2 + 20\,s_3 + 15\,s_4 + 12\,s_5 \right) = 0 .$$

**Une question de parité.** Le nombre $N = 60\,s_1 + 30\,s_2 + 20\,s_3 + 15\,s_4 + 12\,s_5$ est un entier. Les nombres $60\,s_1$, $30\,s_2$, $20\,s_3$ et $12\,s_5$ valent chacun plus ou moins un nombre pair, ils sont donc pairs. Le nombre $15\,s_4$ vaut $15$ ou $-15$, il est impair. Une somme de quatre nombres pairs et d'un nombre impair est impaire. Donc $N$ est impair, et en particulier $N \neq 0$.

**Conclusion.** Le produit $d \times N$ est nul et $N$ ne l'est pas, donc $d = 0$. Les cinq écarts sont alors nuls :

$$x_1 = x_2 = x_3 = x_4 = x_5 .$$

Les cinq nombres sont bien tous égaux.

## Going further

1. Montrer que le résultat reste vrai pour $n$ nombres et les coefficients $1, 2, \ldots, n$, quel que soit $n \geqslant 2$. (Piste : parmi les entiers de $1$ à $n$, un seul est divisible par la plus grande puissance de $2$ qui ne dépasse pas $n$.)
2. Avec quatre nombres et les coefficients $1, 2, 3, 6$, c'est-à-dire si $|x_2 - x_1| = 2|x_3 - x_2| = 3|x_4 - x_3| = 6|x_1 - x_4|$, les nombres sont-ils forcément égaux ? Essaie $x_1 = 0$ et $x_2 = 6$.
