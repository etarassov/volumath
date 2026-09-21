---
id: "7508"
title: "Une somme de 2011 carrés qui fait un carré"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [parite, carres, congruences, modulo-4, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 19. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Des entiers naturels $n_1, n_2, \ldots, n_{2012}$ vérifient

$$n_1^2 + n_2^2 + \cdots + n_{2011}^2 = n_{2012}^2.$$

Montrer qu'au moins deux de ces 2012 nombres sont pairs.

## Hints

1. Quand on veut prouver « au moins deux », il est souvent plus simple de supposer le contraire : « au plus un », c'est-à-dire zéro ou un, et de chercher une contradiction.
2. Le reste d'un carré dans la division par $4$ ne prend que deux valeurs. Lesquelles ? Regarde séparément le carré d'un nombre pair et celui d'un nombre impair.
3. Écris $n = 2k$ puis $n = 2k+1$ et développe $n^2$ pour justifier ce que tu as observé.
4. Si la liste contient exactement $t$ nombres impairs parmi $n_1, \ldots, n_{2011}$, que vaut le reste du membre de gauche dans la division par $4$ ?
5. Il y a trois cas à séparer selon que le nombre pair « unique » est $n_{2012}$ ou l'un des autres.

## Solution

**Étape 1. Les carrés modulo 4.**

Soit $n$ un entier naturel.

- Si $n$ est pair, $n = 2k$, alors $n^2 = 4k^2$ : le reste de $n^2$ dans la division par $4$ vaut $0$.
- Si $n$ est impair, $n = 2k+1$, alors $n^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1$ : le reste vaut $1$.

Retenons : **un carré laisse le reste $0$ ou $1$ dans la division par $4$**, selon que le nombre est pair ou impair.

**Étape 2. On raisonne par l'absurde.**

Supposons qu'au plus un des 2012 nombres soit pair. Autrement dit, il y a au moins 2011 nombres impairs.

Notons $t$ le nombre d'entiers impairs parmi $n_1, \ldots, n_{2011}$ (les 2011 nombres du membre de gauche). D'après l'étape 1, le membre de gauche laisse le même reste que $t$ dans la division par $4$ :

$$n_1^2 + \cdots + n_{2011}^2 \equiv t \pmod 4.$$

**Étape 3. Les trois cas.**

*Cas 1 : les 2012 nombres sont tous impairs.* Alors $t = 2011$. Comme $2011 = 4 \times 502 + 3$, le membre de gauche laisse le reste $3$. Le membre de droite, $n_{2012}^2$ avec $n_{2012}$ impair, laisse le reste $1$. Or $3 \neq 1$ : impossible.

*Cas 2 : le seul nombre pair est $n_{2012}$.* Alors $t = 2011$ encore, donc le membre de gauche laisse le reste $3$. Mais $n_{2012}$ est pair, donc le membre de droite laisse le reste $0$. Or $3 \neq 0$ : impossible.

*Cas 3 : le seul nombre pair est l'un des $n_1, \ldots, n_{2011}$.* Alors $t = 2010$. Comme $2010 = 4 \times 502 + 2$, le membre de gauche laisse le reste $2$. Et $n_{2012}$ est impair, donc le membre de droite laisse le reste $1$. Or $2 \neq 1$ : impossible.

**Conclusion.** Les trois cas sont impossibles, donc l'hypothèse de départ est fausse : au moins deux des 2012 nombres sont pairs.

## Going further

Deux nombres pairs, est-ce atteint ? Oui. Prends $n_1 = \cdots = n_{2009} = 1$ (2009 nombres impairs), et cherche $n_{2010}$, $n_{2011}$, $n_{2012}$. Par exemple $2009 + n_{2010}^2 + n_{2011}^2 = n_{2012}^2$. En choisissant $n_{2010} = 0$ et en utilisant $n_{2012}^2 - n_{2011}^2 = (n_{2012}-n_{2011})(n_{2012}+n_{2011}) = 2009$, avec $2009 = 1 \times 2009$, on obtient $n_{2012} = 1005$ et $n_{2011} = 1004$. Les nombres pairs sont alors $n_{2010} = 0$ et $n_{2011} = 1004$ : exactement deux. La borne de l'énoncé ne peut donc pas être améliorée.

L'outil central ici, « un carré vaut $0$ ou $1$ modulo $4$ », sert dans une foule de problèmes : il explique par exemple pourquoi aucun nombre de la forme $4k+3$ n'est une somme de deux carrés.
