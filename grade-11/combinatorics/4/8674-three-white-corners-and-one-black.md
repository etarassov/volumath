---
id: "8674"
title: "Trois coins blancs et un coin noir"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [parite, invariant, grille, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 7 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Sur un damier de taille $n \times n$, chaque case est peinte en blanc ou en noir, n'importe comment.

On sait seulement ceci : parmi les quatre cases des coins, **trois sont blanches et une est noire**.

Montrer qu'il existe forcément un carré de $2 \times 2$ cases contenant un nombre **impair** de cases blanches.

## Hints

1. Raisonne par l'absurde : suppose que tous les carrés $2 \times 2$ contiennent un nombre pair de cases blanches.
2. Donne à chaque case un nombre : $1$ si elle est blanche, $0$ si elle est noire. Que devient alors l'hypothèse ?
3. Note $w(i,j)$ ce nombre pour la case de la ligne $i$ et de la colonne $j$. L'hypothèse dit que $w(i,j)+w(i+1,j)+w(i,j+1)+w(i+1,j+1)$ est pair.
4. Cela permet de calculer $w(i+1,j+1)$ à partir des trois autres. En partant de la première ligne et de la première colonne, tu peux remplir tout le damier.
5. Montre, de proche en proche, que $w(i,j)$ a la même parité que $w(i,1) + w(1,j) + w(1,1)$.
6. Applique cela au coin opposé $w(n,n)$, puis additionne les quatre coins.

## Solution

Raisonnons par l'absurde : **supposons que tout carré $2 \times 2$ contienne un nombre pair de cases blanches.**

### Traduction en nombres

Notons $w(i,j)$ le nombre attaché à la case de la ligne $i$ et de la colonne $j$ :

$$w(i,j) = 1 \text{ si la case est blanche}, \qquad w(i,j) = 0 \text{ si elle est noire}.$$

Le nombre de cases blanches d'un carré $2 \times 2$ est la somme des quatre $w$ correspondants. L'hypothèse s'écrit donc : pour tous $i, j$ entre $1$ et $n-1$,

$$(\star) \qquad w(i,j) + w(i+1,j) + w(i,j+1) + w(i+1,j+1) \equiv 0 \pmod 2 .$$

### Le damier est entièrement déterminé par sa première ligne et sa première colonne

Montrons que, pour tous $i, j$,

$$(\star\star) \qquad w(i,j) \equiv w(i,1) + w(1,j) + w(1,1) \pmod 2 .$$

*Vérification sur les bords.* Si $j = 1$, le membre de droite vaut $w(i,1) + w(1,1) + w(1,1) \equiv w(i,1)$, ce qui est bien le membre de gauche. Même chose si $i = 1$. La formule est donc vraie sur toute la première ligne et toute la première colonne.

*Propagation.* Supposons $(\star\star)$ vraie pour les cases $(i,j)$, $(i+1,j)$ et $(i,j+1)$. La relation $(\star)$ donne

$$w(i+1,j+1) \equiv w(i,j) + w(i+1,j) + w(i,j+1) \pmod 2 ,$$

puisque modulo $2$, ajouter et retrancher sont la même chose. En remplaçant chacun des trois termes par sa valeur donnée par $(\star\star)$ :

$$w(i+1,j+1) \equiv \big[w(i,1)+w(1,j)+w(1,1)\big] + \big[w(i+1,1)+w(1,j)+w(1,1)\big] + \big[w(i,1)+w(1,j+1)+w(1,1)\big].$$

Regroupons : les deux $w(i,1)$ s'annulent, les deux $w(1,j)$ aussi, et il reste trois $w(1,1)$, soit $w(1,1)$. Il reste donc

$$w(i+1,j+1) \equiv w(i+1,1) + w(1,j+1) + w(1,1) \pmod 2 ,$$

ce qui est exactement $(\star\star)$ pour la case $(i+1, j+1)$.

En remplissant le damier ligne par ligne, de la gauche vers la droite, chaque nouvelle case a ses trois voisines déjà traitées. La formule $(\star\star)$ vaut donc pour toutes les cases.

### Les quatre coins

Appliquons $(\star\star)$ au coin opposé, la case $(n,n)$ :

$$w(n,n) \equiv w(n,1) + w(1,n) + w(1,1) \pmod 2 .$$

Additionnons maintenant les quatre coins :

$$w(1,1) + w(1,n) + w(n,1) + w(n,n) \equiv w(1,1) + w(1,n) + w(n,1) + \big[w(n,1)+w(1,n)+w(1,1)\big] .$$

Tout se met par paires : deux $w(1,1)$, deux $w(1,n)$, deux $w(n,1)$. La somme est donc **paire** :

$$w(1,1) + w(1,n) + w(n,1) + w(n,n) \equiv 0 \pmod 2 .$$

Or cette somme compte exactement le nombre de coins blancs, et l'énoncé dit qu'il y en a $3$, qui est impair. **Contradiction.**

### Conclusion

$$\boxed{\text{Il existe forcément un carré } 2\times 2 \text{ contenant un nombre impair de cases blanches.}}$$

## Going further

L'idée centrale mérite d'être isolée : **modulo $2$, la condition « tout carré $2\times2$ a une somme paire » force le damier à être de la forme « ligne plus colonne »**. Toute l'information tient alors dans la première ligne et la première colonne, et les quatre coins deviennent liés.

C'est le même phénomène que pour une table d'addition : si $w(i,j) = f(i) + g(j)$, alors les quatre coins d'un rectangle quelconque, pas seulement d'un carré $2\times2$, ont une somme paire.

Pour continuer : montre que la conclusion reste vraie si l'on suppose seulement que le **nombre de coins blancs est impair** — donc aussi bien avec un coin blanc et trois noirs.
