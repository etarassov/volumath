---
id: "7119"
title: "La dalle brisée"
grade: 9
theme: coloring
difficulty: 4
duration_min: 40
tags: [coloriage, pavage, invariant, parite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Avancés : pavages et coloriages », samedi après-midi (Matthieu Piquerez), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

Le sol d'une pièce est quadrillé en carreaux, et il est entièrement pavé avec deux sortes de
dalles :

- des dalles **carrées**, qui couvrent $2 \times 2$ carreaux,
- des dalles **longues**, qui couvrent $1 \times 4$ carreaux, posées horizontalement ou
  verticalement.

Une dalle se brise. Le magasin n'a plus en stock que des dalles de l'**autre** sorte.

Peut-on soulever tout le pavage, le refaire entièrement, et retrouver un sol complet en
ayant remplacé la dalle brisée par une dalle de l'autre sorte ? (On garde toutes les dalles
intactes, on n'en ajoute et on n'en retire aucune autre, et le sol est le même.)

## Hints

1. Quadrille le sol et numérote les lignes et les colonnes de carreaux à partir de $1$.
2. Marque d'une croix les carreaux dont le numéro de ligne **et** le numéro de colonne sont
   tous les deux impairs. Dessine la figure : les croix forment un quadrillage plus lâche,
   une croix sur quatre carreaux.
3. Une dalle carrée $2 \times 2$, posée n'importe où, couvre combien de croix ? Et une dalle
   longue $1 \times 4$ ?
4. Compte les croix du sol de deux façons, et regarde si le nombre de dalles carrées peut
   changer.

## Solution

**La réponse est non : les deux sortes de dalles ne sont pas interchangeables.**

**Un marquage.** Numérotons les lignes et les colonnes de carreaux à partir de $1$, et
**marquons** les carreaux dont le numéro de ligne et le numéro de colonne sont tous les deux
impairs. Le carreau situé ligne $i$, colonne $j$ est donc marqué exactement lorsque $i$ et
$j$ sont impairs.

Le nombre total de carreaux marqués du sol ne dépend que de la forme de la pièce. Appelons-le
$M$ : c'est un nombre fixé une fois pour toutes, qui ne change pas quand on refait le pavage.

**Ce que couvre une dalle carrée.** Une dalle $2 \times 2$ occupe deux lignes consécutives et
deux colonnes consécutives. Parmi deux entiers consécutifs, exactement un est impair. Donc
exactement une des deux lignes est impaire, exactement une des deux colonnes est impaire, et
il y a donc **exactement un carreau marqué** sous une dalle carrée.

**Ce que couvre une dalle longue.** Une dalle $1 \times 4$ posée horizontalement occupe une
seule ligne $i$ et quatre colonnes consécutives. Parmi quatre entiers consécutifs, exactement
deux sont impairs. Donc :

- si $i$ est impair, la dalle couvre $2$ carreaux marqués ;
- si $i$ est pair, elle n'en couvre aucun.

Posée verticalement, le raisonnement est le même en échangeant les rôles des lignes et des
colonnes : elle couvre $2$ carreaux marqués ou aucun.

Dans tous les cas, une dalle longue couvre un **nombre pair** de carreaux marqués.

**L'invariant.** Prenons un pavage quelconque du sol, avec $a$ dalles carrées et $b$ dalles
longues. Chaque carreau marqué est couvert par exactement une dalle, donc en additionnant les
contributions :

$$M = \underbrace{a \times 1}_{\text{dalles carrées}} + \underbrace{(\text{une somme de nombres pairs})}_{\text{dalles longues}} .$$

Autrement dit, $M$ et $a$ ont la **même parité** :

$$a \equiv M \pmod 2 .$$

Le nombre $M$ ne dépend que de la pièce. Donc **dans tout pavage du même sol, le nombre de
dalles carrées a toujours la même parité.**

**Conclusion.** Remplacer une dalle carrée par une dalle longue ferait passer $a$ à $a - 1$,
et remplacer une dalle longue par une dalle carrée ferait passer $a$ à $a + 1$. Dans les deux
cas la parité de $a$ change, ce qui est impossible.

**Il faut donc racheter une dalle de la même sorte que la dalle brisée.**

## Going further

Le marquage choisi ici est très économe : un carreau sur quatre seulement. C'est ce qui fait
marcher l'argument, car une dalle carrée « attrape » forcément un seul point du réseau des
croix, alors qu'une dalle longue en attrape zéro ou deux.

Remarque importante : le raisonnement n'a rien supposé sur la forme de la pièce. Elle peut
être un rectangle, une forme en L, une pièce avec un pilier au milieu : tant qu'elle se pave
avec ces deux sortes de dalles, la conclusion tient.

Une question pour continuer : et si les dalles longues étaient $1 \times 3$ au lieu de
$1 \times 4$ ? Le marquage ci-dessus ne marcherait plus. Trouve un autre argument, ou un
contre-exemple.
