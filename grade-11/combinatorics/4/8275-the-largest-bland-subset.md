---
id: "8275"
title: "Le plus grand sous-ensemble fade"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [sous-ensembles, somme, extremum, appariement, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 28 (niveau 1). La Muraille ne publie pas de solutions ; le résultat a été confirmé par recherche exhaustive jusqu'à n = 13."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On dit qu'une partie $A$ de $\{1, 2, \ldots, n\}$ est
**fade** si, pour tous $x$ et $y$ pris dans $A$ (éventuellement égaux), la somme $x+y$
n'appartient pas à $A$.

Quel est le plus grand nombre d'éléments que peut avoir une partie fade ?

## Hints

1. Fais les petits cas : $n = 3$, $n = 4$, $n = 5$. Combien d'éléments arrives-tu à mettre ?
2. Pour la construction, deux idées naturelles marchent : ne garder que les nombres impairs,
   ou ne garder que les plus grands. Vérifie que chacune donne bien une partie fade, et
   compte.
3. Pour la majoration, appelle $a$ le **plus grand** élément de $A$ et regroupe les autres
   nombres deux par deux de façon que chaque paire ait pour somme $a$.
4. Combien de nombres de chaque paire $A$ peut-il contenir ? Et que dire de $a/2$ quand $a$ est
   pair ?

## Solution

**Réponse : une partie fade a au plus $\left\lceil \dfrac{n}{2} \right\rceil$ éléments, et ce
nombre est atteint.**

($\lceil t \rceil$ désigne l'arrondi **par excès** : $\lceil \text{2,5} \rceil = 3$ et
$\lceil 3 \rceil = 3$.)

**Une partie fade de cette taille existe.**

Prenons pour $A$ l'ensemble des nombres **impairs** de $\{1, \ldots, n\}$. Si $x$ et $y$ sont
impairs, leur somme $x+y$ est paire, donc n'appartient pas à $A$ : la partie est fade.

Le nombre d'impairs entre $1$ et $n$ vaut exactement $\left\lceil \dfrac{n}{2} \right\rceil$
(par exemple $1, 3, 5, 7, 9$ pour $n = 9$ comme pour $n = 10$).

*Une autre construction.* L'ensemble des entiers $x$ avec $\dfrac{n}{2} < x \le n$ est aussi
fade, car la somme de deux d'entre eux dépasse $n$. Il a $\left\lfloor \dfrac{n}{2}
\right\rfloor$ éléments, ce qui est parfois un de moins.

**On ne peut pas faire mieux.**

Soit $A$ une partie fade non vide et soit $a$ son plus grand élément. Tous les autres éléments
de $A$ sont dans $\{1, 2, \ldots, a-1\}$.

Regroupons $\{1, 2, \ldots, a-1\}$ en paires de somme $a$ :

$$\{1, a-1\}, \quad \{2, a-2\}, \quad \{3, a-3\}, \quad \ldots$$

- Si $a$ est **impair**, ces paires recouvrent exactement $\{1, \ldots, a-1\}$ et il y en a
  $\dfrac{a-1}{2}$.
- Si $a$ est **pair**, le nombre $\dfrac{a}{2}$ reste seul au milieu ; il y a
  $\dfrac{a}{2} - 1$ paires, plus ce nombre isolé.

*$A$ contient au plus un élément de chaque paire.* En effet, si $A$ contenait $x$ et $a - x$,
leur somme $a$ serait dans $A$, ce qui est interdit.

*Si $a$ est pair, $A$ ne contient pas $\dfrac{a}{2}$.* Sinon, en prenant $x = y = \dfrac{a}{2}$,
la somme $x+y = a$ serait dans $A$, ce qui est interdit.

Donc, dans les deux cas, $A$ contient au plus $\left\lfloor \dfrac{a-1}{2} \right\rfloor$
éléments strictement plus petits que $a$, plus l'élément $a$ lui-même :

$$|A| \ \le \ 1 + \left\lfloor \frac{a-1}{2} \right\rfloor .$$

Comme $a \le n$, on obtient

$$|A| \ \le \ 1 + \left\lfloor \frac{n-1}{2} \right\rfloor = \left\lceil \frac{n}{2}
\right\rceil .$$

(La dernière égalité se vérifie en séparant $n$ pair et $n$ impair : pour $n = 10$,
$1 + 4 = 5$ ; pour $n = 9$, $1 + 4 = 5$.)

**Conclusion.**

$$\boxed{\text{Le plus grand cardinal d'une partie fade de } \{1, \ldots, n\} \text{ vaut }
\left\lceil \frac{n}{2} \right\rceil .}$$

**Les premiers cas.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| cardinal maximal | $1$ | $1$ | $2$ | $2$ | $3$ | $3$ | $4$ | $4$ |

## Going further

1. Pour $n = 6$, donner **toutes** les parties fades de cardinal $3$.
2. La construction « les impairs » et la construction « les grands » donnent parfois le même
   cardinal, parfois non. Pour quels $n$ diffèrent-elles ?
3. Que devient la réponse si l'on interdit seulement $x + y \in A$ pour $x \ne y$, c'est-à-dire
   si l'on autorise $2x \in A$ pour $x \in A$ ?
