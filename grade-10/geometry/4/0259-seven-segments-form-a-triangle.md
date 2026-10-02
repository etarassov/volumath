---
id: "0259"
title: "Sept segments, un triangle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 25
tags: [inegalite-triangulaire, raisonnement-par-l-absurde, encadrement, fibonacci]
adapted_from: null
created: 2026-09-18
see_also: ["7427"]
same_as: []
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 2, задача 8"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On dispose de sept segments dont toutes les longueurs sont comprises entre $\dfrac{1}{10}$
et $1$, bornes comprises.

Montrer que, parmi ces sept segments, on peut toujours en choisir trois avec lesquels on
peut construire un triangle.

## Hints

1. Rappelle d'abord la condition pour que trois longueurs $a \le b \le c$ soient les côtés d'un triangle. Il n'y a qu'une seule inégalité à vérifier, laquelle ?
2. C'est $a + b > c$ : les deux petits côtés mis bout à bout doivent dépasser le grand. Raisonne maintenant par l'absurde et suppose qu'aucun choix de trois segments ne donne un triangle.
3. Range les sept longueurs dans l'ordre croissant : $a_1 \le a_2 \le \dots \le a_7$. Applique l'hypothèse aux trois longueurs consécutives $a_{k-2} \le a_{k-1} \le a_k$. Qu'obtiens-tu ?
4. Tu obtiens $a_k \ge a_{k-2} + a_{k-1}$ pour tout $k$. Pars de $a_1 \ge \frac{1}{10}$ et $a_2 \ge \frac{1}{10}$, puis minore $a_3$, puis $a_4$, et continue jusqu'à $a_7$. Compare le résultat à 1.

## Solution

**L'idée : on raisonne par l'absurde. Si aucun triangle n'est possible, les longueurs sont
forcées de grandir très vite, trop vite pour rester sous 1.**

**Étape 1. La condition pour former un triangle.**

Trois longueurs $a \le b \le c$ sont les côtés d'un triangle si et seulement si
$$a + b > c .$$

En effet, les deux autres inégalités triangulaires, $a + c > b$ et $b + c > a$, sont
automatiquement vraies puisque $c$ est la plus grande des trois.

Donc dire que trois longueurs $a \le b \le c$ **ne** forment **pas** de triangle, c'est dire
$$a + b \le c .$$

**Étape 2. Supposer le contraire et ranger les longueurs.**

Supposons, par l'absurde, qu'aucun choix de trois de nos sept segments ne permette de
construire un triangle.

Rangeons les sept longueurs dans l'ordre croissant :
$$a_1 \le a_2 \le a_3 \le a_4 \le a_5 \le a_6 \le a_7 ,$$
avec, d'après l'énoncé,
$$\frac{1}{10} \le a_1 \qquad\text{et}\qquad a_7 \le 1 .$$

Prenons trois longueurs consécutives de cette liste, $a_{k-2} \le a_{k-1} \le a_k$. Elles ne
forment pas de triangle, donc d'après l'étape 1
$$a_k \ge a_{k-2} + a_{k-1} \qquad \text{pour tout } k = 3, 4, 5, 6, 7 .$$

**Étape 3. Faire grandir les longueurs de proche en proche.**

On part de $a_1 \ge \dfrac{1}{10}$ et $a_2 \ge a_1 \ge \dfrac{1}{10}$, puis on applique
l'inégalité de l'étape 2 à chaque rang :

$$a_3 \ \ge\ a_1 + a_2 \ \ge\ \frac{1}{10} + \frac{1}{10} = \frac{2}{10}$$
$$a_4 \ \ge\ a_2 + a_3 \ \ge\ \frac{1}{10} + \frac{2}{10} = \frac{3}{10}$$
$$a_5 \ \ge\ a_3 + a_4 \ \ge\ \frac{2}{10} + \frac{3}{10} = \frac{5}{10}$$
$$a_6 \ \ge\ a_4 + a_5 \ \ge\ \frac{3}{10} + \frac{5}{10} = \frac{8}{10}$$
$$a_7 \ \ge\ a_5 + a_6 \ \ge\ \frac{5}{10} + \frac{8}{10} = \frac{13}{10}$$

**Étape 4. La contradiction.**

On obtient
$$a_7 \ \ge\ \frac{13}{10} = \text{1,3} \ >\ 1 ,$$
alors que l'énoncé impose $a_7 \le 1$. C'est contradictoire.

Notre supposition était donc fausse.

**Conclusion.** Parmi sept segments de longueurs comprises entre $\dfrac{1}{10}$ et $1$, il
existe toujours trois segments qui forment un triangle.

**Remarque.** Les numérateurs obtenus en chemin sont $1, 1, 2, 3, 5, 8, 13$ : ce sont les
nombres de Fibonacci, chacun étant la somme des deux précédents. C'est exactement ce que
dit l'inégalité $a_k \ge a_{k-2} + a_{k-1}$, et c'est pour cela que les longueurs explosent
si vite.

## Going further

1. Montre que six segments ne suffiraient pas : trouve six longueurs comprises entre
   $\frac{1}{10}$ et $1$ dont aucun choix de trois ne forme un triangle.
2. Si les longueurs sont comprises entre $\frac{1}{100}$ et $1$, combien de segments faut-il
   au minimum pour être sûr d'en trouver trois qui forment un triangle ?
3. Pourquoi, dans l'étape 2, suffit-il d'écrire l'inégalité pour trois longueurs
   **consécutives** de la liste rangée, plutôt que pour tous les triplets possibles ?
