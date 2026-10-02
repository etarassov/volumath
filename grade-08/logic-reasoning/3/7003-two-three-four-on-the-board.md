---
id: "7003"
title: "2, 3, 4 au tableau"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, tableau]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, test final des débutants, exercice 1 ; repris en 2012 (stage_junior_2012.pdf, débutants, combinatoire après-midi, exercice 6)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Au tableau sont écrits les trois nombres
$$2, \qquad 3, \qquad 4 .$$

On répète autant de fois qu'on veut l'opération suivante : on choisit deux des trois nombres
écrits, appelons-les $a$ et $b$, on efface **le troisième** et on écrit $a + b - 1$ à sa place.

Par exemple, en choisissant $3$ et $4$, on efface le $2$ et on écrit $3 + 4 - 1 = 6$ : le
tableau porte alors $6$, $3$, $4$.

1. Peut-on obtenir, au bout d'un certain nombre d'opérations, les nombres $6$, $9$, $14$ ?
2. Peut-on obtenir les nombres $101$, $102$, $103$ ?
3. Peut-on obtenir les nombres $101$, $103$, $105$ ?

## Hints

1. Pour la première question, il suffit d'essayer : cherche la bonne suite de coups.
2. Pour les deux autres, cherche une quantité qui ne change jamais. Regarde la somme des trois
   nombres.
3. Une autre piste pour la question 3 : combien y a-t-il de nombres impairs au tableau ? Et
   après une opération ?

## Solution

**1. Oui, $6$, $9$, $14$ est possible.**

- On part de $2$, $3$, $4$. On choisit $3$ et $4$, on efface $2$ et on écrit
  $3 + 4 - 1 = 6$. Le tableau porte $6$, $3$, $4$.
- On choisit $6$ et $4$, on efface $3$ et on écrit $6 + 4 - 1 = 9$. Le tableau porte
  $6$, $9$, $4$.
- On choisit $6$ et $9$, on efface $4$ et on écrit $6 + 9 - 1 = 14$. Le tableau porte
  $6$, $9$, $14$. ✓

**2. Non, $101$, $102$, $103$ est impossible.**

Regardons la **somme** des trois nombres écrits. Si le tableau porte $a$, $b$, $c$ et qu'on
remplace $c$ par $a + b - 1$, la nouvelle somme vaut
$$a + b + (a + b - 1) = 2(a+b) - 1 .$$
C'est un nombre **impair**, quels que soient $a$ et $b$.

Donc dès la première opération, et pour toujours ensuite, la somme des trois nombres du
tableau est impaire. (Au départ elle vaut déjà $2 + 3 + 4 = 9$, impair.)

Or
$$101 + 102 + 103 = 306,$$
qui est pair. On ne peut donc pas l'obtenir.

**3. Non, $101$, $103$, $105$ est impossible.**

La somme ne suffit plus : $101 + 103 + 105 = 309$ est bien impair. Il faut un autre invariant.

Comptons le nombre de **nombres impairs** au tableau. Au départ, $2$, $3$, $4$ : il y en a
exactement un.

Montrons que ce compte reste toujours égal à $1$. Supposons qu'à un instant donné le tableau
porte un impair et deux pairs. Trois cas selon le nombre qu'on efface :

- **on efface l'impair** : alors $a$ et $b$ sont les deux pairs, et $a + b - 1$ est impair. Le
  tableau porte à nouveau un impair et deux pairs ;
- **on efface un des pairs** : alors $a$ et $b$ sont l'impair et l'autre pair, donc $a+b$ est
  impair et $a + b - 1$ est pair. Le tableau porte encore un impair et deux pairs.

Dans tous les cas, il reste exactement **un** nombre impair au tableau.

Or $101$, $103$, $105$ sont **trois** nombres impairs. C'est donc impossible.

**Conclusion.** On peut obtenir $6$, $9$, $14$, mais ni $101$, $102$, $103$, ni
$101$, $103$, $105$.

## Going further

Il existe une troisième façon de traiter la question 3, sans invariant : après chaque
opération, l'un des trois nombres est égal à la somme des deux autres moins $1$. Ce n'est le
cas ni pour $101, 102, 103$ ni pour $101, 103, 105$.

Mais cette méthode a ses limites : elle ne dit rien sur le triplet $101$, $201$, $301$, où
$101 + 201 - 1 = 301$ convient parfaitement. Là, seul l'invariant « un seul impair » permet de
conclure que c'est impossible.
