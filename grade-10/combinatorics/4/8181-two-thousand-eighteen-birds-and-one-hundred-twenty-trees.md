---
id: "8181"
title: "Les mésanges finissent toutes sur le même arbre"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [monovariant, denombrement, paires, processus-fini]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 3 « Combinatoire », cours « Monovariants et invariants », exercice 11 (le polycopié ne nomme pas l'auteur du cours). La solution imprimée passe par l'ordre lexicographique ; celle ci-dessous compte les paires de mésanges voisines, ce qui reste dans les outils d'un club."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Dans un bois, $2018$ mésanges sont posées sur $120$ arbres.

Un chasseur maladroit essaie de les déloger. À chaque coup de feu il rate sa cible, mais il
effraie une mésange, qui quitte son arbre et va se poser sur un autre arbre. La mésange est
prudente : elle ne se pose que sur un arbre portant **au moins autant** de mésanges que celui
qu'elle quitte, en se comptant elle-même sur celui qu'elle quitte.

Autrement dit, si elle part d'un arbre où il y a $a$ mésanges (elle comprise) et se pose sur un
arbre où il y en a déjà $b$, alors $b \geq a$.

Montrer qu'au bout d'un nombre fini de coups de feu, toutes les mésanges seront sur le même
arbre.

## Hints

1. Il faut deux choses : montrer que le manège ne peut pas durer indéfiniment, et montrer que
   quand il s'arrête, c'est que toutes les mésanges sont ensemble.
2. Pour la deuxième, suppose que deux arbres au moins sont occupés. Regarde celui qui porte le
   moins de mésanges parmi les arbres occupés. Une mésange de cet arbre peut-elle bouger ?
3. Pour la première, cherche une quantité qui augmente strictement à chaque coup de feu, et qui
   ne peut pas dépasser une certaine valeur.
4. Compte les **paires** de mésanges posées sur un même arbre.
5. La mésange qui s'envole quitte $a-1$ compagnes et en rejoint $b$. Comme $b \geq a$, que
   peux-tu dire du bilan ?

## Solution

**Ce qu'il faut démontrer.**

Deux choses séparées :

- (A) le chasseur ne peut pas tirer indéfiniment ;
- (B) la seule situation où plus aucun tir n'est possible est celle où toutes les mésanges sont
  sur le même arbre.

Ensemble, elles donnent le résultat.

**(B) Tant que deux arbres sont occupés, un déplacement reste possible.**

Supposons qu'au moins deux arbres portent des mésanges. Parmi les arbres occupés, prenons-en
un qui en porte le moins, disons $a$ mésanges, et prenons un autre arbre occupé, avec $b$
mésanges. Comme le premier est le plus petit, $b \geq a$.

Une mésange du premier arbre a donc le droit de s'envoler vers le second : la condition
$b \geq a$ est exactement celle de l'énoncé. Un déplacement est donc toujours possible.

Autrement dit, si plus aucun déplacement n'est possible, c'est qu'un seul arbre est occupé.

**(A) La quantité qui grandit : le nombre de paires de voisines.**

Pour une situation donnée, notons $P$ le nombre de **paires de mésanges posées sur un même
arbre**. Si un arbre porte $n$ mésanges, il fournit $\dfrac{n(n-1)}{2}$ telles paires ; $P$ est
la somme de ces nombres sur les $120$ arbres.

Regardons un coup de feu. Une mésange quitte un arbre qui portait $a$ mésanges, elle comprise,
pour un arbre qui en portait $b$, avec $b \geq a$.

- Sur l'arbre qu'elle quitte, elle formait une paire avec chacune des $a-1$ autres. Ces $a-1$
  paires disparaissent.
- Sur l'arbre où elle arrive, elle forme une paire avec chacune des $b$ mésanges présentes.
  Ces $b$ paires apparaissent.
- Aucune autre paire n'est touchée : les mésanges qui n'ont pas bougé restent avec les mêmes
  compagnes.

Le bilan est donc
$$b - (a-1) = b - a + 1 \geq 0 + 1 = 1,$$
puisque $b \geq a$. **À chaque coup de feu, $P$ augmente d'au moins $1$.**

**(A, suite) Mais $P$ est majoré.**

$P$ compte des paires de mésanges, et il y a en tout
$$\frac{2018 \times 2017}{2} = 2\,035\,153$$
paires de mésanges possibles. Donc $P \leq 2\,035\,153$ à tout instant.

Comme $P$ part d'une valeur positive ou nulle et gagne au moins $1$ à chaque tir, il ne peut y
avoir plus de $2\,035\,153$ tirs.

**Conclusion.**

Le chasseur ne peut donc pas tirer indéfiniment : au bout d'au plus $2\,035\,153$ coups de feu,
plus aucun déplacement n'est possible. D'après (B), cela signifie que **toutes les mésanges
sont posées sur le même arbre.**

## Going further

Le nombre d'arbres n'intervient nulle part dans la démonstration : qu'il y en ait $120$, $7$ ou
un million, le même raisonnement fonctionne. Seul compte le nombre de mésanges, qui borne $P$.

La majoration $2\,035\,153$ est très large : on peut montrer qu'en réalité beaucoup moins de
tirs suffisent. Mais pour conclure, il suffisait de savoir qu'une borne existe.
