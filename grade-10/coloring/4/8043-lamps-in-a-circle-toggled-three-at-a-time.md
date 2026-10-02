---
id: "8043"
title: "Des lampes en cercle, trois par trois"
grade: 10
theme: coloring
difficulty: 4
duration_min: 35
tags: [coloriage, invariant, parite, cercle, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : logique et stratégies de base, jeudi 17 après-midi (Antoine Séré), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Sur un cercle sont disposées $n$ lampes, avec $n \geqslant 3$. Au départ, une seule est
allumée, toutes les autres sont éteintes.

À chaque étape, on choisit trois lampes consécutives et on change l'état de ces trois lampes
(les allumées s'éteignent, les éteintes s'allument).

Pour quels entiers $n$ peut-on arriver à allumer toutes les lampes ?

## Hints

1. Essaie $n = 4$, puis $n = 5$. Tu devrais y arriver assez vite.
2. Essaie $n = 3$, puis $n = 6$. Que constates-tu ?
3. Quand $3$ divise $n$, colorie les lampes en trois couleurs en tournant : rouge, vert, bleu,
   rouge, vert, bleu... Combien de lampes de chaque couleur une étape touche-t-elle ?
4. Choisis tes couleurs de sorte que la lampe allumée au départ soit rouge, puis regarde la
   quantité « nombre de rouges allumées $+$ nombre de vertes allumées ».

## Solution

**Réponse : c'est possible exactement quand $n$ n'est pas un multiple de $3$.**

### Quand $n$ n'est pas un multiple de $3$, on y arrive

Numérotons les lampes de $1$ à $n$ en tournant, et supposons que la lampe allumée au départ
soit la lampe $1$.

**Cas $n = 3m + 1$.** Les lampes $2, 3, \ldots, n$ sont au nombre de $n - 1 = 3m$, elles sont
consécutives, et elles sont toutes éteintes. Découpons-les en $m$ paquets de trois lampes
consécutives, et appliquons une étape à chaque paquet : chacune de ces lampes change d'état
une seule fois, donc s'allume. La lampe $1$ n'est jamais touchée et reste allumée.

**Toutes les lampes sont allumées.**

**Cas $n = 3m + 2$.** Commençons par une étape sur les lampes $1$, $2$, $3$. La lampe $1$
s'éteint, les lampes $2$ et $3$ s'allument.

Les lampes éteintes sont maintenant la lampe $1$ et les lampes $4, 5, \ldots, n$. Sur le
cercle, ces lampes sont consécutives : on lit $4, 5, \ldots, n, 1$. Elles sont au nombre de
$(n - 3) + 1 = 3m$. On les découpe en $m$ paquets de trois et on applique une étape à chaque
paquet.

**Toutes les lampes sont allumées.**

### Quand $n$ est un multiple de $3$, c'est impossible

**Le coloriage.** Comme $3$ divise $n$, on peut colorier les lampes en tournant :
**rouge, vert, bleu, rouge, vert, bleu**, et ainsi de suite ; le motif se referme correctement
puisque $n$ est un multiple de $3$. Chaque couleur est portée par $n/3$ lampes.

Choisissons de commencer le motif sur la lampe allumée au départ, de sorte que celle-ci soit
**rouge**.

**Ce que fait une étape.** Trois lampes consécutives portent exactement une lampe de chaque
couleur. Une étape change donc l'état d'exactement une rouge, d'exactement une verte et
d'exactement une bleue.

**La quantité invariante.** Posons

$$N = (\text{nombre de lampes rouges allumées}) + (\text{nombre de lampes vertes allumées}).$$

À chaque étape, une rouge change d'état (donc ce compte varie de $+1$ ou $-1$) et une verte
aussi. Au total, $N$ varie de $-2$, de $0$ ou de $+2$ : **la parité de $N$ ne change jamais.**

**La contradiction.** Au départ, une seule lampe est allumée et elle est rouge, donc $N = 1$ :
$N$ est impair, et il le restera toujours.

Si toutes les lampes étaient allumées, on aurait

$$N = \frac{n}{3} + \frac{n}{3} = \frac{2n}{3},$$

qui est un nombre **pair**. C'est impossible.

**Conclusion : on peut allumer toutes les lampes si et seulement si $n$ n'est pas un multiple
de $3$.**

## Going further

Le choix de regarder deux couleurs sur trois n'est pas un caprice : si l'on regardait les trois
couleurs à la fois, le nombre total de lampes allumées changerait de $-3$, $-1$, $+1$ ou $+3$
à chaque étape, donc de parité à chaque fois, et on n'obtiendrait aucun invariant. C'est en
laissant tomber une couleur que la parité se fige.

Vérifions sur le plus petit cas, $n = 3$. Une étape touche les trois lampes à la fois. En
partant d'une lampe allumée, on passe à deux allumées, puis à une, puis à deux : on ne voit
jamais les trois allumées, comme annoncé.
