---
id: "5119"
title: "Le plus grand nombre avec trois 9"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [puissances, comparaison, ordre, grands-nombres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Big Numbers », Tom Davis"
  reference: "bignumbers.pdf, section 1"
  url: "https://mathcircles.org/activity/big-numbers/"
  original_language: "en"
  local_copy: "sources/originals/namc/bignumbers.pdf"
---

## Statement

**Une convention.** Dans une tour de puissances, on calcule toujours de haut en bas : $a^{b^{c}}$ veut dire $a^{(b^{c})}$, et non $(a^{b})^{c}$. C'est la convention universelle, et pour une bonne raison : $(a^{b})^{c}$ vaut simplement $a^{bc}$, et n'aurait donc pas besoin d'une notation à part.

1. Avec trois chiffres $9$ et des puissances, on peut fabriquer les cinq nombres

$$999, \qquad 99^{9}, \qquad 9^{99}, \qquad (9^{9})^{9}, \qquad 9^{9^{9}}$$

Ranger ces cinq nombres du plus petit au plus grand, sans calculatrice.

2. Faire le même travail avec trois chiffres $2$ :

$$222, \qquad 22^{2}, \qquad 2^{22}, \qquad (2^{2})^{2}, \qquad 2^{2^{2}}$$

3. Que remarque-t-on en comparant les deux réponses ?

## Hints

1. Commence par simplifier ce qui peut l'être : que vaut $(9^{9})^{9}$ sous la forme d'une seule puissance de $9$ ?
2. Pour comparer deux puissances de même base, il suffit de comparer les exposants.
3. Pour comparer $99^{9}$ et une puissance de $9$, majore : $99 < 100 = 10^{2}$.
4. Que vaut $9^{9}$, et comment se compare-t-il à $99$ ?
5. Pour la question 2, calcule vraiment les cinq nombres : ils sont petits.

## Solution

### Question 1 : les trois 9

**D'abord, une simplification.** Par la règle $(a^{b})^{c} = a^{bc}$ :

$$(9^{9})^{9} = 9^{81}$$

On a donc à ranger $999$, $99^{9}$, $9^{81}$, $9^{99}$ et $9^{9^{9}}$.

**Les trois puissances de 9 entre elles.** Leurs exposants sont $81$, $99$ et $9^{9}$. Or

$$9^{9} = 387\,420\,489$$

Donc $81 < 99 < 9^{9}$, et comme la base $9$ est plus grande que $1$ :

$$9^{81} < 9^{99} < 9^{9^{9}}$$

**Où se place $999$ ?** C'est le plus petit de tous. En effet $999 < 9801 = 99^{2} < 99^{9}$, et l'on va voir que $99^{9}$ est lui-même le plus petit des quatre autres.

**Où se place $99^{9}$ ?** Majorons :

$$99^{9} < 100^{9} = (10^{2})^{9} = 10^{18}$$

Et minorons $9^{81}$. On a $9^{81} = (9^{9})^{9} = 387\,420\,489^{9}$, et $387\,420\,489 > 10^{8}$, donc

$$9^{81} > (10^{8})^{9} = 10^{72}$$

Comme $10^{18} < 10^{72}$, on conclut $99^{9} < 9^{81}$.

**Conclusion de la question 1.**

$$999 \; < \; 99^{9} \; < \; (9^{9})^{9} \; < \; 9^{99} \; < \; 9^{9^{9}}$$

Le plus grand est donc la tour $9^{9^{9}}$, et de très loin.

### Question 2 : les trois 2

Ici on peut tout calculer :

$$2^{2^{2}} = 2^{4} = 16, \qquad (2^{2})^{2} = 2^{4} = 16, \qquad 222, \qquad 22^{2} = 484, \qquad 2^{22} = 4\,194\,304$$

**Conclusion de la question 2.**

$$2^{2^{2}} = (2^{2})^{2} \; < \; 222 \; < \; 22^{2} \; < \; 2^{22}$$

Le plus grand est $2^{22} = 4\,194\,304$.

### Question 3 : la remarque

Avec trois $9$, c'est la tour $9^{9^{9}}$ qui gagne haut la main. Avec trois $2$, c'est elle qui **perd** : $2^{2^{2}} = 16$ est le plus petit des cinq, et c'est la juxtaposition $2^{22}$ qui gagne.

La raison est simple : empiler des exposants ne sert que si l'exposant du haut est grand. Avec des $9$, l'étage supérieur $9^{9}$ vaut déjà près de $400$ millions, ce qui écrase tout. Avec des $2$, l'étage supérieur $2^{2}$ ne vaut que $4$, alors qu'accoler deux $2$ donne l'exposant $22$, bien plus efficace.

## Going further

Quelle est la taille de $9^{9^{9}}$ ? Pour qui connaît le logarithme décimal, son nombre de chiffres vaut

$$9^{9} \times \log_{10} 9 + 1 \approx 387\,420\,489 \times \text{0,954} \approx 369\,693\,100$$

C'est-à-dire près de $370$ millions de chiffres. Écrit à raison de $3000$ chiffres par page, il remplirait environ $123\,000$ pages.

Et si l'on s'autorise plus de symboles ? On pourrait croire que le mieux est d'empiler cent $9$ en une tour géante. Tom Davis, dont ce problème est tiré, montre qu'on peut faire beaucoup mieux : avec les bonnes notations (flèches de Knuth, fonction d'Ackermann), on fabrique en quelques symboles des nombres devant lesquels une tour de cent $9$ est minuscule.
