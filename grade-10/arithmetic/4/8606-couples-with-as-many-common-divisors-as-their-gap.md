---
id: "8606"
title: "Autant de diviseurs communs que d'écart"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [diviseurs communs, divisibilite, denombrement, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices collégiens, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers avec $1 \leqslant y < x$. On dit que le couple $(x, y)$ est **joli** lorsque $x$ et $y$ ont exactement $x - y$ diviseurs positifs communs.

*Deux exemples.* Les nombres $30$ et $42$ ont exactement $4$ diviseurs communs : $1$, $2$, $3$ et $6$. Comme $42 - 30 = 12$ et que $12 \neq 4$, le couple $(42, 30)$ n'est pas joli. En revanche $(8, 6)$ est joli : $6$ et $8$ ont exactement $8 - 6 = 2$ diviseurs communs, à savoir $1$ et $2$.

Pour tout entier $n \geqslant 2$, on note $s(n)$ le nombre de couples jolis $(x, y)$ vérifiant $1 \leqslant y < x \leqslant n$.

1. Existe-t-il un entier $n \geqslant 2$ tel que $s(n) = 2022$ ?
2. Existe-t-il un entier $n \geqslant 2$ tel que $s(n) = 2023$ ?

## Hints

1. Commence par la main : dresse la liste de tous les couples jolis avec $x \leqslant 6$, puis calcule $s(2), s(3), \ldots, s(8)$. Une régularité devrait sauter aux yeux.
2. Posons $m = x - y$. Un diviseur commun à $x$ et à $y$ divise-t-il $m$ ?
3. Si $(x,y)$ est joli, $x$ et $y$ ont $m$ diviseurs communs, et ils divisent tous $m$. Or un diviseur positif de $m$ est au plus égal à $m$. Combien y a-t-il de nombres entre $1$ et $m$ ? Conclusion sur les diviseurs de $m$ ?
4. Tu devrais obtenir que **tous** les entiers de $1$ à $m$ divisent $m$. Applique cela à $m - 1$.
5. Une fois que tu sais que $m$ ne peut valoir que $1$ ou $2$, reviens en arrière : pour chacun de ces deux cas, quels couples sont réellement jolis ? Puis compte.
6. Pour la toute fin, regarde $s(n)$ modulo $3$.

## Solution

Dans toute la solution on pose $m = x - y$, qui est un entier strictement positif.

### Quels couples sont jolis

**Étape 1 : tout diviseur commun à $x$ et $y$ divise $m$.**

Soit $d$ un diviseur commun à $x$ et à $y$. Écrivons $x = kd$ et $y = \ell d$ avec $k, \ell$ entiers. Alors

$$m = x - y = kd - \ell d = (k - \ell)\,d ,$$

donc $d$ divise $m$.

**Étape 2 : si $(x,y)$ est joli, alors tous les entiers de $1$ à $m$ divisent $m$.**

Supposons $(x,y)$ joli : $x$ et $y$ ont exactement $m$ diviseurs communs. D'après l'étape 1, ces $m$ nombres sont tous des diviseurs de $m$.

Or $m > 0$, donc tout diviseur positif de $m$ est inférieur ou égal à $m$ : les diviseurs de $m$ vivent tous dans l'ensemble $\{1, 2, \ldots, m\}$, qui contient exactement $m$ éléments.

On a donc $m$ nombres distincts, tous diviseurs de $m$, tous dans un ensemble de taille $m$. Ils remplissent cet ensemble entièrement : **tous** les entiers de $1$ à $m$ divisent $m$.

**Étape 3 : donc $m = 1$ ou $m = 2$.**

Supposons $m \geqslant 2$. Alors $m - 1$ est un entier compris entre $1$ et $m$, donc $m - 1$ divise $m$ d'après l'étape 2. Comme $m-1$ divise aussi $m - 1$, il divise la différence :

$$(m - 1) \mid m - (m-1) = 1 .$$

Donc $m - 1 = 1$, c'est-à-dire $m = 2$. Ainsi $m$ vaut $1$ ou $2$.

**Étape 4 : la réciproque, cas par cas.**

*Cas $m = 1$.* Tout diviseur commun à $x$ et $y$ divise $1$, donc vaut $1$. Et $1$ est bien un diviseur commun. Il y a donc exactement $1 = m$ diviseur commun : **tout couple $(y+1, y)$ est joli.**

*Cas $m = 2$.* Tout diviseur commun divise $2$, donc vaut $1$ ou $2$. Pour en avoir exactement $2 = m$, il faut que $2$ soit lui aussi un diviseur commun, c'est-à-dire que $x$ et $y$ soient tous les deux pairs. Comme $x = y + 2$, cela revient à dire que $y$ est pair. Donc **$(y+2, y)$ est joli si et seulement si $y$ est pair.**

### Le calcul de $s(n)$

On compte les couples jolis $(x,y)$ avec $1 \leqslant y < x \leqslant n$, en séparant les deux familles.

- **Famille $m = 1$** : les couples $(y+1, y)$ avec $1 \leqslant y$ et $y + 1 \leqslant n$, c'est-à-dire $1 \leqslant y \leqslant n-1$. Il y en a $n - 1$.
- **Famille $m = 2$** : les couples $(y+2, y)$ avec $y$ pair et $y + 2 \leqslant n$. Les valeurs possibles de $y$ sont $2, 4, 6, \ldots$ jusqu'à $n - 2$ au plus.

Pour cette seconde famille, distinguons la parité de $n$.

- Si $n = 2k$, les $y$ possibles sont $2, 4, \ldots, 2k-2$, soit $k - 1$ valeurs.
- Si $n = 2k+1$, les $y$ possibles sont $2, 4, \ldots, 2k-2$ également (car $y$ pair et $y \leqslant 2k-1$), soit encore $k - 1$ valeurs.

On obtient donc

$$s(2k) = (2k - 1) + (k-1) = 3k - 2 \qquad \text{et} \qquad s(2k+1) = 2k + (k-1) = 3k - 1 .$$

*Vérification sur de petites valeurs :* $s(2) = 1$, $s(3) = 2$, $s(4) = 4$, $s(5) = 5$, $s(6) = 7$, ce qui correspond bien aux formules avec $k = 1, 1, 2, 2, 3$.

### Les deux réponses

**1. $s(n) = 2022$ est impossible.** Quelle que soit la parité de $n$, $s(n)$ s'écrit $3k - 2$ ou $3k - 1$ : c'est un nombre dont le reste dans la division par $3$ vaut $1$ ou $2$. Autrement dit, **$s(n)$ n'est jamais un multiple de $3$**. Or $2022 = 3 \times 674$ est un multiple de $3$.

**2. $s(n) = 2023$ est possible.** On a $2023 = 2025 - 2 = 3 \times 675 - 2$. En prenant $k = 675$, c'est-à-dire $n = 2k = 1350$, on obtient

$$s(1350) = 3 \times 675 - 2 = 2023 .$$

**Conclusion.** Il n'existe pas de $n$ avec $s(n) = 2022$, et $n = 1350$ convient pour $s(n) = 2023$.

## Going further

Le conseil des correcteurs vaut pour beaucoup de problèmes : « très peu d'élèves ont essayé de trouver tous les couples jolis avec $x, y \leqslant 5$ ». Dresser la petite table à la main coûte cinq minutes et fait apparaître d'un coup que seuls les écarts $1$ et $2$ marchent. La démonstration vient ensuite, bien plus facilement quand on sait ce qu'on cherche à démontrer.
