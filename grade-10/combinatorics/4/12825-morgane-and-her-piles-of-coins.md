---
id: "12825"
title: "Morgane et ses piles de pièces"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [invariant, construction, puissances-de-deux, diviseurs, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection d'avril 2023"
  reference: "2023-09_Enonce-Test-4.pdf, test senior, exercice 6 ; corrigé 2023-09_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-4.pdf"
---

## Statement

Soit $n \geq 1$ un entier. Au départ, Morgane a devant elle $n$ piles qui contiennent chacune une seule pièce. Elle peut ensuite faire, autant de fois qu'elle le veut, l'opération suivante : elle choisit deux piles, prend le **même nombre** de pièces dans chacune des deux, et forme une nouvelle pile avec toutes les pièces qu'elle vient de prendre.

Par exemple, avec une pile de $5$ pièces et une pile de $3$ pièces, elle peut prendre $2$ pièces dans chacune : il reste des piles de $3$ et de $1$ pièces, et une nouvelle pile de $4$ pièces apparaît.

Déterminer, en fonction de $n$, le plus petit nombre de piles non vides que Morgane peut obtenir.

## Hints

1. Faites les petits cas : $n = 2, 3, 4, 5, 6, 7$. Pour quelles valeurs de $n$ arrive-t-on à une seule pile ?
2. Si Morgane prend toutes les pièces de deux piles de même taille, elle les fusionne. Si elle prend toutes les pièces d'une pile de $y$ pièces et autant dans une pile de $x \geq y$ pièces, elle passe des piles $x$ et $y$ aux piles $x - y$ et $2y$.
3. Pour montrer qu'une seule pile est parfois impossible, cherchez ce qui ne change pas : un nombre impair qui divise toutes les piles après une opération divise-t-il toutes les piles d'avant ?
4. Pour arriver à deux piles, écrivez $n$ comme une somme de puissances de $2$ différentes, par exemple $13 = 1 + 4 + 8$. Faites une pile pour chaque puissance, puis utilisez la plus grosse pile comme réserve pour faire grossir la plus petite.

## Solution

La réponse : Morgane peut arriver à **une seule pile si $n$ est une puissance de $2$** ($n = 1, 2, 4, 8, \ldots$), et à **deux piles au mieux sinon**.

Le nombre total de pièces ne change jamais : il vaut toujours $n$.

### Étape 1 : quand n est une puissance de 2

Prendre toutes les pièces de deux piles de même taille revient à les fusionner en une pile deux fois plus grosse. Si $n = 2^a$, Morgane fusionne ses $n$ piles de $1$ pièce deux par deux, et obtient $2^{a-1}$ piles de $2$ pièces. Elle les fusionne à nouveau deux par deux, et obtient $2^{a-2}$ piles de $4$ pièces. Après $a$ étapes, il ne reste qu'une pile de $2^a = n$ pièces.

Plus généralement, Morgane peut regrouper n'importe quel paquet de $2^b$ piles de $1$ pièce en une seule pile de $2^b$ pièces. On s'en servira à l'étape 3.

### Étape 2 : sinon, une seule pile est impossible

Montrons la propriété suivante, valable à chaque instant :

> **(Q)** Le seul nombre impair qui divise le nombre de pièces de chacune des piles non vides est $1$.

Au départ, toutes les piles contiennent $1$ pièce, et (Q) est vraie.

Supposons (Q) vraie avant une opération, et montrons-la après. Morgane prend $k$ pièces dans deux piles de $x$ et $y$ pièces : celles-ci deviennent des piles de $x - k$ et $y - k$ pièces (éventuellement vides), et une pile de $2k$ pièces apparaît. Les autres piles ne bougent pas.

Soit $d$ un nombre impair qui divise toutes les piles non vides après l'opération. Il divise $2k$, donc il divise $k$. En effet, si $2k = dq$, le produit $dq$ est pair alors que $d$ est impair, donc $q$ est pair, et $k = d \times \frac{q}{2}$. Il divise aussi $x - k$ (si cette pile est vide, $x - k = 0$ est un multiple de $d$), donc il divise $x = (x - k) + k$. De même, il divise $y$. Enfin il divise les piles qui n'ont pas bougé. Donc $d$ divisait toutes les piles avant l'opération, et d'après (Q), $d = 1$. La propriété (Q) reste vraie après l'opération.

Supposons maintenant que Morgane arrive à une seule pile. Elle contient les $n$ pièces. Écrivons $n = 2^a \times y$ avec $y$ impair. Le nombre impair $y$ divise l'unique pile, donc $y = 1$ d'après (Q), et $n = 2^a$ est une puissance de $2$.

**Si $n$ n'est pas une puissance de $2$, Morgane ne peut pas arriver à une seule pile.**

### Étape 3 : on peut toujours arriver à deux piles

Supposons que $n$ n'est pas une puissance de $2$. Tout entier $n \geq 1$ est une somme de puissances de $2$ toutes différentes : on retire de $n$ la plus grande puissance de $2$ inférieure ou égale à $n$, et on recommence avec ce qui reste. Écrivons donc

$$n = 2^{e_1} + 2^{e_2} + \cdots + 2^{e_k}, \qquad e_1 < e_2 < \cdots < e_k.$$

Comme $n$ n'est pas une puissance de $2$, on a $k \geq 2$. Si $k = 2$, Morgane forme une pile de $2^{e_1}$ pièces et une pile de $2^{e_2}$ pièces avec la méthode de l'étape 1, et elle a gagné. Supposons $k \geq 3$.

Morgane forme d'abord, avec la méthode de l'étape 1, une pile de $2^{e_i}$ pièces pour chaque $i$. Elle appelle

- **cible** la pile de $2^{e_1}$ pièces, la plus petite,
- **réserve** la pile de $2^{e_k}$ pièces, la plus grosse,
- **piles normales** les autres, de $2^{e_2}, \ldots, 2^{e_{k-1}}$ pièces.

Elle fait ensuite grandir la cible, qui contient toujours une puissance de $2$, disons $2^j$ pièces, avec $j \leq e_{k-1}$ :

- si une pile normale contient aussi $2^j$ pièces, elle la **fusionne** avec la cible, qui contient alors $2^{j+1}$ pièces ;
- sinon, elle prend les $2^j$ pièces de la cible et $2^j$ pièces de la réserve, et en fait la nouvelle cible, de $2^{j+1}$ pièces. On dit qu'elle **puise dans la réserve**.

Elle s'arrête quand la cible contient $2^{e_{k-1}+1}$ pièces. À ce moment, chaque pile normale a été absorbée : quand la cible passe par la taille $2^{e_i}$, la pile normale de cette taille est fusionnée avec elle. Il ne reste donc que la cible et la réserve.

Il faut vérifier que la réserve contient toujours assez de pièces. Quand la cible contient $2^j$ pièces, Morgane a puisé dans la réserve au plus une fois pour chacune des tailles $2^{e_1}, 2^{e_1+1}, \ldots, 2^{j-1}$, donc au total au plus

$$2^{e_1} + 2^{e_1+1} + \cdots + 2^{j-1} = 2^j - 2^{e_1} < 2^j$$

pièces. La réserve contient donc encore plus de $2^{e_k} - 2^j$ pièces. Comme $j \leq e_{k-1} < e_k$, on a $2^{e_k} \geq 2^{j+1}$, donc la réserve contient plus de $2^{j+1} - 2^j = 2^j$ pièces : Morgane peut bien y puiser $2^j$ pièces. À la fin, la réserve a perdu au plus $2^{e_{k-1}+1} - 2^{e_1} < 2^{e_k}$ pièces, donc elle n'est pas vide.

Morgane termine donc avec **deux piles non vides**.

*Exemple.* Pour $n = 13 = 1 + 4 + 8$ : la cible a $1$ pièce, la pile normale $4$, la réserve $8$. Morgane puise $1$ pièce dans la réserve (cible $2$, réserve $7$), puis $2$ pièces (cible $4$, réserve $5$), puis fusionne la cible avec la pile normale de $4$ pièces (cible $8$). Il reste deux piles, de $8$ et $5$ pièces.

### Conclusion

Le plus petit nombre de piles non vides que Morgane peut obtenir vaut **$1$ si $n$ est une puissance de $2$, et $2$ sinon**.

## Going further

1. Pour $n = 7$, trouvez une suite d'opérations qui mène à deux piles. Quelles tailles peuvent avoir ces deux piles ?
2. On part maintenant de piles de tailles quelconques, contenant en tout $N$ pièces, et l'on note $g$ le $\mathrm{PGCD}$ de leurs tailles. Montrez que Morgane ne peut arriver à une seule pile que si $\frac{N}{g}$ est une puissance de $2$.
