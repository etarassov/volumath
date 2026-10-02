---
id: "5003"
title: "La plaque d'immatriculation de la professeure"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, criteres-de-divisibilite, chiffres, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « License Plates and Divisibility », Sonya Kohli, Philadelphia Area Math Teachers' Circle"
  reference: "Amazing-Numbers-PAMTC.pdf, questions 1 à 4"
  url: "https://mathcircles.org/activity/license-plates-and-divisibility/"
  original_language: "en"
  local_copy: "sources/originals/namc/Amazing-Numbers-PAMTC.pdf"
---

## Statement

La professeure Nathalie Attirée aime tellement les mathématiques qu'elle a fait fabriquer une
plaque d'immatriculation personnalisée. Sa plaque porte un nombre de six chiffres qui utilise
chacun des chiffres $1$, $2$, $3$, $4$, $5$, $6$ **une fois et une seule**, et qui vérifie :

- le nombre formé par les $2$ premiers chiffres (à partir de la gauche) est divisible par $2$ ;
- le nombre formé par les $3$ premiers chiffres est divisible par $3$ ;
- le nombre formé par les $4$ premiers chiffres est divisible par $4$ ;
- le nombre formé par les $5$ premiers chiffres est divisible par $5$ ;
- le nombre entier de six chiffres est divisible par $6$.

1. Quel est le nombre inscrit sur sa plaque ?
2. Un collègue jaloux a trouvé un autre nombre de six chiffres qui vérifie exactement les
   mêmes règles. Lequel ?
3. Y en a-t-il encore d'autres ? Justifier.

## Hints

1. Appelle les six chiffres $c_1 c_2 c_3 c_4 c_5 c_6$ dans l'ordre où ils sont écrits.
2. Commence par le chiffre le plus contraint. Par quels chiffres un multiple de $5$ peut-il
   se terminer ? Quels sont ceux dont tu disposes ?
3. Le nombre des $2$ premiers chiffres est pair, celui des $4$ premiers aussi, le nombre
   entier aussi. Que peux-tu dire de $c_2$, $c_4$ et $c_6$ ? Combien as-tu de chiffres pairs
   en tout ?
4. La somme $1+2+3+4+5+6$ vaut $21$. Que dit alors le critère de divisibilité par $3$ pour le
   nombre entier ? La condition « divisible par $6$ » apporte-t-elle du nouveau ?
5. Applique le critère de divisibilité par $3$ aux **trois premiers** chiffres. Tu connais
   déjà $c_1 + c_3$. Cela détermine $c_2$.
6. Un nombre est divisible par $4$ exactement quand le nombre formé par ses **deux derniers**
   chiffres l'est. Applique cela à $c_3 c_4$.

## Solution

Notons $c_1 c_2 c_3 c_4 c_5 c_6$ les six chiffres, dans l'ordre. Ce sont les chiffres $1$ à
$6$, chacun une fois.

**Étape 1. Le cinquième chiffre.**

Le nombre $c_1c_2c_3c_4c_5$ est divisible par $5$, donc il se termine par $0$ ou par $5$.
Le chiffre $0$ n'est pas disponible, donc

$$c_5 = 5 .$$

**Étape 2. Les places paires portent les chiffres pairs.**

- $c_1c_2$ est divisible par $2$, donc $c_2$ est pair.
- $c_1c_2c_3c_4$ est divisible par $4$, donc il est pair, donc $c_4$ est pair.
- Le nombre entier est divisible par $6$, donc il est pair, donc $c_6$ est pair.

Les trois chiffres pairs disponibles sont $2$, $4$ et $6$ : ils occupent donc exactement les
places $2$, $4$ et $6$. Les trois chiffres impairs $1$, $3$, $5$ occupent les places $1$, $3$
et $5$. Comme $c_5 = 5$, il reste

$$\{c_1, c_3\} = \{1, 3\} \quad \text{et} \quad \{c_2, c_4, c_6\} = \{2, 4, 6\} .$$

**Étape 3. La divisibilité par 6 est automatique.**

La somme de tous les chiffres vaut $1+2+3+4+5+6 = 21$, qui est un multiple de $3$. Donc le
nombre entier est divisible par $3$. Comme il est aussi pair, il est divisible par $6$ : cette
dernière condition ne nous apprendra rien de plus.

**Étape 4. Le deuxième chiffre.**

Le nombre $c_1c_2c_3$ est divisible par $3$, donc $c_1 + c_2 + c_3$ est un multiple de $3$.
Or $c_1 + c_3 = 1 + 3 = 4$. Il faut donc que $4 + c_2$ soit un multiple de $3$, avec
$c_2 \in \{2, 4, 6\}$ :

- $c_2 = 2$ donne $6$, multiple de $3$ : cela convient ;
- $c_2 = 4$ donne $8$ : non ;
- $c_2 = 6$ donne $10$ : non.

Donc $c_2 = 2$, et il reste $\{c_4, c_6\} = \{4, 6\}$.

**Étape 5. Le quatrième chiffre.**

Un nombre est divisible par $4$ si et seulement si le nombre formé par ses deux derniers
chiffres l'est. (En effet, $100$ est un multiple de $4$, donc tout ce qui est au-delà des
dizaines est déjà un multiple de $4$.)

Ici, il faut donc que le nombre à deux chiffres $c_3c_4$ soit divisible par $4$, avec
$c_3 \in \{1, 3\}$ et $c_4 \in \{4, 6\}$. Les quatre possibilités sont

$$14 = 4 \times 3 + 2, \quad 16 = 4 \times 4, \quad 34 = 4 \times 8 + 2, \quad 36 = 4 \times 9 .$$

Seules $16$ et $36$ conviennent, et toutes les deux se terminent par $6$. Donc

$$c_4 = 6 \quad \text{et} \quad c_6 = 4 .$$

**Étape 6. On conclut.**

La plaque est donc de la forme

$$c_1\,2\,c_3\,6\,5\,4 \qquad \text{avec } \{c_1, c_3\} = \{1, 3\} .$$

Il ne reste que deux nombres possibles : $123654$ et $321654$. Vérifions-les tous les deux.

| | $123654$ | $321654$ |
|---|---|---|
| $2$ premiers chiffres | $12 = 2 \times 6$ | $32 = 2 \times 16$ |
| $3$ premiers chiffres | $123 = 3 \times 41$ | $321 = 3 \times 107$ |
| $4$ premiers chiffres | $1236 = 4 \times 309$ | $3216 = 4 \times 804$ |
| $5$ premiers chiffres | $12365 = 5 \times 2473$ | $32165 = 5 \times 6433$ |
| le nombre entier | $123654 = 6 \times 20609$ | $321654 = 6 \times 53609$ |

Les deux marchent.

**Conclusion.** Il y a exactement **deux** plaques possibles : $\boxed{123654}$ et
$\boxed{321654}$. Il n'y en a pas d'autres, puisque le raisonnement ci-dessus n'a laissé que
ces deux candidats. La professeure a l'une des deux, son collègue a l'autre.

## Going further

Au passage, le raisonnement montre que sur les $720$ façons de ranger les six chiffres, seules
deux survivent. Les contraintes sont bien plus rigides qu'elles n'en ont l'air : chaque
critère de divisibilité élimine d'un coup la grande majorité des candidats.
