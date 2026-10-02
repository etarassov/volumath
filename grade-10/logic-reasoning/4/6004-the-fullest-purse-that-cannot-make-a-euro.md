---
id: "6004"
title: "Le porte-monnaie le plus lourd qui ne fait pas un euro"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 50
tags: [monnaie, sommes-partielles, majoration, cas, optimisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Recruiting Change for a Dollar »"
  reference: "2019-Spring-MTCircular.pdf, p. 6-7 : « What is the maximum amount of money one can have without having change for a dollar? » (la revue donne 1,19 dollar pour les pièces américaines et aucune démonstration ; version euro ici, réponse 1,43 €)"
  url: "https://mathcircles.org/activity/recruiting-change-for-a-dollar/"
  original_language: "en"
  local_copy: "sources/originals/namc/2019-Spring-MTCircular.pdf"
---

## Statement

Paul n'a dans son porte-monnaie que des pièces de centimes : des pièces de $1$, $2$, $5$, $10$, $20$ et $50$ centimes. Il peut avoir autant de pièces qu'il veut de chaque sorte.

Un ami lui demande $1$ € tout rond. Paul cherche parmi ses pièces, essaie toutes les combinaisons, et doit avouer qu'il ne peut pas faire exactement $100$ centimes.

Quelle est la plus grosse somme que Paul peut avoir dans son porte-monnaie ?

Il faut à la fois donner un porte-monnaie qui atteint cette somme sans pouvoir faire $1$ €, et expliquer pourquoi on ne peut pas faire mieux.

## Hints

1. La réponse est plus grande que $99$ centimes. Avec des pièces bien choisies, on peut dépasser $1$ € sans pouvoir faire exactement $1$ €.
2. Combien de pièces de $50$ centimes Paul peut-il avoir au maximum ? Et de pièces de $20$ ?
3. Essaie de construire un gros porte-monnaie : commence par une pièce de $50$ et quatre pièces de $20$, puis complète avec de la petite monnaie sans jamais pouvoir arriver à $100$.
4. Pour compléter, il faut que la petite monnaie ne puisse pas faire $10$ centimes. Quelles pièces s'interdit-on alors ?
5. Pour la majoration, appelle $s$ la valeur totale des pièces de $10$ centimes ou moins. Montre d'abord ce petit résultat : un tas de pièces valant chacune au plus $10$ centimes et valant $s$ en tout permet de fabriquer n'importe quel multiple de $10$ jusqu'à $s - 4$.

## Solution

La réponse est $\boxed{143}$ centimes, soit 1,43 €.

### Un porte-monnaie à 143 centimes

Paul a :

- une pièce de $50$ centimes,
- quatre pièces de $20$ centimes,
- une pièce de $5$ centimes,
- quatre pièces de $2$ centimes.

Total : $50 + 80 + 5 + 8 = 143$ centimes.

**Vérifions qu'on ne peut pas faire $100$.** Séparons selon qu'on utilise la pièce de $50$ ou non.

- **Sans la pièce de $50$** : tout le reste vaut $80 + 5 + 8 = 93 < 100$. Impossible.
- **Avec la pièce de $50$** : il faut faire $50$ avec les quatre pièces de $20$, la pièce de $5$ et les quatre pièces de $2$. Avec $a$ pièces de $20$ :
  - $a = 2$ : il reste $10$ à faire avec le $5$ et les quatre $2$. Les sommes possibles sont $0, 2, 4, 5, 6, 7, 8, 9, 11, 13$ : pas de $10$.
  - $a = 1$ : il reste $30$ à faire, alors que $5 + 8 = 13$ seulement. Impossible.
  - $a = 0$ : il reste $50$ à faire avec $13$ centimes. Impossible.
  - $a \geqslant 3$ : on dépasse déjà $50$ avec les seules pièces de $20$.

Aucune combinaison ne donne $100$. Ce porte-monnaie convient donc.

### Personne ne peut faire mieux

Supposons que Paul ait $T$ centimes sans pouvoir faire $100$, et montrons que $T \leqslant 143$.

**Deux remarques immédiates.** Paul a au plus **une** pièce de $50$ (deux feraient $100$) et au plus **quatre** pièces de $20$ (cinq feraient $100$).

Notons $f$ son nombre de pièces de $50$ (donc $f \leqslant 1$), $e$ son nombre de pièces de $20$ (donc $e \leqslant 4$), et $s$ la valeur totale de toutes les autres pièces, c'est-à-dire celles de $10$ centimes ou moins. Ainsi
$$T = 50f + 20e + s.$$

**Le petit résultat clé.**

> Un tas de pièces valant chacune au plus $10$ centimes et valant $s$ centimes en tout permet de fabriquer exactement $m$ centimes, pour n'importe quel multiple de $10$ tel que $0 \leqslant m \leqslant s - 4$.

*Démonstration.* Le tas contient $a$ pièces de $1$, $b$ de $2$, $j$ de $5$ et $k$ de $10$, avec $s = a + 2b + 5j + 10k$. On commence par prendre des pièces de $10$ et de $5$.

Avec $k$ pièces de $10$ et $j$ pièces de $5$, on fabrique tout multiple de $5$ compris entre $0$ et $10k + 5j$ : on prend d'abord autant de pièces de $5$ que nécessaire, en en retirant une si la parité ne tombe pas juste, et on complète avec des pièces de $10$.

- Si $10k + 5j \geqslant m$ : comme $m$ est un multiple de $10$, donc de $5$, on fabrique $m$ avec ces seules pièces. C'est fini.
- Sinon, on prend toutes les pièces de $5$ et de $10$, ce qui donne $M = 10k + 5j$, et il reste $r = m - M > 0$ à faire avec les pièces de $1$ et de $2$. Or
$$a + 2b = s - M \geqslant (m + 4) - M = r + 4 .$$
  Si $a \geqslant 1$, les pièces de $1$ et de $2$ fabriquent **toutes** les valeurs de $0$ à $a + 2b$, donc $r$ en particulier.
  Si $a = 0$, elles ne fabriquent que les valeurs paires jusqu'à $2b$. Quand $r$ est pair, c'est bon, car $2b \geqslant r + 4$. Quand $r$ est impair, on laisse de côté une pièce de $5$ (il y en a au moins une, sinon $M$ serait un multiple de $10$ et $r$ serait pair) : le reste à faire devient $r + 5$, qui est pair, et $2b \geqslant r + 5$ puisque $2b$ est pair et $2b \geqslant r + 4$ avec $r + 4$ impair.

**La majoration.** Supposons $T \geqslant 144$ et cherchons une contradiction. Dans chaque cas ci-dessous, on choisit combien de pièces de $50$ et de $20$ mettre de côté, et on note $m$ ce qu'il reste à compléter pour atteindre $100$ :

| $f$ | $e$ | $s = T - 50f - 20e$ vaut au moins | pièces mises de côté | $m$ | il suffit d'avoir $s \geqslant m + 4$ |
|---|---|---|---|---|---|
| $1$ | $2$, $3$ ou $4$ | $14$ | un $50$ et deux $20$ | $10$ | $14$ |
| $1$ | $1$ | $74$ | un $50$ et un $20$ | $30$ | $34$ |
| $1$ | $0$ | $94$ | un $50$ | $50$ | $54$ |
| $0$ | $4$ | $64$ | quatre $20$ | $20$ | $24$ |
| $0$ | $3$ | $84$ | trois $20$ | $40$ | $44$ |
| $0$ | $2$ | $104$ | deux $20$ | $60$ | $64$ |
| $0$ | $1$ | $124$ | un $20$ | $80$ | $84$ |
| $0$ | $0$ | $144$ | aucune | $100$ | $104$ |

(La troisième colonne se lit sur $s = T - 50f - 20e \geqslant 144 - 50f - 20e$, en prenant la plus grande valeur possible de $e$ dans la ligne.)

Dans chaque ligne, la valeur garantie de $s$ dépasse le seuil $m + 4$. Le petit résultat clé donne alors un paquet de petites pièces valant exactement $m$, et en lui ajoutant les pièces mises de côté on obtient
$$50f' + 20e' + m = 100 .$$
Paul pouvait donc faire $1$ €, contrairement à l'hypothèse.

Il est donc impossible d'avoir $144$ centimes ou plus, et $143$ centimes est bien le maximum.

## Going further

1. Trouver d'autres porte-monnaie à $143$ centimes qui ne permettent pas de faire $1$ €.
2. Avec les pièces américaines ($1$, $5$, $10$, $25$ et $50$ cents), la même question donne 1,19 dollar : une pièce de $50$, une de $25$, quatre de $10$ et quatre de $1$. Vérifier qu'on ne peut effectivement pas faire $1$ dollar, et reprendre la majoration.
3. Et si l'on cherche la plus grosse somme qui ne permette de faire **ni** $50$ centimes **ni** $1$ € ?
