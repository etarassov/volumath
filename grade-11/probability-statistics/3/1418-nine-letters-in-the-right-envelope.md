---
id: "1418"
title: "Neuf lettres dans la bonne enveloppe"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [permutations, point-fixe, derangements, probabilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 13"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

Olivier a écrit dix lettres aux parents du club de mathématiques, et il a préparé les dix enveloppes correspondantes, chacune avec une adresse différente.

Il confie la mise sous pli à un secrétaire distrait, qui glisse les lettres dans les enveloppes **au hasard**, une lettre par enveloppe.

1. Quelle est la probabilité qu'exactement neuf des dix lettres se retrouvent dans la bonne enveloppe ?
2. Quelle est la probabilité qu'exactement huit des dix lettres se retrouvent dans la bonne enveloppe ?

## Hints

1. Pour la question 1, ne pas calculer : réfléchir. Si neuf lettres sont à la bonne adresse, où se trouve la dixième ?
2. Pour la question 2, commencer par choisir **quelles** huit lettres sont bien placées.
3. Une fois ces huit lettres placées, il reste deux lettres et deux enveloppes, et il faut que **ni l'une ni l'autre** ne soit à sa place. De combien de façons ?
4. Combien y a-t-il en tout de façons de répartir dix lettres dans dix enveloppes ?

## Solution

**1. Exactement neuf lettres bien placées : c'est impossible.**

Supposons que neuf lettres soient dans la bonne enveloppe. Il reste alors une lettre et une enveloppe : les neuf autres enveloppes sont déjà occupées, donc la dixième lettre va forcément dans la dixième enveloppe, qui est précisément la sienne. Il y aurait alors **dix** lettres bien placées, et non neuf.

Il est donc impossible d'avoir exactement neuf lettres bien placées :

$$P(\text{exactement } 9) = 0 .$$

**2. Exactement huit lettres bien placées.**

Il y a $10!$ façons de répartir les dix lettres dans les dix enveloppes, toutes de même probabilité :

$$10! = 3\,628\,800 .$$

Comptons les répartitions qui laissent exactement huit lettres à la bonne adresse.

*Étape 1 : choisir les huit lettres bien placées.* Il y a $\binom{10}{8} = \binom{10}{2} = 45$ façons.

*Étape 2 : mal placer les deux autres.* Les deux lettres restantes doivent aller dans les deux enveloppes restantes sans qu'aucune ne tombe juste. Il n'y a que deux répartitions possibles pour deux lettres dans deux enveloppes : soit chacune est à sa place (interdit ici), soit elles sont échangées. Il reste donc exactement **une** possibilité : les deux lettres sont échangées.

Le nombre de répartitions favorables vaut donc $45 \times 1 = 45$, et

$$P(\text{exactement } 8) = \frac{45}{3\,628\,800} = \frac{1}{80\,640} \approx \text{1,24} \times 10^{-5}.$$

**Conclusion.** La probabilité d'avoir exactement neuf lettres bien placées est $\boxed{0}$ : c'est impossible. Celle d'en avoir exactement huit vaut $\boxed{\dfrac{1}{80\,640}}$, soit environ une chance sur $80\,000$.

**Ce que l'exercice apprend.** Une question de probabilités ne demande pas toujours un calcul. Ici, la première réponse vient d'un raisonnement de pure logique : le nombre de lettres mal placées ne peut jamais valoir $1$. Il vaut $0$, ou $2$, ou $3$, ..., mais jamais $1$.

## Going further

1. Quelle est la probabilité que les dix lettres soient **toutes** bien placées ?
2. Quelle est la probabilité qu'exactement sept lettres soient bien placées ? (Il faut compter les façons de mal placer trois lettres dans trois enveloppes sans qu'aucune ne tombe juste.)
3. Quelle est la probabilité qu'**aucune** lettre ne soit bien placée ? Chercher la valeur pour $2$, $3$ et $4$ lettres, et observer vers quoi elle semble tendre.
