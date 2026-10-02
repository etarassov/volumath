---
id: "7406"
title: "Combien de zéros dans 123…2010 ?"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [numeration, denombrement, chiffres, organisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, chasse au trésor"
  reference: "stage_ete_2010.pdf, « Activités ludiques », chasse au trésor, exercices débutants, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On écrit à la suite tous les entiers de $1$ à $2010$, sans espace ni virgule. On obtient un très
long nombre :
$$1\,2\,3\,4\,5\,6\,7\,8\,9\,1\,0\,1\,1\,1\,2\,\ldots\,2\,0\,0\,8\,2\,0\,0\,9\,2\,0\,1\,0$$

Combien de chiffres $0$ ce nombre contient-il ?

## Hints

1. Il ne s'agit pas de compter les nombres qui contiennent un zéro, mais les **chiffres** $0$ : le
   nombre $100$ en apporte deux à lui tout seul.
2. Sépare le travail : compte d'abord les zéros apportés par les nombres à $1$ chiffre, puis par
   ceux à $2$ chiffres, puis à $3$, puis à $4$.
3. Pour les nombres à trois chiffres, compte séparément les zéros à la place des dizaines et ceux
   à la place des unités. Un nombre comme $\overline{a0c}$ a un zéro aux dizaines ; un nombre
   comme $\overline{ab0}$ en a un aux unités ; $\overline{a00}$ est compté une fois dans chaque
   liste, et c'est correct puisqu'il apporte bien deux zéros.

## Solution

On compte les chiffres $0$ paquet par paquet.

**Les nombres de $1$ à $9$.** Aucun ne contient de $0$ : **$0$ zéro**.

**Les nombres de $10$ à $99$.** Un tel nombre s'écrit $\overline{ab}$ avec $a$ de $1$ à $9$. Le
chiffre $a$ n'est jamais nul. Le chiffre $b$ est nul exactement pour $10, 20, \ldots, 90$, soit
$9$ nombres, chacun apportant un zéro : **$9$ zéros**.

**Les nombres de $100$ à $999$.** Un tel nombre s'écrit $\overline{abc}$ avec $a$ de $1$ à $9$.

- Zéros à la place des **dizaines** ($b = 0$) : il y a $9$ choix pour $a$ et $10$ choix pour $c$,
  donc $9 \times 10 = 90$ nombres, et $90$ zéros.
- Zéros à la place des **unités** ($c = 0$) : de même $9 \times 10 = 90$ nombres, donc $90$ zéros.

Un nombre comme $500$ est compté dans les deux listes, ce qui est exactement ce qu'on veut :
il apporte bien deux zéros.

Total pour ce paquet : $90 + 90 = $ **$180$ zéros**.

**Les nombres de $1000$ à $1999$.** Un tel nombre s'écrit $\overline{1bcd}$, où $b$, $c$ et $d$
parcourent librement $0$ à $9$.

- Zéros à la place des **centaines** ($b = 0$) : $10 \times 10 = 100$ nombres, donc $100$ zéros.
- Zéros à la place des **dizaines** ($c = 0$) : $100$ zéros.
- Zéros à la place des **unités** ($d = 0$) : $100$ zéros.

Total pour ce paquet : $300$ zéros.

**Les nombres de $2000$ à $2010$.** Écrivons-les :
$$2000,\ 2001,\ 2002,\ \ldots,\ 2009,\ 2010.$$

- $2000$ apporte $3$ zéros.
- Les neuf nombres $2001, 2002, \ldots, 2009$ s'écrivent $\overline{200d}$ avec $d$ non nul.
  Chacun apporte $2$ zéros, soit $9 \times 2 = 18$ zéros.
- $2010$ apporte $2$ zéros (celui des centaines et celui des unités).

Total pour ce paquet : $3 + 18 + 2 = 23$ zéros.

**On additionne.**
$$0 + 9 + 180 + 300 + 23 = 512.$$

**Conclusion : le nombre contient $\boxed{512}$ chiffres $0$.**

## Going further

Combien ce même nombre contient-il de chiffres $1$ ? La méthode est la même, mais attention : le
chiffre de tête n'est plus toujours interdit.
