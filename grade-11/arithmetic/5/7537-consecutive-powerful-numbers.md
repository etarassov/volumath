---
id: "7537"
title: "Des nombres intéressants côte à côte"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [decomposition-en-facteurs-premiers, exposants, construction, infinitude, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 109 (solution p. 260, résolue par Arthur Blanc-Renaudie)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On dit qu'un entier $N \geqslant 2$ est **intéressant** si, dans sa décomposition en produit de facteurs premiers, chaque nombre premier apparaît avec un exposant au moins égal à $2$.

Par exemple $72 = 2^3 \times 3^2$ est intéressant, alors que $12 = 2^2 \times 3$ ne l'est pas, à cause du $3$ tout seul.

Combien existe-t-il de paires de nombres intéressants **consécutifs**, c'est-à-dire de couples $(N, N+1)$ où les deux nombres sont intéressants ?

## Hints

1. Cherche d'abord une paire à la main. Les carrés et les cubes sont intéressants : regarde les petites puissances et vois si deux d'entre elles se suivent.
2. Tu devrais trouver $8 = 2^3$ et $9 = 3^2$. La question est maintenant : y en a-t-il d'autres, et combien ?
3. La réponse est : une infinité. Pour le démontrer, il suffit de savoir fabriquer une nouvelle paire à partir d'une paire connue, strictement plus grande.
4. Si $N$ et $N+1$ sont intéressants, considère $4N(N+1)$. Quel est son successeur ? Développe.
5. Pour montrer que $4N(N+1)$ est intéressant, prends un nombre premier $p$ qui le divise et sépare les cas $p = 2$, $p \mid N$, $p \mid N+1$.

## Solution

**Réponse : il en existe une infinité.**

**Étape 1. Deux remarques utiles.**

*Tout carré parfait est intéressant.* Si $N = m^2$ et si $p$ apparaît dans $m$ avec l'exposant $\alpha \geqslant 1$, il apparaît dans $N$ avec l'exposant $2\alpha \geqslant 2$.

*Une paire de départ.* $8 = 2^3$ et $9 = 3^2$ sont tous deux intéressants, et consécutifs.

**Étape 2. La fabrication d'une nouvelle paire.**

Supposons que $N$ et $N+1$ soient tous deux intéressants. Posons

$$M = 4N(N+1).$$

Alors

$$M + 1 = 4N^2 + 4N + 1 = (2N+1)^2.$$

Donc $M$ et $M+1$ sont consécutifs, et $M+1$ est un carré parfait, donc intéressant d'après l'étape 1.

Il reste à montrer que $M$ est intéressant.

**Étape 3. $M$ est intéressant.**

Soit $p$ un nombre premier divisant $M = 4N(N+1)$. Montrons que $p^2$ divise $M$.

*Cas $p = 2$.* Le facteur $4 = 2^2$ figure dans $M$, donc $2^2$ divise $M$.

*Cas $p$ impair divisant $N$.* Comme $N$ est intéressant, $p^2$ divise $N$, donc $p^2$ divise $M$.

*Cas $p$ impair divisant $N+1$.* Comme $N+1$ est intéressant, $p^2$ divise $N+1$, donc $p^2$ divise $M$.

Ces cas couvrent tout : un premier impair divisant $4N(N+1)$ divise $N$ ou $N+1$ (il ne peut pas diviser $4$). Donc chaque premier apparaît dans $M$ avec un exposant au moins $2$ : $M$ est intéressant.

**Étape 4. On conclut.**

Partons de la paire $(8, 9)$ et appliquons l'étape 2 encore et encore. Comme $N \geqslant 2$ entraîne

$$M = 4N(N+1) \;>\; N,$$

chaque application fournit une paire **strictement plus grande** que la précédente. On obtient donc une suite infinie de paires deux à deux distinctes.

**Conclusion.** Il existe une infinité de paires de nombres intéressants consécutifs.

**Les premières paires obtenues.** $(8, 9)$, puis $4 \times 8 \times 9 = 288$ et $289 = 17^2$ : en effet $288 = 2^5 \times 3^2$ est intéressant. Puis $4 \times 288 \times 289 = 332\,928$ et $332\,929 = 577^2$.

## Going further

Les nombres intéressants portent un nom en anglais : les *powerful numbers*, les nombres puissants. On montre facilement qu'un tel nombre s'écrit toujours sous la forme $a^2b^3$ avec $a$ et $b$ entiers : il suffit de mettre à part les premiers d'exposant pair et ceux d'exposant impair.

La construction ci-dessus est loin de fournir toutes les paires : les plus petites sont $(8,9)$, $(288,289)$, $(675,676)$, $(9800,9801)$, et notre suite en rate donc déjà. Savoir s'il existe **trois** entiers consécutifs tous intéressants est en revanche une question ouverte ; on conjecture que non, et cette conjecture découlerait de la conjecture $abc$, l'un des grands problèmes ouverts de l'arithmétique.

Un exercice pour t'entraîner : montre que $675 = 3^3 \times 5^2$ et $676 = 2^2 \times 13^2$ forment bien une paire, et cherche d'où elle peut venir.
