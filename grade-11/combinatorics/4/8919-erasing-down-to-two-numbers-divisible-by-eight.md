---
id: "8919"
title: "Effacer jusqu'à ce qu'il en reste deux, et viser un multiple de 8"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, strategie-gagnante, appariement, congruences, invariant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

On écrit au tableau les nombres $1, 2, 3, \ldots, 2001$.

Ananas et Banana jouent au jeu suivant. Chacune à son tour efface un nombre du tableau, Ananas commençant. Elles continuent jusqu'à ce qu'il ne reste que **deux** nombres écrits.

- Si la somme de ces deux nombres est divisible par $8$, Ananas gagne.
- Sinon, c'est Banana qui gagne.

Laquelle des deux joueuses possède une stratégie gagnante ?

## Hints

1. Comptez d'abord les coups. Combien de nombres sont effacés en tout ? Qui joue le dernier coup ?
2. Ananas veut contrôler ce qui reste à la fin. Une idée classique : apparier les nombres, et répondre toujours dans la même paire que l'adversaire.
3. Pour que la stratégie de réponse marche, Ananas doit se retrouver, dès son premier coup joué, devant un tableau qui se découpe entièrement en paires. Combien y a-t-il de nombres au départ ? Est-ce pair ?
4. Quelles paires choisir ? Il faut que la somme de chaque paire soit un multiple de $8$. Essayez d'apparier $k$ avec $2000-k$ : que vaut la somme ?
5. Attention aux nombres qui ne trouvent pas de partenaire par cette règle. Il y en a exactement deux. Vérifiez que leur somme convient aussi.

## Solution

**C'est Ananas qui gagne.**

### Le décompte des coups

Il y a $2001$ nombres au départ et il doit en rester $2$ : on efface donc $1999$ nombres. Comme $1999$ est impair et qu'Ananas commence, Ananas joue les coups numéros $1, 3, 5, \ldots, 1999$ (soit $1000$ coups) et Banana les coups $2, 4, \ldots, 1998$ (soit $999$ coups).

Ananas joue donc **le premier et le dernier** coup. C'est elle qui referme la partie : voilà pourquoi une stratégie de réponse peut fonctionner pour elle.

### La stratégie

**Premier coup.** Ananas efface le nombre $2001$.

Il reste alors les $2000$ nombres $1, 2, \ldots, 2000$. Regroupons-les en $1000$ paires :

- les paires $\{k,\ 2000-k\}$ pour $k = 1, 2, \ldots, 999$, c'est-à-dire $\{1, 1999\}$, $\{2, 1998\}$, …, $\{999, 1001\}$ ;
- et la paire restante $\{1000,\ 2000\}$.

Vérifions que ce découpage est correct : les $999$ premières paires utilisent tous les nombres de $1$ à $999$ et tous ceux de $1001$ à $1999$, soit $1998$ nombres ; il ne reste que $1000$ et $2000$, qui forment la dernière paire. Chacun des $2000$ nombres appartient donc à exactement une paire.

**Coups suivants.** Chaque fois que Banana efface un nombre, Ananas efface **l'autre nombre de la même paire**.

Cette réponse est toujours possible : au moment où Banana joue, le tableau est une réunion de paires complètes, donc le partenaire du nombre qu'elle vient d'effacer est encore là.

### Pourquoi Ananas gagne

Après le premier coup d'Ananas, et après chacune de ses réponses, le tableau est une réunion de paires **complètes**. Comme Banana joue $999$ coups, Ananas répond $999$ fois : cela fait $1 + 999 + 999 = 1999$ nombres effacés, exactement ce qu'il faut. Il reste donc à la fin **une paire complète**.

Or la somme de chaque paire est un multiple de $8$ :

- pour une paire $\{k, 2000-k\}$, la somme vaut $2000 = 8 \times 250$ ;
- pour la paire $\{1000, 2000\}$, la somme vaut $3000 = 8 \times 375$.

Les deux derniers nombres du tableau ont donc une somme divisible par $8$.

$$\boxed{\text{Ananas possède une stratégie gagnante.}}$$

*Le rôle du premier coup.* Effacer $2001$ n'est pas un choix anodin : c'est ce coup qui rend le nombre de jetons **pair** et permet à Ananas de passer en mode « miroir ». Toute la partie se joue là. On peut d'ailleurs vérifier que la somme $1+2+\cdots+2000 = 2\,001\,000$ est elle-même divisible par $8$, ce qui n'est pas un hasard : c'est la somme des $1000$ sommes de paires.

## Going further

1. Que se passe-t-il si l'on part de $1, 2, \ldots, 2000$ au lieu de $2001$ nombres ? Qui gagne alors ?
2. Remplacez « divisible par $8$ » par « divisible par $7$ ». La stratégie d'appariement tient-elle encore ? Cherchez un appariement des nombres de $1$ à $2000$ dont chaque paire a une somme multiple de $7$.
