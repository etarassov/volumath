---
id: "13428"
title: "2ⁿ et 5ⁿ commencent par le même chiffre"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [puissances, chiffres, encadrement, puissances-de-dix]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 6 (et épreuve lycée, exercice 12) ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

Pour un entier $m$ strictement positif, on appelle **premier chiffre** de $m$ le chiffre le plus à gauche de son écriture décimale. Par exemple, le premier chiffre de $2023$ est $2$.

Soit $n$ un entier strictement positif. On suppose que les deux nombres $2^n$ et $5^n$ ont le même premier chiffre. Montrer que ce premier chiffre est $3$.

## Hints

1. Vérifie l'énoncé pour $n = 5$. Que vaut le produit $2^n \times 5^n$ ?
2. Si un entier $N$ a pour premier chiffre $a$ et s'écrit avec $k + 1$ chiffres, encadre $N$ entre deux nombres qui s'écrivent avec $a$ et $10^k$.
3. Écris cet encadrement pour $2^n$ et pour $5^n$, puis multiplie les deux encadrements.
4. Tu obtiens qu'une puissance de $10$ est strictement comprise entre $a^2$ et $(a + 1)^2$. Laquelle ? Qu'en déduis-tu pour $a$ ?

## Solution

On note $a$ le premier chiffre commun de $2^n$ et de $5^n$. C'est un chiffre entre $1$ et $9$.

**Encadrer un nombre grâce à son premier chiffre.** Si un entier $N$ s'écrit avec $k + 1$ chiffres et que son premier chiffre est $a$, alors $N$ s'écrit $a$ suivi de $k$ chiffres. Le plus petit nombre de cette forme est $a00\ldots0 = a \times 10^k$, et le plus grand est $a99\ldots9 = (a + 1) \times 10^k - 1$. Donc

$$a \times 10^k \leqslant N < (a + 1) \times 10^k.$$

Par exemple, $3125$ a pour premier chiffre $3$ et s'écrit avec $4$ chiffres, et l'on a bien $3 \times 10^3 \leqslant 3125 < 4 \times 10^3$.

**Les deux encadrements.** Il existe donc deux entiers $k \geqslant 0$ et $\ell \geqslant 0$ tels que

$$a \times 10^k \leqslant 2^n < (a + 1) \times 10^k \qquad \text{et} \qquad a \times 10^\ell \leqslant 5^n < (a + 1) \times 10^\ell.$$

On peut rendre la deuxième inégalité de gauche stricte.

- Si $n = 1$, alors $2^1 = 2$ et $5^1 = 5$ n'ont pas le même premier chiffre. Donc $n \geqslant 2$, et $5^n \geqslant 25$ a au moins deux chiffres : $\ell \geqslant 1$.
- Alors $a \times 10^\ell$ est pair, car $10^\ell$ l'est, alors que $5^n$ est impair. Ces deux nombres ne sont donc pas égaux, et $a \times 10^\ell < 5^n$.

**On multiplie.** Tous les nombres sont positifs. Quand on multiplie membre à membre deux encadrements de nombres positifs, on obtient encore un encadrement, et une inégalité stricte d'un côté donne une inégalité stricte dans le produit. Comme $2^n \times 5^n = 10^n$, on obtient

$$a^2 \times 10^{k + \ell} < 10^n < (a + 1)^2 \times 10^{k + \ell}.$$

En divisant par $10^{k + \ell}$, et en notant $e = n - k - \ell$, qui est un entier,

$$a^2 < 10^e < (a + 1)^2.$$

**Quelle puissance de $10$ ?** D'un côté, $a \geqslant 1$, donc $10^e > a^2 \geqslant 1$, et donc $e \geqslant 1$. De l'autre, $a \leqslant 9$, donc $10^e < (a + 1)^2 \leqslant 10^2 = 100$, et donc $e \leqslant 1$. Ainsi $e = 1$, et

$$a^2 < 10 < (a + 1)^2.$$

**Quel chiffre ?** Comme $a^2 < 10$, on a $a \leqslant 3$, car $4^2 = 16$ est trop grand. Comme $(a + 1)^2 > 10$, on a $a + 1 \geqslant 4$, car $3^2 = 9$ est trop petit. Donc $a = 3$.

**Conclusion.** Si $2^n$ et $5^n$ ont le même premier chiffre, ce chiffre est $3$.

*Ce cas arrive vraiment.* Pour $n = 5$, on a $2^5 = 32$ et $5^5 = 3125$, qui commencent tous les deux par $3$.

## Going further

On donne $2^{15} = 32\,768$. Sans calculer $5^{15}$, mais en utilisant $2^{15} \times 5^{15} = 10^{15}$, montrer que $5^{15}$ commence lui aussi par le chiffre $3$.
