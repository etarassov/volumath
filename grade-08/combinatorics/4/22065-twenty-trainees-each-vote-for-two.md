---
id: "22065"
title: "Vingt stagiaires élisent leur animateur"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [vote, principe-des-tiroirs, construction, minimum, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », 4. Entraînement de fin de parcours, exercice 2 (p. 243, solution p. 244)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Lors d'une réunion secrète, $20$ stagiaires élisent leur animateur préféré. Chaque stagiaire vote pour deux animateurs différents.

On sait que deux stagiaires quelconques ont toujours voté pour au moins un même animateur.

L'animateur qui reçoit le plus de voix gagne l'élection. Quel est le plus petit nombre de voix qu'il peut avoir reçues ?

## Hints

1. Combien de voix ont été données en tout ? Essayez de construire une élection où le gagnant a peu de voix.
2. Si un animateur a reçu les $20$ voix, il n'y a rien à chercher. Sinon, partez d'un stagiaire qui a voté pour $A$ et $B$, puis d'un stagiaire qui n'a pas voté pour $A$ : pour qui a-t-il forcément voté ?
3. Montrez que toutes les voix se répartissent entre trois animateurs seulement.

## Solution

La réponse est $14$.

Il y a $20$ stagiaires et chacun donne $2$ voix, donc $40$ voix ont été données en tout.

**Étape 1 : le gagnant a toujours au moins $14$ voix.**

Si un animateur a reçu les voix des $20$ stagiaires, le gagnant a au moins $20$ voix, donc au moins $14$. On suppose maintenant qu'aucun animateur n'a reçu les $20$ voix.

- Prenons un stagiaire $s_1$, et appelons $A$ et $B$ les deux animateurs pour qui il a voté.
- L'animateur $A$ n'a pas toutes les voix : il existe un stagiaire $s_2$ qui n'a pas voté pour $A$. Il a un animateur en commun avec $s_1$, et ce n'est pas $A$, donc c'est $B$. Appelons $C$ son autre animateur. Ainsi $s_2$ a voté pour $B$ et $C$, et $C$ n'est ni $A$ ni $B$.
- L'animateur $B$ n'a pas toutes les voix non plus : il existe un stagiaire $s_3$ qui n'a pas voté pour $B$. Il a un animateur en commun avec $s_1$, qui a voté pour $A$ et $B$ : c'est donc $A$. Il a aussi un animateur en commun avec $s_2$, qui a voté pour $B$ et $C$ : c'est donc $C$. Ainsi $s_3$ a voté pour $A$ et $C$.

Prenons maintenant un stagiaire $s$ quelconque, et supposons qu'il a voté pour un animateur $X$ qui n'est ni $A$, ni $B$, ni $C$. Son autre vote $Y$ doit être en commun avec $s_1$, avec $s_2$ et avec $s_3$. Donc $Y$ est à la fois dans $\{A, B\}$, dans $\{B, C\}$ et dans $\{A, C\}$. Or aucune lettre n'appartient à ces trois paires à la fois. C'est impossible.

Donc chaque stagiaire a voté pour deux animateurs parmi $A$, $B$ et $C$ : les $40$ voix se partagent entre ces trois animateurs. Si chacun en avait au plus $13$, il y aurait au plus $3 \times 13 = 39$ voix en tout, moins que $40$. L'un d'eux a donc au moins $14$ voix, et le gagnant aussi.

**Étape 2 : $14$ voix peuvent suffire.** On répartit les votes ainsi :

| Votes | Nombre de stagiaires |
|---|---|
| $A$ et $B$ | $7$ |
| $A$ et $C$ | $7$ |
| $B$ et $C$ | $6$ |

Cela fait bien $7 + 7 + 6 = 20$ stagiaires. L'animateur $A$ reçoit $7 + 7 = 14$ voix, $B$ en reçoit $7 + 6 = 13$ et $C$ en reçoit $7 + 6 = 13$.

La condition de l'énoncé est respectée : chaque stagiaire a voté pour deux des trois animateurs $A$, $B$, $C$, donc il n'en a laissé de côté qu'un seul. Deux stagiaires laissent de côté au plus deux animateurs à eux deux, donc il en reste au moins un pour lequel ils ont voté tous les deux.

Le gagnant est $A$, avec $14$ voix.

**Conclusion.** Le gagnant a toujours au moins $14$ voix, et il peut n'en avoir que $14$. Le nombre minimal cherché est $14$.

## Going further

1. Reprendre le problème avec $21$ stagiaires, puis avec $22$.
2. Avec $n$ stagiaires, montrer que la réponse est le plus petit entier supérieur ou égal à $\frac{2n}{3}$.
