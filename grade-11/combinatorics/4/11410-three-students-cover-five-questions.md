---
id: "11410"
title: "Trois élèves couvrent cinq questions"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [double-comptage, minimum, concours, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Seniors, exercice 18 ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

$2019$ élèves participent à un concours de $6$ questions. Chaque réponse d'un élève à une question
est soit juste, soit fausse.

À la fin du concours, on remarque que, dans n'importe quel groupe de $3$ élèves, il y a au moins
$5$ questions sur les $6$ auxquelles au moins un des trois élèves a répondu juste.

Quel est le plus petit nombre total de bonnes réponses possible ?

## Hints

1. Traduis la condition : combien de questions, au plus, peuvent être ratées par les trois élèves
   d'un même groupe ?
2. Choisis deux questions. Combien d'élèves, au plus, ont raté ces deux questions à la fois ?
3. Compte de deux façons les couples formés d'un élève et d'une paire de questions qu'il a ratées
   toutes les deux. Il y a $15$ paires de questions.
4. Un élève qui a raté $z$ questions apparaît dans $\frac{z(z-1)}{2}$ couples. Compare ce nombre
   à $z - 1$.

## Solution

**Traduire la condition.** Dire que, dans un groupe de $3$ élèves, au moins $5$ questions ont reçu
au moins une bonne réponse, c'est dire qu'au plus $1$ question a été ratée par les trois.

**Deux questions ne sont jamais ratées toutes les deux par trois élèves.** Si trois élèves avaient
raté les deux mêmes questions, ce groupe de trois aurait au moins $2$ questions ratées par tous,
ce qui est interdit. Donc, pour chaque paire de questions, **au plus $2$ élèves** ont raté les
deux questions de la paire.

**Un double comptage.** Pour chaque élève, notons $z$ son nombre de mauvaises réponses. Comptons
les couples (élève, paire de questions que cet élève a ratées toutes les deux).

- Il y a $\frac{6 \times 5}{2} = 15$ paires de questions, et chacune apparaît dans au plus $2$
  couples. Il y a donc au plus $30$ couples.
- Un élève qui a raté $z$ questions apparaît dans $\frac{z(z-1)}{2}$ couples, le nombre de façons
  de choisir deux questions parmi ses $z$ questions ratées.

Donc la somme des nombres $\frac{z(z-1)}{2}$, sur tous les élèves, vaut au plus $30$.

**Une inégalité simple.** Pour tout entier $z \geqslant 0$, on a
$$\frac{z(z-1)}{2} \geqslant z - 1 .$$
En effet, pour $z = 0$ cela donne $0 \geqslant -1$, pour $z = 1$ cela donne $0 \geqslant 0$, et
pour $z \geqslant 2$ on a $z - 1 \geqslant 0$ et $\frac{z}{2} \geqslant 1$, donc
$\frac{z}{2}(z - 1) \geqslant z - 1$.

En additionnant sur les $2019$ élèves :
$$(\text{nombre total de mauvaises réponses}) - 2019 \leqslant 30 ,$$
donc il y a au plus $2049$ mauvaises réponses. Comme il y a $2019 \times 6 = 12\,114$ réponses en
tout, il y a au moins
$$12\,114 - 2049 = 10\,065$$
bonnes réponses.

**Ce minimum est atteint.** Pour chacune des $15$ paires de questions, on prend deux élèves qui
ratent exactement ces deux questions et réussissent les quatre autres : cela fait $30$ élèves. Les
$1989$ autres élèves ratent chacun exactement une question (n'importe laquelle) et réussissent les
cinq autres.

La condition est vérifiée : un élève qui n'a raté qu'une question n'a raté aucune paire, donc
chaque paire de questions a été ratée en entier par exactement $2$ élèves. Trois élèves ne peuvent
donc jamais avoir raté deux mêmes questions, et dans tout groupe de trois, au plus une question est
ratée par tous.

Le nombre de bonnes réponses est $30 \times 4 + 1989 \times 5 = 120 + 9945 = 10\,065$.

**Conclusion.**

**Le plus petit nombre total de bonnes réponses est $10\,065$.**
