---
id: "8146"
title: "Vingt enfants et leurs grands-pères"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe-de-l-extremum, disjonction-de-cas, denombrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["7321"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 19 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Vingt enfants sont attendus par leurs grands-pères à la sortie de l'école. Chaque enfant a exactement deux grands-pères, et l'on constate que **deux enfants quelconques parmi les vingt ont toujours au moins un grand-père en commun**.

Montrer qu'il y a au moins un grand-père qui attend au moins $14$ de ses petits-enfants.

## Hints

1. Choisis un grand-père $x$ ayant le plus grand nombre de petits-enfants parmi les vingt, et note $k$ ce nombre. Il s'agit de montrer $k \geq 14$.
2. Sépare les enfants en deux groupes : ceux qui ont $x$ pour grand-père (groupe $S$, de taille $k$) et les autres (groupe $T$, de taille $20-k$). Si $T$ est vide, tu as fini.
3. Prends un enfant de $T$ : ses deux grands-pères sont $u$ et $v$, tous deux différents de $x$. Chaque enfant de $S$ doit partager un grand-père avec lui. Que vaut donc le second grand-père d'un enfant de $S$ ?
4. Le groupe $S$ se coupe ainsi en deux : les enfants de grands-pères $\{x, u\}$ et ceux de grands-pères $\{x, v\}$. Traite d'abord le cas où l'un des deux morceaux est vide.
5. Dans l'autre cas, montre que **tous** les enfants de $T$ ont exactement les grands-pères $u$ et $v$. Compte alors les petits-enfants de $u$ et ceux de $v$, et utilise que $k$ est le maximum.

## Solution

**Le point de départ.**

Parmi tous les grands-pères présents, choisissons-en un, $x$, qui attend le plus grand nombre d'enfants parmi les vingt ; notons $k$ ce nombre. Nous voulons montrer $k \geq 14$.

Séparons les enfants en deux groupes :

- $S$ = les enfants dont $x$ est l'un des deux grands-pères, avec $|S| = k$ ;
- $T$ = les autres, avec $|T| = 20 - k$.

**Cas trivial.** Si $T$ est vide, alors $k = 20 \geq 14$ et c'est fini. Supposons donc $T$ non vide.

**Les grands-pères $u$ et $v$.**

Choisissons un enfant $C$ dans $T$, et notons $u$ et $v$ ses deux grands-pères. Ni $u$ ni $v$ n'est $x$, puisque $C \notin S$.

Soit $E$ un enfant quelconque de $S$. Ses grands-pères sont $x$ et un second, appelons-le $w$. Les enfants $E$ et $C$ doivent partager un grand-père ; comme $C$ n'a pas $x$, ce grand-père commun est $w$, donc $w = u$ ou $w = v$.

Le groupe $S$ se coupe donc en deux :

- $S_u$ = les enfants de grands-pères $\{x, u\}$ ;
- $S_v$ = les enfants de grands-pères $\{x, v\}$ ;

avec $|S_u| + |S_v| = k$.

**Premier cas : $S_v$ est vide (ou, symétriquement, $S_u$ est vide).**

Alors tous les enfants de $S$ ont $u$ pour second grand-père.

Et tout enfant de $T$ partage un grand-père avec un enfant de $S$, dont les grands-pères sont $x$ et $u$ ; comme les enfants de $T$ n'ont pas $x$, ils ont tous $u$.

(Si $S$ était vide, alors $k = 0$, ce qui est impossible : $x$ a bien au moins un petit-enfant.)

Donc $u$ est un grand-père des vingt enfants. Il en attend $20 \geq 14$, et c'est fini.

**Second cas : $S_u$ et $S_v$ sont tous les deux non vides.**

Soit $D$ un enfant de $T$.

- $D$ partage un grand-père avec un enfant de $S_u$, dont les grands-pères sont $x$ et $u$. Comme $D$ n'a pas $x$, l'enfant $D$ a $u$ pour grand-père.
- De même, en comparant $D$ avec un enfant de $S_v$, l'enfant $D$ a $v$ pour grand-père.

Comme $D$ n'a que deux grands-pères, ce sont exactement $u$ et $v$. **Tous les enfants de $T$ ont donc les grands-pères $u$ et $v$.**

Comptons maintenant les petits-enfants de $u$ parmi les vingt : ce sont au moins les enfants de $S_u$ et tous ceux de $T$, donc au moins $|S_u| + |T|$. Comme $k$ est le maximum,

$$|S_u| + |T| \leq k.$$

De la même façon,

$$|S_v| + |T| \leq k.$$

Additionnons ces deux inégalités, en utilisant $|S_u| + |S_v| = k$ :

$$k + 2|T| \leq 2k, \qquad \text{donc} \qquad 2|T| \leq k.$$

Or $|T| = 20 - k$, d'où

$$2(20 - k) \leq k, \qquad \text{c'est-à-dire} \qquad 40 \leq 3k, \qquad \text{donc} \qquad k \geq \frac{40}{3} > 13.$$

Comme $k$ est entier, $k \geq 14$.

**Conclusion : dans tous les cas, un grand-père attend au moins $14$ des vingt enfants.**

## Going further

Le nombre $14$ ne peut pas être amélioré. Voici une configuration où le maximum vaut exactement $14$. Prenons trois grands-pères $x$, $u$, $v$ et :

- $7$ enfants de grands-pères $\{x, u\}$ ;
- $7$ enfants de grands-pères $\{x, v\}$ ;
- $6$ enfants de grands-pères $\{u, v\}$.

Cela fait bien $20$ enfants, et deux enfants quelconques partagent toujours un grand-père. Les comptes sont : $14$ enfants pour $x$, $13$ pour $u$, $13$ pour $v$.
