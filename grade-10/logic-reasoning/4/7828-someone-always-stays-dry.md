---
id: "7828"
title: "Quelqu'un reste toujours sec"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [recurrence, principe de l extremum, denombrement, tirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe B, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Au stage de mathématiques, $2n + 1$ élèves se réunissent dans la cour, chacun muni d'un
pistolet à eau. Toutes les distances entre deux élèves sont différentes les unes des autres :
il n'y a jamais deux paires d'élèves à la même distance.

À midi quarante-deux, chaque élève arrose son plus proche voisin.

Montrer qu'il existe forcément un élève qui reste sec.

## Hints

1. Il y a autant de tirs que d'élèves : $2n + 1$ tirs pour $2n+1$ élèves. Si personne n'était
   épargné, chaque élève recevrait donc exactement un jet.
2. Cherche une paire d'élèves particulière : celle dont la distance est la plus petite de
   toutes. Que font ces deux élèves-là ?
3. Ces deux-là se tirent dessus mutuellement. Deux cas se présentent : soit quelqu'un d'autre
   leur tire dessus aussi, soit personne.
4. Dans le premier cas, compte les tirs : quelqu'un reçoit deux jets, donc il en manque un
   ailleurs. Dans le second cas, on peut oublier ces deux élèves et raisonner sur les autres —
   c'est une récurrence.

## Solution

On raisonne par récurrence sur $n$.

**Initialisation.** Pour $n = 0$, il y a un seul élève. Il n'a pas de voisin, donc personne ne
l'arrose : il reste sec. *(Si l'on préfère commencer à $n = 1$ : trois élèves $A$, $B$, $C$ avec
$AB$ la plus petite distance. $A$ arrose $B$ et $B$ arrose $A$, donc les deux seuls tirs partant
de $A$ et de $B$ ne touchent pas $C$. Et $C$ n'arrose pas lui-même. Donc $C$ est sec.)*

**Hérédité.** Supposons le résultat vrai pour $2n+1$ élèves, et considérons un groupe de
$2n + 3$ élèves.

*La paire la plus proche.* Comme il y a un nombre fini de paires et que toutes les distances
sont distinctes, il existe une unique paire $\{A, B\}$ réalisant la plus petite distance de
toutes.

Le plus proche voisin de $A$ est alors $B$ (aucun autre élève ne peut être plus près de $A$ que
$B$, sinon cette distance serait plus petite que le minimum). De même, le plus proche voisin de
$B$ est $A$. Donc **$A$ et $B$ s'arrosent mutuellement**.

On distingue maintenant deux cas.

**Cas 1 : un troisième élève arrose $A$ ou arrose $B$.**

Il y a $2n + 3$ tirs en tout, un par élève. Mais $A$ et $B$ reçoivent déjà un jet l'un de
l'autre, et l'un des deux en reçoit un troisième. Donc les $2n+3$ jets se répartissent sur au
plus $2n + 2$ élèves différents : au moins l'un des $2n+3$ élèves n'en reçoit aucun.

*(Autrement dit : si chaque élève recevait au moins un jet, comme il y a exactement autant de
jets que d'élèves, chacun en recevrait exactement un. Or ici quelqu'un en reçoit deux. C'est le
principe des tiroirs.)*

**Cas 2 : personne d'autre n'arrose $A$ ni $B$.**

Alors $A$ et $B$ n'interviennent dans aucun tir concernant les autres : ils s'arrosent
mutuellement et personne ne les vise. On peut donc les retirer de la cour sans rien changer aux
tirs des autres élèves. En effet, le plus proche voisin d'un élève $C$ différent de $A$ et $B$
n'est ni $A$ ni $B$ (sinon $C$ arroserait l'un d'eux), donc il reste le même après leur départ.

Il reste $2n + 1$ élèves, dont toutes les distances mutuelles sont encore deux à deux
distinctes. Par hypothèse de récurrence, l'un d'eux reste sec. Il reste également sec dans la
situation d'origine, puisque $A$ et $B$ ne visent que l'un l'autre.

**Conclusion.** Dans les deux cas, un élève reste sec. La propriété est donc vraie pour tout
entier $n \geq 0$.

*Pourquoi un nombre impair d'élèves ?* Avec un nombre pair, l'énoncé est faux : quatre élèves
placés en deux paires très rapprochées et très éloignées l'une de l'autre s'arrosent deux par
deux, et tout le monde est mouillé. C'est le fait de ne pas pouvoir se répartir parfaitement en
paires qui force un élève à être laissé de côté.
