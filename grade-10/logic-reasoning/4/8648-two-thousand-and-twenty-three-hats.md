---
id: "8648"
title: "2023 chapeaux numérotés"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [congruences, strategie, somme, chapeaux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice introductif 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

$2023$ personnes vont recevoir chacune un chapeau portant un numéro compris entre $1$ et $2023$. Les numéros ne sont pas forcément tous différents : plusieurs personnes peuvent très bien porter le même.

Une fois les chapeaux posés, chacune voit les numéros de toutes les autres, mais pas le sien. Personne ne peut plus communiquer, et toutes annoncent en même temps le numéro qu'elles croient porter.

Avant que les chapeaux soient distribués, les $2023$ personnes peuvent se mettre d'accord sur une stratégie.

**Comment faire pour être certain qu'au moins une personne annonce le bon numéro ?**

## Hints

1. Chacune voit la somme de tous les numéros sauf le sien. Elle connaît donc « la somme totale, à son propre numéro près ».
2. Il y a $2023$ personnes et les numéros vont de $1$ à $2023$. Ce n'est sûrement pas un hasard : pense aux restes de la division par $2023$.
3. Numérote les personnes de $0$ à $2022$. Imagine que la personne numéro $i$ **parie** que la somme totale a pour reste $i$ modulo $2023$.
4. Si la personne $i$ fait ce pari, le numéro qu'elle doit annoncer est entièrement déterminé. Vérifie qu'il tombe bien entre $1$ et $2023$.
5. La somme totale a un reste modulo $2023$, et un seul. Qui a gagné son pari ?

## Solution

**La stratégie.** Les personnes se numérotent de $0$ à $2022$ (elles ont le temps de le faire avant la distribution).

Notons $S$ la somme des $2023$ numéros portés, que personne ne connaît, et notons $T_i$ la somme des numéros que la personne $i$ **voit**, c'est-à-dire tous sauf le sien. Si $x_i$ est le numéro réellement porté par la personne $i$, alors

$$S = T_i + x_i .$$

La personne $i$ connaît $T_i$. On lui demande d'annoncer l'unique nombre $a_i$ compris entre $1$ et $2023$ tel que

$$T_i + a_i \equiv i \pmod{2023} .$$

**Pourquoi un tel $a_i$ existe et est unique.** Les $2023$ nombres $1, 2, \ldots, 2023$ ont tous des restes différents modulo $2023$, et comme il y en a exactement $2023$, ils réalisent **chacun des restes possibles exactement une fois** (le nombre $2023$ joue le rôle du reste $0$). Il y a donc bien un et un seul choix de $a_i$ dans $\{1, \ldots, 2023\}$ qui convient : la personne $i$ sait quoi dire.

**Pourquoi quelqu'un a raison.** La somme totale $S$ est un entier : elle a un reste, et un seul, dans la division par $2023$. Appelons-le $j$, avec $0 \leqslant j \leqslant 2022$. Il y a bien une personne qui porte le numéro $j$ : c'est la personne $j$.

Regardons ce qu'elle annonce. Elle annonce le nombre $a_j$ entre $1$ et $2023$ vérifiant $T_j + a_j \equiv j \pmod{2023}$. Or son vrai numéro $x_j$ vérifie $T_j + x_j = S \equiv j \pmod{2023}$, et $x_j$ est lui aussi compris entre $1$ et $2023$.

Ces deux nombres $a_j$ et $x_j$ sont donc tous les deux dans $\{1, \ldots, 2023\}$ et vérifient la même congruence. Par l'unicité qu'on vient d'établir,

$$a_j = x_j .$$

**Conclusion.** La personne dont le numéro d'ordre est le reste de $S$ modulo $2023$ annonce exactement son propre numéro.

$$\boxed{\text{Avec cette stratégie, au moins une personne devine juste, quels que soient les chapeaux.}}$$

## Going further

Remarque que la stratégie donne **exactement une** bonne réponse, jamais deux : si $i \ne j$, les personnes $i$ et $j$ parient sur des restes différents, et au plus un pari est correct. On ne peut pas faire mieux en garantie, mais on ne fait pas moins non plus.

La même idée marche avec $n$ personnes et des numéros de $1$ à $n$, pour n'importe quel $n$.
