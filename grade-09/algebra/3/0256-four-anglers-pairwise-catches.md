---
id: "0256"
title: "Quatre pêcheurs et leurs prises deux à deux"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [sommes-deux-a-deux, ordre, systeme, double-comptage]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 1, задача 6"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Quatre amis reviennent de la pêche. Pour chacune des six paires d'amis que l'on peut
former, on a calculé le nombre total de poissons pêchés par ces deux amis-là. On a obtenu
les six nombres suivants :
$$7, \quad 9, \quad 14, \quad 14, \quad 19, \quad 21 .$$

a) Combien de poissons ont été pêchés en tout ?

b) Peut-on retrouver la prise de chacun des quatre amis ?

## Hints

1. Pour la question a) : dans les six sommes, la prise d'un même pêcheur apparaît combien de fois ? Compte avec combien d'autres amis il est associé.
2. Chaque pêcheur apparaît dans exactement 3 des 6 paires. La somme des six nombres vaut donc trois fois le total des prises.
3. Pour la question b) : range les quatre prises dans l'ordre croissant, $a \le b \le c \le d$. Parmi les six sommes, laquelle est forcément la plus petite ? Laquelle est la plus grande ?
4. La plus petite est $a+b$ et la plus grande est $c+d$. Cherche maintenant la deuxième plus petite : montre que c'est $a+c$. De même, la deuxième plus grande est $b+d$.
5. Tu obtiens $a+b = 7$, $a+c = 9$, $b+d = 19$, $c+d = 21$, et les deux sommes restantes valent 14. Déduis $c$ en fonction de $b$, puis utilise $b+c = 14$.

## Solution

**L'idée : d'abord compter les poissons de deux façons, ensuite ranger les prises dans
l'ordre pour savoir quelle somme est laquelle.**

### a) Le nombre total de poissons

Les quatre amis forment six paires. Chaque pêcheur se retrouve associé aux trois autres, il
apparaît donc dans exactement **trois** de ces six paires.

Si l'on additionne les six nombres, la prise de chaque pêcheur est donc comptée trois fois :
$$7 + 9 + 14 + 14 + 19 + 21 = 84 = 3 \times (\text{total des prises}) .$$

Donc le total des prises vaut
$$\frac{84}{3} = 28 \ \text{poissons}.$$

### b) Les prises de chacun

Notons les quatre prises $a \le b \le c \le d$, rangées dans l'ordre croissant. Les six
sommes deux à deux sont
$$a+b, \quad a+c, \quad a+d, \quad b+c, \quad b+d, \quad c+d .$$

**Étape 1. Repérer la plus petite et la plus grande somme.**

Comme $a$ et $b$ sont les deux plus petites prises, $a+b$ est la plus petite des six sommes.
De même, $c+d$ est la plus grande. Donc
$$a+b = 7 \qquad\text{et}\qquad c+d = 21 .$$

Au passage, $(a+b)+(c+d) = 7 + 21 = 28$ : on retrouve bien le total de la question a).

**Étape 2. Repérer la deuxième plus petite et la deuxième plus grande.**

Comparons $a+c$ aux quatre sommes autres que $a+b$ :
$$a+c \le a+d, \qquad a+c \le b+c, \qquad a+c \le b+c \le b+d, \qquad a+c \le b+c \le c+d .$$
Donc $a+c$ est la plus petite des cinq sommes restantes : c'est la deuxième plus petite de
toutes, et
$$a+c = 9 .$$

Le même raisonnement, en partant du haut, montre que $b+d$ est la deuxième plus grande :
$$b+d = 19 .$$

**Étape 3. Les deux sommes qui restent.**

Il reste $a+d$ et $b+c$, et il reste dans la liste les deux nombres 14 et 14. Donc
$$a+d = 14 \qquad\text{et}\qquad b+c = 14 .$$

**Étape 4. Résoudre.**

De $a+b = 7$ et $a+c = 9$, on tire par soustraction
$$c - b = 2, \qquad\text{donc}\qquad c = b + 2 .$$

On remplace dans $b+c = 14$ :
$$b + (b+2) = 14, \qquad 2b = 12, \qquad b = 6 .$$

Puis :
- $c = b + 2 = 8$ ;
- $a = 7 - b = 1$ ;
- $d = 21 - c = 13$.

**Vérification.** Avec les prises $1$, $6$, $8$, $13$, les six sommes deux à deux valent
$$1+6 = 7,\quad 1+8 = 9,\quad 1+13 = 14,\quad 6+8 = 14,\quad 6+13 = 19,\quad 8+13 = 21 .$$
C'est exactement la liste de l'énoncé. Et $1+6+8+13 = 28$, ce qui confirme la question a).

**Conclusion.** En tout 28 poissons ont été pêchés, et oui, on peut retrouver les prises :
elles valent $1$, $6$, $8$ et $13$ poissons.

## Going further

1. Montre que, dans ce genre de problème, la somme du plus petit et du plus grand des six
   nombres donne toujours le total des prises.
2. Les six nombres $1, 2, 3, 4, 5, 6$ pourraient-ils être les sommes deux à deux des prises de
   quatre pêcheurs ? Trouve une raison rapide de répondre sans chercher les prises.
3. Reprends l'exercice avec la liste $6, 9, 12, 13, 16, 19$.
