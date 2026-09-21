---
id: "7950"
title: "Vingt enfants et leurs grands-pères"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [principe des tiroirs, ensembles, intersection, disjonction de cas]
adapted_from: null
see_also: ["7321"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 19, niveau 1 (énoncé p. 281 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Vingt enfants sont attendus par leurs grands-pères à la sortie de l'école primaire. Chaque enfant a exactement deux grands-pères.

On suppose que deux enfants quelconques parmi les vingt ont au moins un grand-père en commun.

Montrer qu'il y a au moins un grand-père qui attend au moins quatorze de ses petits-enfants.

## Hints

1. À chaque enfant, associe la **paire** formée de ses deux grands-pères. L'hypothèse dit que deux paires quelconques se rencontrent.
2. Prends l'enfant numéro $1$ et note $\{x, y\}$ sa paire. Chaque autre paire contient $x$ ou $y$. Que se passe-t-il si elles contiennent toutes $x$ ?
3. Sinon, il y a un enfant dont la paire évite $x$ et un enfant dont la paire évite $y$. Écris ces deux paires et force-les à se rencontrer.
4. Tu te retrouves avec trois grands-pères seulement et trois paires possibles. Note $p$, $q$, $r$ le nombre d'enfants de chaque type et applique le principe des tiroirs.

## Solution

**Mise en place.**

À chaque enfant, associons la paire de ses deux grands-pères. On a donc vingt paires (éventuellement identiques entre elles : deux frères, ou deux cousins germains, ont la même paire), et l'hypothèse dit que **deux paires quelconques ont au moins un élément commun**.

Notons $\{x, y\}$ la paire du premier enfant.

**Cas 1 : tous les enfants ont $x$ pour grand-père.**

Alors $x$ attend ses vingt petits-enfants, et $20 \ge 14$. C'est gagné.

**Cas 2 : quelqu'un n'a pas $x$ pour grand-père.**

Soit un enfant dont la paire $P$ ne contient pas $x$. Comme $P$ doit rencontrer $\{x, y\}$, elle contient $y$ : écrivons $P = \{y, z\}$ avec $z \ne x$.

Sous-distinguons :

- **Si tous les enfants ont $y$ pour grand-père**, alors $y$ en attend vingt, et c'est gagné.
- **Sinon**, il existe un enfant dont la paire $Q$ ne contient pas $y$ ; comme $Q$ rencontre $\{x,y\}$, elle contient $x$ : écrivons $Q = \{x, w\}$ avec $w \ne y$.

  Les paires $P = \{y, z\}$ et $Q = \{x, w\}$ doivent se rencontrer. Or $x \notin P$ et $y \notin Q$ : le seul élément commun possible est $z = w$.

  Nous disposons donc de **trois** grands-pères $x$, $y$, $z$, deux à deux distincts, et de trois paires présentes : $\{x,y\}$, $\{y,z\}$ et $\{x,z\}$.

**Étape suivante : il n'y a pas d'autre paire possible.**

Soit $R$ la paire d'un enfant quelconque. Elle doit rencontrer les trois paires $\{x,y\}$, $\{y,z\}$, $\{x,z\}$.

- Si $R$ ne contient aucun de $x$, $y$, $z$, elle ne rencontre rien : impossible.
- Si $R$ contient exactement un des trois, disons $x$, et un quatrième grand-père $u \notin \{x,y,z\}$, alors $R = \{x, u\}$ ne rencontre pas $\{y, z\}$ : impossible.

Donc $R$ contient deux des trois grands-pères $x$, $y$, $z$ : c'est l'une des trois paires $\{x,y\}$, $\{y,z\}$, $\{x,z\}$.

**Étape finale : on compte.**

Notons

$$p = \text{nombre d'enfants de paire } \{x,y\} , \quad q = \text{nombre d'enfants de paire } \{y,z\} , \quad r = \text{nombre d'enfants de paire } \{x,z\} .$$

On a $p + q + r = 20$. Les nombres de petits-enfants sont

$$x : p + r , \qquad y : p + q , \qquad z : q + r .$$

D'après le principe des tiroirs, le plus petit des trois nombres $p$, $q$, $r$ vaut au plus $\dfrac{20}{3}$, donc au plus $6$ puisqu'il est entier.

- Si c'est $r$ le plus petit, alors $y$ attend $p + q = 20 - r \ge 20 - 6 = 14$ petits-enfants.
- Si c'est $q$, alors $x$ attend $p + r = 20 - q \ge 14$.
- Si c'est $p$, alors $z$ attend $q + r = 20 - p \ge 14$.

**Conclusion.** Dans tous les cas, au moins un grand-père attend au moins quatorze de ses petits-enfants.

## Going further

Le nombre $14$ est optimal : avec $p = 7$, $q = 7$, $r = 6$, les trois grands-pères attendent respectivement $13$, $14$ et $13$ petits-enfants. Aucun n'en attend quinze, et pourtant deux enfants quelconques ont bien un grand-père commun.
