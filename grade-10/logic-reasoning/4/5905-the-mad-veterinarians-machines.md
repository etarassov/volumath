---
id: "5905"
title: "Les machines du vétérinaire fou"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, modulo, transformation, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Mad Veterinarian on Mathematical Safari (Gene Abrams, Colorado Math Circle, 2009)"
  reference: "GAbramsMadVetpuzzles.pdf, « Puzzle 2 », questions 2.1 à 2.5"
  url: "https://mathcircles.org/activity/the-mad-veterinarian/"
  original_language: "en"
  local_copy: "sources/originals/namc/GAbramsMadVetpuzzles.pdf"
---

## Statement

Une vétérinaire un peu folle a construit trois machines à transformer les animaux.

- La machine $1$ transforme **un chat** en **un chien**.
- La machine $2$ transforme **un chien** en **un chat, un chien et une souris**.
- La machine $3$ transforme **une souris** en **un chat et un chien**.

Chaque machine fonctionne aussi à l'envers. Par exemple, si on possède un chat, un chien et une souris, on peut les mettre ensemble dans la machine $2$ à l'envers et récupérer un seul chien.

La vétérinaire possède au départ **un chat, et rien d'autre**. Elle peut utiliser les machines autant de fois qu'elle veut, dans l'ordre qu'elle veut, dans les deux sens.

1. Peut-elle se retrouver avec exactement deux chats et rien d'autre ?
2. Peut-elle se retrouver avec exactement trois chats et rien d'autre ?
3. Peut-elle se retrouver avec exactement trois chats et un chien ?
4. Peut-elle se retrouver avec exactement une souris et rien d'autre ?

Pour chaque question, répondre oui en montrant comment faire, ou non en expliquant pourquoi c'est impossible.

## Hints

1. Commence par jouer : pars d'un chat et note les collections d'animaux que tu obtiens. Tu en trouveras beaucoup, mais jamais deux chats.
2. Essayer au hasard ne prouvera jamais qu'une collection est inaccessible : il y a une infinité de suites de coups possibles. Il faut une quantité qui ne change jamais, ou qui change de façon très contrôlée.
3. Attribue un nombre à chaque espèce : $a$ pour un chat, $b$ pour un chien, $c$ pour une souris. Le « poids » d'une collection est la somme des nombres de tous les animaux qu'elle contient.
4. Cherche $a$, $b$, $c$ tels que chaque machine ne change pas le poids, ou le change à chaque fois d'un même multiple. Écris les trois conditions et résous.
5. Essaie $a = 1$, $b = 1$, $c = 2$. Que fait chaque machine au poids total ?
6. Une fois l'obstacle trouvé, il reste les cas qu'il n'interdit pas : là, il faut exhiber une suite de coups.

## Solution

Notons $(c, d, s)$ la collection formée de $c$ chats, $d$ chiens et $s$ souris. Au départ, la vétérinaire a $(1, 0, 0)$.

### L'invariant

Attribuons le nombre $1$ à chaque chat, $1$ à chaque chien et $2$ à chaque souris, et appelons **poids** de la collection le nombre
$$N = c + d + 2s.$$

Regardons ce que chaque machine fait au poids.

- **Machine $1$** (un chat devient un chien) : $c$ perd $1$, $d$ gagne $1$. Le poids varie de $-1 + 1 = 0$.
- **Machine $2$** (un chien devient un chat, un chien et une souris) : $d$ est inchangé, $c$ gagne $1$, $s$ gagne $1$. Le poids varie de $1 + 2 = 3$.
- **Machine $3$** (une souris devient un chat et un chien) : $s$ perd $1$, $c$ gagne $1$, $d$ gagne $1$. Le poids varie de $-2 + 1 + 1 = 0$.

Utilisées à l'envers, les machines font varier le poids de $0$, de $-3$ et de $0$ respectivement.

Dans tous les cas, **le poids varie d'un multiple de $3$**. Donc le reste de $N$ dans la division par $3$ ne change jamais.

Au départ, $N = 1$, de reste $1$. Donc :

> **Toute collection que la vétérinaire peut obtenir a un poids de reste $1$ dans la division par $3$.**

### Les quatre questions

**1. Deux chats.** Poids $N = 2$, de reste $2$. Ce n'est pas $1$ : **impossible**.

**2. Trois chats.** Poids $N = 3$, de reste $0$. Ce n'est pas $1$ : **impossible**.

**3. Trois chats et un chien.** Poids $N = 3 + 1 = 4$, de reste $1$ : l'invariant n'interdit rien. Et en effet, c'est **possible** :

$$(1,0,0) \ \xrightarrow{\ \text{machine } 1\ } \ (0,1,0) \ \xrightarrow{\ \text{machine } 2\ } \ (1,1,1) \ \xrightarrow{\ \text{machine } 1 \text{ à l'envers}\ } \ (2,0,1) \ \xrightarrow{\ \text{machine } 3\ } \ (3,1,0).$$

En mots : elle transforme son chat en chien ; ce chien devient un chat, un chien et une souris ; elle retransforme ce chien en chat, ce qui lui donne deux chats et une souris ; enfin la souris devient un chat et un chien. Elle a bien trois chats et un chien.

**4. Une souris.** Poids $N = 2$, de reste $2$. Ce n'est pas $1$ : **impossible**.

### Conclusion

Non, non, oui, non. Les trois réponses négatives viennent toutes du même obstacle : le poids $c + d + 2s$ garde toujours le même reste dans la division par $3$.

*Remarque.* On peut montrer que cet obstacle est le seul : une collection non vide est accessible depuis un chat **exactement** lorsque son poids a pour reste $1$ dans la division par $3$. L'invariant ne fait donc pas qu'interdire, il décrit exactement ce qui est possible.

## Going further

1. Comment trouver les nombres $1$, $1$, $2$ sans les deviner ? Écris que les trois machines conservent le poids modulo un entier $m$, cela donne trois équations en $a$, $b$, $c$ ; résous-les.
2. Les collections d'animaux se répartissent en « classes » : deux collections sont dans la même classe quand on peut passer de l'une à l'autre avec les machines. Combien y a-t-il de classes ? Décris-les.
3. Une amie veut offrir à la vétérinaire un chat et une souris pour son anniversaire. Pourra-t-elle revenir ensuite à la situation d'avant le cadeau ? Et si le cadeau était un chien ?
4. Reprends tout avec un autre jeu de machines : la machine $1$ transforme un chat en un chien et une souris, la machine $2$ transforme un chien en un chat et un chien, la machine $3$ transforme une souris en un chat et une souris. Combien de classes cette fois ?
