---
id: "8040"
title: "La grille de lampes et ses interrupteurs"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, parite, grille, lampes, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, « La muraille », exercice 97, résolu par Etienne Rossignol (l'argument de parité publié est erroné, voir la note ci-dessous)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Chaque case d'une grille $n \times n$ porte une lampe, allumée ou éteinte, munie d'un
interrupteur.

Appuyer sur l'interrupteur d'une case change l'état de la lampe de cette case, de toutes les
lampes de sa ligne et de toutes les lampes de sa colonne.

Pour quels entiers $n$ est-il possible d'arriver à la configuration où toutes les lampes sont
allumées, quelle que soit la configuration de départ ?

## Hints

1. Essaie à la main sur une grille $2 \times 2$, puis $3 \times 3$.
2. Si l'on sait changer l'état d'**une seule** lampe à la fois, on sait tout faire. Cherche une
   suite d'appuis qui ne change qu'une lampe.
3. Pour une case fixée, appuie sur tous les interrupteurs de sa ligne et de sa colonne, et
   compte combien de fois chaque lampe a changé d'état.
4. Dans l'autre sens, fixe une ligne et compte combien de lampes de cette ligne changent
   d'état quand on appuie sur un interrupteur quelconque. Le nombre trouvé dépend-il de
   l'interrupteur choisi ?

## Solution

**Réponse : c'est possible exactement quand $n$ est pair.**

### Si $n$ est pair, on peut tout faire

**On sait éteindre ou allumer une lampe toute seule.** Fixons une case $(i, j)$ et appuyons une
fois sur chacun des $2n - 1$ interrupteurs situés sur la ligne $i$ ou sur la colonne $j$ (la
case $(i,j)$ n'étant comptée qu'une fois). Comptons combien de fois chaque lampe $(a, b)$
change d'état. Rappelons qu'appuyer sur $(p, q)$ change la lampe $(a,b)$ exactement lorsque
$p = a$ ou $q = b$.

- **La lampe $(i, j)$ :** tous les interrupteurs de la ligne $i$ la touchent ($n$ appuis), et
  tous ceux de la colonne $j$ sauf $(i,j)$ déjà compté aussi ($n - 1$ appuis). Total
  $2n - 1$, un nombre impair : elle change d'état.
- **Une lampe $(i, b)$ avec $b \neq j$ :** les $n$ interrupteurs de la ligne $i$ la touchent ;
  parmi ceux de la colonne $j$, aucun (ils ne sont pas sur la ligne $i$ et leur colonne est
  $j \neq b$). Total $n$, pair : elle ne change pas.
- **Une lampe $(a, j)$ avec $a \neq i$ :** parmi les interrupteurs de la ligne $i$, seul
  $(i, j)$ la touche, soit $1$ ; parmi ceux de la colonne $j$ autres que $(i,j)$, tous la
  touchent, soit $n - 1$. Total $n$, pair : elle ne change pas.
- **Une lampe $(a, b)$ avec $a \neq i$ et $b \neq j$ :** un seul interrupteur de la ligne $i$
  la touche, celui de colonne $b$ ; et un seul de la colonne $j$, celui de ligne $a$. Total
  $2$, pair : elle ne change pas.

Comme $n$ est pair, **seule la lampe $(i,j)$ a changé d'état.**

**Conclusion.** On peut donc changer l'état de n'importe quelle lampe isolément. En le faisant
pour chacune des lampes éteintes au départ, on allume tout. Cela marche quelle que soit la
configuration initiale.

### Si $n$ est impair, c'est impossible

**Un invariant.** Fixons une ligne $r$ et comptons combien de lampes de cette ligne changent
d'état quand on appuie sur l'interrupteur $(p, q)$ :

- si $p = r$, toute la ligne change : $n$ lampes ;
- si $p \neq r$, seule la lampe $(r, q)$ change : $1$ lampe.

Comme $n$ est impair, **ce nombre est impair dans les deux cas**. Donc, à chaque appui, la
parité du nombre de lampes allumées dans la ligne $r$ change — et cela, pour **toutes** les
lignes $r$ à la fois.

Autrement dit : si deux lignes ont au départ des nombres de lampes allumées de parités
différentes, elles gardent des parités différentes pour toujours, puisque les deux parités
basculent en même temps à chaque appui.

**La cible est hors d'atteinte.** Dans la configuration « toutes allumées », chaque ligne
contient $n$ lampes allumées, avec $n$ impair : toutes les lignes ont un compte impair, donc
de même parité.

Il suffit donc de partir d'une configuration où deux lignes n'ont pas la même parité, par
exemple **toutes les lampes éteintes sauf une**. La ligne de cette lampe a un compte impair
($1$), toutes les autres ont un compte pair ($0$). Cette configuration ne pourra jamais
conduire à « toutes allumées ».

**On peut donc atteindre la configuration « toutes allumées » depuis n'importe quel départ si
et seulement si $n$ est pair.**

## Going further

**Une remarque sur la source.** Le corrigé publié justifie le cas impair en affirmant
qu'« appuyer sur une lampe ne change pas la parité du nombre de lampes allumées ». C'est
inexact : un appui change l'état de $2n - 1$ lampes, un nombre impair quand $n$ est impair,
donc la parité du total bascule à chaque appui. La conclusion reste juste, mais il faut
l'invariant plus fin utilisé ci-dessus, qui compare les lignes entre elles au lieu de regarder
le total.

C'est un rappel utile : un invariant qui « marche presque » ne prouve rien du tout. Il faut
vérifier, sur un exemple, que la quantité choisie ne bouge vraiment pas.
