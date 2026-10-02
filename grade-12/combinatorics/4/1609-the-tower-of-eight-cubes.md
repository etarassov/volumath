---
id: "1609"
title: "La tour des huit cubes"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [denombrement, recurrence, construction-pas-a-pas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 7 (AIME I 2006, problème 11)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

On dispose de huit cubes en bois, d'arêtes $1$ cm, $2$ cm, …, $8$ cm : un cube de chaque
taille.

On veut empiler les huit cubes pour former une tour, en respectant la règle suivante :

> le cube posé immédiatement sur un cube d'arête $k$ doit avoir une arête d'au plus
> $k + 2$ centimètres.

N'importe quel cube peut servir de cube du bas.

Combien de tours différentes peut-on construire ?

## Hints

1. Commence petit. Avec les cubes $1$ et $2$ seulement, combien de tours ? Avec les cubes $1$, $2$ et $3$ ?
2. Ne compte pas les tours de bas en haut. Construis-les en ajoutant les cubes **du plus petit au plus grand**.
3. Suppose une tour valide construite avec les cubes $1$ à $k-1$, et glisse le cube $k$ quelque part. Comme il est plus gros que tous les autres, la seule condition à vérifier concerne le cube qui se trouve **juste en dessous** de lui. Combien de positions sont permises ?
4. Vérifie aussi qu'en enlevant le plus gros cube d'une tour valide on obtient encore une tour valide : c'est ce qui garantit qu'on compte chaque tour une fois et une seule.

## Solution

**L'idée : construire la tour en ajoutant les cubes du plus petit au plus grand. À chaque
ajout, il y a toujours exactement trois emplacements possibles.**

Identifions chaque cube par son arête et notons une tour par la liste de ses cubes, du bas
vers le haut. La règle s'écrit : si le cube $m$ est posé directement sur le cube $j$, alors
$m \le j + 2$.

**Étape 1. Les deux premiers cubes.**

Avec les cubes $1$ et $2$, les deux tours $(1, 2)$ et $(2, 1)$ conviennent : dans la première,
$2 \le 1+2$ ; dans la seconde, $1 \le 2+2$. Il y a donc $2$ tours.

**Étape 2. Ajouter le cube $k$ à une tour formée des cubes $1$ à $k-1$.**

Soit $k \ge 3$ et soit une tour valide construite avec les cubes $1, 2, \ldots, k-1$. Le cube
$k$ est plus grand que tous les autres. Insérons-le quelque part.

*La condition « au-dessus » est toujours vérifiée.* Si un cube $m$ vient se poser sur le cube
$k$, alors $m \le k-1 \le k+2$ : aucune contrainte.

*La condition « en dessous » est la seule contrainte.* Si le cube $k$ est posé sur le cube
$j$, il faut $k \le j+2$, c'est-à-dire $j \ge k-2$. Comme $j \le k-1$, cela laisse
$j = k-1$ ou $j = k-2$.

Il y a donc exactement **trois** emplacements possibles pour le cube $k$ :

1. tout en bas de la tour ;
2. juste au-dessus du cube $k-1$ ;
3. juste au-dessus du cube $k-2$.

Ces trois emplacements sont deux à deux distincts (ils correspondent à trois positions
différentes dans la pile), donc chaque tour de $k-1$ cubes donne naissance à $3$ tours de $k$
cubes.

**Étape 3. Chaque tour est obtenue une fois et une seule.**

Il faut encore vérifier qu'en retirant le cube $k$ d'une tour valide formée des cubes $1$ à
$k$, on retombe sur une tour valide formée des cubes $1$ à $k-1$.

Supposons le cube $k$ posé sur le cube $j$, avec le cube $m$ posé sur lui. Après retrait, $m$
se retrouve sur $j$. Or $m \le k-1$ (c'est un des autres cubes) et $j \ge k-2$, donc
$$m \le k-1 < k \le j+2 ,$$
la règle est respectée. (Si le cube $k$ est en haut ou en bas de la pile, il n'y a rien à
vérifier.)

Ainsi l'ajout du cube $k$ et son retrait sont deux opérations inverses l'une de l'autre :
le nombre de tours est exactement multiplié par $3$ à chaque étape.

**Étape 4. Le compte.**

Notons $T_k$ le nombre de tours que l'on peut former avec les cubes $1$ à $k$. On a $T_2 = 2$
et $T_k = 3\,T_{k-1}$ pour $k \ge 3$. La suite est géométrique à partir du rang $2$ :
$$T_8 = 2 \times 3^{6} = 2 \times 729 = 1458 .$$

**Conclusion : il y a $1458$ tours possibles.**

**Contrôle sur trois cubes.** La formule donne $T_3 = 6$. À la main, les tours valides avec
$1$, $2$, $3$ sont $(1,2,3)$, $(1,3,2)$, $(2,1,3)$, $(2,3,1)$, $(3,1,2)$, $(3,2,1)$ : les six
rangements conviennent, car la contrainte ne mord pas encore. Pour $k = 4$ elle commence à
mordre : $(4, 1, \ldots)$ est permis mais $(1, 4, \ldots)$ ne l'est pas.

## Going further

Une énumération par ordinateur des $8! = 40\,320$ rangements possibles confirme le résultat :
$1458$ d'entre eux respectent la règle.

Le problème d'origine, posé à l'AIME, demandait le reste de ce nombre dans la division par
$1000$, c'est-à-dire $458$ : une manière habituelle, dans ce concours, de forcer une réponse
à trois chiffres.
