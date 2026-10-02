---
id: "8041"
title: "Mille personnes et une rotation"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [denombrement, bijection, somme, congruences, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, « La muraille », exercice 100, résolu par Xavier Pigé"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Mille personnes, numérotées de $1$ à $1000$, sont assises autour d'une table ronde sur mille
sièges eux aussi numérotés de $1$ à $1000$, dans l'ordre autour de la table. La répartition de
départ est quelconque : rien ne dit que la personne $7$ est sur le siège $7$.

On veut les faire se rasseoir **en conservant leur ordre circulaire**, c'est-à-dire en
décalant tout le monde du même nombre de sièges vers la droite.

Peut-on toujours choisir ce décalage de sorte qu'aucune personne ne se retrouve sur le siège
portant son propre numéro ?

## Hints

1. Note $s(i)$ le numéro du siège occupé au départ par la personne $i$. Après un décalage de
   $k$ sièges, sur quel siège est-elle ?
2. Pour une personne donnée, combien y a-t-il de décalages qui la placent sur « son » siège ?
3. Raisonne par l'absurde : si aucun décalage ne convient, que peut-on dire de l'application
   qui envoie chaque personne sur le décalage qui la piège ?
4. Additionne. Compare la somme des décalages à $0 + 1 + \cdots + 999$.

## Solution

**Mise en équations.** Numérotons les sièges de $1$ à $1000$ en tournant autour de la table, et
convenons que les numéros de sièges se lisent modulo $1000$.

Notons $s(i)$ le numéro du siège occupé au départ par la personne $i$. Comme chaque siège
porte exactement une personne, $s$ est une bijection de $\{1, \ldots, 1000\}$ sur lui-même.

Après un décalage de $k$ sièges vers la droite, la personne $i$ occupe le siège
$s(i) + k$ (modulo $1000$). Elle est donc « piégée », c'est-à-dire assise sur le siège portant
son numéro, exactement quand

$$s(i) + k \equiv i \pmod{1000}, \qquad \text{c'est-à-dire} \qquad k \equiv i - s(i) \pmod{1000}.$$

**Chaque personne n'est piégée que par un seul décalage.** La congruence ci-dessus détermine
$k$ modulo $1000$ : il y a donc exactement une valeur de $k$ dans $\{0, 1, \ldots, 999\}$ qui
piège la personne $i$. Notons-la $k_i$.

**Le raisonnement par l'absurde.** Supposons qu'aucun décalage ne convienne : pour chaque
$k \in \{0, 1, \ldots, 999\}$, au moins une personne est piégée. Autrement dit, l'application

$$i \longmapsto k_i$$

atteint toutes les valeurs de $\{0, 1, \ldots, 999\}$. Comme elle part d'un ensemble de $1000$
éléments et arrive dans un ensemble de $1000$ éléments, être surjective revient à être
bijective. Les nombres $k_1, k_2, \ldots, k_{1000}$ sont donc exactement $0, 1, \ldots, 999$,
chacun une fois.

**On additionne, première façon.** Puisque les $k_i$ sont une réorganisation de
$0, 1, \ldots, 999$ :

$$\sum_{i=1}^{1000} k_i = 0 + 1 + \cdots + 999 = \frac{999 \times 1000}{2} = 499\,500 .$$

Or $499\,500 = 499 \times 1000 + 500$, donc

$$\sum_{i=1}^{1000} k_i \equiv 500 \pmod{1000}.$$

**On additionne, seconde façon.** Par définition, $k_i \equiv i - s(i) \pmod{1000}$, donc

$$\sum_{i=1}^{1000} k_i \equiv \sum_{i=1}^{1000} i \ - \sum_{i=1}^{1000} s(i) \pmod{1000}.$$

Mais $s$ est une bijection de $\{1, \ldots, 1000\}$ sur lui-même : la seconde somme contient
les mêmes nombres que la première, dans un autre ordre. Les deux sommes sont donc égales, et

$$\sum_{i=1}^{1000} k_i \equiv 0 \pmod{1000}.$$

**La contradiction.** On obtient $0 \equiv 500 \pmod{1000}$, ce qui est faux.

**Donc l'hypothèse était absurde : il existe toujours un décalage pour lequel personne n'est
assis sur le siège portant son numéro.**

## Going further

Le raisonnement n'a utilisé qu'une seule chose sur $1000$ : que la somme $0 + 1 + \cdots + 999$
n'est pas un multiple de $1000$. Avec $n$ personnes, cette somme vaut $\dfrac{n(n-1)}{2}$.

- Si $n$ est **pair**, alors $\dfrac{n-1}{2}$ n'est pas entier mais $\dfrac{n}{2}$ l'est, et
  $\dfrac{n(n-1)}{2} = \dfrac{n}{2}\,(n-1)$ n'est pas un multiple de $n$, car $n - 1$ est
  premier avec $n$. La démonstration marche donc pour tout $n$ pair.
- Si $n$ est **impair**, alors $\dfrac{n-1}{2}$ est entier et $\dfrac{n(n-1)}{2}$ est un
  multiple de $n$ : plus de contradiction. Et de fait, le résultat devient faux. Avec $n = 3$
  et le placement $s(1) = 1$, $s(2) = 3$, $s(3) = 2$, on trouve $k_1 = 0$, $k_2 = 2$ et
  $k_3 = 1$ : les trois décalages piègent chacun quelqu'un.
