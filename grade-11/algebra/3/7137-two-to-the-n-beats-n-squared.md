---
id: "7137"
title: "Deux puissance n dépasse n au carré"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence, inegalites, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Vendredi : test final », débutants, exercice 1 (la solution imprimée écrit « supposons $2^n \\geqslant n+1$ » là où il faut lire $2^n \\geqslant n^2$)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 4$,

$$2^n \geqslant n^2 .$$

## Hints

1. Vérifie l'inégalité à la main pour $n = 0, 1, 2, 3, 4, 5$. Pourquoi l'énoncé demande-t-il
   $n \geqslant 4$ ?
2. Fais une récurrence. Que faut-il démontrer au rang $n+1$ ?
3. Développe $(n+1)^2 = n^2 + 2n + 1$ et cherche à majorer $2n + 1$ par quelque chose de la
   forme $n^2$ multiplié par un facteur.
4. Pour $n \geqslant 4$, compare $2n + 1$ et $n^2$. L'écart est-il grand ?

## Solution

**Pourquoi $n \geqslant 4$.** Pour $n = 3$ on a $2^3 = 8$ et $3^2 = 9$, donc l'inégalité est
**fausse** en $n = 3$. Elle est vraie pour $n = 0, 1, 2$ et redevient vraie à partir de
$n = 4$. C'est ce que demande l'énoncé.

Raisonnons par récurrence sur $n \geqslant 4$.

**Initialisation.** Pour $n = 4$ :

$$2^4 = 16 \qquad \text{et} \qquad 4^2 = 16 ,$$

donc $2^4 \geqslant 4^2$. L'inégalité est vraie au rang $4$.

**Hérédité.** Soit $n \geqslant 4$ et supposons que $2^n \geqslant n^2$. Montrons que
$2^{n+1} \geqslant (n+1)^2$.

Commençons par majorer les deux termes gênants. Comme $n \geqslant 4$, on a
$4n \leqslant n \times n$, c'est-à-dire

$$2n \leqslant \frac{n^2}{2} .$$

Par ailleurs $n^2 \geqslant 16 \geqslant 2$, donc

$$1 \leqslant \frac{n^2}{2} .$$

En additionnant ces deux majorations :

$$(n+1)^2 = n^2 + 2n + 1 \leqslant n^2 + \frac{n^2}{2} + \frac{n^2}{2} = 2n^2 .$$

En utilisant enfin l'hypothèse de récurrence $n^2 \leqslant 2^n$ :

$$(n+1)^2 \leqslant 2n^2 \leqslant 2 \times 2^n = 2^{n+1} .$$

L'inégalité est donc vraie au rang $n+1$.

**Conclusion.** Par récurrence, $2^n \geqslant n^2$ pour tout entier $n \geqslant 4$.

## Going further

L'inégalité s'améliore vite. Dès $n = 5$ elle devient stricte ($32 > 25$), et l'écart
explose : pour $n = 20$, $2^{20} = 1\,048\,576$ contre $400$.

C'est un cas particulier d'un phénomène général : **l'exponentielle finit toujours par
dépasser n'importe quelle puissance**. Pour tout entier $k$ fixé, on a $2^n \geqslant n^k$ dès
que $n$ est assez grand. La même récurrence marche, il faut seulement partir de plus loin.

Une question pour continuer : à partir de quel $n$ a-t-on $2^n \geqslant n^3$ ?
