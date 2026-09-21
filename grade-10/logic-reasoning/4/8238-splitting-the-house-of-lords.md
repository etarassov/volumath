---
id: "8238"
title: "Partager la Chambre des Lords"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [principe extremal, graphes, partition, minimum]
adapted_from: null
see_also: ["8127"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, TD de combinatoire (Savinien Kreczman, Andrei Barbu), section Extrema, exercice 12"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Dans la Chambre des Lords, chaque Lord a **au plus trois ennemis**. L'inimitié est réciproque : si $X$ est un ennemi de $Y$, alors $Y$ est un ennemi de $X$.

La Reine veut partager la Chambre en **deux groupes**, de sorte que chaque Lord ait **au plus un ennemi dans son propre groupe**.

Est-ce toujours possible ?

## Hints

1. Il ne sert à rien d'essayer de construire le partage de proche en proche : on se bloque toujours quelque part.
2. Une méthode puissante consiste à choisir, parmi toutes les répartitions possibles, celle qui est la **meilleure** pour une certaine mesure, puis à montrer qu'elle convient forcément.
3. Quelle mesure ? Il faut qu'elle diminue quand on améliore la situation. Compte le nombre de paires d'ennemis qui se retrouvent dans le **même** groupe.
4. Il n'y a qu'un nombre fini de répartitions, donc il en existe une qui minimise ce compte. Suppose qu'elle ne convienne pas, et regarde le Lord fautif.
5. Un Lord fautif a au moins deux ennemis dans son groupe. Combien en a-t-il alors, au plus, dans l'autre ?
6. Que se passe-t-il pour la mesure si on le change de groupe ?

## Solution

La réponse est **oui**, c'est toujours possible. Et la démonstration n'utilise que le **principe extrémal** : on choisit la répartition la meilleure possible, et on montre qu'elle a déjà la propriété voulue.

**Le choix de la répartition.**

La Chambre compte un nombre fini de Lords, donc il n'y a qu'un nombre fini de façons de les répartir en deux groupes. Parmi toutes ces répartitions, on en choisit une pour laquelle le nombre

$$N = \text{nombre de paires d'ennemis situés dans le même groupe}$$

est **le plus petit possible**. C'est légitime : un ensemble fini et non vide d'entiers positifs a toujours un plus petit élément.

**Cette répartition convient.**

Raisonnons par l'absurde et supposons qu'elle ne convienne pas : il existe alors un Lord, appelons-le $L$, qui a **au moins deux ennemis dans son propre groupe**.

Comme $L$ a au plus trois ennemis en tout, il lui en reste **au plus un** dans l'autre groupe.

Changeons $L$ de groupe, et regardons comment $N$ évolue. Seules les paires qui contiennent $L$ sont concernées :

- les paires « $L$ et un de ses ennemis de son ancien groupe » ne sont plus dans le même groupe : on en perd **au moins $2$** ;
- les paires « $L$ et un de ses ennemis du nouveau groupe » deviennent des paires internes : on en gagne **au plus $1$**.

Les paires qui ne contiennent pas $L$ ne bougent pas.

Au total, $N$ diminue d'au moins $2 - 1 = 1$ : la nouvelle répartition a un $N$ strictement plus petit.

Mais on avait choisi la répartition qui **minimise** $N$. C'est une contradiction.

**Conclusion.**

L'hypothèse était donc fausse : dans la répartition choisie, aucun Lord n'a deux ennemis ou plus dans son groupe.

$$\boxed{\text{Oui, la Reine peut toujours réaliser un tel partage.}}$$

**Ce qu'il faut retenir.** Le principe extrémal transforme une construction difficile en une simple vérification. On ne dit jamais comment fabriquer la bonne répartition : on dit seulement qu'elle est parmi les meilleures, et qu'une meilleure ne peut pas être mauvaise.

**La limite du résultat.** Avec « au plus trois ennemis », on obtient « au plus un ennemi dans son groupe ». Le même argument avec « au plus $2k+1$ ennemis » donnerait « au plus $k$ ennemis dans son groupe ». En revanche, avec « au plus trois ennemis », on ne peut pas espérer « aucun ennemi dans son groupe » : trois Lords ennemis deux à deux se répartissent forcément avec au moins une paire ensemble.

## Going further

1. Montrer que si chaque Lord a au plus $2k+1$ ennemis, on peut partager la Chambre en deux groupes de sorte que chacun ait au plus $k$ ennemis dans son groupe.
2. Avec au plus $3$ ennemis chacun, peut-on toujours partager en **trois** groupes de sorte que personne n'ait d'ennemi dans son groupe ?
