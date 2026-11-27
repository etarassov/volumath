---
id: "40128"
title: "Peu d'entiers s'écrivent avec quelques nombres premiers"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [logarithme, partie-entiere, denombrement, encadrement, integrale, recurrence, decomposition-en-facteurs-premiers, probabilite, logarithme-discret]
adapted_from: null
see_also: ["40126", "40127"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2005, mathématiques, série S"
  reference: "cg-2005-s-sujet.pdf, exercice 4, partie II « Calcul du logarithme discret par la méthode d'Adleman », question 5. Le résultat de la question 4 a est admis en préambule, et la généralisation demandée en 5 d est énoncée explicitement."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2005.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2005-s-sujet.pdf"
---

## Statement

**Le contexte.** Soit $p$ un nombre premier. Pour un entier naturel $N$, on note $(N \bmod p)$ le
reste de la division euclidienne de $N$ par $p$. On fixe une racine primitive $g$ modulo $p$ (un entier dont les puissances ont pour restes
modulo $p$ tous les entiers $1, \ldots, p - 1$) et un entier $A \in \{1, \ldots, p - 1\}$, et l'on admet (c'est l'objet d'une partie précédente) que :

> quand $s$ parcourt $\{0, 1, \ldots, p - 2\}$, le reste $(g^s A \bmod p)$ prend chacune des
> valeurs $1, 2, \ldots, p - 1$ exactement une fois.

Pour calculer un « logarithme discret » par la méthode d'Adleman, on choisit des nombres premiers
distincts $p_1, \ldots, p_n$, tous inférieurs à $p$, et l'on cherche un entier $s$ tel que
$(g^s A \bmod p)$ n'ait pas d'autres facteurs premiers que $p_1, \ldots, p_n$. On veut savoir si un
$s$ choisi au hasard a de bonnes chances de convenir.

On choisit $s$ au hasard dans $\{0, 1, \ldots, p - 2\}$, toutes les valeurs étant équiprobables. On
note $L = \ln(p - 1)$, et $\lfloor x \rfloor$ la partie entière d'un réel $x$.

1. a) Combien d'entiers de $\{1, \ldots, p - 1\}$ sont une puissance de $p_1$ (on compte
   $p_1^0 = 1$) ?

   b) En déduire la probabilité que $(g^s A \bmod p)$ soit une puissance de $p_1$.

2. Montrer que la probabilité $P$ que $(g^s A \bmod p)$ s'écrive sous la forme $p_1^\alpha p_2^\beta$,
   avec $\alpha$ et $\beta$ entiers naturels, vérifie
   $$\frac{L^2}{2(p - 1)\ln p_1 \ln p_2} \leq P \leq \frac{1}{p - 1}\left(\frac{L}{\ln p_1} + 1\right)\left(\frac{L}{\ln p_2} + 1\right).$$

3. Généraliser au cas de $n$ nombres premiers : montrer que la probabilité $P_n$ que
   $(g^s A \bmod p)$ s'écrive $p_1^{\alpha_1} \cdots p_n^{\alpha_n}$, avec des entiers naturels
   $\alpha_i$, vérifie
   $$\frac{L^n}{n!\,(p - 1)\ln p_1 \cdots \ln p_n} \leq P_n \leq \frac{1}{p - 1}\left(\frac{L}{\ln p_1} + 1\right) \cdots \left(\frac{L}{\ln p_n} + 1\right).$$

## Hints

1. **Question 1a.** $p_1^k \leq p - 1$ équivaut à $k \leq \frac{L}{\ln p_1}$. Combien y a-t-il
   d'entiers $k$ entre $0$ et un réel $x \geq 0$ ?
2. **Question 1b.** Grâce au résultat admis, le nombre de « bons » $s$ est égal au nombre de « bons »
   entiers de $\{1, \ldots, p - 1\}$.
3. **Question 2.** Il s'agit de compter les couples $(\alpha, \beta)$ d'entiers naturels tels que
   $\alpha\ln p_1 + \beta\ln p_2 \leq L$. Pour la majoration, borner $\alpha$ et $\beta$ séparément.
4. **Question 2.** Pour la minoration, compter, pour chaque $\beta$, les $\alpha$ possibles, et
   utiliser $\lfloor y \rfloor + 1 \geq y$. Comparer ensuite la somme obtenue à une intégrale, en
   remarquant que la fonction sommée est décroissante.
5. **Question 2.** Interprétation géométrique : on compte les points à coordonnées entières d'un
   triangle. Quelle est son aire ?
6. **Question 3.** Démontrer la minoration par récurrence sur $n$, en classant les $n$-uplets selon
   la valeur du dernier exposant.

## Solution

Notons $l_i = \ln p_i > 0$ (car $p_i \geq 2$). Comme la fonction $\ln$ est strictement croissante,
pour des entiers naturels $\alpha_1, \ldots, \alpha_n$,
$$p_1^{\alpha_1} \cdots p_n^{\alpha_n} \leq p - 1 \iff \alpha_1 l_1 + \cdots + \alpha_n l_n \leq L.$$
Par ailleurs, d'après le résultat admis, le nombre de valeurs de $s$ pour lesquelles
$(g^s A \bmod p)$ a une propriété donnée est égal au nombre d'entiers de $\{1, \ldots, p - 1\}$ qui
ont cette propriété. Chaque probabilité cherchée est donc ce nombre divisé par $p - 1$.

**1a.** Les puissances de $p_1$ sont deux à deux distinctes, et $p_1^k \leq p - 1$ équivaut à
$k \leq \frac{L}{l_1}$. Les entiers $k$ qui conviennent sont $0, 1, \ldots, \left\lfloor \frac{L}{l_1} \right\rfloor$.

**Conclusion :** il y a $\left\lfloor \frac{\ln(p - 1)}{\ln p_1} \right\rfloor + 1$ puissances de
$p_1$ dans $\{1, \ldots, p - 1\}$.

**1b.** La probabilité cherchée vaut
$$\frac{1}{p - 1}\left(\left\lfloor \frac{\ln(p - 1)}{\ln p_1} \right\rfloor + 1\right).$$
Par exemple, pour $p = 53$ et $p_1 = 2$, il y a $6$ puissances de $2$ ($1, 2, 4, 8, 16, 32$), et la
probabilité vaut $\frac{6}{52} \approx \text{0,12}$.

**2.** D'après l'unicité de la décomposition en facteurs premiers, deux couples $(\alpha, \beta)$
différents donnent deux entiers $p_1^\alpha p_2^\beta$ différents. Le nombre $N$ d'entiers de
$\{1, \ldots, p - 1\}$ de la forme $p_1^\alpha p_2^\beta$ est donc le nombre de couples d'entiers
naturels $(\alpha, \beta)$ tels que $\alpha l_1 + \beta l_2 \leq L$, et $P = \frac{N}{p - 1}$.

*Majoration.* Pour un tel couple, $\alpha l_1 \leq L$ et $\beta l_2 \leq L$. Donc $\alpha$ prend au
plus $\left\lfloor \frac{L}{l_1} \right\rfloor + 1$ valeurs et $\beta$ au plus
$\left\lfloor \frac{L}{l_2} \right\rfloor + 1$, d'où
$$N \leq \left(\left\lfloor \frac{L}{l_1} \right\rfloor + 1\right)\left(\left\lfloor \frac{L}{l_2} \right\rfloor + 1\right) \leq \left(\frac{L}{l_1} + 1\right)\left(\frac{L}{l_2} + 1\right).$$

*Minoration.* Notons $K = \left\lfloor \frac{L}{l_2} \right\rfloor$. Pour $\beta \in \{0, \ldots, K\}$
fixé, les $\alpha$ qui conviennent sont les entiers de $0$ à
$\left\lfloor \frac{L - \beta l_2}{l_1} \right\rfloor$ ; il y en a
$\left\lfloor \frac{L - \beta l_2}{l_1} \right\rfloor + 1 \geq \frac{L - \beta l_2}{l_1}$. Donc
$$N \geq \sum_{\beta = 0}^{K} \varphi(\beta), \qquad \text{où} \quad \varphi(t) = \frac{L - t\,l_2}{l_1}.$$
La fonction $\varphi$ est décroissante et positive sur $\left[0, \frac{L}{l_2}\right]$. Pour chaque
$\beta \in \{0, \ldots, K\}$, notons $I_\beta$ l'intervalle $[\beta, \beta + 1] \cap \left[0, \frac{L}{l_2}\right]$,
de longueur au plus $1$. Sur $I_\beta$, on a $0 \leq \varphi(t) \leq \varphi(\beta)$, donc
$$\int_{I_\beta} \varphi(t)\,\mathrm{d}t \leq \varphi(\beta).$$
Comme $K + 1 > \frac{L}{l_2}$, les intervalles $I_0, \ldots, I_K$ recouvrent $\left[0, \frac{L}{l_2}\right]$
sans se chevaucher (sinon en un point). En sommant :
$$N \geq \int_0^{L/l_2} \frac{L - t\,l_2}{l_1}\,\mathrm{d}t = \frac{1}{l_1}\left[Lt - \frac{l_2 t^2}{2}\right]_0^{L/l_2} = \frac{1}{l_1}\left(\frac{L^2}{l_2} - \frac{L^2}{2l_2}\right) = \frac{L^2}{2\,l_1 l_2}.$$
En divisant par $p - 1$, on obtient l'encadrement demandé.

*Interprétation géométrique.* $N$ est le nombre de points à coordonnées entières du triangle
$\{x \geq 0,\ y \geq 0,\ x\,l_1 + y\,l_2 \leq L\}$, dont l'aire est $\frac{L^2}{2\,l_1 l_2}$. Si l'on
attache à chaque point entier $(\alpha, \beta)$ du triangle le carré
$[\alpha, \alpha + 1[ \times [\beta, \beta + 1[$, ces carrés recouvrent le triangle : pour un point
$(x, y)$ du triangle, le point $(\lfloor x \rfloor, \lfloor y \rfloor)$ est encore dans le triangle.
Donc le nombre de carrés, $N$, est au moins égal à l'aire.

*Exemple.* Pour $p = 53$, $p_1 = 2$, $p_2 = 5$, on a $N = 12$ et $P = \frac{12}{52} \approx \text{0,23}$,
tandis que l'encadrement donne environ $\text{0,13} \leq P \leq \text{0,45}$.

**3.** Pour $L \geq 0$ et des réels $l_1, \ldots, l_n > 0$, notons $N_n(L)$ le nombre de $n$-uplets
d'entiers naturels $(\alpha_1, \ldots, \alpha_n)$ tels que $\alpha_1 l_1 + \cdots + \alpha_n l_n \leq L$.
Comme à la question 2, $P_n = \frac{N_n(L)}{p - 1}$ avec $L = \ln(p - 1)$ et $l_i = \ln p_i$.

*Majoration.* Chaque $\alpha_i$ vérifie $\alpha_i l_i \leq L$, donc prend au plus
$\left\lfloor \frac{L}{l_i} \right\rfloor + 1 \leq \frac{L}{l_i} + 1$ valeurs, et $N_n(L)$ est au plus
le produit de ces nombres.

*Minoration.* Montrons par récurrence sur $n \geq 1$ la propriété : pour tout $L \geq 0$ et tous
$l_1, \ldots, l_n > 0$,
$$N_n(L) \geq \frac{L^n}{n!\; l_1 \cdots l_n}.$$

- Pour $n = 1$ : $N_1(L) = \left\lfloor \frac{L}{l_1} \right\rfloor + 1 \geq \frac{L}{l_1}$.
- Supposons la propriété vraie au rang $n$, et soit $l = l_{n+1}$, $K = \left\lfloor \frac{L}{l} \right\rfloor$.
  Classons les $(n+1)$-uplets selon la valeur $k$ du dernier exposant, qui va de $0$ à $K$. Pour $k$
  fixé, les $n$ premiers exposants doivent vérifier $\alpha_1 l_1 + \cdots + \alpha_n l_n \leq L - kl$,
  avec $L - kl \geq 0$. Donc, avec l'hypothèse de récurrence,
  $$N_{n+1}(L) = \sum_{k=0}^{K} N_n(L - kl) \geq \frac{1}{n!\; l_1 \cdots l_n} \sum_{k=0}^{K} (L - kl)^n.$$
  La fonction $t \mapsto (L - tl)^n$ est décroissante et positive sur $\left[0, \frac{L}{l}\right]$.
  Le même argument qu'à la question 2 donne
  $$\sum_{k=0}^{K} (L - kl)^n \geq \int_0^{L/l} (L - tl)^n\,\mathrm{d}t = \left[-\frac{(L - tl)^{n+1}}{(n+1)\,l}\right]_0^{L/l} = \frac{L^{n+1}}{(n+1)\,l}.$$
  D'où $N_{n+1}(L) \geq \frac{L^{n+1}}{(n+1)!\; l_1 \cdots l_n\, l_{n+1}}$ : la propriété est vraie au
  rang $n + 1$.

En divisant par $p - 1$ :
$$\frac{(\ln(p-1))^n}{n!\,(p - 1)\ln p_1 \cdots \ln p_n} \leq P_n \leq \frac{1}{p - 1}\prod_{i=1}^{n}\left(\frac{\ln(p-1)}{\ln p_i} + 1\right).$$
Pour $n = 2$, on retrouve la question 2.

**Bilan.** La proportion d'entiers de $\{1, \ldots, p - 1\}$ qui ne s'écrivent qu'avec les nombres
premiers $p_1, \ldots, p_n$ est comprise entre deux expressions de l'ordre de
$\frac{(\ln p)^n}{p}$. On les obtient en comptant des points à coordonnées entières sous un plan
incliné, majorés par un pavé et minorés par une intégrale. C'est cette proportion qui dit combien
d'essais en moyenne demande la méthode d'Adleman.

## Going further

- Le nombre moyen d'essais avant le premier succès, quand chaque essai réussit avec la probabilité
  $P$, est $\frac{1}{P}$. Pour $p$ grand et $n$ fixé, l'encadrement montre que ce nombre d'essais
  est de l'ordre de $\frac{p}{(\ln p)^n}$, à peine mieux que les $p$ essais de la méthode naïve. Pour
  gagner vraiment, il faut faire grandir $n$ avec $p$ : c'est ce que font les vraies versions de la
  méthode.
- Pour $p = 101$, $p_1 = 2$, $p_2 = 3$, $p_3 = 5$, compter les entiers de $\{1, \ldots, 100\}$ de la
  forme $2^\alpha 3^\beta 5^\gamma$ et comparer avec l'encadrement de la question 3.
