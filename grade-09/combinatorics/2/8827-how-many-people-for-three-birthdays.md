---
id: "8827"
title: "Combien de personnes pour trois anniversaires le même jour ?"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [principe-des-tiroirs, minimum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 1, p. 110"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Combien faut-il réunir de personnes, au minimum, pour être **certain** qu'il y en ait au moins trois qui fêtent leur anniversaire le même jour ?

On compte $366$ dates d'anniversaire possibles, le $29$ février inclus.

## Hints

1. Il y a deux choses à démontrer, et il faut vraiment les deux : que le nombre annoncé suffit toujours, et qu'avec une personne de moins on peut éviter le trio.
2. Pour la première : imagine $366$ tiroirs, un par date. Si aucun tiroir ne contenait trois personnes, combien de personnes pourrait-il y avoir au maximum ?
3. Pour la seconde : construis une répartition explicite où chaque date est utilisée au plus deux fois.

## Solution

Notons $N$ le nombre cherché. Les **tiroirs** seront les $366$ dates possibles, et les **chaussettes** les personnes.

### Avec $733$ personnes, c'est garanti

Supposons qu'on réunisse $733$ personnes et que, par l'absurde, aucune date ne soit partagée par trois personnes. Alors chaque date est utilisée par au plus $2$ personnes, donc il y a au plus
$$2 \times 366 = 732$$
personnes en tout. C'est moins que $733$ : contradiction.

Donc avec $733$ personnes, il y a forcément trois personnes nées le même jour.

### Avec $732$ personnes, ce n'est pas garanti

Il suffit d'exhiber une répartition sans trio. Prenons les $366$ dates et attribuons-en une à deux personnes exactement : deux personnes nées le $1^{\text{er}}$ janvier, deux le $2$ janvier, et ainsi de suite jusqu'au $31$ décembre, $29$ février compris. Cela fait bien $2 \times 366 = 732$ personnes, et aucune date n'est partagée par trois d'entre elles.

Avec $732$ personnes, on ne peut donc **rien** garantir. Il en va évidemment de même avec moins.

### Conclusion

$$\boxed{N = 733 .}$$

### Le principe des tiroirs, version générale

Ce que l'on vient d'utiliser est la forme générale du principe des tiroirs :

> Si $kn+1$ objets sont répartis dans $k$ tiroirs, alors un tiroir contient au moins $n+1$ objets.

Ici $k = 366$ et $n = 2$, d'où $366 \times 2 + 1 = 733$.

## Going further

1. Combien de personnes faut-il pour être sûr d'en avoir quatre nées le même jour ?
2. Combien de lancers d'un dé à six faces faut-il faire pour être sûr d'obtenir au moins quatre fois la même valeur ?
