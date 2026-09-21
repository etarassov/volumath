---
id: "8249"
title: "Une différence de deux très grandes puissances"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, congruences, chiffre des unites, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « TD d'arithmétique » (Éva Philippe, Rémi Lesbats), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Montrer que pour tout entier $a$, le nombre

$$a^{73} - a^{37}$$

est un multiple de $10$.

Autrement dit : $a^{73}$ et $a^{37}$ ont toujours le même chiffre des unités.

## Hints

1. Les exposants sont énormes, mais leur **différence** ne l'est pas tant que ça. Factorise.
2. $10 = 2 \times 5$, et $2$ et $5$ sont premiers entre eux. Il suffit donc de montrer
   séparément que le nombre est pair et qu'il est multiple de $5$.
3. Pour le facteur $2$ : sépare le cas $a$ pair et le cas $a$ impair. C'est immédiat dans les
   deux cas.
4. Pour le facteur $5$ : si $a$ n'est pas multiple de $5$, dresse la table des $a^4$ modulo $5$
   pour $a \equiv 1, 2, 3, 4$. Que remarques-tu ? Et $36$, c'est $4$ fois quoi ?

## Solution

**On factorise.**

$$a^{73} - a^{37} = a^{37}\left(a^{36} - 1\right) .$$

Comme $10 = 2 \times 5$ et que $2$ et $5$ sont premiers entre eux, il suffit de montrer que ce
nombre est à la fois un multiple de $2$ et un multiple de $5$.

**Le facteur 2.**

- Si $a$ est pair, alors $a^{37}$ est pair, donc le produit $a^{37}(a^{36}-1)$ est pair.
- Si $a$ est impair, alors $a^{36}$ est impair, donc $a^{36} - 1$ est pair, et le produit est
  encore pair.

Dans les deux cas, $a^{73} - a^{37}$ est **pair**.

**Le facteur 5.**

- Si $a$ est un multiple de $5$, alors $a^{37}$ l'est aussi, et le produit également.
- Sinon, $a$ laisse le reste $1$, $2$, $3$ ou $4$ dans la division par $5$. Dressons la table
  des puissances quatrièmes modulo $5$ :

| $a \bmod 5$ | $a^2 \bmod 5$ | $a^4 = (a^2)^2 \bmod 5$ |
|---|---|---|
| $1$ | $1$ | $1$ |
| $2$ | $4$ | $16 \equiv 1$ |
| $3$ | $9 \equiv 4$ | $16 \equiv 1$ |
| $4$ | $16 \equiv 1$ | $1$ |

Dans les quatre cas, $a^4 \equiv 1 \pmod 5$. Or $36 = 4 \times 9$, donc

$$a^{36} = \left(a^{4}\right)^{9} \equiv 1^{9} = 1 \pmod 5 ,$$

et par conséquent $a^{36} - 1 \equiv 0 \pmod 5$ : le facteur $a^{36}-1$ est un multiple de $5$.

Dans les deux cas, $a^{73} - a^{37}$ est un **multiple de $5$**.

**Conclusion.**

$a^{73} - a^{37}$ est divisible par $2$ et par $5$, qui sont premiers entre eux, donc il est
divisible par $10$.

$$\boxed{10 \ \text{divise} \ a^{73} - a^{37} \ \text{pour tout entier } a .}$$

En particulier $a^{73}$ et $a^{37}$ se terminent toujours par le même chiffre.

**Un exemple.** Pour $a = 3$ : le chiffre des unités de $3^n$ suit le cycle
$3, 9, 7, 1, 3, 9, 7, 1, \ldots$, de longueur $4$. Comme $73$ et $37$ laissent le même reste $1$
dans la division par $4$, les deux puissances finissent toutes deux par $3$.

## Going further

1. La table ci-dessus est un cas particulier du **petit théorème de Fermat** : si $p$ est premier
   et $p$ ne divise pas $a$, alors $a^{p-1} \equiv 1 \pmod p$. Vérifier la table pour $p = 7$.
2. Quel est le plus petit entier $d > 0$ tel que $10$ divise $a^{n+d} - a^{n}$ pour tout entier
   $a$ et tout $n \ge 1$ ?
3. Montrer de la même façon que $13$ divise $a^{73} - a^{25}$ pour tout entier $a$.
