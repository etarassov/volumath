---
id: "7910"
title: "Cent points sur un cercle et les droites des voisins"
grade: 10
theme: geometry
difficulty: 5
duration_min: 50
tags: [cercle, polygone-regulier, mediatrice, symetrie, denombrement, points-d-intersection]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 5 (énoncé p. 21, solution p. 24)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Cent points sont disposés régulièrement sur un cercle : ils forment un polygone régulier à $100$ côtés. On trace les $100$ droites qui relient deux points voisins.

Combien obtient-on de points d'intersection au total, en comptant les $100$ points de départ ?

## Hints

1. Combien y a-t-il de paires de droites ? Chaque paire de droites non parallèles donne un point d'intersection.
2. Parmi ces $100$ droites, combien de paires sont parallèles ? Pense à la direction de chaque droite.
3. Il reste à vérifier qu'on ne compte pas deux fois le même point, c'est-à-dire que jamais trois de ces droites ne passent par un même point.
4. Les deux droites qui joignent $A_iA_{i+1}$ et $A_jA_{j+1}$ sont échangées par une symétrie d'axe : lequel ? Où se trouve donc leur point d'intersection ?

## Solution

**La réponse : $4900$ points d'intersection.**

Notons $A_1, A_2, \ldots, A_{100}$ les cent points dans l'ordre sur le cercle, de centre $O$, et notons $\ell_i$ la droite $(A_i A_{i+1})$ (avec la convention que $A_{101}$ est $A_1$). Il y a donc $100$ droites.

**Étape 1 : le nombre de paires.**

Le nombre de paires de droites est

$$\binom{100}{2} = \frac{100 \times 99}{2} = 4950 .$$

Chaque paire de droites **non parallèles** donne un point d'intersection. Il faut donc retirer les paires parallèles, puis vérifier que tous ces points sont deux à deux distincts.

**Étape 2 : les paires parallèles.**

La corde $[A_iA_{i+1}]$ est perpendiculaire au rayon qui passe par son milieu. En tournant d'un cran, on tourne ce rayon de $\dfrac{360°}{100} = 3{,}6°$. Donc en passant de $\ell_i$ à $\ell_j$, la direction tourne de $(j - i) \times 3{,}6°$.

Deux droites sont parallèles exactement quand leurs directions diffèrent d'un multiple de $180°$, c'est-à-dire quand

$$(j - i) \times 3{,}6° = 180° \times k, \qquad \text{soit} \qquad j - i = 50k .$$

Avec $1 \le i < j \le 100$, la seule possibilité est $j = i + 50$. Cela donne les $50$ paires

$$\{\ell_1, \ell_{51}\}, \ \{\ell_2, \ell_{52}\}, \ \ldots, \ \{\ell_{50}, \ell_{100}\} .$$

Il reste donc $4950 - 50 = 4900$ paires de droites sécantes. Chacune fournit un point d'intersection.

**Étape 3 : jamais trois droites par un même point.**

C'est le point délicat : si trois droites passaient par un même point, on compterait ce point plusieurs fois.

Le polygone régulier à $100$ côtés possède des axes de symétrie : ce sont exactement les droites passant par le centre $O$ et par le milieu d'un arc $A_aA_b$. Pour deux points $A_a$ et $A_b$ distincts, la médiatrice de $[A_aA_b]$ est l'un de ces axes, et la symétrie correspondante échange $A_a$ et $A_b$.

Une symétrie axiale renverse le sens de parcours du cercle. Donc, si une symétrie $\sigma$ envoie $A_a$ sur $A_b$, elle envoie le point suivant $A_{a+1}$ sur le point précédent $A_{b-1}$.

Fixons $i \ne j$ et notons $D_{ij}$ la médiatrice de $[A_i A_{j+1}]$, puis $\sigma_{ij}$ la symétrie d'axe $D_{ij}$. Alors

$$\sigma_{ij}(A_i) = A_{j+1} \qquad \text{et} \qquad \sigma_{ij}(A_{i+1}) = A_j .$$

Cette symétrie échange donc les deux droites $\ell_i$ et $\ell_j$. Si ces deux droites se coupent en un point $P$, alors $\sigma_{ij}(P) = P$, autrement dit

$$P \ \text{est sur l'axe } D_{ij} ,$$

et cet axe passe par $O$.

Supposons maintenant que trois droites $\ell_i$, $\ell_j$, $\ell_k$ (avec $i$, $j$, $k$ deux à deux distincts) passent par un même point $P$. Alors $P$ est sur $D_{ij}$ et sur $D_{ik}$, deux droites qui passent toutes les deux par $O$.

Or aucune des droites tracées ne passe par $O$ : une corde qui joint deux points voisins d'un polygone régulier à $100$ côtés est bien trop courte pour être un diamètre. Donc $P \ne O$.

Deux droites distinctes passant par $O$ n'ont que $O$ en commun. Comme $P \ne O$ appartient aux deux, c'est que $D_{ij}$ et $D_{ik}$ sont la même droite, donc $\sigma_{ij}$ et $\sigma_{ik}$ sont la même symétrie. Mais alors

$$A_{j+1} = \sigma_{ij}(A_i) = \sigma_{ik}(A_i) = A_{k+1} ,$$

donc $j = k$ : contradiction.

**Conclusion partielle :** jamais trois des droites tracées ne passent par un même point. Deux paires différentes de droites donnent donc toujours deux points différents — sinon, en réunissant les deux paires, on trouverait au moins trois droites passant par ce point commun.

**Étape 4 : le compte.**

Chacune des $4900$ paires sécantes donne un point d'intersection, et ces points sont deux à deux distincts. Il y a donc

$$\boxed{4900}$$

points d'intersection.

Les cent points de départ sont bien dans le lot : le point $A_{i+1}$ est l'intersection des deux droites $\ell_i$ et $\ell_{i+1}$.
