---
id: "11632"
title: "Quatorze groupes de quatre au club théâtre"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, raisonnement par l'absurde, denombrement, ensembles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (le corrigé écrit « 4 des neuf autres groupes » au lieu de « 4 des treize autres groupes »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Au club théâtre d'un lycée, on a formé $14$ groupes de $4$ élèves pour travailler les scènes d'une pièce. Deux groupes différents ont toujours **un et un seul** élève en commun.

1. Prouver qu'il existe un élève qui appartient à au moins $5$ groupes.
2. Chaque élève du club est membre d'au moins un groupe. Combien y a-t-il d'élèves dans le club ?

## Hints

1. Fixe un groupe $G$. Chacun des $13$ autres groupes partage exactement un élève avec $G$, et $G$ n'a que $4$ élèves.
2. Si l'on répartit $13$ objets dans $4$ tiroirs, l'un des tiroirs contient au moins $4$ objets.
3. Pour la deuxième question, appelle $x$ l'élève de la première question et suppose qu'un groupe $G'$ ne contient pas $x$. Ce groupe doit rencontrer chacun des $5$ groupes de $x$, avec seulement $4$ élèves.
4. Si un élève $y \neq x$ est dans deux groupes qui contiennent aussi $x$, ces deux groupes ont deux élèves en commun.

## Solution

**1. Un élève dans au moins cinq groupes.** Fixons un des groupes, que l'on appelle $G$. Chacun des $13$ autres groupes a exactement un élève en commun avec $G$. On range ces $13$ groupes dans $4$ « tiroirs », un par élève de $G$ : chaque groupe va dans le tiroir de l'élève qu'il partage avec $G$.

Si chaque tiroir contenait au plus $3$ groupes, il y aurait au plus $4 \times 3 = 12$ groupes en tout. Or il y en a $13$. Donc l'un des tiroirs contient au moins $4$ groupes : un élève $x$ de $G$ appartient à au moins $4$ des $13$ autres groupes. En comptant aussi $G$, **l'élève $x$ appartient à au moins $5$ groupes.**

**2. Le nombre d'élèves.** Notons $G_1, G_2, G_3, G_4, G_5$ cinq groupes qui contiennent $x$.

*Étape 1 : $x$ est dans tous les groupes.* Raisonnons par l'absurde et supposons qu'un groupe $G'$ ne contienne pas $x$. Le groupe $G'$ a un élève en commun avec chacun des cinq groupes $G_1, \ldots, G_5$. Comme $G'$ n'a que $4$ élèves, le même argument des tiroirs montre que l'un de ses élèves, appelé $y$, est commun à deux de ces groupes, disons $G_i$ et $G_j$ avec $i \neq j$.

L'élève $y$ est dans $G'$ et $x$ n'y est pas, donc $y \neq x$. Mais alors $G_i$ et $G_j$ contiennent tous les deux $x$ et $y$ : ils ont deux élèves en commun, ce qui est interdit. Donc ce groupe $G'$ n'existe pas, et $x$ appartient aux $14$ groupes.

*Étape 2 : on compte.* Deux groupes ont un seul élève en commun, et cet élève est forcément $x$. Si l'on retire $x$ de chaque groupe, il reste donc $14$ groupes de $3$ élèves qui n'ont **aucun** élève en commun deux à deux. Ils contiennent en tout $14 \times 3 = 42$ élèves différents. Avec $x$, cela fait $43$ élèves. Comme chaque élève du club est dans au moins un groupe, personne n'est oublié.

Une telle organisation existe bien : il suffit de mettre $x$ avec $3$ nouveaux élèves dans chacun des $14$ groupes.

**Conclusion : il y a $43$ élèves dans le club.**
