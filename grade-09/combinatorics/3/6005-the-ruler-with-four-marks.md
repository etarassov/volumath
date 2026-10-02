---
id: "6005"
title: "La règle à quatre traits"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [denombrement, majoration, construction, mesure]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « In Session : Measuring Up, Perfect Rulers » (Chris Bolognese et Raj Shah)"
  reference: "MTCircularSA2015.pdf, p. 16-17 : la revue traite la règle de 6 pouces et laisse ouverte celle de 36 pouces ; version métrique ici"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSA2015.pdf"
---

## Statement

Une règle de $12$ cm porte normalement un trait à chaque centimètre. On décide d'en effacer le plus possible.

Les deux extrémités, le $0$ et le $12$, restent toujours. Entre elles, on garde quelques traits seulement, placés sur des nombres entiers de centimètres.

On veut pouvoir mesurer **toutes** les longueurs entières de $1$ cm à $12$ cm, chacune comme la distance entre deux traits de la règle. Attention : la règle reste posée, on ne la déplace pas le long de l'objet.

Par exemple, si l'on ne garde que le trait du $4$, on mesure $4$ (du $0$ au $4$), $8$ (du $4$ au $12$) et $12$ (du $0$ au $12$), mais rien d'autre : c'est très insuffisant.

Quel est le plus petit nombre de traits intermédiaires qui suffit ? Donner une règle qui y arrive, et expliquer pourquoi on ne peut pas faire moins.

## Hints

1. Commencer plus petit : sur une règle de $6$ cm, deux traits intermédiaires suffisent. Les trouver.
2. Pour montrer qu'un certain nombre de traits ne suffit pas, il ne sert à rien d'essayer toutes les règles une par une. Compter d'abord combien de longueurs une règle peut mesurer **au maximum**.
3. Si la règle porte $p$ traits en tout (extrémités comprises), combien de couples de traits peut-on former ? Chaque longueur mesurée vient d'un couple.
4. Il faut mesurer $12$ longueurs différentes. Combien de traits faut-il donc au minimum ?
5. Pour la construction, essayer de placer deux traits tout près du $0$, puis deux autres plus loin.

## Solution

La réponse est **quatre** traits intermédiaires.

### Quatre traits ne peuvent pas être battus

Supposons que la règle porte $p$ traits en tout, les deux extrémités comprises.

Chaque longueur que l'on sait mesurer est la distance entre deux traits. Le nombre de couples de traits que l'on peut former vaut
$$\frac{p(p-1)}{2},$$
puisqu'on choisit deux traits parmi $p$ sans tenir compte de l'ordre.

Deux couples différents peuvent très bien donner la même longueur, mais l'inverse est impossible : chaque longueur mesurée occupe au moins un couple. Il faut donc au moins autant de couples que de longueurs à mesurer, c'est-à-dire
$$\frac{p(p-1)}{2} \geqslant 12 .$$

Essayons :
$$p = 5 : \quad \frac{5 \times 4}{2} = 10 < 12, \qquad\qquad p = 6 : \quad \frac{6 \times 5}{2} = 15 \geqslant 12 .$$

Avec cinq traits on ne peut mesurer que dix longueurs au plus, alors qu'il en faut douze. Il faut donc $p \geqslant 6$, c'est-à-dire au moins **quatre** traits intermédiaires en plus des deux extrémités.

### Quatre traits suffisent

Gardons les traits du $1$, du $2$, du $6$ et du $9$. Les six traits de la règle sont donc
$$0, \quad 1, \quad 2, \quad 6, \quad 9, \quad 12 .$$

Voici comment mesurer chaque longueur :

| longueur | entre les traits | longueur | entre les traits |
|---|---|---|---|
| $1$ | $1$ et $2$ | $7$ | $2$ et $9$ |
| $2$ | $0$ et $2$ | $8$ | $1$ et $9$ |
| $3$ | $6$ et $9$ | $9$ | $0$ et $9$ |
| $4$ | $2$ et $6$ | $10$ | $2$ et $12$ |
| $5$ | $1$ et $6$ | $11$ | $1$ et $12$ |
| $6$ | $0$ et $6$ | $12$ | $0$ et $12$ |

Les douze longueurs y sont. Cette règle convient, et quatre traits sont donc bien le minimum.

**Un mot sur la marge.** Les six traits donnent $15$ couples pour seulement $12$ longueurs : trois couples exactement font double emploi. Ici, la longueur $1$ est donnée deux fois (par les traits $0$ et $1$, puis par les traits $1$ et $2$), la longueur $3$ deux fois (traits $6$ et $9$, puis traits $9$ et $12$) et la longueur $6$ deux fois (traits $0$ et $6$, puis traits $6$ et $12$). La marge est donc très mince, et c'est pour cela que de telles règles sont difficiles à trouver à tâtons.

## Going further

1. Sur la règle de $6$ cm, deux traits suffisent : $0, 1, 4, 6$. Vérifier, et retrouver la majoration.
2. Il existe exactement quatorze règles de $12$ cm à quatre traits intermédiaires, en comptant séparément une règle et son image par retournement. En trouver deux autres.
3. Jusqu'à quelle longueur quatre traits intermédiaires peuvent-ils suffire ? (La majoration dit au plus $15$ cm. La réponse est $13$ cm.)
4. La revue pose la question pour une règle de $36$ pouces. Combien de traits faut-il ? Personne dans l'atelier n'y est arrivé pendant la séance.
