---
id: "7343"
title: "Des elfes et des gobelins en rang"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, methode-des-intervalles, combinaisons, bijection]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, combinatoire, exercice 63. La solution imprimée conclut à la suite de Fibonacci ; c'est faux, la réponse est n + 1 (voir la solution)."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On dispose de $n$ elfes et de $n$ gobelins, soit $2n$ personnages en tout. On veut les aligner sur une rangée de $2n$ places, mais il est **interdit de mettre deux gobelins côte à côte**.

Les elfes sont indiscernables entre eux, et les gobelins aussi : seule compte la suite des espèces, de gauche à droite.

**Combien y a-t-il d'alignements possibles ?**

*Commence par traiter à la main $n = 1$, $n = 2$ et $n = 3$.*

## Hints

1. Note $E$ pour un elfe et $G$ pour un gobelin. Un alignement est donc un mot de $2n$ lettres, avec $n$ fois $E$, $n$ fois $G$, et jamais deux $G$ consécutifs.
2. Pour $n = 2$ : écris les six mots possibles et barre ceux qui contiennent $GG$.
3. Une idée qui marche souvent : place d'abord les personnages **sans contrainte**, ici les elfes, puis glisse les autres dans les espaces libres.
4. Alignés, $n$ elfes créent combien d'espaces où l'on peut glisser un gobelin, en comptant celui de gauche et celui de droite ?
5. Combien de gobelins peut-on mettre dans un même espace sans en avoir deux côte à côte ?

## Solution

Notons $E$ pour un elfe et $G$ pour un gobelin. Il s'agit de compter les mots de longueur $2n$ formés de $n$ lettres $E$ et $n$ lettres $G$, sans deux $G$ consécutifs.

### Les petits cas

$n = 1$ : les mots $EG$ et $GE$. **Deux** alignements.

$n = 2$ : parmi les six mots à deux $E$ et deux $G$, il faut éliminer $GGEE$, $EGGE$ et $EEGG$. Restent
$$GEGE, \qquad GEEG, \qquad EGEG .$$
**Trois** alignements.

$n = 3$ : on trouve $GEGEGE$, $GEGEEG$, $GEEGEG$, $EGEGEG$. **Quatre** alignements.

La réponse semble être $n + 1$. Démontrons-le.

### La méthode des espaces

Commençons par aligner les $n$ elfes, sans rien d'autre :
$$\_\; E \;\_\; E \;\_\; E \;\_ \;\cdots\; E \;\_$$

Ces $n$ elfes créent des **espaces** : un avant le premier elfe, un entre deux elfes consécutifs (il y en a $n-1$), et un après le dernier. Cela fait en tout
$$1 + (n-1) + 1 = n + 1 \quad \text{espaces.}$$

Plaçons maintenant les gobelins dans ces espaces.

- **Deux gobelins ne peuvent pas aller dans le même espace**, car ils s'y retrouveraient côte à côte.
- Inversement, si chaque espace reçoit au plus un gobelin, aucun gobelin n'en touche un autre : il y a toujours un elfe entre eux.

Un alignement autorisé revient donc exactement à **choisir $n$ espaces parmi les $n+1$** pour y mettre un gobelin chacun.

*(C'est bien une correspondance parfaite : à partir d'un alignement autorisé, on retrouve le choix des espaces en effaçant les gobelins ; et deux choix différents donnent deux alignements différents.)*

### Le compte

Choisir $n$ espaces parmi $n+1$, c'est la même chose que choisir le seul espace **laissé vide** :
$$\binom{n+1}{n} = \binom{n+1}{1} = n + 1 .$$

$$\boxed{\text{Il y a } n+1 \text{ alignements possibles.}}$$

On retrouve bien $2$, $3$ et $4$ pour $n = 1, 2, 3$.

### Une remarque sur la solution imprimée

Le polycopié conclut que la réponse est un nombre de **Fibonacci**. C'est faux : pour $n = 2$, Fibonacci donnerait $2$, alors qu'il y a bien trois alignements. L'erreur vient d'une récurrence mal établie en cours de route.

Le réflexe qui aurait évité l'erreur : **tester la formule sur un petit cas.** C'est aussi la différence entre ce problème et celui, très proche, où l'on compte les mots de longueur $n$ sans deux $G$ consécutifs **sans imposer le nombre de $G$** : là, la réponse est vraiment une suite de Fibonacci. C'est la contrainte « autant de $G$ que de $E$ » qui change tout.

## Going further

1. Si les elfes étaient tous reconnaissables et les gobelins aussi, combien d'alignements y aurait-il ? *(Multiplie par le nombre de façons de les ordonner.)*
2. Avec $n$ elfes et $k$ gobelins, toujours sans deux gobelins côte à côte, combien d'alignements ? Pour quelles valeurs de $k$ y en a-t-il au moins un ?
3. Et si l'on interdisait aussi deux **elfes** côte à côte ? Combien reste-t-il d'alignements avec $n$ de chaque ?
4. Même question que l'énoncé, mais les $2n$ personnages sont assis autour d'une **table ronde**.
