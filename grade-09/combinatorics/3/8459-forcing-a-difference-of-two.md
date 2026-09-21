---
id: "8459"
title: "Forcer une différence de 2"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [principe des tiroirs, construction, chaines, extremum]
adapted_from: null
see_also: ["8550"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Principe des tiroirs » (Angela Xue), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Combien d'entiers au minimum faut-il choisir dans l'ensemble

$$\{1, \; 2, \; 3, \; \ldots, \; 20\}$$

pour être **certain** que le choix contienne deux entiers $a$ et $b$ vérifiant $a - b = 2$ ?

## Hints

1. Une question « combien au minimum pour être certain » se traite toujours en deux temps : montrer qu'un certain nombre suffit, et exhiber un choix qui rate avec un de moins.
2. Commence par le deuxième temps : essaie de choisir beaucoup d'entiers **sans** jamais prendre deux nombres écartés de $2$. Combien arrives-tu à en prendre ?
3. Sépare les nombres pairs des nombres impairs. Une différence de $2$ ne relie jamais un pair à un impair.
4. Range les impairs dans l'ordre : $1, 3, 5, \ldots, 19$. Deux d'entre eux ont une différence de $2$ exactement quand ils sont **voisins** dans cette liste. Combien peux-tu en choisir sans jamais prendre deux voisins ?

## Solution

La réponse est $\boxed{11}$.

### Étape 1. Ranger les vingt nombres en deux files

Une différence de $2$ conserve la parité : si $a - b = 2$, alors $a$ et $b$ sont tous deux pairs ou tous deux impairs. Séparons donc les vingt nombres en deux files :

$$\text{impairs : } 1, \; 3, \; 5, \; 7, \; 9, \; 11, \; 13, \; 15, \; 17, \; 19$$

$$\text{pairs : } 2, \; 4, \; 6, \; 8, \; 10, \; 12, \; 14, \; 16, \; 18, \; 20$$

Chaque file compte $10$ nombres, et dans chaque file, deux nombres ont une différence de $2$ **exactement** quand ils sont voisins dans la file.

### Étape 2. Un choix de 10 nombres qui rate

Dans une file de $10$ nombres, on peut en choisir $5$ sans jamais en prendre deux voisins : il suffit de prendre un sur deux. Par exemple

$$\text{dans les impairs : } 1, \; 5, \; 9, \; 13, \; 17$$

$$\text{dans les pairs : } 2, \; 6, \; 10, \; 14, \; 18$$

Cela fait $10$ nombres en tout :

$$\{1, \; 2, \; 5, \; 6, \; 9, \; 10, \; 13, \; 14, \; 17, \; 18\}.$$

Vérifions qu'aucune paire n'a une différence de $2$. Deux nombres de même parité choisis ici diffèrent d'au moins $4$. Deux nombres de parités différentes ont une différence impaire, donc jamais égale à $2$.

**Avec $10$ nombres, on peut donc échouer.** La réponse cherchée est donc au moins $11$.

### Étape 3. Onze nombres suffisent

Réciproquement, montrons que tout choix de $11$ nombres contient forcément deux entiers de différence $2$.

Découpons chaque file en cinq **paires de voisins** :

$$\text{impairs : } \{1, 3\}, \; \{5, 7\}, \; \{9, 11\}, \; \{13, 15\}, \; \{17, 19\}$$

$$\text{pairs : } \{2, 4\}, \; \{6, 8\}, \; \{10, 12\}, \; \{14, 16\}, \; \{18, 20\}$$

Cela fait **dix paires**, qui contiennent à elles toutes les vingt nombres. Ce sont nos dix tiroirs.

Si l'on choisit $11$ nombres et qu'on les range dans ces $10$ tiroirs, le principe des tiroirs donne un tiroir contenant au moins deux nombres choisis. Comme chaque tiroir ne contient que deux nombres, ce tiroir est pris en entier : les deux nombres d'une même paire sont choisis. Or les deux nombres d'une paire diffèrent exactement de $2$.

### Conclusion

Avec $10$ nombres on peut échouer, avec $11$ on réussit toujours. Le minimum cherché est donc

$$\boxed{11.}$$

## Going further

Les deux moitiés de la réponse jouent des rôles très différents, et il faut les deux pour répondre à une question « combien au minimum ».

- La **construction** de l'étape 2 montre que $10$ ne suffit pas. Sans elle, on aurait pu croire que $9$ ou $8$ convenaient déjà.
- Le **principe des tiroirs** de l'étape 3 montre que $11$ suffit. Le travail est de choisir les bons tiroirs : ici, des paires dont les deux éléments diffèrent de $2$.

On peut refaire l'exercice en remplaçant $2$ par une autre différence. Pour une différence de $1$, les tiroirs sont les paires $\{1,2\}, \{3,4\}, \ldots, \{19,20\}$ : il y en a $10$ également, et la réponse est encore $11$. Pour une différence de $3$, le découpage change : les nombres se répartissent en trois files selon leur reste modulo $3$, de longueurs $7$, $7$ et $6$, et l'on trouve un autre nombre. À toi d'essayer.
