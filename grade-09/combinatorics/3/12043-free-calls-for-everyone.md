---
id: "12043"
title: "Des appels gratuits pour tout le monde"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, paires, construction, cercle, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 2 (groupe B) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

Soit $k \geqslant 1$ un entier. Un opérateur téléphonique permet à chacun de ses clients de choisir $k$ numéros avec lesquels la communication est gratuite. Si une personne $A$ choisit le numéro de $B$, alors les appels de $A$ vers $B$ **et** de $B$ vers $A$ sont gratuits.

On considère un groupe de $n$ personnes, toutes clientes de cet opérateur.

1. Si $n \geqslant 2k + 2$, montrer qu'il existe deux personnes du groupe qui ne pourront pas communiquer gratuitement, quels que soient les choix de chacun.
2. Si $n = 2k + 1$, montrer que les $n$ personnes peuvent faire leurs choix de sorte que deux personnes quelconques du groupe puissent toujours communiquer gratuitement.

## Hints

1. Comptez le nombre de paires de personnes dans le groupe.
2. Chaque choix d'un numéro rend gratuite au plus une paire. Combien de paires au plus sont gratuites ?
3. Pour la question 2, installez les $2k + 1$ personnes autour d'une table ronde.

## Solution

Appelons **paire** un ensemble de deux personnes du groupe, sans ordre. Une paire est **gratuite** si l'une des deux personnes a choisi le numéro de l'autre.

**Question 1.**

*Le nombre de paires.* Chacune des $n$ personnes forme une paire avec chacune des $n - 1$ autres. Cela fait $n(n - 1)$ façons, mais chaque paire est comptée deux fois, une fois depuis chacune de ses deux personnes. Il y a donc $n(n - 1)/2$ paires.

*Le nombre de paires gratuites.* Chaque personne choisit $k$ numéros, ce qui fait $kn$ choix en tout. Chaque choix rend gratuite au plus une paire du groupe (aucune si le numéro choisi n'est pas celui d'une personne du groupe), et une paire gratuite provient d'au moins un choix. Il y a donc au plus $kn$ paires gratuites.

*Comparaison.* Si $n \geqslant 2k + 2$, alors $n - 1 \geqslant 2k + 1 > 2k$, donc

$$\frac{n(n - 1)}{2} > \frac{n \times 2k}{2} = kn .$$

Il y a plus de paires que de paires gratuites. Une paire au moins n'est donc pas gratuite : ces deux personnes ne pourront pas communiquer gratuitement.

**Question 2.** Prenons $n = 2k + 1$. Installons les $2k + 1$ personnes autour d'une table ronde, et demandons à chacune de choisir les numéros des $k$ personnes assises juste après elle, en tournant dans le sens des aiguilles d'une montre.

Soient $A$ et $B$ deux personnes du groupe. Partons de $A$ et tournons dans le sens des aiguilles d'une montre : on arrive sur $B$ après un certain nombre $d$ de places, avec $1 \leqslant d \leqslant 2k$. En partant de $B$ dans le même sens, on revient sur $A$ après les places qui restent pour faire le tour complet de la table, soit $(2k + 1) - d$ places.

La somme de ces deux nombres vaut $2k + 1$, donc ils ne peuvent pas être tous les deux supérieurs ou égaux à $k + 1$, car leur somme serait alors au moins $2k + 2$. L'un des deux est donc au plus $k$.

- Si $d \leqslant k$, alors $B$ fait partie des $k$ personnes qui suivent $A$, donc $A$ a choisi le numéro de $B$.
- Sinon, $(2k + 1) - d \leqslant k$, et c'est $B$ qui a choisi le numéro de $A$.

Dans les deux cas, $A$ et $B$ communiquent gratuitement.

Par exemple, pour $k = 2$ et $5$ personnes $P_1, P_2, P_3, P_4, P_5$ autour de la table, $P_1$ choisit $P_2$ et $P_3$, $P_2$ choisit $P_3$ et $P_4$, et ainsi de suite jusqu'à $P_5$, qui choisit $P_1$ et $P_2$. On vérifie que les $10$ paires sont gratuites.

**Conclusion.** Avec $2k + 2$ personnes ou plus, il y a toujours deux personnes qui ne peuvent pas communiquer gratuitement. Avec $2k + 1$ personnes, il existe des choix qui permettent à tout le monde de communiquer gratuitement avec tout le monde.

## Going further

Dans la construction de la question 2, chaque paire est gratuite grâce à un seul choix. Montrer que, pour $n = 2k + 1$, c'est forcément le cas dans **toute** répartition des choix où tout le monde peut communiquer avec tout le monde.
