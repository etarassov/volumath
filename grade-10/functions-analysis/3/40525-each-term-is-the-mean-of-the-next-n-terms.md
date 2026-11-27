---
id: "40525"
title: "Chaque terme est la moyenne des n termes suivants"
grade: 10
theme: functions-analysis
difficulty: 3
duration_min: 35
tags: [suites, moyenne, suite-croissante, second-degre, systeme, construction, relation-de-recurrence]
adapted_from: null
see_also: ["40526", "40527"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème III « Moyennes prévisionnelles », questions 1°, 2°, 3° et 5° (la question 5° du sujet devient ici la question 4)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

On considère des suites de nombres $(u_n) = (u_1, u_2, u_3, \ldots)$, c'est-à-dire des listes
infinies de nombres, numérotées à partir de $1$. On dit qu'une suite est *de type M* si, pour
tout entier $n \geqslant 1$, le terme $u_n$ est la moyenne des $n$ termes qui le suivent :

$$u_n = \frac{u_{n+1} + u_{n+2} + \cdots + u_{2n}}{n} .$$

Par exemple, pour $n = 1$ cela donne $u_1 = u_2$, et pour $n = 2$, $u_2 = \frac{u_3 + u_4}{2}$.
Une suite constante (tous les termes égaux) est évidemment de type M.

1. Soit $(u_n)$ une suite de type M et $C$ un nombre. Que dire de la suite
   $(u_n - C) = (u_1 - C, u_2 - C, \ldots)$ ?

2. On dit qu'une suite est *croissante* si $u_n \leqslant u_{n+1}$ pour tout $n \geqslant 1$.
   Montrer que toute suite croissante de type M est constante.

3. Soit $(u_n)$ une suite de type M. On suppose qu'il existe des nombres $a$, $b$, $c$ tels que
   $u_n = an^2 + bn + c$ pour tout $n \geqslant 1$. Montrer que $a = b = 0$.

4. Existe-t-il une suite de type M qui n'est pas constante ?

## Hints

1. **Question 2.** Si la suite est croissante, chacun des nombres $u_{n+1}, \ldots, u_{2n}$ est
   au moins égal à $u_{n+1}$. Que peut-on dire de leur moyenne ?
2. **Question 3.** Il suffit d'écrire la définition pour $n = 1$ et pour $n = 2$.
3. **Question 4.** Écrire les premières égalités, pour $n = 1, 2, 3, 4$. Quel est le terme de
   plus grand numéro qui apparaît dans l'égalité numéro $n$ ?
4. **Question 4.** L'égalité numéro $n$ permet de calculer $u_{2n}$ à partir des termes
   précédents. Les termes de numéro impair $u_3, u_5, u_7, \ldots$ sont-ils imposés par une
   égalité ?

## Solution

**1.** Pour tout $n \geqslant 1$,

$$\frac{(u_{n+1} - C) + \cdots + (u_{2n} - C)}{n} = \frac{u_{n+1} + \cdots + u_{2n}}{n} - \frac{nC}{n} = u_n - C .$$

La suite $(u_n - C)$ est donc encore de type M.

**2.** Soit $(u_n)$ une suite croissante de type M, et $n \geqslant 1$. Les nombres
$u_{n+1}, u_{n+2}, \ldots, u_{2n}$ sont tous supérieurs ou égaux à $u_{n+1}$, puisque la suite
est croissante. Leur moyenne l'est donc aussi : $u_n \geqslant u_{n+1}$. Comme d'autre part
$u_n \leqslant u_{n+1}$, on obtient $u_n = u_{n+1}$.

C'est vrai pour tout $n \geqslant 1$, donc $u_1 = u_2 = u_3 = \cdots$ : la suite est constante.

**3.** Pour $n = 1$, la définition donne $u_1 = u_2$, soit $a + b + c = 4a + 2b + c$, c'est-à-dire
$3a + b = 0$.

Pour $n = 2$, elle donne $2u_2 = u_3 + u_4$, soit
$2(4a + 2b + c) = (9a + 3b + c) + (16a + 4b + c)$, c'est-à-dire $8a + 4b = 25a + 7b$, ou
encore $17a + 3b = 0$.

La première égalité donne $b = -3a$ ; en remplaçant dans la seconde, $17a - 9a = 8a = 0$. Donc
$a = 0$, puis $b = 0$.

(Réciproquement, avec $a = b = 0$ la suite est constante, égale à $c$, donc bien de type M.)

**4.** Oui. Écrivons les premières égalités de la définition :

$$u_1 = u_2, \qquad 2u_2 = u_3 + u_4, \qquad 3u_3 = u_4 + u_5 + u_6, \qquad 4u_4 = u_5 + u_6 + u_7 + u_8, \quad \ldots$$

L'égalité numéro $n$ s'écrit

$$u_{2n} = n\,u_n - (u_{n+1} + u_{n+2} + \cdots + u_{2n-1}) .$$

Elle permet de calculer $u_{2n}$ à partir des termes $u_n, \ldots, u_{2n-1}$, dont les numéros
sont plus petits que $2n$. En revanche, aucun terme de numéro impair $u_3, u_5, u_7, \ldots$
n'est imposé : on peut les choisir librement.

*Construction.* Choisissons $u_1 = 0$, $u_3 = 1$, et $u_5 = u_7 = u_9 = \cdots = 0$. Calculons
ensuite les termes de numéro pair, dans l'ordre, par la formule ci-dessus : au moment de
calculer $u_{2n}$, tous les termes de numéro plus petit sont déjà connus (ceux de numéro impair
ont été choisis, ceux de numéro pair ont été calculés avant). On obtient

$$u_2 = u_1 = 0, \qquad u_4 = 2u_2 - u_3 = -1, \qquad u_6 = 3u_3 - u_4 - u_5 = 4,$$

$$u_8 = 4u_4 - u_5 - u_6 - u_7 = -8, \quad \ldots$$

Par construction, chaque égalité numéro $n$ est vraie, puisque c'est elle qui a servi à
calculer $u_{2n}$. La suite obtenue, qui commence par $0, 0, 1, -1, 0, 4, 0, -8$, est donc de
type M, et elle n'est pas constante puisque $u_3 \neq u_1$.

**Conclusion :** il existe des suites de type M non constantes, et même beaucoup : on peut
choisir librement tous les termes de numéro impair.

**Bilan.** Une suite de type M reste de type M quand on retranche une constante à tous ses
termes. Une telle suite ne peut pas être croissante sans être constante, ni être donnée par une
formule du second degré non constante. Pourtant les suites de type M non constantes existent : le
premier terme et tous les termes de numéro impair à partir de $u_3$ se choisissent librement, et
les termes de numéro pair s'en déduisent.

## Going further

- Calculer les termes $u_{10}$, $u_{12}$, $u_{14}$, $u_{16}$ de la suite construite à la
  question 4. Que remarque-t-on sur la taille des termes ?
- Dans la suite du sujet, on montrait qu'une suite de type M qui ne prend que des valeurs
  positives ou nulles vérifie $u_p \leqslant 3u_r$ pour tous $p$ et $r$ (exercice 40526), puis
  que toute suite de type M majorée ou minorée est constante (exercice 40527). Les suites non
  constantes de la question 4 prennent donc forcément des valeurs aussi grandes et aussi
  négatives que l'on veut.
