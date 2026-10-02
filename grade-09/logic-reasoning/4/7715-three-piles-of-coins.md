---
id: "7715"
title: "Trois tas de pièces, réunir ou partager"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, multiples, parite, diviseur-commun]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On dispose de trois tas de pièces contenant respectivement $51$, $49$ et $5$ pièces.

À chaque étape, on a le droit de faire l'une des deux choses suivantes :

- **réunir** deux tas en un seul ;
- **partager** en deux tas égaux un tas qui contient un nombre pair de pièces.

Peut-on arriver, après un certain nombre d'étapes, à trois tas de $52$, $48$ et $5$ pièces ?

## Hints

1. Quel est le tout premier coup possible ? Regarde si les tas de départ peuvent être partagés.
2. Il n'y a donc que trois premiers coups possibles. Écris les trois situations obtenues et regarde-les bien : qu'ont en commun les nombres de chacune ?
3. Dans chaque cas, les nombres de pièces ont un diviseur commun. Montre que ce diviseur commun ne disparaît jamais, quels que soient les coups suivants.
4. Pour la moitié d'un tas : si $d$ est impair et divise $2m$, pourquoi $d$ divise-t-il $m$ ?
5. Regarde enfin si $52$ est un multiple de $3$, de $5$ ou de $7$.

## Solution

**Non, c'est impossible.**

**Étape 1 : le premier coup est forcé.** Les trois tas de départ contiennent $51$, $49$ et $5$ pièces : ce sont trois nombres impairs, donc aucun tas ne peut être partagé. Le premier coup est donc forcément une réunion, et il n'y a que trois possibilités :

| Réunion | Tas obtenus |
|---|---|
| $51 + 49$ | $100$ et $5$ |
| $51 + 5$ | $56$ et $49$ |
| $49 + 5$ | $54$ et $51$ |

Regardons les trois lignes :

- $100$ et $5$ sont tous deux des multiples de $5$ ;
- $56$ et $49$ sont tous deux des multiples de $7$ ;
- $54$ et $51$ sont tous deux des multiples de $3$.

**Étape 2 : le diviseur commun ne disparaît jamais.** Montrons le fait suivant.

> Soit $d$ un nombre **impair**. Si à un moment tous les tas contiennent un multiple de $d$ pièces, alors après n'importe quel coup autorisé, tous les tas contiendront encore un multiple de $d$ pièces.

*Réunion.* Si deux tas contiennent $\alpha d$ et $\beta d$ pièces, le tas réuni en contient $(\alpha + \beta) d$ : c'est encore un multiple de $d$.

*Partage.* Soit un tas pair de $2m$ pièces, avec $d$ qui divise $2m$. On obtient deux tas de $m$ pièces, et il faut vérifier que $d$ divise $m$. Écrivons $2m = k d$. Le nombre $2m$ est pair et $d$ est impair, donc $k$ doit être pair : en effet, si $k$ était impair, le produit $kd$ de deux nombres impairs serait impair. Posons $k = 2k'$ :

$$2m = 2k' d \qquad \text{donc} \qquad m = k' d .$$

Donc $d$ divise bien $m$. Les deux nouveaux tas contiennent chacun un multiple de $d$ pièces.

Les autres tas, eux, n'ont pas bougé. La propriété est donc conservée à chaque coup, et par conséquent pour toujours.

**Étape 3 : on conclut.** Les trois nombres $5$, $7$ et $3$ sont impairs, donc le fait ci-dessus s'applique dans chacun des trois cas du premier coup :

- si l'on a commencé par $51 + 49$, tous les tas contiendront toujours un multiple de $5$ pièces ;
- si l'on a commencé par $51 + 5$, tous les tas contiendront toujours un multiple de $7$ pièces ;
- si l'on a commencé par $49 + 5$, tous les tas contiendront toujours un multiple de $3$ pièces.

Or on voudrait obtenir un tas de $52$ pièces. Et

$$52 = 5 \times 10 + 2, \qquad 52 = 7 \times 7 + 3, \qquad 52 = 3 \times 17 + 1 .$$

Le nombre $52$ n'est multiple ni de $5$, ni de $7$, ni de $3$. Dans les trois cas, un tas de $52$ pièces est donc hors d'atteinte.

**Conclusion : on ne pourra jamais obtenir les tas $52$, $48$ et $5$.**

## Going further

Le nombre $52$ est le seul coupable : les tas $50$, $50$ et $5$, eux, sont atteignables. Réunis $51$ et $49$ pour faire $100$, puis partage ce tas en deux tas de $50$. Il ne reste qu'à vérifier que l'on a bien trois tas de $50$, $50$ et $5$.
