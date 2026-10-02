---
id: "12466"
title: "Qui a déjeuné chez qui ?"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [double-comptage, construction, divisibilite, table-ronde, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 3 (groupe Junior) ; corrigé 2020-03_Correction-Web.pdf (constructions du corrigé décrites avec une table ronde au lieu des congruences)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Une classe compte $n$ élèves. Quelle que soit la manière de choisir deux élèves, au moins l'un des
deux a déjà déjeuné chez l'autre. On sait de plus que, pour chaque élève $E$, parmi les élèves chez
qui $E$ a déjeuné, la moitié exactement a déjeuné chez $E$.

Trouver toutes les valeurs possibles de $n$.

## Hints

1. Pour un élève $E$, appelle $a$ le nombre d'élèves chez qui $E$ a déjeuné. Combien d'élèves ont
   déjeuné chez $E$ ? Exprime ce nombre à l'aide de $n$ et de $a$.
2. Compte de deux façons le nombre de couples (invité, hôte), c'est-à-dire le nombre de couples
   d'élèves $(X, Y)$ tels que $X$ a déjeuné chez $Y$.
3. Tu dois trouver que $3$ divise $2n(n - 1)$. Quels restes de $n$ dans la division par $3$ sont
   alors possibles ?
4. Pour construire un exemple quand $n = 3\ell + 1$, assieds les élèves autour d'une table ronde et
   envoie chacun déjeuner chez ceux qui le suivent. Quand $n = 3\ell$, ajoute un élève qui reçoit tout
   le monde.

## Solution

Nous allons montrer que **les valeurs possibles sont les entiers $n \geqslant 1$ dont le reste dans
la division par $3$ vaut $0$ ou $1$**, c'est-à-dire $n = 1, 3, 4, 6, 7, 9, 10, \ldots$

Pour un élève $E$, on appelle **hôtes** de $E$ les élèves chez qui $E$ a déjeuné, et **invités** de
$E$ les élèves qui ont déjeuné chez $E$. Deux élèves peuvent très bien avoir déjeuné chacun chez
l'autre.

### Étape 1 : le nombre d'invités d'un élève

Soit $E$ un élève, et $a$ son nombre d'hôtes. Les $n - 1$ autres élèves se répartissent en deux
groupes.

- Les $n - 1 - a$ élèves chez qui $E$ n'a pas déjeuné. D'après la première condition, chacun d'eux a
  déjeuné chez $E$ : ce sont tous des invités de $E$.
- Les $a$ hôtes de $E$. D'après la deuxième condition, exactement $\frac{a}{2}$ d'entre eux ont
  déjeuné chez $E$.

Le nombre d'invités de $E$ est donc
$$b = (n - 1 - a) + \frac{a}{2} = n - 1 - \frac{a}{2}.$$

### Étape 2 : on compte de deux façons

Numérotons les élèves $E_1, E_2, \ldots, E_n$, et notons $a_i$ le nombre d'hôtes et $b_i$ le nombre
d'invités de $E_i$. Appelons $N$ le nombre de couples d'élèves $(X, Y)$ tels que $X$ a déjeuné chez
$Y$.

- En regroupant les couples selon l'invité $X$, on trouve que $N$ est la somme, sur tous les élèves,
  de leur nombre d'hôtes : $N = a_1 + a_2 + \cdots + a_n$.
- En les regroupant selon l'hôte $Y$, on trouve que $N$ est la somme de leurs nombres d'invités :
  $N = b_1 + b_2 + \cdots + b_n$.

Avec l'étape 1,
$$N = (n - 1 - \tfrac{a_1}{2}) + \cdots + (n - 1 - \tfrac{a_n}{2}) = n(n - 1) - \frac{a_1 + \cdots + a_n}{2} = n(n - 1) - \frac{N}{2}.$$
Donc $\frac{3N}{2} = n(n - 1)$, c'est-à-dire $3N = 2n(n - 1)$ : **le nombre $2n(n - 1)$ est un
multiple de $3$**.

### Étape 3 : le reste de $n$ ne peut pas valoir $2$

Supposons $n = 3q + 2$ avec $q$ entier. Alors $n - 1 = 3q + 1$ et
$$2n(n - 1) = 2(3q + 2)(3q + 1) = 18q^2 + 18q + 4 = 3(6q^2 + 6q + 1) + 1,$$
qui n'est pas un multiple de $3$. C'est impossible d'après l'étape 2. Le reste de $n$ dans la
division par $3$ vaut donc $0$ ou $1$.

### Étape 4 : des exemples pour toutes les autres valeurs

**Une remarque sur les tables rondes.** Si $m$ personnes sont assises autour d'une table ronde, et si
$Y$ est la $p$-ième personne après $X$ en tournant dans le sens des aiguilles d'une montre (avec
$1 \leqslant p \leqslant m - 1$), alors $X$ est la $(m - p)$-ième personne après $Y$.

**Si $n = 1$**, il n'y a rien à vérifier : un élève seul convient.

**Si $n = 3\ell + 1$ avec $\ell \geqslant 1$.** On assied les $n$ élèves autour d'une table ronde, et
chacun a déjeuné chez les $2\ell$ élèves qui le suivent, et chez personne d'autre.

- *Première condition.* Soit deux élèves, le second étant le $p$-ième après le premier. Si
  $p \leqslant 2\ell$, le premier a déjeuné chez le second. Sinon $p \geqslant 2\ell + 1$, et le
  premier est le $(3\ell + 1 - p)$-ième après le second, avec $3\ell + 1 - p \leqslant \ell$ : le
  second a déjeuné chez le premier.
- *Deuxième condition.* Soit $E$ un élève. Ses hôtes sont les élèves placés aux positions $p = 1$,
  $2$, ..., $2\ell$ après lui. L'élève placé en position $p$ a déjeuné chez $E$ si et seulement si
  $3\ell + 1 - p \leqslant 2\ell$, c'est-à-dire $p \geqslant \ell + 1$. Parmi les $2\ell$ hôtes de
  $E$, ceux qui ont déjeuné chez lui sont donc ceux des positions $\ell + 1$, ..., $2\ell$ : il y en
  a $\ell$, la moitié exactement.

**Si $n = 3\ell$ avec $\ell \geqslant 1$.** Un élève, Dominique, n'a déjeuné chez personne. Les
$3\ell - 1$ autres sont assis autour d'une table ronde, et chacun a déjeuné chez Dominique et chez
les $2\ell - 1$ élèves qui le suivent.

- *Première condition.* Tout le monde a déjeuné chez Dominique. Pour deux élèves de la table, le
  second étant le $p$-ième après le premier : si $p \leqslant 2\ell - 1$, le premier a déjeuné chez le
  second. Sinon $p \geqslant 2\ell$, et le premier est le $(3\ell - 1 - p)$-ième après le second, avec
  $3\ell - 1 - p \leqslant \ell - 1 \leqslant 2\ell - 1$ : le second a déjeuné chez le premier.
- *Deuxième condition pour Dominique.* Il n'a aucun hôte, et $0$ est bien la moitié de $0$.
- *Deuxième condition pour un élève $E$ de la table.* Il a $2\ell$ hôtes : Dominique et les élèves
  des positions $1$, ..., $2\ell - 1$ après lui. Dominique n'a pas déjeuné chez $E$. L'élève en
  position $p$ a déjeuné chez $E$ si et seulement si $3\ell - 1 - p \leqslant 2\ell - 1$, c'est-à-dire
  $p \geqslant \ell$. Ceux qui ont déjeuné chez $E$ sont donc les élèves des positions $\ell$, ...,
  $2\ell - 1$ : il y en a $\ell$, la moitié de $2\ell$.

### Conclusion

**Les valeurs possibles de $n$ sont exactement les entiers $n \geqslant 1$ qui ne s'écrivent pas
$3q + 2$**, c'est-à-dire ceux dont le reste dans la division par $3$ vaut $0$ ou $1$.

## Going further

Reprendre l'exercice en remplaçant « la moitié exactement » par « le tiers exactement ». Quelles
sont alors les valeurs possibles de $n$ ?
