---
id: "22049"
title: "Reconnaître un carré modulo p"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [nombres-premiers, congruences, carres-modulo-p, inverse-modulo-p, critere-d-euler, maths-expertes]
adapted_from: null
see_also: ["22048", "22052"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 11 (le corrigé de la source compte les solutions de x^((p−1)/2) ≡ 1 en factorisant des polynômes modulo p, ce qui dépasse le programme, et il écrit « A admet au plus (p − 1)/2 éléments » là où l'argument a besoin de « exactement (p − 1)/2 » ; la solution ci-dessous regroupe les facteurs de (p − 1)! deux par deux, comme pour le théorème de Wilson)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $p$ un nombre premier impair. On dit qu'un entier $n$ est un **carré modulo $p$** s'il existe un entier $a$ tel que $n \equiv a^2 \pmod{p}$.

Soit $n$ un entier qui n'est pas divisible par $p$. Montrer que
$$n \text{ est un carré modulo } p \quad \Longleftrightarrow \quad n^{(p-1)/2} \equiv 1 \pmod{p}.$$

## Hints

1. Testez avec $p = 7$ : quels sont les carrés modulo $7$ parmi $1, 2, \ldots, 6$ ? Calculez $n^3$ modulo $7$ pour chacun.
2. Montrez que, pour chaque $x$ entre $1$ et $p - 1$, il existe un unique $y$ entre $1$ et $p - 1$ tel que $xy \equiv n \pmod{p}$. On dit que $y$ est le partenaire de $x$.
3. Un nombre $x$ peut-il être son propre partenaire ? Cela dépend de ce que $n$ est un carré ou non.
4. Calculez le produit $(p-1)! = 1 \times 2 \times \cdots \times (p-1)$ en regroupant chaque nombre avec son partenaire. Faites-le aussi pour $n = 1$.

## Solution

On utilise le lemme de Gauss : si un nombre premier $p$ divise un produit $xy$ et ne divise pas $x$, alors il divise $y$. Tout au long de la solution, $x$ et $y$ désignent des entiers compris entre $1$ et $p - 1$.

**Étape 1 : chaque $x$ a un unique partenaire.** Fixons $x$. Les $p - 1$ produits $x \times 1, x \times 2, \ldots, x \times (p-1)$ ne sont pas divisibles par $p$ (lemme de Gauss), et deux d'entre eux ne sont jamais congrus : si $xi \equiv xj \pmod{p}$, alors $p$ divise $x\,(i-j)$, donc $i - j$, et comme $|i - j| < p$, on a $i = j$. Ces produits prennent donc chacun des restes $1, 2, \ldots, p - 1$ exactement une fois.

Comme $p$ ne divise pas $n$, le reste de $n$ est l'un d'eux. Il existe donc un unique $y$ tel que $xy \equiv n \pmod{p}$. On l'appelle le **partenaire** de $x$. Par symétrie, le partenaire de $y$ est $x$. Les nombres $1, 2, \ldots, p - 1$ se rangent donc en paires $\{x, y\}$ de partenaires, sauf ceux qui sont leur propre partenaire, c'est-à-dire ceux qui vérifient $x^2 \equiv n \pmod{p}$.

**Étape 2 : qui est son propre partenaire ?**

- Si $n$ n'est pas un carré modulo $p$, aucun $x$ ne vérifie $x^2 \equiv n$ : il n'y a que des paires.
- Si $n$ est un carré modulo $p$, choisissons $a$ entre $1$ et $p - 1$ tel que $a^2 \equiv n$ (on peut remplacer $a$ par son reste, qui n'est pas $0$ car $p$ ne divise pas $n$). Alors $x^2 \equiv n$ équivaut à $x^2 \equiv a^2$, c'est-à-dire $p$ divise $(x - a)(x + a)$, donc $p$ divise $x - a$ ou $x + a$. Cela donne $x = a$ ou $x = p - a$, et ces deux nombres sont bien leur propre partenaire. Ils sont distincts, car $a = p - a$ donnerait $p = 2a$, alors que $p$ est impair.

**Étape 3 : on calcule $(p-1)!$ de deux façons.** Notons $P = (p-1)! = 1 \times 2 \times \cdots \times (p-1)$, et regroupons ses facteurs par paires de partenaires. Chaque paire a un produit congru à $n$.

- Si $n$ n'est pas un carré modulo $p$, les $p - 1$ facteurs forment $\frac{p-1}{2}$ paires, donc
  $$P \equiv n^{(p-1)/2} \pmod{p}.$$
- Si $n \equiv a^2$ est un carré, les facteurs autres que $a$ et $p - a$ forment $\frac{p-3}{2}$ paires, et $a\,(p - a) = pa - a^2 \equiv -a^2 \equiv -n$. Donc
  $$P \equiv n^{(p-3)/2} \times (-n) = -\,n^{(p-1)/2} \pmod{p}.$$

**Étape 4 : le cas $n = 1$.** Le nombre $1 = 1^2$ est un carré. Le deuxième cas donne $P \equiv -\,1^{(p-1)/2} = -1 \pmod{p}$. C'est le théorème de Wilson : $(p-1)! \equiv -1 \pmod{p}$.

**Étape 5 : conclusion.** Revenons à un $n$ quelconque, non divisible par $p$.

- Si $n$ est un carré modulo $p$ : $-1 \equiv P \equiv -n^{(p-1)/2}$, donc $n^{(p-1)/2} \equiv 1 \pmod{p}$.
- Si $n$ n'est pas un carré modulo $p$ : $n^{(p-1)/2} \equiv P \equiv -1 \pmod{p}$. Or $-1 \not\equiv 1 \pmod{p}$, car $p \geq 3$ ne divise pas $2$. Donc $n^{(p-1)/2} \not\equiv 1 \pmod{p}$.

**Ainsi, $n$ est un carré modulo $p$ si et seulement si $n^{(p-1)/2} \equiv 1 \pmod{p}$.** On a même montré un peu plus : quand $n$ n'est pas un carré, $n^{(p-1)/2} \equiv -1 \pmod{p}$. C'est le critère d'Euler.

## Going further

1. En élevant au carré, en déduire que $n^{p-1} \equiv 1 \pmod{p}$ pour tout $n$ non divisible par $p$ : c'est le petit théorème de Fermat, obtenu ici sans l'utiliser.
2. Combien y a-t-il de carrés modulo $p$ parmi $1, 2, \ldots, p - 1$ ?
3. Pour quels nombres premiers $p$ le nombre $-1$ est-il un carré modulo $p$ ?
