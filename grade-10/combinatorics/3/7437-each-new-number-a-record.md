---
id: "7437"
title: "Chaque nouveau nombre bat un record"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, permutations, recurrence, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 15 (résolu par Urvan Christen). L'énoncé imprimé écrit deux fois « plus grande » ; la seconde occurrence doit être « plus petite », comme le montre la solution publiée."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On range les entiers $1, 2, \ldots, n$ en ligne, dans un ordre quelconque. On dit que le rangement
est **en records** lorsque chaque nombre de la liste est, au moment où il apparaît, soit plus grand
que **tous** ceux qui le précèdent, soit plus petit que **tous** ceux qui le précèdent.

Par exemple, pour $n = 4$, le rangement $3, 4, 2, 1$ est en records : $4$ est plus grand que $3$,
puis $2$ est plus petit que $3$ et $4$, puis $1$ est plus petit que tous les précédents. En
revanche $3, 1, 4, 2$ ne l'est pas : le dernier nombre $2$ n'est ni plus grand que $3$, $1$ et
$4$, ni plus petit qu'eux tous.

(Le premier nombre de la liste n'a personne devant lui : la condition est automatiquement
vérifiée.)

Combien y a-t-il de rangements en records des entiers $1, 2, \ldots, n$ ?

## Hints

1. Compte-les à la main pour $n = 1$, $n = 2$, $n = 3$, puis $n = 4$. La suite des réponses devrait
   te sauter aux yeux.
2. Ne construis pas la liste de gauche à droite : regarde plutôt le **dernier** nombre de la
   liste. Que peut-il être ?
3. Une fois le dernier nombre choisi et retiré, que reste-t-il comme ensemble de nombres à placer,
   et la question sur l'avant-dernier est-elle vraiment nouvelle ?

## Solution

**Les petits cas.**

- $n = 1$ : un seul rangement, $1$. Total : $1$.
- $n = 2$ : $1,2$ et $2,1$ conviennent tous les deux. Total : $2$.
- $n = 3$ : examinons les six rangements.
  $1,2,3$ convient ; $1,3,2$ non (le $2$ est coincé entre $1$ et $3$) ; $2,1,3$ convient ;
  $2,3,1$ convient ; $3,1,2$ non ; $3,2,1$ convient. Total : $4$.
- $n = 4$ : on trouve $8$ rangements en poursuivant le même travail.

Tout indique la réponse $2^{n-1}$.

**Le bon point de vue : lire la liste par la fin.**

Regardons le **dernier** nombre de la liste, $a_n$. Par définition, il est plus grand que tous
ceux qui le précèdent, ou plus petit qu'eux tous. Or tous les autres nombres le précèdent : la
condition dit donc exactement que
$$a_n = n \quad \text{(le plus grand de tous)} \qquad \text{ou} \qquad a_n = 1 \quad \text{(le plus petit)}.$$

Il y a donc exactement **deux choix** pour la dernière case.

Retirons $a_n$. Les $n-1$ nombres restants forment encore un bloc d'entiers consécutifs :
$\{1, \ldots, n-1\}$ si on a retiré $n$, et $\{2, \ldots, n\}$ si on a retiré $1$.

Et la liste $a_1, \ldots, a_{n-1}$ doit encore être en records, puisque la condition portant sur
$a_1, \ldots, a_{n-1}$ ne fait intervenir que ces nombres-là.

**La récurrence.**

Notons $R_n$ le nombre de rangements en records de $n$ entiers consécutifs quelconques (le résultat
ne dépend visiblement pas des valeurs elles-mêmes, seulement de leur nombre).

Ce qui précède montre que, pour $n \geq 2$,
$$R_n = 2\,R_{n-1}.$$

Et $R_1 = 1$, puisqu'il n'y a qu'une façon de ranger un seul nombre.

Donc
$$R_n = 2 \times R_{n-1} = 2 \times 2 \times R_{n-2} = \dots = 2^{n-1} \times R_1 = 2^{n-1}.$$

**Vérification.** $R_1 = 1$, $R_2 = 2$, $R_3 = 4$, $R_4 = 8$ : cela correspond bien aux décomptes
à la main.

**Conclusion : il y a $\boxed{2^{n-1}}$ rangements en records des entiers $1, 2, \ldots, n$.**

*Une autre manière de dire la même chose.* Construire un tel rangement, c'est décider $n-1$ fois
de suite si on retire le plus grand ou le plus petit des nombres qui restent ; le nombre qui reste
tout seul à la fin occupe la première case. Cela fait $2^{n-1}$ suites de décisions, et deux suites
différentes donnent deux rangements différents.

## Going further

Parmi ces $2^{n-1}$ rangements, combien **commencent** par le nombre $k$ ? Fais la liste pour
$n = 4$, puis relis la dernière remarque de la solution : si l'on retire $j$ fois le plus grand et
$n-1-j$ fois le plus petit, quel nombre reste-t-il en première case ?
