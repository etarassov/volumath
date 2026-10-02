---
id: "12655"
title: "Des jetons en cercle et n couleurs"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [coloriage, cercle, construction, tiroirs, division-euclidienne]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2022"
  reference: "2022-07_Enonce-Web-Test-4.pdf, exercice 4 (junior), posé à l'identique comme exercice 5 (senior) ; corrigé 2022-04_Corrige-Web-Test-4.pdf. Dans la construction du corrigé, « elle choisit a jetons de couleur m » doit se lire « de couleur n »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-4.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers tels que $m > n \geqslant 3$. Morgane a disposé $m$ jetons en cercle, et s'apprête à les peindre en utilisant $n$ couleurs distinctes. Elle souhaite que, parmi $n + 1$ jetons consécutifs, il y ait toujours au moins un jeton de chacune des $n$ couleurs. Si elle peut y parvenir, on dira que l'entier $m$ est **$n$-coloriable**.

Démontrer que, pour tout entier $n \geqslant 3$, il n'existe qu'un nombre fini, et non nul, d'entiers $m$ qui ne sont pas $n$-coloriables. Trouver le plus grand entier $m$ qui ne soit pas $n$-coloriable.

## Hints

1. Prends $n = 3$. Lesquels des entiers $m = 4$, $5$, $6$, $7$ sont $3$-coloriables ?
2. Si $m$ est un multiple de $n$, il y a une façon très simple de peindre les jetons. Que se passe-t-il si l'on glisse un jeton de plus quelque part ?
3. Écris $m = qn + a$ avec $0 \leqslant a \leqslant n - 1$. Pars de $q$ blocs $1, 2, \ldots, n$ et glisse $a$ jetons supplémentaires. Il faut que deux jetons glissés soient assez loin l'un de l'autre. Combien de jetons glissés peux-tu placer ainsi ? Pour quels $m$ cela suffit-il ?
4. Pour montrer qu'un $m$ n'est pas coloriable : une des couleurs apparaît peu de fois. Mets de côté un jeton de cette couleur, et découpe le reste du cercle en paquets de $n + 1$ jetons consécutifs.

## Solution

On va montrer que **le plus grand entier qui n'est pas $n$-coloriable est $n^2 - n - 1$.**

On numérote les couleurs de $1$ à $n$. On appelle **fenêtre** un groupe de $n + 1$ jetons consécutifs. Morgane veut que chaque fenêtre contienne les $n$ couleurs. Comme $m > n$, une fenêtre ne fait jamais le tour complet du cercle.

**Étape 1 : tout entier $m \geqslant n^2 - n$ est $n$-coloriable.**

Soit $m \geqslant n^2 - n$. On écrit la division euclidienne de $m$ par $n$ :
$$m = qn + a, \qquad \text{avec } 0 \leqslant a \leqslant n - 1.$$
Comme $m \geqslant n(n - 1)$, le quotient vérifie $q \geqslant n - 1$, et donc $q \geqslant a$.

*Le cercle de départ.* Morgane place d'abord $qn$ jetons en cercle, peints dans l'ordre
$$1, 2, \ldots, n, \quad 1, 2, \ldots, n, \quad \ldots, \quad 1, 2, \ldots, n$$
($q$ blocs). Dans ce cercle, $n$ jetons consécutifs quelconques sont $n$ termes consécutifs de la suite qui répète $1, 2, \ldots, n$ : ils portent chaque couleur exactement une fois.

*Les jetons glissés.* Ce cercle contient $q$ jetons de couleur $n$, un à la fin de chaque bloc. Comme $q \geqslant a$, Morgane peut en choisir $a$, et glisser juste après chacun d'eux un nouveau jeton, de couleur $1$. Elle a maintenant $qn + a = m$ jetons. Si $a = 0$, elle ne glisse rien.

*Pourquoi cela marche.* Un jeton glissé est suivi d'un bloc complet $1, 2, \ldots, n$ du cercle de départ, et le jeton glissé suivant ne peut venir qu'après un jeton de couleur $n$, donc au plus tôt à la fin de ce bloc. Ainsi, entre deux jetons glissés, il y a toujours au moins $n$ jetons du cercle de départ.

Une fenêtre ne peut donc pas contenir deux jetons glissés : elle contiendrait ces deux jetons et les $n$ jetons au moins qui les séparent, soit au moins $n + 2$ jetons. Une fenêtre contient donc au plus un jeton glissé, et au moins $n$ jetons du cercle de départ. Ces jetons se suivent dans le cercle de départ, puisque retirer le jeton glissé recolle ses deux voisins. Ils portent donc les $n$ couleurs.

Toutes les fenêtres contiennent les $n$ couleurs : l'entier $m$ est $n$-coloriable.

Par exemple, pour $n = 5$ et $m = 23 = 4 \times 5 + 3$, Morgane obtient
$$1, 2, 3, 4, 5, \mathbf{1}, \quad 1, 2, 3, 4, 5, \mathbf{1}, \quad 1, 2, 3, 4, 5, \mathbf{1}, \quad 1, 2, 3, 4, 5,$$
où les jetons glissés sont en gras.

**Étape 2 : l'entier $m = n^2 - n - 1$ n'est pas $n$-coloriable.**

D'abord, $m > n$, car $n^2 - 2n - 1 = (n - 1)^2 - 2 \geqslant 4 - 2 > 0$ pour $n \geqslant 3$ : cet entier entre bien dans le cadre de l'énoncé.

Supposons que Morgane ait réussi à peindre $m = n^2 - n - 1$ jetons comme elle le souhaite.

- *Une couleur est rare.* Si chacune des $n$ couleurs apparaissait au moins $n - 1$ fois, il y aurait au moins $n(n - 1) = n^2 - n$ jetons, soit plus que $m$. Donc une couleur, disons la couleur $1$, apparaît **au plus $n - 2$ fois**.
- *Elle apparaît quand même.* Chaque fenêtre contient la couleur $1$, donc elle apparaît au moins une fois.
- *Le découpage.* Morgane met de côté un jeton de couleur $1$. Les $m - 1$ autres jetons forment une rangée de jetons consécutifs, et
$$m - 1 = n^2 - n - 2 = (n + 1)(n - 2).$$
On peut donc découper cette rangée en $n - 2$ paquets de $n + 1$ jetons consécutifs. Chaque paquet est une fenêtre, et contient donc un jeton de couleur $1$.

En comptant le jeton mis de côté, il y a au moins $(n - 2) + 1 = n - 1$ jetons de couleur $1$. C'est impossible, puisqu'il y en a au plus $n - 2$. Donc $n^2 - n - 1$ n'est pas $n$-coloriable.

**Conclusion.** D'après l'étape 1, les entiers qui ne sont pas $n$-coloriables sont tous compris entre $n + 1$ et $n^2 - n - 1$ : il n'y en a qu'un nombre fini. D'après l'étape 2, l'entier $n^2 - n - 1$ en fait partie : ce nombre n'est pas nul. **Le plus grand entier qui n'est pas $n$-coloriable est $n^2 - n - 1$.**

Par exemple, pour $n = 3$, c'est $5$ : on vérifie à la main que $4$ jetons ($1, 2, 3, 1$) et $6$ jetons ($1, 2, 3, 1, 2, 3$) sont coloriables, mais pas $5$.

## Going further

- On peut décrire exactement les entiers coloriables. Écrivons $m = qn + a$ avec $0 \leqslant a \leqslant n - 1$. La construction de l'étape 1 n'utilise que $a \leqslant q$. Réciproquement, supposons $m$ coloriable. Une couleur apparaît $t$ fois avec $t \leqslant q$ (sinon il y aurait au moins $n(q + 1) > m$ jetons). Entre deux jetons consécutifs de cette couleur, il y a au plus $n$ autres jetons, sinon $n + 1$ d'entre eux formeraient une fenêtre sans cette couleur. Le cercle est donc formé de ces $t$ jetons et de $t$ intervalles d'au plus $n$ jetons, d'où $m \leqslant t(n + 1) \leqslant q(n + 1)$, ce qui donne $a \leqslant q$. Ainsi, **$m$ est $n$-coloriable si et seulement si le reste de $m$ par $n$ est au plus égal au quotient.** Pour $n = 4$, les entiers non coloriables sont $6$, $7$ et $11$.
- Le commentaire des correcteurs note que chacune des deux parties, prise seule, était accessible, mais que beaucoup d'élèves n'en ont réussi qu'une. Trouver une méthode de coloriage qui échoue pour $n^2 - n - 1$ ne prouve rien : une autre méthode aurait pu réussir. Et trouver une condition nécessaire que $n^2 - n - 1$ ne vérifie pas ne prouve pas que les entiers plus grands sont coloriables.
