---
id: "11460"
title: "Le plus long tour d'Élie"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [polygone-regulier, maximum, regroupement, inegalite-triangulaire, construction, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Seniors, exercice 16 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf (la majoration de trois trajets est démontrée ici plus directement que dans le corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

On considère un polygone régulier à $2022$ sommets, dont les côtés mesurent $1$. On numérote ses
sommets $A_1, A_2, \ldots, A_{2022}$, dans un ordre quelconque.

Élie part de $A_1$ et va jusqu'à $A_2$, puis de $A_2$ jusqu'à $A_3$, et ainsi de suite jusqu'à
$A_{2022}$. Enfin, il revient de $A_{2022}$ à $A_1$. Pour chaque trajet, il marche le long des côtés du
polygone et prend le plus court des deux chemins possibles.

Quelle est la plus grande distance totale qu'Élie peut parcourir, si l'on choisit bien la numérotation ?

## Hints

1. Pose $N = 1011$, de sorte que le polygone a $2N$ sommets et un périmètre $2N$. Un trajet mesure au
   plus $N$. Pourquoi Élie ne peut-il pas parcourir $N$ à chaque trajet ?
2. On note $d(P, Q)$ la longueur du plus court chemin entre deux sommets $P$ et $Q$. Montre que pour
   trois sommets $P$, $Q$, $R$ on a toujours $d(P,Q) + d(Q,R) + d(R,P) \leqslant 2N$.
3. Regroupe les trajets deux par deux : $A_1 \to A_2 \to A_3$, puis $A_3 \to A_4 \to A_5$, etc.
   Compare $d(A_1, A_2) + d(A_2, A_3)$ avec $2N - d(A_1, A_3)$.
4. Il reste à regarder le tour $A_1 \to A_3 \to A_5 \to \cdots \to A_{2N-1} \to A_1$. Montre que deux de
   ces sommets sont à distance au moins $N - 1$ l'un de l'autre, et déduis-en que ce tour mesure au
   moins $2(N - 1)$.

## Solution

**Notations.** Posons $N = 1011$ : le polygone a $2N = 2022$ sommets et son périmètre vaut $2N$. Pour
deux sommets $P$ et $Q$, notons $d(P, Q)$ la longueur du plus court chemin de $P$ à $Q$ le long des
côtés. Les deux chemins possibles mesurent ensemble $2N$, donc $d(P, Q) \leqslant N$. On pose aussi
$A_{2N+1} = A_1$, et on appelle $L$ la distance totale parcourue par Élie :

$$L = d(A_1, A_2) + d(A_2, A_3) + \cdots + d(A_{2N}, A_1).$$

**Étape 1 : trois sommets.** Soient $P$, $Q$, $R$ trois sommets différents. Ils découpent le tour du
polygone en trois morceaux, de longueurs $a$, $b$, $c$, avec $a + b + c = 2N$ : le morceau de longueur
$a$ va de $P$ à $Q$ sans passer par $R$, celui de longueur $b$ va de $Q$ à $R$ sans passer par $P$, et
celui de longueur $c$ va de $R$ à $P$ sans passer par $Q$. Le morceau de longueur $a$ est un chemin de $P$
à $Q$, donc $d(P, Q) \leqslant a$. De même $d(Q, R) \leqslant b$ et $d(R, P) \leqslant c$. En ajoutant :

$$d(P, Q) + d(Q, R) + d(R, P) \leqslant 2N.$$

**Étape 2 : regrouper les trajets deux par deux.** Pour $i$ allant de $1$ à $N$, les sommets
$A_{2i-1}$, $A_{2i}$ et $A_{2i+1}$ sont différents, et l'étape 1 donne

$$d(A_{2i-1}, A_{2i}) + d(A_{2i}, A_{2i+1}) \leqslant 2N - d(A_{2i-1}, A_{2i+1}).$$

Ajoutons ces $N$ inégalités. À gauche, on retrouve exactement tous les trajets d'Élie, c'est-à-dire $L$.
À droite, on obtient $2N \times N$ moins la longueur $T$ du « tour des sommets impairs » :

$$T = d(A_1, A_3) + d(A_3, A_5) + \cdots + d(A_{2N-1}, A_1).$$

Donc $L \leqslant 2N^2 - T$, et il reste à montrer que $T$ ne peut pas être trop petit.

**Étape 3 : deux sommets impairs éloignés.** Appelons *sommets impairs* les $N$ sommets
$A_1, A_3, \ldots, A_{2N-1}$. Montrons que deux d'entre eux sont à distance au moins $N - 1$.

Numérotons les sommets du polygone dans l'ordre où on les rencontre en tournant : $V_0, V_1, \ldots,
V_{2N-1}$, en lisant les indices modulo $2N$. Les $2N$ sommets se regroupent en $N$ paires de sommets
opposés $\{V_x, V_{x+N}\}$.

- Si une de ces paires contient deux sommets impairs, ils sont à distance $N$, et c'est fini.
- Sinon, comme il y a $N$ sommets impairs pour $N$ paires, chaque paire en contient exactement un.
  Prenons un sommet impair $V_x$. Son opposé $V_{x+N}$ n'est pas impair. Il existe donc un plus petit
  entier $k \geqslant 1$ tel que $V_{x+k}$ ne soit pas impair, et alors $V_{x+k-1}$ est impair. Dans la
  paire $\{V_{x+k}, V_{x+k+N}\}$, c'est donc $V_{x+k+N}$ qui est impair. Pour aller de $V_{x+k-1}$ à
  $V_{x+k+N}$, il y a un chemin de longueur $N + 1$ et l'autre de longueur $2N - (N+1) = N - 1$ : ces
  deux sommets impairs sont à distance $N - 1$.

**Étape 4 : le tour des sommets impairs est long.** Soient $B$ et $C$ deux sommets impairs à distance au
moins $N - 1$. Le tour $A_1 \to A_3 \to \cdots \to A_{2N-1} \to A_1$ passe par $B$ et par $C$, donc il se
coupe en deux parties : l'une mène de $B$ à $C$, l'autre ramène de $C$ à $B$. Chacune est un chemin le
long des côtés entre $B$ et $C$, donc chacune mesure au moins $d(B, C)$. Ainsi

$$T \geqslant 2\,d(B, C) \geqslant 2(N - 1).$$

**Étape 5 : la majoration.** Avec l'étape 2 :

$$L \leqslant 2N^2 - 2(N - 1) = 2N^2 - 2N + 2.$$

**Étape 6 : une numérotation qui atteint ce maximum.** En tournant autour du polygone, plaçons d'abord
$A_1, A_3, A_5, \ldots, A_{2N-1}$ sur $N$ sommets consécutifs $V_0, V_1, \ldots, V_{N-1}$, puis
$A_2, A_4, \ldots, A_{2N}$ sur les $N$ sommets suivants $V_N, V_{N+1}, \ldots, V_{2N-1}$. Autrement dit,
$A_{2i-1}$ est en $V_{i-1}$ et $A_{2i}$ est en $V_{N+i-1}$.

- Le trajet de $A_{2i-1}$ à $A_{2i}$ va de $V_{i-1}$ à son opposé $V_{N+i-1}$ : il mesure $N$. Il y a
  $N$ trajets de ce type.
- Pour $i \leqslant N - 1$, le trajet de $A_{2i}$ à $A_{2i+1}$ va de $V_{N+i-1}$ à $V_i$ : il mesure
  $N - 1$. Il y a $N - 1$ trajets de ce type.
- Le dernier trajet va de $A_{2N}$, en $V_{2N-1}$, à $A_1$, en $V_0$ : il mesure $1$.

La distance totale vaut $N \times N + (N-1) \times (N-1) + 1 = 2N^2 - 2N + 2$ : la majoration est
atteinte.

**Conclusion.** La plus grande distance qu'Élie peut parcourir est $2N^2 - 2N + 2$ avec $N = 1011$,
c'est-à-dire

$$2 \times 1011^2 - 2 \times 1011 + 2 = 2\,044\,242 - 2\,022 + 2 = \boxed{2\,042\,222}.$$

## Going further

**Une erreur fréquente.** On peut être tenté de dire : « à chaque trajet, on va au sommet le plus loin
possible, donc on obtient le maximum ». Ce n'est pas une preuve. Si l'on envoie chaque $A_{k+1}$ à
l'opposé de $A_k$, on revient sur ses pas et l'on ne peut pas visiter tous les sommets. Plus
généralement, faire le meilleur choix à chaque étape ne garantit pas le meilleur résultat au total.
De même, vérifier qu'aucun échange de deux sommets n'améliore une numérotation montre seulement qu'on
ne peut pas l'améliorer *en changeant peu de choses*, pas qu'elle est la meilleure de toutes. C'est
pourquoi la solution sépare la majoration (étapes 1 à 5) et la construction (étape 6).

**Un petit cas à la main.** Pour un carré ($N = 2$), la formule donne $2 \times 4 - 4 + 2 = 6$. La
numérotation qui place $A_1, A_3, A_2, A_4$ dans l'ordre autour du carré donne en effet
$2 + 1 + 2 + 1 = 6$. On ne peut pas faire $8$, qui demanderait d'aller à chaque fois au sommet opposé,
ni $7$ : en tournant autour d'un polygone qui a un nombre pair de sommets, chaque pas le long d'un côté
change la parité de la position, donc un tour qui revient au départ a toujours une longueur paire.
