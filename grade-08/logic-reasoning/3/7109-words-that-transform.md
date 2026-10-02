---
id: "7109"
title: "Des mots qui se transforment"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, mots, comptage, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Débutants : stratégies de base », mercredi après-midi (Martin Andler), exercice 6 ; repris en 2016, exercice 15"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

On écrit des « mots » avec les trois lettres $x$, $y$ et $t$. Un mot est simplement une suite
de ces lettres, par exemple $xytx$.

On s'autorise trois transformations. Chacune repère, **n'importe où dans le mot**, deux
lettres voisines et les remplace :

$$xy \ \longrightarrow \ yyx, \qquad xt \ \longrightarrow \ ttx, \qquad yt \ \longrightarrow \ ty .$$

Par exemple, $xyt$ donne $yyxt$ (première règle) ou bien $xty$ (troisième règle).

Dans chacun des trois cas suivants, peut-on passer du premier mot au second ?

1. $xxyy$ et $xyyyyx$
2. $xytx$ et $txyt$
3. $xy$ et $xt$

## Hints

1. Pour la première question, il n'y a rien à démontrer : il suffit de trouver la suite de
   transformations. Essaie en partant du $x$ le plus à droite.
2. Pour les deux autres, cherche une quantité que les transformations ne changent jamais.
   Écris les trois règles côte à côte et compte.
3. Combien y a-t-il de $x$ à gauche de chaque flèche ? Et à droite ?
4. Pour la troisième question, le compte des $x$ ne suffit pas. Demande-toi plutôt si une
   lettre peut **disparaître** complètement d'un mot.

## Solution

**1. Oui, on peut passer de $xxyy$ à $xyyyyx$.**

Partons de $x\,x\,y\,y$ et appliquons la première règle au deuxième $x$ et au premier $y$,
qui sont voisins :

$$x \underline{xy} y \ \longrightarrow \ x \, \underline{yyx} \, y = xyyxy .$$

Dans $xyyxy$, les deux dernières lettres forment de nouveau le motif $xy$ :

$$xyy\underline{xy} \ \longrightarrow \ xyy\,\underline{yyx} = xyyyyx .$$

C'est bien le mot voulu, obtenu en deux transformations.

**2. Non, on ne peut pas passer de $xytx$ à $txyt$.**

Comptons les lettres $x$ dans chacune des trois règles :

| règle | $x$ à gauche | $x$ à droite |
|---|---|---|
| $xy \to yyx$ | 1 | 1 |
| $xt \to ttx$ | 1 | 1 |
| $yt \to ty$ | 0 | 0 |

Dans les trois cas, le nombre de $x$ est le même avant et après. Comme la transformation ne
touche qu'un bout du mot et laisse le reste intact, **le nombre total de $x$ dans le mot ne
change jamais.**

Or $xytx$ contient deux $x$, et $txyt$ n'en contient qu'un. On ne peut donc pas passer de
l'un à l'autre, ni dans un sens ni dans l'autre.

**3. Non, on ne peut pas passer de $xy$ à $xt$.**

Ici les deux mots contiennent le même nombre de $x$, à savoir un ; le compte précédent ne
tranche pas. Regardons plutôt la lettre $t$.

Aucune des trois règles ne fait apparaître un $t$ là où il n'y en avait pas :

- $xy \to yyx$ ne contient aucun $t$, ni avant ni après ;
- $xt \to ttx$ part d'un mot qui contenait déjà un $t$ ;
- $yt \to ty$ part aussi d'un mot qui contenait déjà un $t$.

Autrement dit, **si un mot ne contient aucun $t$, aucun mot obtenu à partir de lui n'en
contiendra.** Comme $xy$ ne contient pas de $t$ et que $xt$ en contient un, on ne peut pas
passer de $xy$ à $xt$.

Et dans l'autre sens ? Le même argument marche avec la lettre $y$ : aucune règle ne crée un
$y$ à partir d'un mot qui n'en avait pas (la règle $xy \to yyx$ et la règle $yt \to ty$
partent toutes les deux d'un mot contenant déjà un $y$). Donc $xt$, qui n'a pas de $y$, ne
peut pas devenir $xy$.

**Conclusion.** Le premier passage est possible, les deux autres sont impossibles.

## Going further

Les trois questions montrent trois attitudes différentes devant le même type de problème.

Quand la réponse est **oui**, on exhibe la suite de coups : c'est une preuve complète, et
personne ne peut la contester.

Quand la réponse est **non**, il faut trouver une quantité qui ne bouge pas. La question 2
utilise un compte exact (le nombre de $x$). La question 3 utilise quelque chose de plus
faible mais qui suffit : une lettre absente le reste.

Une question pour continuer : peut-on passer de $xy$ à $yyyyx$ ? et à $yyyx$ ?
