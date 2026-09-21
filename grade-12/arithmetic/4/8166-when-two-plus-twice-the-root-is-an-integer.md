---
id: "8166"
title: "Quand 2 + 2√(28n² + 1) est un entier"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [carre-parfait, entiers-premiers-entre-eux, residus-quadratiques, equation-de-pell]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 94 (trois étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que si le nombre

$$2 + 2\sqrt{28n^2 + 1}$$

est un entier, alors c'est un carré parfait.

## Hints

1. Note $m$ cet entier. Que peux-tu dire de $m - 2$, puis de $\sqrt{28n^2+1}$ ?
2. Tu obtiens un entier $k$ avec $k^2 = 28n^2 + 1$. Quelle est la parité de $k$ ?
3. Écris $k = 2a+1$ et simplifie. Tu devrais trouver une égalité toute simple entre $a$, $a+1$ et $n$.
4. Exprime $m$ en fonction de $a$. Que faudrait-il démontrer sur $a+1$ ?
5. Les entiers $a$ et $a+1$ sont premiers entre eux, et leur produit vaut $7n^2$. Quel est le facteur $7$ ? Deux cas se présentent : élimine l'un des deux en regardant les carrés modulo $7$.

## Solution

Supposons que $m = 2 + 2\sqrt{28n^2+1}$ soit un entier.

**Étape 1 : une équation entière.**

Le nombre $m - 2 = 2\sqrt{28n^2+1}$ est un entier, appelons-le $M$. En élevant au carré,

$$M^2 = 4\left(28n^2+1\right) .$$

Donc $M^2$ est divisible par $4$, donc $M$ est pair : écrivons $M = 2k$ avec $k$ entier naturel. Alors

$$4k^2 = 4\left(28n^2+1\right), \qquad \text{donc} \qquad k^2 = 28n^2 + 1 ,$$

et

$$m = 2 + M = 2 + 2k .$$

**Étape 2 : $k$ est impair.**

$k^2 = 28n^2 + 1$ est impair, donc $k$ est impair. Écrivons $k = 2a + 1$ avec $a$ entier naturel. Alors

$$4a^2 + 4a + 1 = 28n^2 + 1, \qquad \text{donc} \qquad 4a(a+1) = 28n^2, \qquad \text{donc} \qquad a(a+1) = 7n^2 .$$

Par ailleurs

$$m = 2 + 2k = 2 + 2(2a+1) = 4a + 4 = 4(a+1) .$$

Comme $4 = 2^2$ est un carré, **il suffit de montrer que $a+1$ est un carré parfait.**

**Étape 3 : répartir le facteur $7$.**

Les entiers $a$ et $a+1$ sont consécutifs, donc premiers entre eux. Leur produit vaut $7n^2$.

Le nombre premier $7$ divise $a(a+1)$, donc il divise $a$ ou $a+1$, et pas les deux.

- *Premier cas : $7$ divise $a$.* Écrivons $a = 7a'$. Alors $7a'(a+1) = 7n^2$, donc $a'(a+1) = n^2$. Les entiers $a'$ et $a+1$ sont premiers entre eux (car $a'$ divise $a$), et leur produit est un carré : chacun des deux est donc un carré parfait. En particulier $a + 1 = v^2$, ce qu'on voulait.
- *Second cas : $7$ divise $a+1$.* Le même raisonnement, appliqué à $a+1 = 7b'$, donne $a \times b' = n^2$ avec $a$ et $b'$ premiers entre eux, donc $a$ est un carré parfait : $a = u^2$. Mais alors, puisque $7$ divise $a+1$,
  $$u^2 \equiv -1 \equiv 6 \pmod 7 .$$
  Or les carrés modulo $7$ sont $0^2 = 0$, $1^2 = 1$, $2^2 = 4$, $3^2 = 2$, $4^2 = 2$, $5^2 = 4$, $6^2 = 1$ : les seuls restes possibles sont $0$, $1$, $2$ et $4$. Le reste $6$ est impossible. **Ce cas ne se produit jamais.**

**Conclusion.**

On est donc toujours dans le premier cas, et $a + 1 = v^2$ pour un certain entier $v$. Alors

$$m = 4(a+1) = 4v^2 = (2v)^2 .$$

$$\boxed{\ 2 + 2\sqrt{28n^2+1},\ \text{lorsqu'il est entier, est le carré de } 2v \text{ où } a+1 = v^2.\ }$$

## Going further

Vérifions sur un exemple. Pour $n = 24$ : $28 \times 576 + 1 = 16129 = 127^2$, donc $k = 127$, $a = 63$, $a+1 = 64 = 8^2$, et

$$m = 2 + 2 \times 127 = 256 = 16^2 .$$

Tout concorde, avec $v = 8$ et $2v = 16$.

L'équation $k^2 - 28n^2 = 1$ est une équation de Pell : elle a une infinité de solutions, engendrées par la plus petite, $(k, n) = (127, 24)$. L'exercice dit que, pour chacune d'elles, le nombre $2+2k$ est automatiquement un carré.

Le point clé de la démonstration est une propriété très utile : si deux entiers premiers entre eux ont pour produit un carré parfait, alors chacun des deux est un carré parfait.
