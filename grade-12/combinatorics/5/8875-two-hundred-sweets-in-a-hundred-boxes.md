---
id: "8875"
title: "Deux cents bonbons dans cent boîtes"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe des tiroirs, sommes partielles, congruences, invariance par renumerotation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : TD de pot pourri » (Emilhan)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : TD de pot pourri », exercice 4, p. 286 et 289"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On répartit $200$ bonbons dans $100$ boîtes, de sorte que chaque boîte contienne **au moins $1$** et **au plus $99$** bonbons.

Montrer qu'on peut choisir certaines de ces boîtes, de sorte que le nombre total de bonbons qu'elles contiennent soit exactement $100$.

## Hints

1. Numérote les boîtes de $1$ à $100$ et note $B_i$ le nombre total de bonbons dans les $i$ premières boîtes. Que valent $B_{100}$, et les encadrements des autres $B_i$ ?
2. Si deux de ces totaux sont égaux modulo $100$, que dire des boîtes situées entre les deux ? Sers-toi du fait que la différence est un multiple de $100$ compris entre $1$ et $199$.
3. Si aucun ne l'est, les $100$ nombres $B_1, \dots, B_{100}$ occupent chacun un reste différent modulo $100$ : ils les occupent donc **tous**.
4. Le raisonnement ne dépend pas de la numérotation choisie. Que se passe-t-il si l'on échange les numéros des deux premières boîtes ?
5. Si toutes les boîtes contiennent le même nombre de bonbons, combien en contiennent-elles ?

## Solution

### Les totaux partiels

Numérotons les boîtes de $1$ à $100$, dans l'ordre qu'on veut, et posons pour $1 \leqslant i \leqslant 100$
$$B_i = \text{nombre de bonbons contenus dans les boîtes numéros } 1 \text{ à } i .$$

Comme chaque boîte contient au moins un bonbon, on a $B_i \geqslant 1$, et bien sûr
$$B_{100} = 200 .$$
En particulier $1 \leqslant B_i \leqslant 200$ pour tout $i$.

### Premier cas : deux totaux partiels sont égaux modulo 100

Supposons qu'il existe $i < j$ avec
$$B_i \equiv B_j \pmod{100} .$$

Alors $B_j - B_i$ est un multiple strictement positif de $100$ (strictement positif car les $B_i$ croissent : chaque boîte ajoute au moins un bonbon). De plus
$$B_j - B_i \leqslant 200 - 1 = 199 ,$$
donc le seul multiple possible est
$$B_j - B_i = 100 .$$

Or $B_j - B_i$ est exactement le nombre de bonbons contenus dans les boîtes numérotées $i+1, i+2, \dots, j$. Ces boîtes-là conviennent, et c'est terminé.

### Second cas : tous les totaux partiels sont distincts modulo 100

Il reste à traiter la possibilité que, **pour toute numérotation**, les $100$ nombres $B_1, \dots, B_{100}$ soient deux à deux différents modulo $100$. Montrons que cela force une situation très particulière.

Comme il y a exactement $100$ restes possibles modulo $100$ et exactement $100$ nombres deux à deux distincts modulo $100$, ces nombres occupent **chaque** reste exactement une fois.

Prenons maintenant deux boîtes quelconques $P$ et $Q$, et choisissons une numérotation où $P$ porte le numéro $1$ et $Q$ le numéro $2$. Puis échangeons ces deux numéros, c'est-à-dire donnons le numéro $1$ à $Q$ et le numéro $2$ à $P$, sans rien changer d'autre.

- Les totaux $B_2, B_3, \dots, B_{100}$ ne changent pas : ils portent sur les mêmes ensembles de boîtes.
- Seul $B_1$ change : il valait le contenu de $P$, il vaut maintenant celui de $Q$.

Dans les deux numérotations, les restes des $B_i$ couvrent tous les restes modulo $100$. Les restes de $B_2, \dots, B_{100}$ étant les mêmes dans les deux cas, il ne reste qu'**un seul** reste libre, le même dans les deux cas, et c'est celui de $B_1$. Donc

$$(\text{contenu de } P) \equiv (\text{contenu de } Q) \pmod{100} .$$

Or ces deux nombres sont compris entre $1$ et $99$. Deux entiers de $1$ à $99$ congrus modulo $100$ sont égaux. Donc $P$ et $Q$ contiennent le **même** nombre de bonbons.

### La conclusion dans ce second cas

Ce raisonnement vaut pour n'importe quel couple de boîtes : **toutes** les boîtes contiennent donc le même nombre $c$ de bonbons. Comme il y a $100$ boîtes et $200$ bonbons,
$$100\,c = 200 , \qquad \text{donc} \qquad c = 2 .$$

Il suffit alors de prendre $50$ boîtes au hasard : elles contiennent $50 \times 2 = 100$ bonbons.

### Conclusion

Dans les deux cas, on a trouvé un ensemble de boîtes totalisant exactement $100$ bonbons.

### L'idée à retenir

Le pas décisif est de remarquer que la numérotation est **arbitraire**. On démontre quelque chose pour une numérotation, puis on en change, et la comparaison des deux conclusions donne une information nouvelle que ni l'une ni l'autre ne donnait seule. C'est une manœuvre à garder en tête chaque fois qu'un énoncé fait un choix dont il ne dépend pas.

## Going further

1. Où sert l'hypothèse « au plus $99$ bonbons par boîte » ? Trouver une répartition qui la viole et pour laquelle la conclusion est fausse.
2. Où sert l'hypothèse « au moins $1$ bonbon par boîte » ?
3. Reprendre l'énoncé avec $2n$ bonbons dans $n$ boîtes, chaque boîte contenant entre $1$ et $n-1$ bonbons, et un total visé de $n$. Pour quelles valeurs de $n$ la conclusion reste-t-elle vraie ? (Regarder d'abord $n = 3$ et $n = 5$.)
