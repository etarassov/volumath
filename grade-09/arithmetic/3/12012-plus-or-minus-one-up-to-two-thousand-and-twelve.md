---
id: "12012"
title: "Les sommes ±1 ± 2 ± … ± 2012"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [parite, somme, signe, construction, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 2 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf (dans la première méthode du corrigé, l'encadrement qui définit k est écrit à l'envers ; solution réécrite avec les signes moins placés de façon gloutonne)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

Devant chacun des nombres $1, 2, 3, \ldots, 2012$, on place un signe $+$ ou un signe $-$, puis on calcule la somme obtenue, par exemple

$$+1 - 2 - 3 + 4 + 5 - \cdots + 2012 .$$

Combien d'entiers différents peut-on obtenir de cette façon, en essayant tous les choix de signes possibles ?

## Hints

1. Notez $S = 1 + 2 + \cdots + 2012$. Entre quelles valeurs se trouvent toutes les sommes obtenues ?
2. Que devient la somme quand on remplace un signe $+$ par un signe $-$ ? Déduisez-en la parité de toutes les sommes.
3. Si l'on met un signe $-$ devant les nombres d'un groupe dont la somme vaut $b$, et un signe $+$ devant les autres, quelle somme obtient-on ?
4. Il reste à montrer que tout entier $b$ compris entre $0$ et $S$ est la somme de quelques-uns des nombres $1, 2, \ldots, 2012$, tous différents. Essayez de prendre d'abord les plus grands.

## Solution

**Réponse.** On peut obtenir exactement $2\,025\,079$ entiers.

Notons $S = 1 + 2 + \cdots + 2012$. En écrivant la somme une seconde fois à l'envers, $2012 + 2011 + \cdots + 1$, et en ajoutant les deux terme à terme, on obtient $2012$ fois le nombre $2013$, donc

$$S = \frac{2012 \times 2013}{2} = 1006 \times 2013 = 2\,025\,078 .$$

**Étape 1 : ce qu'on ne peut pas dépasser.** Une somme $\pm 1 \pm 2 \pm \cdots \pm 2012$ est au plus égale à $S$ (tous les signes $+$) et au moins égale à $-S$ (tous les signes $-$).

**Étape 2 : toutes les sommes sont paires.** Si l'on met un signe $-$ devant les nombres d'un groupe $G$ et un signe $+$ devant tous les autres, et si $b$ est la somme des nombres de $G$, la somme obtenue vaut

$$(S - b) - b = S - 2b ,$$

car on part de $S$ et chaque nombre de $G$, au lieu d'être ajouté, est retiré, ce qui fait une différence de deux fois ce nombre. Comme $S = 1006 \times 2013$ est pair, $S - 2b$ est pair.

Les sommes possibles sont donc des entiers **pairs** compris entre $-S$ et $S$. Il y a $S + 1$ entiers pairs dans cet intervalle : ce sont les nombres $S - 2b$ pour $b = 0, 1, 2, \ldots, S$.

**Étape 3 : on les obtient tous.** D'après l'étape 2, pour obtenir $S - 2b$, il suffit de trouver un groupe de nombres **distincts** parmi $1, 2, \ldots, 2012$ dont la somme vaut $b$, puis de mettre les signes $-$ devant eux. Montrons qu'un tel groupe existe pour tout entier $b$ entre $0$ et $S$.

- Si $b = 0$, on prend le groupe vide (tous les signes sont $+$). Si $b = S$, on prend tous les nombres.
- Si $1 \le b \le 2012$, le groupe formé du seul nombre $b$ convient.
- Reste le cas $2012 < b < S$. On prend les plus grands nombres tant qu'on ne dépasse pas $b$ : $2012$, puis $2011$, puis $2010$, et ainsi de suite. On prend au moins $2012$, et on s'arrête avant d'avoir pris tous les nombres puisque $b < S$. Notons $k$ le dernier nombre pris : on a $k \ge 2$ et

$$T = 2012 + 2011 + \cdots + k \le b \qquad \text{et} \qquad T + (k - 1) > b .$$

Le reste $r = b - T$ vérifie donc $0 \le r < k - 1$. Si $r = 0$, le groupe $\{k, k+1, \ldots, 2012\}$ convient. Si $r \ge 1$, le nombre $r$ est compris entre $1$ et $k - 2$, il n'est donc pas encore dans le groupe, et le groupe $\{r\} \cup \{k, k+1, \ldots, 2012\}$ a pour somme $T + r = b$.

**Un exemple.** Pour $b = 4030$ : on prend $2012$, puis $2011$, ce qui fait $4023$. Prendre $2010$ dépasserait $4030$, donc on s'arrête, et le reste vaut $7$. Le groupe $\{7, 2011, 2012\}$ a pour somme $4030$. En mettant les signes $-$ devant $7$, $2011$ et $2012$, et $+$ partout ailleurs, on obtient $S - 2 \times 4030$.

**Conclusion.** Les sommes obtenues sont exactement les entiers pairs de $-S$ à $S$. Il y en a

$$S + 1 = 1006 \times 2013 + 1 = 2\,025\,079 .$$

## Going further

Une autre façon de voir l'étape 3 : on part de tous les signes $-$, qui donnent $-S$. On remplace le signe de $1$ par un $+$, puis on fait « glisser » ce $+$ vers la droite, une place à la fois, jusqu'à $2012$. Ensuite on place un deuxième $+$ devant $1$ et on le fait glisser jusqu'à la place libre juste avant le premier, et ainsi de suite jusqu'à n'avoir que des $+$. À chaque étape, on remplace soit $-1$ par $+1$, soit $+k - (k+1)$ par $-k + (k+1)$ : la somme augmente exactement de $2$. On passe donc par tous les entiers pairs de $-S$ à $S$.
