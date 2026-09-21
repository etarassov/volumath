---
id: "7213"
title: "La feuille déchirée en trois, encore et encore"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, morceaux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 2 (repris dans Poly_final_CJ18.pdf, jeudi 25 matin, Vincent Jugé, exercice 11)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On pose une feuille de papier sur la table et on la déchire en trois morceaux. Puis on choisit
l'un de ces morceaux et on le déchire en trois. Puis on recommence : à chaque étape, on choisit
un morceau déjà présent et on le déchire en trois.

- Peut-on obtenir à un moment exactement $100$ morceaux ?
- Peut-on obtenir à un moment exactement $2017$ morceaux ?

## Hints

1. Compte les morceaux après une déchirure, après deux, après trois. Que remarques-tu ?
2. Quand on déchire un morceau en trois, on en perd un et on en gagne trois. Le total augmente
   donc de combien ?
3. Au départ il y a un seul morceau. Un nombre impair. Et ensuite ?

## Solution

**Ce qui ne change jamais.**

Au départ, il y a $1$ morceau.

Chaque déchirure fait disparaître un morceau et apparaître trois morceaux à la place : le nombre
total de morceaux augmente donc de
$$3 - 1 = 2 .$$

Autrement dit, à chaque étape le nombre de morceaux augmente de $2$. Il part d'un nombre impair,
$1$, et augmenter de $2$ ne change pas la parité : **le nombre de morceaux est toujours impair.**

**Cent morceaux.**

$100$ est pair. Il est donc impossible d'obtenir exactement $100$ morceaux.

**Deux mille dix-sept morceaux.**

$2017$ est impair, donc rien ne l'interdit. Vérifions qu'on y arrive vraiment. Après $n$
déchirures, le nombre de morceaux vaut
$$1 + 2n .$$
On veut $1 + 2n = 2017$, c'est-à-dire $2n = 2016$, donc $n = 1008$.

En déchirant $1008$ fois, on obtient donc bien $2017$ morceaux.

**Réponses : $100$ morceaux, non ; $2017$ morceaux, oui, en $1008$ déchirures.**

## Going further

On voit ici le principe des **invariants** à l'œuvre : on cherche une quantité que les opérations
autorisées ne peuvent pas modifier — ici la parité du nombre de morceaux — et on s'en sert pour
prouver qu'une situation est inatteignable.

C'est souvent le seul moyen de démontrer qu'une chose est impossible : pour prouver qu'elle est
possible, un exemple suffit, mais pour prouver qu'elle ne l'est pas, il faut un argument qui
couvre toutes les façons de s'y prendre.
