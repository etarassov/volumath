---
id: "0679"
title: "Un produit de cinquante fractions"
grade: 9
theme: algebra
difficulty: 5
duration_min: 40
tags: [inegalite, fractions, produit, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 17"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Démontrer que

$$\frac{1}{2} \times \frac{3}{4} \times \frac{5}{6} \times \ldots \times \frac{99}{100} < \frac{1}{10}.$$

Le produit contient $50$ fractions : au numérateur tous les nombres impairs de $1$ à $99$, au dénominateur tous les nombres pairs de $2$ à $100$.

## Hints

1. Essayer de calculer le produit ne mène nulle part : il ne se simplifie pas. Il faut le comparer à autre chose.
2. Appelle $P$ ce produit et considère le produit « décalé d'un cran »
   $$Q = \frac{2}{3} \times \frac{4}{5} \times \frac{6}{7} \times \ldots \times \frac{100}{101}.$$
   Compare $P$ et $Q$ facteur par facteur.
3. Compare $\frac{1}{2}$ et $\frac{2}{3}$, puis $\frac{3}{4}$ et $\frac{4}{5}$. Que remarques-tu ? Essaie de le démontrer en général pour $\frac{2k-1}{2k}$ et $\frac{2k}{2k+1}$.
4. Maintenant calcule le produit $P \times Q$. Écris tous les numérateurs et tous les dénominateurs à la suite : presque tout disparaît.
5. Tu obtiens $P < Q$ et $P \times Q = \frac{1}{101}$. Que peux-tu dire de $P^2$ ?

## Solution

Notons

$$P = \frac{1}{2} \times \frac{3}{4} \times \frac{5}{6} \times \ldots \times \frac{99}{100}
\qquad \text{et} \qquad
Q = \frac{2}{3} \times \frac{4}{5} \times \frac{6}{7} \times \ldots \times \frac{100}{101}.$$

Ces deux produits ont chacun $50$ facteurs. Le $k$-ième facteur de $P$ est $\dfrac{2k-1}{2k}$ et le $k$-ième facteur de $Q$ est $\dfrac{2k}{2k+1}$, pour $k$ allant de $1$ à $50$.

**Étape 1. Chaque facteur de $P$ est plus petit que le facteur correspondant de $Q$.**

Comparons $\dfrac{2k-1}{2k}$ et $\dfrac{2k}{2k+1}$. Les deux dénominateurs sont positifs, donc comparer ces fractions revient à comparer les produits en croix :

$$(2k-1)(2k+1) = 4k^2 - 1 \qquad \text{et} \qquad 2k \times 2k = 4k^2.$$

Comme $4k^2 - 1 < 4k^2$, on en déduit

$$\frac{2k-1}{2k} < \frac{2k}{2k+1} \qquad \text{pour tout } k \geq 1.$$

**Étape 2. Donc $P < Q$.**

Tous les facteurs sont des nombres strictement positifs. En multipliant $50$ inégalités entre nombres positifs, le sens se conserve : $P < Q$.

**Étape 3. Le produit $P \times Q$ se simplifie entièrement.**

Écrivons $P \times Q$ en mettant tous les numérateurs ensemble et tous les dénominateurs ensemble. Les numérateurs sont $1, 3, 5, \ldots, 99$ (venant de $P$) et $2, 4, 6, \ldots, 100$ (venant de $Q$) : ensemble, ce sont tous les entiers de $1$ à $100$. Les dénominateurs sont $2, 4, 6, \ldots, 100$ (venant de $P$) et $3, 5, 7, \ldots, 101$ (venant de $Q$) : ensemble, ce sont tous les entiers de $2$ à $101$. Donc

$$P \times Q = \frac{1 \times 2 \times 3 \times \ldots \times 100}{2 \times 3 \times 4 \times \ldots \times 101} = \frac{1}{101},$$

car tous les facteurs de $2$ à $100$ se simplifient.

**Étape 4. Conclure.**

Comme $P$ est strictement positif et $P < Q$, on peut multiplier cette inégalité par $P$ :

$$P^2 < P \times Q = \frac{1}{101}.$$

Or $\dfrac{1}{101} < \dfrac{1}{100}$, donc $P^2 < \dfrac{1}{100} = \left(\dfrac{1}{10}\right)^2$. Les deux nombres $P$ et $\dfrac{1}{10}$ étant positifs, on en déduit

$$P < \frac{1}{10}.$$

**Conclusion.** L'inégalité demandée est démontrée. (À titre indicatif, une machine donne $P \approx \text{0,0796}$, bien en dessous de 0,1 ; mais aucun calcul de ce genre n'est nécessaire ici.)

## Going further

1. La même méthode donne aussi une minoration. Compare $P$ au produit
   $$R = \frac{1}{2} \times \frac{2}{3} \times \frac{4}{5} \times \frac{6}{7} \times \ldots \times \frac{98}{99},$$
   qui a lui aussi $50$ facteurs. Montre que $P > R$, que $P \times R = \frac{1}{200}$, et déduis-en $P > \frac{1}{15}$.
2. Démontrer de la même façon que $\frac{1}{2} \times \frac{3}{4} \times \ldots \times \frac{2n-1}{2n} < \frac{1}{\sqrt{2n+1}}$ pour tout entier $n \geq 1$.
