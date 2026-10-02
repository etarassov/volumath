---
id: "8184"
title: "La seule lampe restée allumée"
grade: 10
theme: coloring
difficulty: 5
duration_min: 45
tags: [invariant, parite, lampes, grille, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 3 « Combinatoire », cours « Monovariants et invariants », exercice 13 (le polycopié ne nomme pas l'auteur du cours). La solution imprimée renvoie à trois figures qui ne sont pas reproduites ici : le motif invariant et les deux suites d'appuis ci-dessous ont été retrouvés et vérifiés pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Sur chaque case d'une grille $5 \times 5$ se trouve une lampe, munie d'un interrupteur.

Appuyer sur l'interrupteur d'une case change l'état de la lampe de cette case **et** de celles
de ses voisines par un côté : celles qui étaient allumées s'éteignent, celles qui étaient
éteintes s'allument. Une case du bord a moins de voisines, une case du coin n'en a que deux.

Au départ, les $25$ lampes sont éteintes. Martin appuie sur les interrupteurs de son choix,
autant de fois qu'il veut. À la fin, **une seule** lampe est allumée.

Quelles sont les positions possibles de cette lampe ?

## Hints

1. Repère les cases par leur ligne et leur colonne, de $1$ à $5$. Le centre est la case
   $(3,3)$.
2. Appuyer deux fois sur le même interrupteur ne change rien. Seul compte, pour chaque case, le
   fait d'avoir appuyé un nombre pair ou impair de fois : l'ordre des appuis n'a aucune
   importance.
3. Cherche un ensemble de cases tel que **toute** croix (une case et ses voisines) en contienne
   un nombre pair. La parité du nombre de lampes allumées dans cet ensemble ne changera alors
   jamais.
4. Essaie de marquer les cases qui sont à la fois hors de la ligne $3$ et dans une colonne
   impaire. Il y en a $12$. Vérifie sur quelques croix.
5. Une fois cet ensemble trouvé, fais-le tourner d'un quart de tour : tu obtiens un second
   ensemble qui marche aussi, pour la même raison.
6. Croise les deux conditions. Il ne restera que cinq cases. Il faudra encore montrer que ces
   cinq-là sont vraiment atteignables.

## Solution

**Réponse : la lampe allumée est soit celle du centre, soit l'une des quatre cases placées en
diagonale juste à côté du centre**, c'est-à-dire les cases
$$(3,3), \quad (2,2), \quad (2,4), \quad (4,2), \quad (4,4).$$

Ici $(i,j)$ désigne la case de la ligne $i$ et de la colonne $j$.

**Remarque préalable.**

Appuyer deux fois sur le même interrupteur revient à ne rien faire. Pour chaque case, seul
compte donc le fait d'avoir appuyé un nombre pair ou impair de fois, et l'ordre des appuis est
sans importance. Une suite d'appuis se résume à un **ensemble** de cases, celles sur lesquelles
on a appuyé un nombre impair de fois.

**Premier invariant.**

Marquons les $12$ cases qui sont à la fois **hors de la ligne $3$** et dans une **colonne
impaire** :

|  | col. 1 | col. 2 | col. 3 | col. 4 | col. 5 |
|---|---|---|---|---|---|
| **ligne 1** | $\times$ | | $\times$ | | $\times$ |
| **ligne 2** | $\times$ | | $\times$ | | $\times$ |
| **ligne 3** | | | | | |
| **ligne 4** | $\times$ | | $\times$ | | $\times$ |
| **ligne 5** | $\times$ | | $\times$ | | $\times$ |

Appelons *croix* de la case $(i,j)$ l'ensemble des lampes que son interrupteur modifie :
la case elle-même et ses voisines par un côté.

*Toute croix contient un nombre pair de cases marquées.* Vérifions-le en séparant deux cas.

- **$j$ impair.** Les deux voisines horizontales $(i, j-1)$ et $(i, j+1)$ sont dans des colonnes
  paires : elles ne sont pas marquées. Restent les cases $(i-1, j)$, $(i,j)$ et $(i+1,j)$ de la
  colonne $j$ qui existent, et parmi elles sont marquées celles dont la ligne n'est pas $3$.
  Pour $i = 1$ il y a les lignes $1$ et $2$, soit $2$ cases marquées ; pour $i=2$, les lignes
  $1, 2, 3$ donnent $2$ cases marquées ; pour $i = 3$, les lignes $2, 3, 4$ en donnent $2$ ;
  pour $i = 4$ et $i = 5$, on trouve $2$ également. Toujours $2$, un nombre pair.
- **$j$ pair**, c'est-à-dire $j = 2$ ou $j = 4$. Cette fois les cases de la colonne $j$ ne sont
  pas marquées. Restent les deux voisines horizontales $(i, j-1)$ et $(i, j+1)$, qui existent
  toutes les deux et sont dans des colonnes impaires. Elles sont marquées si $i \neq 3$, et pas
  marquées si $i = 3$ : cela fait $2$ ou $0$ cases marquées, un nombre pair dans les deux cas.

Donc chaque appui change l'état d'un nombre pair de lampes marquées. Le nombre de lampes
marquées allumées varie donc d'un nombre pair : **sa parité ne change jamais.**

Au départ tout est éteint, ce nombre vaut $0$, il est pair. À la fin, si la seule lampe allumée
était une case marquée, il vaudrait $1$, impair. C'est impossible : **la lampe allumée n'est
pas marquée.** Elle est donc sur la ligne $3$, ou dans la colonne $2$, ou dans la colonne $4$.

**Second invariant : le même, tourné d'un quart de tour.**

Les règles du jeu ne changent pas si l'on fait tourner la grille d'un quart de tour. Le motif
marqué se transforme alors en celui-ci : les cases qui sont à la fois **sur une ligne impaire**
et **hors de la colonne $3$**.

|  | col. 1 | col. 2 | col. 3 | col. 4 | col. 5 |
|---|---|---|---|---|---|
| **ligne 1** | $\times$ | $\times$ | | $\times$ | $\times$ |
| **ligne 2** | | | | | |
| **ligne 3** | $\times$ | $\times$ | | $\times$ | $\times$ |
| **ligne 4** | | | | | |
| **ligne 5** | $\times$ | $\times$ | | $\times$ | $\times$ |

Le même raisonnement s'applique mot pour mot. La lampe allumée n'est donc pas non plus dans ce
second motif : elle est sur la ligne $2$, ou sur la ligne $4$, ou dans la colonne $3$.

**Croisons les deux conditions.**

La lampe allumée, en case $(i,j)$, doit vérifier les deux choses à la fois :

- $i = 3$, ou $j \in \{2, 4\}$ ;
- $i \in \{2, 4\}$, ou $j = 3$.

Passons les lignes en revue :

- $i = 1$ : la première condition impose $j \in \{2,4\}$, la seconde impose $j = 3$. Impossible.
- $i = 2$ : la seconde est satisfaite d'office ; la première impose $j \in \{2,4\}$. On obtient
  $(2,2)$ et $(2,4)$.
- $i = 3$ : la première est satisfaite d'office ; la seconde impose $j = 3$. On obtient $(3,3)$.
- $i = 4$ : comme pour $i = 2$, on obtient $(4,2)$ et $(4,4)$.
- $i = 5$ : comme pour $i = 1$, impossible.

Il ne reste donc au plus que les cinq cases annoncées.

**Ces cinq cases sont bien atteignables.**

Pour n'allumer que la lampe du **centre**, il suffit d'appuyer une fois sur chacun des $11$
interrupteurs marqués ci-dessous (ce motif est symétrique par rapport à la diagonale
descendante) :

|  | col. 1 | col. 2 | col. 3 | col. 4 | col. 5 |
|---|---|---|---|---|---|
| **ligne 1** | | $\times$ | $\times$ | | $\times$ |
| **ligne 2** | $\times$ | | | | $\times$ |
| **ligne 3** | $\times$ | | $\times$ | $\times$ | |
| **ligne 4** | | | $\times$ | | |
| **ligne 5** | $\times$ | $\times$ | | | |

Pour n'allumer que la lampe $(2,2)$, on appuie sur ces $11$ interrupteurs :

|  | col. 1 | col. 2 | col. 3 | col. 4 | col. 5 |
|---|---|---|---|---|---|
| **ligne 1** | | $\times$ | | $\times$ | |
| **ligne 2** | $\times$ | $\times$ | | $\times$ | $\times$ |
| **ligne 3** | | | | $\times$ | |
| **ligne 4** | $\times$ | $\times$ | $\times$ | | |
| **ligne 5** | | $\times$ | | | |

On vérifie chacun de ces deux motifs en comptant, case par case, combien de croix la
recouvrent : la lampe visée est recouverte un nombre impair de fois, les $24$ autres un nombre
pair de fois.

Enfin, les trois cases $(2,4)$, $(4,4)$ et $(4,2)$ s'obtiennent en faisant tourner le second
motif d'un quart de tour, d'un demi-tour et de trois quarts de tour.

**Conclusion : les positions possibles sont exactement $(3,3)$, $(2,2)$, $(2,4)$, $(4,2)$ et
$(4,4)$.**

## Going further

Comptons les situations que Martin peut atteindre au total. Il choisit un ensemble
d'interrupteurs parmi $25$, ce qui fait $2^{25}$ choix, mais deux choix différents peuvent
donner le même résultat. On peut montrer qu'exactement quatre choix donnent chaque situation
atteignable : il y a donc $2^{25} / 4 = 2^{23}$ situations atteignables sur les $2^{25}$
possibles, c'est-à-dire **une sur quatre**.

Les deux invariants ci-dessus expliquent exactement ce facteur $4$ : ils imposent deux
conditions de parité indépendantes, et chacune divise par deux le nombre de situations
possibles.
