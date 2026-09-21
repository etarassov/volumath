---
id: "7155"
title: "Les suites presque croissantes"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [denombrement, recurrence, permutations, bijection]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Débutants : stratégies de base », mercredi après-midi (Roger Mansuy), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Une suite $u_1, u_2, \ldots, u_n$ formée des entiers $1, 2, \ldots, n$, chacun apparaissant
une fois et une seule, est dite **presque croissante** si

$$u_k \leqslant u_{k+1} + 2 \qquad \text{pour tout indice } k \text{ de } 1 \text{ à } n-1 .$$

Par exemple la suite $1, 6, 4, 2, 5, 3$ est presque croissante, tandis que
$1, 4, 6, 2, 5, 3$ ne l'est pas (on y trouve $6$ suivi de $2$, et $6 > 2 + 2$).

Déterminer le nombre de suites presque croissantes de $n$ termes.

## Hints

1. Compte-les à la main pour $n = 1$, $n = 2$, $n = 3$. Tu trouveras $1$, $2$, $6$. Fais
   $n = 4$ si tu as du courage.
2. Cherche une récurrence : comment passer des suites de $1, \ldots, n$ à celles de
   $1, \ldots, n+1$ ?
3. Prends une suite presque croissante de $1, \ldots, n+1$ et **efface** le terme $n+1$. Que
   peux-tu dire du terme qui le suivait ? Vérifie que ce qui reste est encore presque
   croissante.
4. Dans l'autre sens : à quels endroits peut-on insérer $n+1$ dans une suite presque
   croissante de $1, \ldots, n$ ?

## Solution

Notons $s_n$ le nombre de suites presque croissantes de $n$ termes.

**Les petits cas.** Pour $n = 1$, la seule suite est $1$, donc $s_1 = 1$. Pour $n = 2$, les
deux suites $1,2$ et $2,1$ conviennent toutes les deux (on a bien $2 \leqslant 1 + 2$), donc
$s_2 = 2$.

**Effacer le plus grand terme.** Partons d'une suite presque croissante $v$ formée de
$1, \ldots, n+1$, et effaçons le terme $n+1$.

Si $n+1$ était en dernière position, ce qui reste est visiblement encore presque croissante.

Sinon, appelons $w$ le terme qui suivait $n+1$. La condition en $n+1$ s'écrit
$n + 1 \leqslant w + 2$, donc

$$w \geqslant n - 1 .$$

Comme $w \neq n+1$, cela laisse $w = n$ ou $w = n-1$.

Appelons $v'$ le terme qui précédait $n+1$ (s'il existe). Après effacement, la nouvelle
condition à vérifier est $v' \leqslant w + 2$. Or $v' \leqslant n$ puisque $v' \neq n+1$, et
$w \geqslant n-1$, donc

$$v' \leqslant n \leqslant w + 1 \leqslant w + 2 . \ \checkmark$$

Toutes les autres conditions sont inchangées. **Effacer $n+1$ donne donc toujours une suite
presque croissante de $1, \ldots, n$.**

**Insérer le plus grand terme.** Réciproquement, partons d'une suite presque croissante $u$
de $1, \ldots, n$ (avec $n \geqslant 2$) et demandons-nous où l'on peut insérer $n+1$.

Si on l'insère en dernière position, aucune condition nouvelle ne porte sur lui : cela marche
toujours.

Si on l'insère juste avant un terme $w$, il faut $n+1 \leqslant w+2$, c'est-à-dire
$w \geqslant n-1$ : les seuls choix sont donc **juste avant $n$** ou **juste avant $n-1$**.
Dans ces deux cas, la condition portant sur le terme précédent, $v' \leqslant (n+1) + 2$, est
automatiquement vraie, et les autres conditions sont inchangées.

Il y a donc exactement **trois** positions possibles, et elles donnent trois suites
différentes. (Elles sont distinctes car $n$ et $n-1$ occupent des places différentes, et
insérer avant $n$ n'est jamais la même chose qu'insérer en dernier.)

**La récurrence.** Effacer et insérer sont des opérations inverses l'une de l'autre. Chaque
suite presque croissante de $1, \ldots, n$ donne donc exactement trois suites presque
croissantes de $1, \ldots, n+1$, et chacune de ces dernières provient d'une seule suite plus
courte. D'où

$$s_{n+1} = 3\, s_n \qquad \text{pour tout } n \geqslant 2 .$$

**Conclusion.** Avec $s_2 = 2$, on obtient par récurrence

$$s_n = 2 \times 3^{\,n-2} \qquad \text{pour tout } n \geqslant 2 ,$$

et $s_1 = 1$.

*Vérification.* $s_3 = 2 \times 3 = 6$ : toutes les $6$ permutations de $1,2,3$ conviennent,
ce qui se contrôle à la main. Et $s_4 = 18$, sur $24$ permutations. On peut le
contrôler autrement : une permutation de $1,2,3,4$ échoue exactement lorsque $4$ est
immédiatement suivi de $1$ (c'est le seul couple $(u_k, u_{k+1})$ avec
$u_k > u_{k+1} + 2$). En collant « $4\,1$ » en un seul bloc, il reste trois objets à ranger,
soit $3! = 6$ permutations interdites, et $24 - 6 = 18$.

## Going further

Le résultat est joli : sur les $n!$ permutations de $1, \ldots, n$, seules $2 \times 3^{n-2}$
sont presque croissantes. Pour $n = 10$, cela fait $13\,122$ sur $3\,628\,800$, soit moins de
$0{,}4\,\%$.

La méthode employée est celle de la **construction incrémentale** : au lieu de compter
directement, on cherche comment fabriquer les objets de taille $n+1$ à partir de ceux de
taille $n$, et l'on vérifie soigneusement que la fabrication ne perd rien et ne compte rien
deux fois. C'est la vérification qui coûte : ici il a fallu s'assurer à la fois qu'effacer
marchait toujours et qu'il n'y avait que trois façons d'insérer.

Une question pour continuer : que devient le compte si l'on remplace la condition
$u_k \leqslant u_{k+1} + 2$ par $u_k \leqslant u_{k+1} + 1$ ? Et par
$u_k \leqslant u_{k+1} + 3$ ?
