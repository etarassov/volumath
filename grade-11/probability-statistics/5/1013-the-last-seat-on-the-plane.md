---
id: "1013"
title: "La dernière place de l'avion"
grade: 11
theme: probability-statistics
difficulty: 5
duration_min: 50
tags: [probabilite, symetrie, invariant, equiprobabilite, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Did Dream cheat?"
  reference: "Handout-4807-4988.pdf, exercice 22 (problème de défi, sans solution dans la source)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4807-4988.pdf"
---

## Statement

Un avion a exactement $100$ places, numérotées de $1$ à $100$. Les $100$ passagers ont chacun une place attribuée : le passager $n^\circ k$ a la place $n^\circ k$. Ils embarquent dans l'ordre, le passager $1$ d'abord, le passager $100$ en dernier.

Le passager $1$ a perdu sa carte d'embarquement. Il s'assoit **au hasard**, sur l'une des $100$ places, toutes équiprobables.

Ensuite, chaque passager qui monte :

- s'assoit à sa place si elle est libre ;
- sinon, s'assoit **au hasard** sur l'une des places encore libres, toutes équiprobables.

Quand le dernier passager monte, il ne reste qu'une place. Quelle est la probabilité que ce soit la sienne, la place $n^\circ 100$ ?

## Hints

1. Faites d'abord le cas de $3$ passagers, en dessinant toutes les possibilités. Puis celui de $4$ passagers. Que trouvez-vous ?
2. La réponse est la même dans tous les cas, et c'est un nombre très simple. Cela doit vous pousser à chercher un argument de symétrie plutôt qu'un calcul.
3. Au fil de l'embarquement, il n'y a jamais plus d'**une** place « en trop » d'occupée. Essayez de décrire précisément l'état de l'avion après $k$ passagers.
4. Deux places jouent un rôle particulier : la $1$ et la $100$. Que se passe-t-il dès que l'une des deux est prise ?
5. Quand un passager doit tirer au hasard, la place $1$ et la place $100$ sont-elles libres ?

## Solution

### Les petits cas

**Deux passagers.** Le passager $1$ prend au hasard la place $1$ ou la place $2$. Dans le premier cas, le passager $2$ a sa place ; dans le second, non. Probabilité : $\frac12$.

**Trois passagers.** Le passager $1$ choisit parmi $3$ places.

- Il prend la place $1$ (probabilité $\frac13$) : tout le monde est à sa place, le passager $3$ aussi. **Gagné.**
- Il prend la place $3$ (probabilité $\frac13$) : le passager $3$ ne l'aura pas. **Perdu.**
- Il prend la place $2$ (probabilité $\frac13$) : le passager $2$ trouve sa place prise et choisit entre les places $1$ et $3$, avec probabilité $\frac12$ chacune. S'il prend la $1$, le passager $3$ a sa place ; s'il prend la $3$, non.

Total : $P = \frac13 + \frac13 \times \frac12 = \frac13 + \frac16 = \frac12$.

La réponse est encore $\frac12$. Cela sent la symétrie.

### La clé : décrire l'avion à chaque instant

**Propriété (invariant).** Après l'embarquement des passagers $1$ à $k$ (pour $1 \leqslant k \leqslant 99$), les places occupées sont exactement
$$\{2, 3, \ldots, k\} \; \cup \; \{s\},$$
où $s$ est une place **n'appartenant pas** à $\{2, \ldots, k\}$. On appellera $s$ la **place flottante**.

*Démonstration par récurrence sur $k$.*

Pour $k = 1$ : le passager $1$ s'assoit sur une place $s$ quelconque, l'ensemble $\{2, \ldots, 1\}$ est vide, et les places occupées sont bien $\{s\}$.

Supposons la propriété vraie au rang $k$, avec la place flottante $s \notin \{2, \ldots, k\}$, et faisons monter le passager $k+1$. Deux cas.

- **Si $s \neq k+1$.** Alors la place $k+1$ n'est ni dans $\{2, \ldots, k\}$ ni égale à $s$ : elle est libre. Le passager $k+1$ s'y assoit. Les places occupées deviennent $\{2, \ldots, k+1\} \cup \{s\}$, avec $s \notin \{2, \ldots, k+1\}$. La propriété est conservée, et la place flottante n'a pas changé.
- **Si $s = k+1$.** La place du passager $k+1$ est occupée. Les places libres sont alors toutes celles qui ne sont pas dans $\{2, \ldots, k+1\}$, c'est-à-dire
$$\{1\} \cup \{k+2, k+3, \ldots, 100\}.$$
Le passager choisit au hasard l'une d'elles, appelons-la $s'$. Les places occupées deviennent $\{2, \ldots, k+1\} \cup \{s'\}$, avec $s' \notin \{2, \ldots, k+1\}$. La propriété est encore conservée, avec une nouvelle place flottante.

La propriété est donc vraie à tout instant. $\square$

### Deux conséquences

**1. Quand quelqu'un tire au hasard, les places $1$ et $100$ sont libres.**

C'est ce que montre le second cas ci-dessus : l'ensemble des places disponibles est toujours $\{1\} \cup \{k+2, \ldots, 100\}$, qui contient la place $1$, et qui contient la place $100$ tant que $k + 1 \leqslant 99$ — c'est-à-dire tant que ce n'est pas le dernier passager qui monte. C'est vrai aussi du tout premier tirage, celui du passager $1$, qui a les $100$ places devant lui.

**2. Le sort du dernier passager se joue sur ces deux places.**

- Dès qu'un tirage au hasard tombe sur la **place $1$**, la place flottante devient $s = 1$. Comme $1 \neq k+1$ pour tous les passagers suivants, plus personne n'est délogé : chacun s'assoit à sa place, y compris le passager $100$. **Gagné.**
- Dès qu'un tirage au hasard tombe sur la **place $100$**, la place flottante devient $s = 100$. De même, plus personne n'est délogé jusqu'au bout, mais le passager $100$ trouve sa place prise. **Perdu.**
- Tant qu'aucun tirage n'est tombé sur $1$ ni sur $100$, la place flottante $s$ vaut $k+1$ pour un certain $k$, donc un passager sera délogé et devra tirer à son tour : l'histoire continue.

Cette histoire s'arrête forcément : au pire, le passager $99$ doit tirer, et il ne reste alors que les places $1$ et $100$.

### La symétrie qui conclut

Considérons le **dernier tirage au hasard** effectué, celui qui tombe sur la place $1$ ou sur la place $100$. À ce moment-là, ces deux places sont libres (conséquence 1), et le passager choisit **uniformément** parmi les places libres : la place $1$ et la place $100$ ont donc exactement la même probabilité d'être choisies.

Les deux places jouent des rôles parfaitement symétriques dans tout le processus : rien ne distingue la place $1$ de la place $100$ tant qu'aucune des deux n'est prise. Donc
$$P(\text{le dernier tirage tombe sur } 1) = P(\text{le dernier tirage tombe sur } 100),$$
et comme l'un des deux cas se produit avec certitude, chacun vaut $\frac12$.

**Conclusion.** La probabilité que le dernier passager retrouve sa place est
$$\boxed{\frac{1}{2}}.$$

Et ce résultat ne dépend pas du nombre de passagers : il vaut $\frac12$ pour $2$, pour $100$ ou pour un million de passagers.

## Going further

1. Quelle est la probabilité que le passager $n^\circ 50$ retrouve sa place ? (Elle n'est pas égale à $\frac12$ : la réponse est $\frac{51}{52}$.)
2. Quel est, en moyenne, le nombre de passagers qui ne sont pas à leur place ? (Réponse : $1 + \frac12 + \frac13 + \cdots + \frac{1}{100} \approx \text{5,19}$.)
3. Reprendre le problème quand **deux** passagers, les numéros $1$ et $2$, ont perdu leur carte d'embarquement.
4. Vérifier le résultat par une simulation informatique sur $100$ places et $100\,000$ embarquements.
