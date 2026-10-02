---
id: "7525"
title: "Six cercles par un même point"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercle, angles, triangle, tiroirs, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 39 (une étoile ; solution p. 243, résolue par Aymeric Jacquin). La solution imprimée affirme une inégalité stricte sur l'angle sans traiter le cas d'égalité, laissé en suspens par une parenthèse non fermée ; l'énoncé n'est correct que si « contenir » inclut le bord, comme expliqué dans « Pour aller plus loin »."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Six cercles du plan passent tous par un même point $A$.

Montrer que l'un au moins de ces cercles contient le centre d'un autre, c'est-à-dire qu'il existe deux de ces cercles tels que le centre du premier soit à l'intérieur du second ou sur le second.

## Hints

1. Raisonne par l'absurde : suppose que le centre de chaque cercle est **strictement à l'extérieur** de tous les autres.
2. Ne travaille qu'avec deux cercles pour commencer. Appelle $P$ et $Q$ leurs centres. Que sais-tu des longueurs $PA$, $QA$ et $PQ$ ?
3. Dans un triangle, au plus grand côté fait face le plus grand angle. Applique cela au triangle $PAQ$.
4. Tu devrais obtenir que l'angle $\widehat{PAQ}$ dépasse strictement $60°$. Compte maintenant les six angles autour de $A$.

## Solution

**Étape 1. On raisonne par l'absurde.**

Notons $A_1, A_2, \ldots, A_6$ les centres des six cercles et $r_1, \ldots, r_6$ leurs rayons. Comme le cercle numéro $i$ passe par $A$, on a

$$A_i A = r_i \qquad \text{pour tout } i.$$

Supposons, par l'absurde, qu'aucun cercle ne contienne le centre d'un autre. Cela veut dire que pour tous $i \neq j$ :

$$A_i A_j > r_j \qquad \text{et} \qquad A_i A_j > r_i,$$

autrement dit

$$A_i A_j \;>\; \max(r_i, r_j) \;=\; \max(A_i A, \; A_j A).$$

**Étape 2. Deux centres voient $A$ sous un angle de plus de 60°.**

Fixons deux indices $i \neq j$ et regardons le triangle $A\,A_i\,A_j$. D'après l'étape 1, le côté $[A_iA_j]$ est **strictement plus long** que chacun des deux autres côtés $[AA_i]$ et $[AA_j]$.

Dans un triangle, au plus grand côté fait face le plus grand angle. Le côté $[A_iA_j]$ étant strictement le plus grand, l'angle qui lui fait face, c'est-à-dire $\widehat{A_i A A_j}$, est strictement le plus grand des trois angles.

Or les trois angles d'un triangle totalisent $180°$. Si l'angle $\widehat{A_i A A_j}$ valait $60°$ ou moins, les deux autres, qui lui sont strictement inférieurs, vaudraient chacun moins de $60°$, et la somme serait strictement inférieure à $180°$. C'est impossible. Donc

$$\widehat{A_i A A_j} \;>\; 60°.$$

**Étape 3. La contradiction.**

Rangeons les six centres $A_1, \ldots, A_6$ dans l'ordre où on les rencontre en tournant autour du point $A$ ; quitte à les renuméroter, disons que cet ordre est $A_1, A_2, \ldots, A_6$.

Les six angles

$$\widehat{A_1 A A_2}, \quad \widehat{A_2 A A_3}, \quad \ldots, \quad \widehat{A_5 A A_6}, \quad \widehat{A_6 A A_1}$$

se succèdent sans se chevaucher et font le tour complet : leur somme vaut exactement $360°$.

Mais d'après l'étape 2, chacun d'eux dépasse strictement $60°$, donc leur somme dépasse strictement $6 \times 60° = 360°$.

C'est absurde.

**Conclusion.** L'hypothèse de départ est fausse : l'un des six cercles contient bien le centre d'un autre.

## Going further

Pourquoi l'énoncé dit-il « contient », bord compris, et pas « contient strictement à l'intérieur » ? Parce que la version stricte est **fausse**, et il existe un contre-exemple très régulier.

Prends six points $A_1, \ldots, A_6$ formant un hexagone régulier de côté $1$ centré en $A$. Chaque $A_i$ est à distance $1$ de $A$ : les six cercles de centre $A_i$ et de rayon $1$ passent donc tous par $A$. Et deux centres voisins sont à distance exactement $1$ l'un de l'autre : chaque centre est **sur** le cercle de son voisin, et jamais strictement dedans. Quant aux centres non voisins, ils sont à distance $\sqrt3$ ou $2$, donc franchement dehors.

Cette configuration est le cas d'égalité de la démonstration : les six angles valent tous exactement $60°$ et la somme fait pile $360°$. C'est un bon exemple de la prudence qu'il faut avoir avec les inégalités larges et strictes : ici, tout l'énoncé tient à ce détail.

Six est aussi le bon nombre : avec cinq cercles seulement, on peut les disposer de sorte qu'aucun ne contienne le centre d'un autre, même au sens large, puisque cinq angles de $72°$ suffisent à faire le tour.
