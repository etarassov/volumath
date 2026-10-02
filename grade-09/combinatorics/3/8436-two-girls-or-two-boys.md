---
id: "8436"
title: "Deux filles ou deux garçons"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, mois, classe, double-application]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de fin de parcours », exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Une classe compte $25$ élèves.

Montrer que, dans cette classe, il existe forcément deux filles nées le même mois, ou bien deux garçons nés le même mois.

## Hints

1. Il y a douze mois dans l'année. Avec $25$ élèves, combien peut-on en trouver au minimum qui soient nés le même mois ?
2. Attention : trouver deux élèves nés le même mois ne suffit pas, puisqu'il pourrait s'agir d'une fille et d'un garçon. Il en faut plus.
3. Si tu trouves **trois** élèves nés le même mois, que peux-tu dire de leurs sexes ?
4. Tu appliqueras donc le principe des tiroirs deux fois de suite : une fois avec les mois, une fois avec les sexes.

## Solution

Nous appliquons deux fois le principe des tiroirs.

**Première application : trois élèves nés le même mois.**

Il y a $25$ élèves et $12$ mois. Si chaque mois comptait au plus $2$ élèves nés ce mois-là, le nombre total d'élèves serait au plus

$$12 \times 2 = 24 < 25.$$

C'est impossible. Il existe donc un mois où sont nés **au moins trois** élèves de la classe.

Appelons-les $A$, $B$ et $C$.

**Deuxième application : deux élèves du même sexe.**

Les élèves $A$, $B$ et $C$ sont au nombre de trois, et il n'y a que deux sexes possibles. Si chaque sexe concernait au plus un de ces trois élèves, cela ferait au plus $2$ élèves, or il y en a $3$.

Deux d'entre eux ont donc le même sexe.

**Conclusion.**

Ces deux élèves-là sont nés le même mois et sont de même sexe. Ce sont donc deux filles nées le même mois, ou bien deux garçons nés le même mois.

C'est exactement ce qu'il fallait démontrer.

## Going further

Le nombre $25$ n'est pas choisi au hasard : c'est le plus petit qui fonctionne. Avec $24$ élèves, on peut en effet éviter la conclusion : une fille et un garçon nés en janvier, une fille et un garçon nés en février, et ainsi de suite pour les douze mois. Aucune paire de filles ni aucune paire de garçons ne partage alors un mois de naissance.

La forme générale du principe des tiroirs utilisée ici est la suivante : si l'on range $n$ objets dans $t$ tiroirs, l'un des tiroirs contient au moins $\left\lceil \dfrac{n}{t} \right\rceil$ objets. Avec $n = 25$ et $t = 12$, cela donne au moins $3$ objets ; avec $n = 3$ et $t = 2$, au moins $2$.
