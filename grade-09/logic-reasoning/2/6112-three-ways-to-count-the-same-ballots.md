---
id: "6112"
title: "Trois façons de dépouiller le même vote"
grade: 9
theme: logic-reasoning
difficulty: 2
duration_min: 25
tags: [vote, comptage, tableau, borda, comparaison]
adapted_from: null
see_also: ["6113"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Can Voting Ever Really Be « Fair »?"
  reference: "MTCircular_WeThePeople.pdf, séance de Lynne M. Pachnowski et Linda Marie Saliga (Rubber City MTC), parue dans MTCircular Autumn 2018, tableau 1. Les noms des candidats ont été remplacés ; les chiffres sont ceux de l'article, recalculés et confirmés."
  url: "https://mathcircles.org/activity/can-voting-ever-really-be-fair/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircular_WeThePeople.pdf"
---

## Statement

Cent élèves élisent le délégué du lycée. Il y a cinq candidats : Amina, Bruno, Chloé, Diego et Elsa.

Chaque élève ne vote pas pour un seul nom : il **classe** les cinq candidats, de son préféré au dernier. Au dépouillement, on s'aperçoit que les cent bulletins ne comportent que cinq classements différents. Les voici, avec le nombre d'élèves qui ont rendu chacun :

| Nombre d'élèves | $37$ | $27$ | $22$ | $11$ | $3$ |
|---|---|---|---|---|---|
| **1er** | Amina | Bruno | Chloé | Diego | Elsa |
| **2e** | Diego | Diego | Bruno | Elsa | Bruno |
| **3e** | Bruno | Chloé | Diego | Chloé | Chloé |
| **4e** | Chloé | Elsa | Amina | Bruno | Diego |
| **5e** | Elsa | Amina | Elsa | Amina | Amina |

Le règlement du lycée ne dit pas comment dépouiller. Voici trois méthodes possibles.

a) **Scrutin à un tour.** Le candidat placé en première position sur le plus grand nombre de bulletins est élu. Qui est-ce ?

b) **Méthode de Borda.** Sur chaque bulletin, le candidat classé 1er reçoit $5$ points, le 2e en reçoit $4$, le 3e $3$ points, le 4e $2$ points et le 5e $1$ point. Le candidat qui totalise le plus de points est élu. Qui est-ce ?

c) **Scrutin à deux tours.** Les deux candidats les mieux placés au a) s'affrontent au second tour. Chaque élève reporte alors sa voix sur celui des deux qu'il avait classé le plus haut. Qui est élu ?

## Hints

1. Pour a), il suffit de lire la première ligne du tableau.
2. Pour b), traite les candidats un par un. Pour Amina, cherche dans quelle colonne elle est 1re, dans laquelle elle est 4e, dans lesquelles elle est 5e, puis multiplie chaque fois les points par le nombre d'élèves de la colonne.
3. Vérification utile pour b) : chaque bulletin distribue $5 + 4 + 3 + 2 + 1 = 15$ points, donc les cinq totaux doivent faire $1500$ à eux tous.
4. Pour c), regarde colonne par colonne : dans chaque colonne, lequel des deux finalistes est le plus haut ? Toute la colonne vote pour lui.

## Solution

**a) Scrutin à un tour.**

La première ligne du tableau donne les premières places :

$$\text{Amina } 37, \quad \text{Bruno } 27, \quad \text{Chloé } 22, \quad \text{Diego } 11, \quad \text{Elsa } 3 .$$

C'est **Amina** qui est élue, avec $37$ voix. On remarque tout de suite que $63$ élèves sur $100$ ne l'ont pas mise en tête.

**b) Méthode de Borda.**

Reprenons chaque candidat et regardons sa position dans chacune des cinq colonnes.

*Amina* : 1re dans la colonne de $37$ élèves, 5e dans celle de $27$, 4e dans celle de $22$, 5e dans celle de $11$, 5e dans celle de $3$ :

$$37 \times 5 + 27 \times 1 + 22 \times 2 + 11 \times 1 + 3 \times 1 = 185 + 27 + 44 + 11 + 3 = 270 .$$

*Bruno* : 3e, 1er, 2e, 4e, 2e :

$$37 \times 3 + 27 \times 5 + 22 \times 4 + 11 \times 2 + 3 \times 4 = 111 + 135 + 88 + 22 + 12 = 368 .$$

*Chloé* : 4e, 3e, 1re, 3e, 3e :

$$37 \times 2 + 27 \times 3 + 22 \times 5 + 11 \times 3 + 3 \times 3 = 74 + 81 + 110 + 33 + 9 = 307 .$$

*Diego* : 2e, 2e, 3e, 1er, 4e :

$$37 \times 4 + 27 \times 4 + 22 \times 3 + 11 \times 5 + 3 \times 2 = 148 + 108 + 66 + 55 + 6 = 383 .$$

*Elsa* : 5e, 4e, 5e, 2e, 1re :

$$37 \times 1 + 27 \times 2 + 22 \times 1 + 11 \times 4 + 3 \times 5 = 37 + 54 + 22 + 44 + 15 = 172 .$$

Vérification : $270 + 368 + 307 + 383 + 172 = 1500$, et $100$ bulletins à $15$ points font bien $1500$.

Le plus fort total est celui de **Diego**, avec $383$ points. C'est lui qui est élu.

Remarquable : Diego n'a que $11$ premières places, l'avant-dernier score du a). Mais il est deuxième ou troisième sur presque tous les bulletins, et personne ne le déteste.

**c) Scrutin à deux tours.**

Au premier tour, les deux mieux placés sont Amina ($37$) et Bruno ($27$). Regardons colonne par colonne lequel des deux est le plus haut :

| Colonne | $37$ | $27$ | $22$ | $11$ | $3$ |
|---|---|---|---|---|---|
| Le mieux placé des deux | Amina | Bruno | Bruno | Bruno | Bruno |

Dans la colonne de $37$ élèves, Amina est 1re et Bruno 3e : ces $37$ voix vont à Amina. Dans les quatre autres colonnes, Bruno est toujours plus haut qu'Amina, qui y est 5e, 4e, 5e et 5e.

Au second tour :

$$\text{Amina } 37, \qquad \text{Bruno } 27 + 22 + 11 + 3 = 63 .$$

C'est **Bruno** qui est élu.

**Conclusion.** Les mêmes cent bulletins, dépouillés de trois façons parfaitement raisonnables, donnent trois vainqueurs différents : Amina, Diego, Bruno. Le règlement compte donc autant que les votes.

## Going further

Il existe encore d'autres méthodes de dépouillement, et certaines donnent ici un quatrième vainqueur. On peut par exemple éliminer à chaque tour le candidat qui a le moins de premières places, ou bien celui qui a le plus de **dernières** places, et recommencer jusqu'à ce qu'il n'en reste qu'un. Essaie les deux sur ce tableau.

On peut aussi comparer les candidats deux à deux, comme dans un tournoi : pour chaque paire, on regarde combien d'élèves ont classé l'un au-dessus de l'autre. Est-ce qu'un candidat bat tous les autres en face-à-face ? Et si oui, est-ce le même que dans l'une des trois méthodes ci-dessus ?
