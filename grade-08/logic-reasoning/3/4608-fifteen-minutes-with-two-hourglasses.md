---
id: "4608"
title: "Quinze minutes avec deux sabliers"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [sabliers, duree, strategie, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Euclid and Prime Numbers II"
  reference: "Handout-1125-1130.pdf, problème d'échauffement (réponse dans Handout-1130-1130.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1125-1130.pdf"
---

## Statement

Tu disposes de deux sabliers : l'un s'écoule en $7$ minutes, l'autre en $11$ minutes. Tu n'as
rien d'autre, ni montre, ni horloge.

Tu peux retourner un sablier quand tu veux, y compris quand il n'est pas fini de couler.

Comment mesurer exactement $15$ minutes de cuisson ?

## Hints

1. Commence par lancer les deux sabliers en même temps. Que sais-tu au bout de $7$ minutes ?
   au bout de $11$ minutes ?
2. À l'instant où le sablier de $11$ minutes se vide, depuis combien de temps le sablier de
   $7$ minutes a-t-il été retourné ?
3. Un sablier retourné en cours de route ne recommence pas à zéro : il ne compte que le sable
   déjà tombé.
4. Il te manque $4$ minutes après la $11^\text{e}$. Où trouver exactement $4$ minutes de sable ?

## Solution

Appelons $A$ le sablier de $7$ minutes et $B$ celui de $11$ minutes. On note les instants en
minutes à partir du départ.

**Instant $0$.** On retourne $A$ et $B$ en même temps, et la cuisson commence.

**Instant $7$.** Le sablier $A$ vient de se vider. On le retourne aussitôt. Il recommence donc à
couler à partir de zéro. Pendant ce temps, $B$ continue : il lui reste $11 - 7 = 4$ minutes.

**Instant $11$.** Le sablier $B$ vient de se vider. À cet instant, $A$ coule depuis $4$ minutes :
il y a donc exactement $4$ minutes de sable dans sa partie basse, et $7 - 4 = 3$ minutes dans sa
partie haute.

On retourne alors $A$. Les $4$ minutes de sable qui étaient en bas passent en haut, et ce sable
va mettre exactement $4$ minutes à redescendre.

**Instant $15$.** Le sablier $A$ se vide à nouveau. Il s'est écoulé
$$11 + 4 = 15 \text{ minutes}$$
depuis le départ. La cuisson est terminée.

**Résumé.** Lancer les deux sabliers ensemble ; retourner le petit quand il se vide ; le
retourner encore quand le grand se vide ; s'arrêter quand le petit se vide.

## Going further

Cherche d'autres durées mesurables avec ces deux sabliers. On peut par exemple obtenir
$4$ minutes ($11 - 7$), $8$ minutes ($2 \times 11 - 2 \times 7$), ou encore $1$ minute
($2 \times 11 - 3 \times 7 = 1$). En fait, comme $7$ et $11$ n'ont pas de diviseur commun autre
que $1$, on peut mesurer n'importe quel nombre entier de minutes, à condition d'accepter
d'attendre assez longtemps.
