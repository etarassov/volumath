---
id: "7709"
title: "Filles et garçons alternés autour de la table"
grade: 10
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, factorielle, alternance, table ronde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, test de mi-parcours du vendredi 22 août"
  reference: "stage_ete_2014.pdf, « Test de mi parcours », Groupe A, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Ménehould organise une fête d'anniversaire. Il y aura $15$ filles, elle comprise, et $15$ garçons, soit $30$ personnes en tout.

La table est ronde et ses $30$ places sont fixées : on les a numérotées de $1$ à $30$ en tournant autour de la table. Ménehould a préparé une étiquette au nom de chaque invité, et elle veut les poser sur les places de façon que **filles et garçons alternent** : chaque fille doit avoir deux garçons pour voisins, et chaque garçon deux filles.

De combien de façons peut-elle disposer les $30$ étiquettes ?

## Hints

1. Regarde d'abord les places, pas les personnes : quelles places recevront des filles ?
2. Les places portent les numéros $1$ à $30$. Si la place $1$ reçoit une fille, que reçoit la place $2$ ? Et la place $3$ ?
3. Il n'y a donc que deux répartitions possibles des places entre filles et garçons. Une fois l'une d'elles choisie, il reste à ranger $15$ filles sur $15$ places, et $15$ garçons sur $15$ places.

## Solution

**Il y a $2 \times (15!)^2$ dispositions.**

**Étape 1 : on choisit quelles places reviennent aux filles.**

Supposons que la place $1$ reçoive une fille. Alors la place $2$ reçoit un garçon, la place $3$ une fille, la place $4$ un garçon, et ainsi de suite : les places impaires reçoivent les filles et les places paires les garçons. Comme il y a $15$ places impaires et $15$ places paires, et autant de filles que de garçons, cela marche, et la place $30$ (paire, garçon) est bien voisine de la place $1$ (impaire, fille).

Si au contraire la place $1$ reçoit un garçon, on obtient l'autre répartition : garçons sur les places impaires, filles sur les places paires.

Il y a donc exactement **$2$** façons de décider quelles places reviennent aux filles.

**Étape 2 : on range les personnes.**

La répartition étant choisie, il reste à poser les $15$ étiquettes de filles sur les $15$ places qui leur sont réservées. C'est un rangement de $15$ objets distincts sur $15$ places distinctes : il y en a

$$15! = 15 \times 14 \times \cdots \times 2 \times 1 .$$

Indépendamment de cela, on range les $15$ garçons sur leurs $15$ places : encore $15!$ façons.

**Étape 3 : on multiplie.**

Chaque disposition se construit en faisant trois choix successifs et indépendants : la répartition des places ($2$ possibilités), le rangement des filles ($15!$ possibilités), le rangement des garçons ($15!$ possibilités). Le nombre total est donc le produit :

$$\boxed{\; 2 \times 15! \times 15! = 2 \times (15!)^2 \;}$$

**Conclusion : Ménehould a $2 \times (15!)^2$ façons de poser ses étiquettes.**

## Going further

Le nombre $15!$ vaut $1\,307\,674\,368\,000$, donc la réponse dépasse $3 \times 10^{24}$. Si Ménehould essayait une disposition par seconde, il lui faudrait bien plus longtemps que l'âge de l'univers.

Attention : la réponse change si l'on décide que deux dispositions qui se déduisent l'une de l'autre par une rotation de la table sont « les mêmes ». Ici les places sont numérotées, donc elles ne le sont pas.
