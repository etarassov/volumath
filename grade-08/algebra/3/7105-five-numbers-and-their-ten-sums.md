---
id: "7105"
title: "Cinq nombres et leurs dix sommes"
grade: 8
theme: algebra
difficulty: 3
duration_min: 30
tags: [somme, ordre, double-comptage, equation]
adapted_from: null
see_also: ["7923"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

On se donne cinq nombres rangés dans l'ordre croissant :

$$a < b < c < d < e .$$

1. On additionne ces nombres deux par deux, de toutes les façons possibles. Combien de
   sommes obtient-on ?
2. Ces sommes valent, dans le désordre :

$$21, \quad 26, \quad 35, \quad 40, \quad 49, \quad 51, \quad 54, \quad 60, \quad 65, \quad 79 .$$

   Retrouver $a$, $b$, $c$, $d$ et $e$.

## Hints

1. Pour la question 1, fais simplement la liste des paires, en commençant par celles qui
   contiennent $a$, puis celles qui contiennent $b$ sans $a$, et ainsi de suite.
2. Pour la question 2 : range les dix sommes dans l'ordre croissant. Laquelle est la plus
   petite à coup sûr ? Et la deuxième plus petite ? Attention, il faut justifier.
3. Même question du côté des grandes sommes.
4. Additionne les dix sommes. Combien de fois chacun des cinq nombres apparaît-il dans
   ce total ?
5. Une fois que tu connais $a + b + c + d + e$, $a + b$ et $d + e$, tu obtiens $c$ d'un seul
   coup.

## Solution

**Question 1.** Une somme est déterminée par la paire de nombres choisis. Faisons la liste :

$$a+b, \ a+c, \ a+d, \ a+e, \ b+c, \ b+d, \ b+e, \ c+d, \ c+e, \ d+e .$$

Il y a donc **dix** sommes. (On les compte aussi ainsi : cinq choix pour le premier nombre,
quatre pour le second, ce qui fait $5 \times 4 = 20$ façons, mais chaque paire est comptée
deux fois, d'où $20 : 2 = 10$.)

**Question 2. Les deux plus petites sommes.**

La plus petite somme est $a + b$. En effet, dans toute autre somme, on remplace $a$ ou $b$
par un nombre strictement plus grand, ce qui augmente le total.

La deuxième plus petite est $a + c$. En effet, toutes les sommes autres que $a+b$ et $a+c$
contiennent au moins deux des nombres $b$, $c$, $d$, $e$, donc valent au moins $b + c$, qui
est strictement plus grand que $a + c$.

Donc

$$a + b = 21 \qquad \text{et} \qquad a + c = 26 .$$

**Les deux plus grandes sommes.** Par le même raisonnement, retourné :

$$d + e = 79 \qquad \text{et} \qquad c + e = 65 .$$

**La somme totale.** Additionnons les dix sommes. Chacun des cinq nombres est associé à
chacun des quatre autres, donc chacun apparaît exactement **quatre** fois dans le total :

$$21 + 26 + 35 + 40 + 49 + 51 + 54 + 60 + 65 + 79 = 4(a + b + c + d + e) .$$

Le membre de gauche vaut $480$, donc

$$a + b + c + d + e = 120 .$$

**On déroule.** Le nombre $c$ s'obtient en retirant du total les deux sommes extrêmes :

$$c = (a+b+c+d+e) - (a+b) - (d+e) = 120 - 21 - 79 = 20 .$$

Ensuite :

- $a = (a+c) - c = 26 - 20 = 6$ ;
- $b = (a+b) - a = 21 - 6 = 15$ ;
- $e = (c+e) - c = 65 - 20 = 45$ ;
- $d = (d+e) - e = 79 - 45 = 34$.

**Vérification.** Avec $6, 15, 20, 34, 45$, les dix sommes sont

$$21, \ 26, \ 40, \ 51, \ 35, \ 49, \ 60, \ 54, \ 65, \ 79 ,$$

c'est-à-dire, une fois rangées, exactement la liste de l'énoncé.

**Conclusion.** Les cinq nombres sont $\boxed{6,\ 15,\ 20,\ 34,\ 45}$.

## Going further

La vérification finale n'est pas une politesse. Le raisonnement a montré que **si** cinq
nombres conviennent, **alors** ce sont ceux-là ; il n'a pas montré qu'ils conviennent. Il
fallait donc bien refaire les dix sommes pour conclure.

Question pour continuer : à partir de quatre nombres $a < b < c < d$ on forme six sommes
deux à deux. Peut-on toujours retrouver les quatre nombres ? Et avec six nombres ?
