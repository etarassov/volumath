---
id: "7618"
title: "Filles et garçons en cercle"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, double-comptage, cercle, comptage-par-blocs]
adapted_from: null
see_also: []
same_as: ["7755"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 2 (une étoile, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

$p$ filles et $q$ garçons se placent en cercle, dans un ordre quelconque. On suppose $p \geqslant 1$ et $q \geqslant 1$.

On regarde ensuite chacune des paires de voisins immédiats le long du cercle. On note

- $a$ le nombre de paires de voisins formées de **deux filles** ;
- $b$ le nombre de paires de voisins formées de **deux garçons**.

Démontrer que

$$a - b = p - q .$$

## Hints

1. Faites un dessin avec de petits effectifs, par exemple $p = 3$ et $q = 2$, et essayez plusieurs dispositions. La différence $a - b$ vaut-elle toujours la même chose ?
2. En parcourant le cercle, les filles se regroupent en **blocs** de filles consécutives, séparés par des blocs de garçons. Combien y a-t-il de blocs de chaque sorte ?
3. Dans un bloc de $\ell$ filles consécutives, combien de paires de voisines toutes deux filles comptez-vous ?
4. Additionnez sur tous les blocs de filles, puis sur tous les blocs de garçons, et comparez.

## Solution

**Les blocs.**

Parcourons le cercle dans un sens. Les personnes se répartissent naturellement en **blocs** : un bloc est une suite maximale de personnes consécutives du même sexe. Les blocs de filles et les blocs de garçons alternent le long du cercle, puisque deux blocs consécutifs sont forcément de sexes différents (sinon ils n'en feraient qu'un).

Comme il y a au moins une fille et au moins un garçon, il y a au moins un bloc de chaque sorte, et comme ils alternent le long d'un cercle, **il y a autant de blocs de filles que de blocs de garçons**. Notons $k$ ce nombre commun.

**Comptons $a$.**

Regardons un bloc de filles contenant $\ell$ filles. À l'intérieur de ce bloc, les paires de voisines sont les $\ell - 1$ paires formées de deux filles consécutives. Et les deux paires situées aux extrémités du bloc sont mixtes, puisque le voisin extérieur est un garçon : elles ne comptent pas pour $a$.

Donc un bloc de $\ell$ filles apporte exactement $\ell - 1$ paires « fille-fille ».

En notant $\ell_1, \ell_2, \ldots, \ell_k$ les tailles des $k$ blocs de filles, on a $\ell_1 + \ell_2 + \cdots + \ell_k = p$, et

$$a = (\ell_1 - 1) + (\ell_2 - 1) + \cdots + (\ell_k - 1) = p - k .$$

**Comptons $b$.**

Exactement le même raisonnement avec les garçons, dont les blocs sont au nombre de $k$ eux aussi, donne

$$b = q - k .$$

**Conclusion.**

$$a - b = (p - k) - (q - k) = p - q .$$

C'est bien ce qu'il fallait démontrer. Remarquez que le nombre $k$ de blocs, lui, dépend de la disposition : il s'élimine dans la soustraction.

## Going further

La démonstration donne beaucoup plus que l'énoncé. Elle donne $a = p - k$ et $b = q - k$ **séparément**, où $k$ est le nombre de blocs de filles (qui est aussi le nombre de blocs de garçons). On peut donc lire sur la disposition combien de paires de chaque sorte il y aura.

Deux conséquences immédiates :

- Le nombre de paires mixtes vaut $2k$, donc il est toujours **pair**. Cela se voit aussi directement : en parcourant le cercle, on change de sexe un nombre pair de fois, puisqu'on revient au point de départ.
- Comme $k \geqslant 1$, on a toujours $a \leqslant p - 1$ et $b \leqslant q - 1$.

Cas limite à surveiller : si tout le monde est du même sexe, il n'y a plus de paires mixtes et la formule change. Avec $p$ filles et aucun garçon, par exemple, $a = p$ et non $p - 1$, car le cercle de filles est refermé sur lui-même. C'est pourquoi l'énoncé impose $p \geqslant 1$ **et** $q \geqslant 1$.
