---
id: "7956"
title: "Les entiers écrits seulement avec 2, 0, 1 et 6"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [numeration, base-4, bijection, rang-dans-une-liste]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 33, niveau 1 (énoncé p. 282 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On écrit dans l'ordre croissant tous les entiers naturels dont l'écriture en base $10$ ne comprend que les chiffres $2$, $0$, $1$ et $6$. La liste commence ainsi :

$$0, \ 1, \ 2, \ 6, \ 10, \ 11, \ 12, \ 16, \ 20, \ 21, \ \ldots$$

1. En quelle position se trouve l'entier $2016$ ?
2. Quel entier se trouve en $2016^{\text{e}}$ position ?

## Hints

1. Les quatre chiffres autorisés sont $0 < 1 < 2 < 6$. Combien y en a-t-il ? Cela doit te faire penser à une base.
2. Écris les premiers entiers en base $4$ : $0, 1, 2, 3, 10, 11, 12, 13, 20, 21, \ldots$ et compare avec la liste de l'énoncé.
3. Le dictionnaire est donc : chiffre $0$ de la base $4$ $\to$ chiffre $0$, $1 \to 1$, $2 \to 2$, $3 \to 6$. Vérifie que cette correspondance respecte l'ordre.
4. Fais attention au décalage : le premier élément de la liste est $0$, qui correspond au nombre $0$ en base $4$. La position $1$ correspond donc au rang $0$.

## Solution

**Les réponses : $2016$ est en position $136$, et l'entier en $2016^{\text{e}}$ position est $166\,166$.**

**Étape 1 : la correspondance avec la base $4$.**

Les chiffres autorisés sont, dans l'ordre croissant,

$$0 < 1 < 2 < 6 .$$

Il y en a exactement quatre. Associons-leur les quatre chiffres de la base $4$ :

$$0 \leftrightarrow 0, \qquad 1 \leftrightarrow 1, \qquad 2 \leftrightarrow 2, \qquad 3 \leftrightarrow 6 .$$

À tout entier $m$, écrit en base $4$, associons le nombre obtenu en remplaçant chacun de ses chiffres par le chiffre correspondant, et en lisant le résultat en base $10$.

Cette correspondance est une **bijection** entre les entiers naturels et les nombres de la liste : tout nombre de la liste s'obtient d'une seule façon, en relisant ses chiffres dans l'autre sens.

De plus, elle **respecte l'ordre**. En effet, comparer deux entiers écrits avec le même nombre de chiffres revient à comparer leurs chiffres de gauche à droite jusqu'au premier qui diffère ; et notre dictionnaire respecte l'ordre des chiffres. Comme il envoie aussi les nombres à $k$ chiffres sur des nombres à $k$ chiffres, l'ordre global est conservé.

*Vérification :* les entiers $0, 1, 2, 3, 10, 11, 12, 13, 20, 21$ écrits en base $4$ deviennent $0, 1, 2, 6, 10, 11, 12, 16, 20, 21$. C'est exactement le début de la liste de l'énoncé. ✓

**Étape 2 : la question des positions.**

Le nombre correspondant à $m$ se trouve donc en position $m + 1$ dans la liste, puisque la position $1$ est occupée par le nombre correspondant à $m = 0$.

**Question 1 : où se trouve $2016$ ?**

Le nombre $2016$ s'écrit avec les chiffres $2$, $0$, $1$, $6$. En les relisant avec le dictionnaire dans l'autre sens, on obtient les chiffres de base $4$ : $2$, $0$, $1$, $3$. Donc $2016$ correspond à l'entier

$$m = 2 \times 4^3 + 0 \times 4^2 + 1 \times 4 + 3 = 128 + 0 + 4 + 3 = 135 .$$

Sa position est donc

$$135 + 1 = \boxed{136} .$$

**Question 2 : qui est en position $2016$ ?**

La position $2016$ correspond à $m = 2015$. Écrivons $2015$ en base $4$ :

$$2015 = 1 \times 1024 + 991 , \quad 991 = 3 \times 256 + 223 , \quad 223 = 3 \times 64 + 31 , \quad 31 = 1 \times 16 + 15 , \quad 15 = 3 \times 4 + 3 .$$

Donc $2015$ s'écrit $133\,133$ en base $4$. Contrôle :

$$1 \times 1024 + 3 \times 256 + 3 \times 64 + 1 \times 16 + 3 \times 4 + 3 = 1024 + 768 + 192 + 16 + 12 + 3 = 2015 . \ \checkmark$$

En appliquant le dictionnaire ($1 \to 1$, $3 \to 6$), on obtient

$$\boxed{166\,166} .$$
