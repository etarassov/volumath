---
id: "8161"
title: "Les cinquante premières décimales d'une grosse puissance"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [conjugue, binome-de-newton, decimales, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 69 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Quels sont les cinquante premiers chiffres après la virgule du nombre

$$\left(10 + \sqrt{101}\right)^{40} \ ?$$

## Hints

1. Une calculatrice ne sert à rien ici : le nombre a une quarantaine de chiffres avant la virgule. Il faut ruser.
2. Le nombre $\sqrt{101} - 10$ est tout petit. Calcule son produit avec $10 + \sqrt{101}$.
3. Que se passe-t-il si on additionne $\left(10+\sqrt{101}\right)^{40}$ et $\left(10-\sqrt{101}\right)^{40}$ ? Développe les deux avec la formule du binôme et regarde ce qui survit.
4. Tu obtiens que $\left(10+\sqrt{101}\right)^{40}$ est un entier auquel on a retranché un tout petit nombre. Majore ce petit nombre.
5. Pour la majoration : $\sqrt{101} < \text{10,05}$, donc $\sqrt{101} - 10 < \dfrac{1}{20}$. Que vaut $20^{40}$ comparé à $10^{52}$ ?

## Solution

Posons

$$\alpha = 10 + \sqrt{101} \qquad \text{et} \qquad \beta = \sqrt{101} - 10 .$$

**Un entier caché.**

D'abord, $\alpha\beta = \left(\sqrt{101}\right)^2 - 10^2 = 101 - 100 = 1$, donc $\beta = \dfrac{1}{\alpha}$ : c'est un nombre strictement positif et très petit.

Ensuite, remarquons que $10 - \sqrt{101} = -\beta$, et calculons

$$N = \alpha^{40} + \left(10 - \sqrt{101}\right)^{40} = \alpha^{40} + \beta^{40}$$

(l'exposant $40$ est pair, donc $(-\beta)^{40} = \beta^{40}$).

Développons les deux puissances par la formule du binôme :

$$\left(10 + \sqrt{101}\right)^{40} = \sum_{k=0}^{40} \binom{40}{k} 10^{\,40-k} \left(\sqrt{101}\right)^{k},
\qquad
\left(10 - \sqrt{101}\right)^{40} = \sum_{k=0}^{40} \binom{40}{k} 10^{\,40-k} (-1)^k \left(\sqrt{101}\right)^{k} .$$

En additionnant, les termes d'indice $k$ impair se détruisent et ceux d'indice $k$ pair doublent :

$$N = 2\sum_{\substack{k=0 \\ k \text{ pair}}}^{40} \binom{40}{k} 10^{\,40-k}\, 101^{\,k/2} .$$

Chaque terme est un entier, donc **$N$ est un entier**, et

$$\alpha^{40} = N - \beta^{40} .$$

**Le petit nombre est vraiment petit.**

On a $\text{10,05}^2 = \text{101,0025} > 101$, donc $\sqrt{101} < \text{10,05}$ et

$$0 < \beta = \sqrt{101} - 10 < \text{0,05} = \frac{1}{20} .$$

Par conséquent

$$0 < \beta^{40} < \frac{1}{20^{40}} .$$

Or $20^{40} = 2^{40} \times 10^{40}$ et $2^{40} = (2^{10})^4 = 1024^4 > 1000^4 = 10^{12}$. Donc

$$20^{40} > 10^{12} \times 10^{40} = 10^{52}, \qquad \text{d'où} \qquad 0 < \beta^{40} < 10^{-52} .$$

**Conclusion.**

$$\alpha^{40} = N - \beta^{40} = (N-1) + \left(1 - \beta^{40}\right) ,$$

et comme $0 < \beta^{40} < 10^{-52}$, on a

$$1 - 10^{-52} < 1 - \beta^{40} < 1 .$$

Le nombre $N-1$ est entier, donc la partie entière de $\alpha^{40}$ vaut $N-1$ et sa partie décimale vaut $1 - \beta^{40}$, un nombre strictement compris entre $\underbrace{\text{0,99}\ldots\text{9}}_{52 \text{ neufs}}$ et $1$.

Ses cinquante-deux premières décimales sont donc des $9$, et a fortiori :

$$\boxed{\ \text{les cinquante premiers chiffres après la virgule sont tous des } 9.\ }$$

## Going further

C'est le mécanisme général derrière les nombres de la forme $\left(p + \sqrt{q}\right)^m$ « presque entiers ». Il suffit que le conjugué $p - \sqrt{q}$ soit petit en valeur absolue : sa puissance $m$-ième devient minuscule, et la somme des deux puissances est un entier.

Le même raisonnement avec le nombre d'or $\varphi = \dfrac{1+\sqrt{5}}{2}$, dont le conjugué vaut $\dfrac{1-\sqrt 5}{2} \approx -\text{0,618}$, montre que $\varphi^m$ est très proche d'un entier dès que $m$ est grand : cet entier est le $m$-ième nombre de Lucas.
