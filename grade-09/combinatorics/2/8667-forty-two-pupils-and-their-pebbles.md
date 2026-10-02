---
id: "8667"
title: "42 élèves et leurs cailloux"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [minimum, somme-des-entiers, analyse-et-construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 12 (envoi 4 de combinatoire POFM 2020-2021, exercice 3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

$42$ élèves sont placés en ligne, les uns à côté des autres. Paul donne à chaque élève un certain nombre de cailloux, toujours au moins un.

Il s'arrange pour que **chaque élève ait strictement plus de cailloux que son voisin de droite**, sauf bien sûr l'élève tout à droite de la file, qui n'a pas de voisin de droite.

Combien de cailloux Paul a-t-il distribué en tout, au minimum ?

## Hints

1. Commence par un cas plus petit : $3$ élèves. Quel est le minimum ? Et avec $4$ élèves ?
2. Regarde la file **en partant de la droite**. Combien l'élève tout à droite a-t-il de cailloux au minimum ? Et celui juste à sa gauche ?
3. Montre que le $k$-ième élève en partant de la droite a au moins $k$ cailloux.
4. Attention : trouver une borne ne suffit pas. Il faut aussi montrer que ce minimum est **atteint**, en donnant une distribution qui marche.
5. Tu auras besoin de la somme $1 + 2 + \cdots + 42$.

## Solution

Un problème de minimum se traite toujours en **deux temps** : on montre d'abord qu'on ne peut pas faire mieux qu'une certaine valeur, puis on montre que cette valeur est réellement atteignable.

### Premier temps : on ne peut pas faire mieux que 903

Numérotons les élèves **en partant de la droite**, et notons $a_k$ le nombre de cailloux du $k$-ième élève, pour $k$ allant de $1$ à $42$.

La règle dit exactement que chaque élève a strictement plus de cailloux que celui qui est juste à sa droite, c'est-à-dire

$$a_1 < a_2 < a_3 < \cdots < a_{42} .$$

Montrons que $a_k \geqslant k$ pour tout $k$.

- L'élève tout à droite reçoit au moins un caillou, donc $a_1 \geqslant 1$.
- Supposons $a_k \geqslant k$ pour un certain $k$. Comme $a_{k+1} > a_k \geqslant k$ et que ce sont des entiers, on a $a_{k+1} \geqslant k+1$.

De proche en proche, $a_k \geqslant k$ pour tout $k$ de $1$ à $42$.

En additionnant ces $42$ inégalités :

$$a_1 + a_2 + \cdots + a_{42} \geqslant 1 + 2 + \cdots + 42 = \frac{42 \times 43}{2} = 903 .$$

Paul a donc distribué **au moins $903$ cailloux**.

### Second temps : 903 est atteint

Il suffit d'exhiber une distribution. Donnons $1$ caillou à l'élève tout à droite, $2$ à son voisin de gauche, $3$ au suivant, et ainsi de suite jusqu'à $42$ cailloux pour l'élève tout à gauche.

Chaque élève a alors bien un caillou de plus que son voisin de droite, donc strictement plus : la règle est respectée. Et le total vaut

$$1 + 2 + \cdots + 42 = 903 .$$

### Conclusion

$$\boxed{\text{Paul a distribué au minimum } 903 \text{ cailloux.}}$$

## Going further

La structure « **analyse puis construction** » est la bonne façon de répondre à toute question de minimum ou de maximum. Une seule des deux moitiés ne prouve rien : une borne sans exemple ne dit pas que la borne est la bonne, et un exemple sans borne ne dit pas qu'on ne peut pas faire mieux.

Et une variante pour continuer : même question, mais cette fois chaque élève doit avoir **au moins deux cailloux de plus** que son voisin de droite. Quel est le minimum ?
