---
id: "4818"
title: "La voix unique de Cendrillon"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [vote, majorite, disjonction-de-cas, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, How (Not) To Divvy Up Seats In Congress (Clint Givens)"
  reference: "Handout-186-205.pdf, exercice 6 (réponse dans Handout-187-205.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-186-205.pdf"
---

## Statement

Chaque samedi, Cendrillon et ses deux demi-sœurs, Lucinde et Florinde, vont au bal. Certains soirs, deux bals différents ont lieu en même temps, et les trois filles ne sont pas d'accord sur celui où aller.

La belle-mère, lassée des disputes, décide qu'elles voteront. Mais elle ajoute :

> « Cendrillon, comme tu n'es ni aussi intelligente ni aussi jolie que Lucinde et Florinde, ta voix comptera pour **1**, tandis que la leur comptera pour **5** chacune. Le bal qui recueille le plus de voix l'emporte. »

Cendrillon a-t-elle des raisons de se plaindre ? Justifier.

## Hints

1. Il y a $1 + 5 + 5 = 11$ voix en tout, et deux bals seulement. Un bal l'emporte donc dès qu'il atteint $6$ voix.
2. Ne calcule pas de moyennes : fais la **liste** des façons dont les trois filles peuvent voter, et regarde à chaque fois quel bal l'emporte.
3. Il suffit en fait de séparer deux cas : les deux demi-sœurs votent pour le même bal, ou elles votent pour deux bals différents.
4. Dans le second cas, qui décide ?

## Solution

**Le seuil.** Il y a $11$ voix en tout, réparties entre deux bals seulement. Un bal l'emporte dès qu'il obtient au moins $6$ voix, et comme $11$ est impair il ne peut jamais y avoir d'égalité : il y a toujours un vainqueur.

**Deux cas suffisent.**

**Cas 1 : Lucinde et Florinde votent pour le même bal.**

Ce bal réunit déjà $5 + 5 = 10$ voix, et l'autre en a au plus $1$. Le bal des demi-sœurs l'emporte, et la voix de Cendrillon n'y change rien.

**Cas 2 : Lucinde et Florinde votent pour deux bals différents.**

Chacun des deux bals a $5$ voix. La voix de Cendrillon fait passer l'un des deux à $6$ voix, contre $5$ pour l'autre. **C'est donc Cendrillon qui décide, à elle seule.**

**Comparons avec un vote ordinaire.** Si les trois filles avaient une voix chacune, il se passerait exactement la même chose :

- si les deux demi-sœurs sont d'accord, elles l'emportent à $2$ voix contre $1$, quelle que soit la voix de Cendrillon ;
- si elles ne sont pas d'accord, la voix de Cendrillon fait la décision, $2$ contre $1$.

Les deux systèmes donnent donc **toujours** le même résultat, dans tous les cas de figure.

**Réponse : non, Cendrillon n'a aucune raison de se plaindre. Malgré son unique voix, elle a exactement le même pouvoir que chacune de ses demi-sœurs : ce système de vote est exactement le vote à la majorité entre trois personnes.**

**La morale.** Le nombre de voix qu'on possède ne mesure pas le pouvoir qu'on a. Ce qui compte, c'est de savoir dans quelles situations sa voix change le résultat.

## Going further

1. La belle-mère se ravise : Cendrillon a $1$ voix, Lucinde $3$ et Florinde $5$, et le bal qui obtient le plus de voix l'emporte. Qui décide maintenant ?
2. Et avec $2$ voix pour Cendrillon, $3$ pour Lucinde et $4$ pour Florinde ? Compare de nouveau avec un vote où chacune aurait une seule voix. Le résultat te surprend-il ?
3. Trouve une répartition de voix entre trois personnes pour laquelle **deux** d'entre elles n'ont jamais la moindre influence sur le résultat.
