---
id: "11847"
title: "Une file indienne sans élève coincé entre deux plus petits"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, recurrence, puissances de deux, petits cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 4 ; corrigé 2023-07_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

$2024$ élèves, qui ont tous des tailles différentes, doivent se mettre en file indienne. Aucun élève ne veut avoir **à la fois** un élève plus petit que lui quelque part devant lui **et** un élève plus petit que lui quelque part derrière lui.

De combien de façons peut-on former une telle file ?

## Hints

1. Commencer par $2$, $3$, puis $4$ élèves, et compter les files possibles.
2. Où peut se placer l'élève le plus grand ?
3. Si l'on retire l'élève le plus grand d'une bonne file, la file qui reste est-elle encore bonne ? Et dans l'autre sens, où peut-on ajouter un élève plus grand que tous les autres à une bonne file ?

## Solution

Appelons **bonne** une file qui respecte la règle, et notons $u_n$ le nombre de bonnes files formées avec $n$ élèves de tailles différentes. Ce nombre ne dépend pas des tailles exactes, seulement de leur ordre.

**Petits cas.** Avec $1$ élève, $u_1 = 1$. Avec $2$ élèves, les deux files sont bonnes : $u_2 = 2$. Avec $3$ élèves de tailles $1 < 2 < 3$, l'élève $3$ ne peut pas être au milieu (il aurait un plus petit de chaque côté), et on trouve les $4$ files $3\,1\,2$, $3\,2\,1$, $1\,2\,3$, $2\,1\,3$ : $u_3 = 4$. On devine $u_n = 2^{n-1}$.

**Le plus grand est à un bout.** Dans une bonne file, si l'élève le plus grand n'est ni le premier ni le dernier, il a un élève devant lui et un élève derrière lui, tous deux plus petits que lui. C'est interdit. Donc le plus grand est en tête ou en queue de file.

**On retire le plus grand.** Prenons une bonne file de $n + 1$ élèves et retirons le plus grand, qui est à un bout. Pour chacun des $n$ autres élèves, on a seulement retiré quelqu'un de plus grand que lui : les élèves plus petits que lui devant et derrière lui n'ont pas changé. La file des $n$ élèves restants est donc encore bonne.

**On ajoute le plus grand.** Inversement, prenons une bonne file de $n$ élèves et ajoutons, en tête ou en queue, un élève plus grand que tous. Cet élève n'a personne d'un côté, donc il respecte la règle. Les autres ont seulement gagné quelqu'un de plus grand : ils la respectent toujours. La nouvelle file est bonne.

**La récurrence.** Une bonne file de $n + 1$ élèves est donc obtenue, d'une seule façon, en choisissant une bonne file des $n$ plus petits puis en plaçant le plus grand en tête ou en queue. Les deux choix donnent des files différentes dès que $n \geqslant 1$. Donc

$$u_{n+1} = 2\,u_n.$$

Comme $u_1 = 1$, on obtient $u_2 = 2$, $u_3 = 4$, et plus généralement $u_n = 2^{n-1}$ pour tout $n \geqslant 1$.

**Conclusion.** Pour $2024$ élèves, il y a $2^{2023}$ façons de former la file.

## Going further

1. Décrire la forme d'une bonne file : en partant de la tête, les tailles diminuent jusqu'au plus petit élève, puis augmentent (une file « en V »). Retrouver $2^{n-1}$ directement : chaque élève autre que le plus petit choisit d'être à gauche ou à droite du plus petit.
2. Que se passe-t-il si chaque élève regarde seulement ses deux voisins immédiats ? On trouve encore les files en V, donc la même réponse.
