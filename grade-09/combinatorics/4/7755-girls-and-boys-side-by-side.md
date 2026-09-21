---
id: "7755"
title: "Filles et garçons côte à côte"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [double comptage, ronde, voisins, invariant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, la muraille"
  reference: "stage_ete_2014.pdf, « La muraille », exercice 3 (niveau 1, deux étoiles), résolu par Louis Charnavel"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

$p$ filles et $q$ garçons forment une ronde : ils se placent en cercle, dans un ordre quelconque, et se donnent la main.

On appelle **paire de voisines** un couple de deux filles qui se tiennent la main, et **paire de voisins** un couple de deux garçons qui se tiennent la main. On note $a$ le nombre de paires de voisines et $b$ le nombre de paires de voisins.

Montrer que, quel que soit l'ordre choisi,

$$a - b = p - q .$$

## Hints

1. Fais l'essai avec $p = 4$ filles et $q = 3$ garçons, en changeant l'ordre plusieurs fois. La différence $a - b$ ne bouge pas : voilà ce qu'il faut expliquer.
2. Ne cherche pas $a$ ni $b$ séparément, ils dépendent vraiment de l'ordre choisi. Cherche une quantité que tu sais compter de deux manières.
3. Chaque personne du cercle tient exactement deux mains. Combien de mains les filles tiennent-elles en tout ?
4. Parmi ces mains tenues par des filles, certaines sont celles d'une autre fille, les autres celles d'un garçon. Compte chaque catégorie.
5. Fais le même compte du côté des garçons, puis soustrais les deux égalités.

## Solution

**L'idée : compter les mains tenues par les filles, de deux façons.**

Notons $m$ le nombre de **paires mixtes**, c'est-à-dire de couples voisins formés d'une fille et d'un garçon.

**Étape 1 : on compte du côté des filles.**

Chaque fille tient exactement deux mains, celle de son voisin de gauche et celle de son voisin de droite. Le nombre total de mains tenues par une fille est donc

$$2p .$$

Comptons maintenant ce même nombre autrement, en regardant qui est au bout de chaque main.

- Une paire de voisines, deux filles qui se tiennent la main, est comptée **deux fois** dans $2p$ : une fois par chacune des deux filles. Ces paires apportent donc $2a$.
- Une paire mixte est comptée **une seule fois** : par la fille, pas par le garçon. Ces paires apportent donc $m$.

Comme chaque main tenue par une fille tombe dans l'un ou l'autre de ces deux cas,

$$2p = 2a + m .$$

**Étape 2 : on compte du côté des garçons.**

Exactement le même raisonnement, en échangeant les rôles :

$$2q = 2b + m .$$

Le nombre $m$ de paires mixtes est bien sûr le même dans les deux égalités : une paire mixte est vue une fois par sa fille et une fois par son garçon.

**Étape 3 : on soustrait.**

$$2p - 2q = (2a + m) - (2b + m) = 2a - 2b .$$

Le terme $m$, le seul qui dépendait vraiment de la disposition, disparaît. En divisant par $2$ :

$$p - q = a - b .$$

**Conclusion : quelle que soit la façon dont les enfants se placent dans la ronde, $a - b = p - q$.**

**Vérification.** Avec $4$ filles et $3$ garçons rangés FFFFGGG : les paires de voisines sont FF, FF, FF, soit $a = 3$, et les paires de voisins GG, GG, soit $b = 2$. On a bien $3 - 2 = 4 - 3$.

Avec le même groupe rangé FGFGFGF : $a = 1$ (les deux filles des extrémités sont voisines dans le cercle) et $b = 0$. On a encore $1 - 0 = 4 - 3$.

## Going further

Une autre façon de voir la même chose, qui plaît souvent davantage.

Partons d'une ronde quelconque et faisons entrer des enfants supplémentaires pour rétablir l'alternance parfaite : entre deux filles voisines on glisse un garçon, entre deux garçons voisins on glisse une fille. Il faut donc ajouter $a$ garçons et $b$ filles.

La ronde obtenue alterne fille, garçon, fille, garçon… donc elle compte autant de filles que de garçons :

$$p + b = q + a ,$$

ce qui redonne $p - q = a - b$.

Les deux preuves disent la même chose ; la première compte, la seconde construit.
