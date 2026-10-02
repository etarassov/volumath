---
id: "5812"
title: "Les suites de Goodstein"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [numeration, base, suites, recurrence]
adapted_from: null
see_also: ["5122"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Hercules and the Hydra (document de référence de la séance)"
  reference: "accessible_independence_results.pdf, p. 285-286 : L. Kirby et J. Paris, « Accessible Independence Results for Peano Arithmetic », Bull. London Math. Soc. 14 (1982), définition de G_n et théorème 1"
  url: "https://mathcircles.org/activity/hercules-and-the-hydra/"
  original_language: "en"
  local_copy: "sources/originals/namc/accessible_independence_results.pdf"
---

## Statement

**L'écriture héréditaire en base $n$.** Pour écrire un entier $m$ en base $n$ de façon
*héréditaire*, on l'écrit d'abord comme une somme de puissances de $n$ affectées de coefficients
compris entre $1$ et $n-1$, puis on écrit chaque exposant de la même façon, puis les exposants
des exposants, et ainsi de suite, jusqu'à ce que plus aucun nombre supérieur ou égal à $n$
n'apparaisse dans l'écriture. Un nombre plus petit que $n$ s'écrit tout seul, sans faire
apparaître $n$.

Par exemple, pour $m = 266$ et $n = 2$ :
$$266 = 2^{8} + 2^{3} + 2 = 2^{2^{2+1}} + 2^{2+1} + 2 .$$

**L'opération $G_n$.** Si $m = 0$, on pose $G_n(m) = 0$. Sinon, on écrit $m$ en base $n$ de façon
héréditaire, on remplace **tous** les $n$ qui apparaissent par $n+1$, et on retranche $1$ au
nombre obtenu. Par exemple
$$G_2(266) = 3^{3^{3+1}} + 3^{3+1} + 3 - 1 .$$

**La suite de Goodstein de $m$.** On pose $m_0 = m$, puis
$$m_1 = G_2(m_0), \quad m_2 = G_3(m_1), \quad m_3 = G_4(m_2), \quad \ldots, \quad m_{k+1} = G_{k+2}(m_k).$$
À l'étape $k$, le terme $m_k$ est donc lu en base $k+2$.

1. Écrire $3$ en base $2$ de façon héréditaire, puis calculer la suite de Goodstein de $3$
   jusqu'à ce qu'elle atteigne $0$.
2. Calculer $m_1$, $m_2$, $m_3$, $m_4$ et $m_5$ pour la suite de Goodstein de $4$.
3. Montrer que si, à une certaine étape $k$, on a $m_k < k+2$, alors la suite décroît de $1$ à
   chaque étape à partir de là, et atteint $0$ exactement $m_k$ étapes plus loin.

## Hints

1. Attention à la base à chaque étape : $m_0$ se lit en base $2$, $m_1$ en base $3$, $m_2$ en
   base $4$, et ainsi de suite. C'est la seule source d'erreur du calcul.
2. Pour la question 1 : $3 = 2 + 1$ en base $2$. Le $1$ n'est pas un $2$ déguisé, il reste tel
   quel quand on change de base.
3. Pour la question 2 : $4 = 2^2$ en base $2$ héréditaire. Il y a deux $2$ à remplacer, pas un
   seul.
4. Pour la question 3 : relis la phrase « un nombre plus petit que $n$ s'écrit tout seul, sans
   faire apparaître $n$ ». Que devient alors le remplacement de $n$ par $n+1$ ?

## Solution

**Question 1 : la suite de Goodstein de $3$.**

En base $2$ héréditaire, $3 = 2 + 1$.

- $m_0 = 3 = 2 + 1$. On remplace $2$ par $3$ : on obtient $3 + 1 = 4$, puis on retranche $1$.
  $$m_1 = 3.$$
- $m_1 = 3$ se lit maintenant en base $3$ : c'est $3 = 3^1$, donc le $3$ apparaît bien. On le
  remplace par $4$ : on obtient $4^1 = 4$, puis on retranche $1$.
  $$m_2 = 3.$$
- $m_2 = 3$ se lit en base $4$. Comme $3 < 4$, il s'écrit tout seul et aucun $4$ n'apparaît : il
  n'y a rien à remplacer, on retranche simplement $1$.
  $$m_3 = 2.$$
- De même $m_4 = 2 - 1 = 1$, puis $m_5 = 1 - 1 = 0$.

La suite de Goodstein de $3$ est donc
$$3,\ 3,\ 3,\ 2,\ 1,\ 0,$$
et elle atteint $0$ à l'étape $k = 5$. Elle stagne trois fois avant de redescendre : le
changement de base compense exactement le $-1$ tant que la base apparaît encore.

**Question 2 : les premiers termes pour $4$.**

En base $2$ héréditaire, $4 = 2^2$. Il y a **deux** $2$ dans cette écriture.

- $m_0 = 4 = 2^2$. On remplace : $3^3 = 27$, puis $-1$.
  $$m_1 = 26.$$
- $m_1 = 26$ en base $3$ : $26 = 2 \times 9 + 2 \times 3 + 2 = 2 \times 3^2 + 2 \times 3 + 2$.
  L'exposant $2$ est plus petit que $3$, il reste tel quel. On remplace les $3$ par des $4$ :
  $2 \times 4^2 + 2 \times 4 + 2 = 32 + 8 + 2 = 42$, puis $-1$.
  $$m_2 = 41.$$
- $m_2 = 41$ en base $4$ : $41 = 2 \times 16 + 2 \times 4 + 1 = 2 \times 4^2 + 2 \times 4 + 1$. On
  remplace : $2 \times 25 + 2 \times 5 + 1 = 61$, puis $-1$.
  $$m_3 = 60.$$
- $m_3 = 60$ en base $5$ : $60 = 2 \times 25 + 2 \times 5 = 2 \times 5^2 + 2 \times 5$. On
  remplace : $2 \times 36 + 2 \times 6 = 84$, puis $-1$.
  $$m_4 = 83.$$
- $m_4 = 83$ en base $6$ : $83 = 2 \times 36 + 6 + 5 = 2 \times 6^2 + 6 + 5$. On remplace :
  $2 \times 49 + 7 + 5 = 110$, puis $-1$.
  $$m_5 = 109.$$

La suite commence donc par
$$4,\ 26,\ 41,\ 60,\ 83,\ 109, \ldots$$
et elle continue de croître longtemps.

**Question 3 : la fin de course.**

Supposons $m_k < k+2$, en notant $n = k+2$ la base de l'étape $k$.

Comme $m_k < n$, l'écriture héréditaire de $m_k$ en base $n$ est le nombre $m_k$ lui-même : aucune
puissance de $n$ n'y figure, et donc **aucun $n$ n'apparaît dans l'écriture**. Le remplacement de
$n$ par $n+1$ ne change alors rien du tout, et il ne reste que la soustraction :
$$m_{k+1} = G_n(m_k) = m_k - 1 .$$

L'hypothèse se reconduit : la base de l'étape suivante est $n+1$, et
$$m_{k+1} = m_k - 1 < m_k < n < n+1 .$$

Donc $m_{k+1}$ est encore plus petit que sa propre base, et le même raisonnement s'applique. Par
récurrence, à partir de l'étape $k$ la suite décroît de $1$ à chaque étape :
$$m_{k+j} = m_k - j \quad \text{tant que } m_k - j \geqslant 0 .$$

Elle atteint donc $0$ pour $j = m_k$, c'est-à-dire à l'étape $k + m_k$, et pas avant.

**Conclusion.** La suite de $3$ vaut $3, 3, 3, 2, 1, 0$. Celle de $4$ commence par
$4, 26, 41, 60, 83, 109$. Et dès qu'un terme passe sous sa base, la fin est rapide et
parfaitement prévisible : il ne reste plus qu'à décompter.

## Going further

La question 3 dit comment une suite de Goodstein se termine, mais pas si elle se termine. Le
théorème de Goodstein affirme que oui :

> **Quel que soit l'entier de départ, la suite de Goodstein atteint $0$ au bout d'un nombre fini
> d'étapes.**

C'est très difficile à croire quand on voit la suite de $4$ partir vers le haut, et c'est
pourtant vrai. Kirby et Paris ont calculé le moment exact : la suite de $4$ atteint $0$ à l'étape
$$k = 3 \times 2^{402\,653\,211} - 3,$$
un nombre de l'ordre de $10^{121\,210\,700}$.

Les mêmes auteurs ont démontré en 1982 quelque chose de plus troublant encore : cet énoncé, bien
qu'il ne parle que d'entiers, **ne peut pas être démontré** à partir des axiomes usuels de
l'arithmétique. Il faut sortir des entiers pour en venir à bout. C'est l'un des premiers exemples
naturels de ce phénomène, et c'est ce même article qui contient le jeu de l'hydre.
