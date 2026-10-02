---
id: "8462"
title: "Des 4, des 8, et un carré parfait"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [repunit, ecriture-decimale, carre-parfait, identites-remarquables]
adapted_from: null
see_also: []
same_as: ["7509"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, la Muraille"
  reference: "Poly-2021-Valbonne.pdf, Muraille, exercice 24 (résolu par Arthur Tézé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On considère

- l'entier $A = \underbrace{44\ldots4}_{2n \text{ chiffres}}$, écrit avec $2n$ chiffres tous égaux à $4$ ;
- l'entier $B = \underbrace{88\ldots8}_{n \text{ chiffres}}$, écrit avec $n$ chiffres tous égaux à $8$.

Démontrer que $A + 2B + 4$ est toujours un carré parfait.

## Hints

1. Commence par le cas $n = 1$ : $A = 44$, $B = 8$. Combien vaut $A + 2B + 4$ ? Puis fais $n = 2$ : $A = 4444$, $B = 88$.
2. Un nombre écrit avec $k$ chiffres tous égaux à $1$ vaut $1 + 10 + 100 + \cdots + 10^{k-1}$. Sais-tu calculer cette somme ?
3. La somme $1 + 10 + \cdots + 10^{k-1}$ vaut $\dfrac{10^{k} - 1}{9}$. Exprime $A$ et $B$ de cette façon, puis développe $A + 2B + 4$.
4. Tu vas tomber sur $\dfrac{4}{9}\left(10^{2n} + 4 \times 10^{n} + 4\right)$. Reconnais-tu une identité remarquable dans la parenthèse ?
5. Il restera à justifier que le nombre obtenu est bien un **entier**, donc que $3$ divise $10^{n} + 2$.

## Solution

### Étape 1. Regarder les premiers cas

Pour $n = 1$ : $A = 44$, $B = 8$, donc

$$A + 2B + 4 = 44 + 16 + 4 = 64 = 8^2.$$

Pour $n = 2$ : $A = 4444$, $B = 88$, donc

$$A + 2B + 4 = 4444 + 176 + 4 = 4624 = 68^2.$$

On devine déjà la forme des racines : $8$, puis $68$. Voyons pourquoi.

### Étape 2. Écrire $A$ et $B$ avec des puissances de 10

Le nombre formé de $k$ chiffres $1$ vaut

$$\underbrace{11\ldots1}_{k} = 1 + 10 + 10^2 + \cdots + 10^{k-1} = \frac{10^{k} - 1}{9},$$

par la formule de la somme d'une suite géométrique (on peut aussi le vérifier en multipliant : $9 \times 11\ldots1 = 99\ldots9 = 10^k - 1$).

Donc

$$A = 4 \times \frac{10^{2n} - 1}{9}, \qquad B = 8 \times \frac{10^{n} - 1}{9}.$$

### Étape 3. Développer

$$A + 2B + 4 = \frac{4\left(10^{2n} - 1\right)}{9} + \frac{16\left(10^{n} - 1\right)}{9} + 4.$$

Mettons tout sur le dénominateur $9$ :

$$A + 2B + 4 = \frac{4 \times 10^{2n} - 4 + 16 \times 10^{n} - 16 + 36}{9} = \frac{4 \times 10^{2n} + 16 \times 10^{n} + 16}{9}.$$

Les trois termes du numérateur ont $4$ en facteur :

$$A + 2B + 4 = \frac{4}{9}\left(10^{2n} + 4 \times 10^{n} + 4\right).$$

### Étape 4. L'identité remarquable

Posons $X = 10^{n}$. La parenthèse vaut $X^2 + 4X + 4 = (X+2)^2$. Donc

$$A + 2B + 4 = \frac{4}{9}\left(10^{n} + 2\right)^2 = \left(\frac{2\left(10^{n} + 2\right)}{3}\right)^2.$$

### Étape 5. C'est bien le carré d'un entier

Il reste à vérifier que $\dfrac{2\left(10^{n}+2\right)}{3}$ est un entier, c'est-à-dire que $3$ divise $10^{n} + 2$.

Or $10 \equiv 1 \pmod 3$, donc $10^{n} \equiv 1 \pmod 3$, et

$$10^{n} + 2 \equiv 1 + 2 = 3 \equiv 0 \pmod 3.$$

Donc $3$ divise $10^{n}+2$, et le nombre

$$N = \frac{2\left(10^{n} + 2\right)}{3}$$

est un entier. On a montré que

$$\boxed{A + 2B + 4 = N^2.}$$

## Going further

À quoi ressemble $N$ en écriture décimale ? Pour $n = 1$, $N = \dfrac{2 \times 12}{3} = 8$. Pour $n = 2$, $N = \dfrac{2 \times 102}{3} = 68$. Pour $n = 3$, $N = \dfrac{2 \times 1002}{3} = 668$, et pour $n = 4$, $N = 6668$.

La règle apparaît : $N$ s'écrit avec $n - 1$ chiffres $6$ suivis d'un $8$. On peut le démontrer en écrivant

$$N = \frac{2 \times 10^{n} + 4}{3} = \frac{2\left(10^{n} - 1\right)}{3} + 2 = 6 \times \underbrace{11\ldots1}_{n} + 2 = \underbrace{66\ldots6}_{n} + 2,$$

et l'addition de $2$ change le dernier $6$ en $8$ sans retenue.

Le même genre de calcul permet de traiter beaucoup d'énoncés où des nombres « tout en chiffres identiques » apparaissent : on les remplace systématiquement par $\dfrac{c\left(10^{k}-1\right)}{9}$, et l'exercice redevient un simple calcul algébrique.
