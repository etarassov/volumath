---
id: "7504"
title: "Un carré qui se termine par 6"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [chiffres, carre, retenues, parite, dizaines]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 21 (solution p. 242, résolue par Moïse Blanchard et Marc Michoux)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Le carré d'un nombre entier se termine par le chiffre $6$.

Montrer que son chiffre des dizaines, c'est-à-dire l'avant-dernier chiffre du carré, est impair.

Par exemple $4^2 = 16$, $6^2 = 36$, $14^2 = 196$, $16^2 = 256$ : les chiffres des dizaines sont $1$, $3$, $9$, $5$, tous impairs.

## Hints

1. Les deux derniers chiffres d'un carré ne dépendent que des deux derniers chiffres du nombre de départ. Pourquoi ?
2. Commence par le chiffre des unités : quels chiffres $b$ ont un carré qui se termine par $6$ ? Il n'y en a que deux.
3. Écris le nombre de départ sous la forme $10a + b$ où $b$ est son chiffre des unités, et développe $(10a+b)^2$.
4. Dans ce développement, repère le terme qui fabrique les dizaines, et n'oublie pas la retenue venant de $b^2$.

## Solution

**Étape 1. Seuls les deux derniers chiffres comptent.**

Soit $N$ le nombre de départ. Écrivons $N = 100k + 10a + b$, où $b$ est le chiffre des unités et $a$ le chiffre des dizaines de $N$. En développant,

$$N^2 = (100k)^2 + 2 \times 100k \times (10a+b) + (10a+b)^2.$$

Les deux premiers termes sont des multiples de $100$ : ils ne touchent ni les unités ni les dizaines. Les deux derniers chiffres de $N^2$ sont donc ceux de $(10a+b)^2$, et on peut travailler uniquement avec $a$ et $b$.

**Étape 2. Quel peut être le chiffre des unités de $N$ ?**

Le chiffre des unités de $N^2$ est celui de $b^2$. Faisons la liste :

| $b$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| $b^2$ | 0 | 1 | 4 | 9 | 16 | 25 | 36 | 49 | 64 | 81 |

Le carré se termine par $6$ seulement pour $b = 4$ et $b = 6$.

**Étape 3. On développe.**

$$(10a + b)^2 = 100a^2 + 20ab + b^2.$$

Le terme $100a^2$ est un multiple de $100$ : on l'oublie. Il reste $20ab + b^2$, et c'est ce nombre qui donne les deux derniers chiffres.

**Cas $b = 4$.** On a $b^2 = 16$, donc

$$20ab + b^2 = 40a + 16.$$

Les unités valent $6$ (bien), et le chiffre des dizaines est celui de $4a + 1$. Or $4a$ est pair, donc $4a + 1$ est impair, et son chiffre des unités est impair.

**Cas $b = 6$.** On a $b^2 = 36$, donc

$$20ab + b^2 = 120a + 36.$$

Les unités valent $6$ (bien), et le chiffre des dizaines est celui de $12a + 3$. Or $12a$ est pair, donc $12a + 3$ est impair, et son chiffre des unités est impair.

**Conclusion.** Dans les deux cas possibles, le chiffre des dizaines du carré est impair.

## Going further

La même méthode répond à beaucoup de questions du même genre. Par exemple : le chiffre des dizaines d'un carré qui se termine par $4$ est **pair** ; celui d'un carré qui se termine par $1$, $9$ ou $5$ l'est aussi. En fait, dès que le dernier chiffre d'un carré n'est pas $6$, l'avant-dernier est pair. Le chiffre $6$ est le seul cas exceptionnel, et c'est parce que $4^2 = 16$ et $6^2 = 36$ sont les seuls carrés de chiffres dont la retenue est impaire.

Une conséquence amusante : aucun carré ne se termine par $06$, $26$, $46$, $66$ ou $86$. Un nombre comme $1\,234\,526$ n'est donc sûrement pas un carré, et on le voit sans calculer la moindre racine.
