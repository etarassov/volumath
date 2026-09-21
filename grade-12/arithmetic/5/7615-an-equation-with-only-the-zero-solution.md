---
id: "7615"
title: "Une équation qui n'a que la solution nulle"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [descente infinie, parite, equation diophantienne, cubes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de fin de parcours"
  reference: "stage_ete_2013.pdf, chapitre VII « Test de fin de parcours », groupe A, exercice 4 (la solution imprimée écrit 16z² et 4z² là où il faut lire 16z³ et 4z³)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers naturels (positifs ou nuls) tels que

$$x^3 + 4y^3 = 16z^3 + 4xyz .$$

## Hints

1. Commencez par regarder la parité. Dans l'équation, trois des quatre termes sont manifestement pairs. Que reste-t-il ?
2. Une fois que vous savez que $x$ est pair, posez $x = 2x_1$, remplacez, et simplifiez par le plus grand facteur possible.
3. Recommencez : la nouvelle équation vous dit encore que l'une des inconnues est paire. Continuez, et notez soigneusement chaque équation obtenue.
4. Au bout de quelques tours, vous devriez retomber **exactement** sur une équation déjà rencontrée, mais avec des inconnues deux fois plus petites. C'est le cœur de la méthode : on l'appelle la **descente infinie**.
5. Pour conclure proprement : parmi tous les triplets solutions non nuls, s'il en existe, considérez celui dont la somme $x + y + z$ est la plus petite possible.

## Solution

**Réponse : le seul triplet est $(0, 0, 0)$.**

**Étape 1 : $x$ est pair, et on obtient une équation plus maniable.**

Dans $x^3 + 4y^3 = 16z^3 + 4xyz$, les nombres $4y^3$, $16z^3$ et $4xyz$ sont tous pairs. Donc

$$x^3 = 16z^3 + 4xyz - 4y^3$$

est pair. Comme le cube d'un nombre impair est impair, $x$ est pair : écrivons $x = 2x_1$.

En remplaçant : $8x_1^3 + 4y^3 = 16z^3 + 8x_1yz$. On divise tout par $4$ :

$$(E) \qquad 2x_1^3 + y^3 = 4z^3 + 2x_1yz .$$

Ainsi, si $(x, y, z)$ est solution de l'équation de départ, alors $\left(\tfrac{x}{2}, y, z\right)$ est solution de $(E)$.

**Étape 2 : l'équation $(E)$ se divise par deux.**

Soit maintenant $(u, v, w)$ un triplet d'entiers naturels solution de $(E)$ :

$$2u^3 + v^3 = 4w^3 + 2uvw .$$

- $v^3 = 4w^3 + 2uvw - 2u^3$ est pair, donc $v$ est pair : posons $v = 2v_1$. L'équation devient $2u^3 + 8v_1^3 = 4w^3 + 4uv_1w$, soit, après division par $2$,
$$u^3 + 4v_1^3 = 2w^3 + 2uv_1w .$$
- Dans cette nouvelle équation, $u^3 = 2w^3 + 2uv_1w - 4v_1^3$ est pair, donc $u$ est pair : posons $u = 2u_1$. On obtient $8u_1^3 + 4v_1^3 = 2w^3 + 4u_1v_1w$, soit, après division par $2$,
$$4u_1^3 + 2v_1^3 = w^3 + 2u_1v_1w .$$
- Dans celle-ci, $w^3 = 4u_1^3 + 2v_1^3 - 2u_1v_1w$ est pair, donc $w$ est pair : posons $w = 2w_1$. On obtient $4u_1^3 + 2v_1^3 = 8w_1^3 + 4u_1v_1w_1$, soit, après division par $2$,
$$2u_1^3 + v_1^3 = 4w_1^3 + 2u_1v_1w_1 .$$

Cette dernière ligne est **exactement l'équation $(E)$**, écrite pour le triplet

$$(u_1, v_1, w_1) = \left(\frac{u}{2}, \ \frac{v}{2}, \ \frac{w}{2}\right) .$$

On a donc démontré :

> Si $(u, v, w)$ est un triplet d'entiers naturels solution de $(E)$, alors $u$, $v$ et $w$ sont tous pairs, et $\left(\tfrac{u}{2}, \tfrac{v}{2}, \tfrac{w}{2}\right)$ est encore un triplet d'entiers naturels solution de $(E)$.

**Étape 3 : la descente.**

Supposons qu'il existe une solution de $(E)$ en entiers naturels **autre que $(0,0,0)$**. Parmi toutes ces solutions non nulles, choisissons-en une, $(u, v, w)$, pour laquelle la somme $u + v + w$ est la plus petite possible. C'est légitime : une partie non vide d'entiers naturels possède toujours un plus petit élément.

D'après l'étape 2, le triplet $\left(\tfrac{u}{2}, \tfrac{v}{2}, \tfrac{w}{2}\right)$ est encore une solution en entiers naturels. Il n'est pas nul, car sinon $(u,v,w)$ le serait aussi. Et sa somme vaut

$$\frac{u + v + w}{2} < u + v + w ,$$

puisque $u + v + w > 0$. On a donc trouvé une solution non nulle de somme strictement plus petite : cela contredit le choix de $(u, v, w)$.

Conclusion : **$(0,0,0)$ est la seule solution de $(E)$ en entiers naturels.**

**Étape 4 : retour à l'équation de départ.**

Soit $(x, y, z)$ une solution de l'équation de départ. D'après l'étape 1, $\left(\tfrac{x}{2}, y, z\right)$ est solution de $(E)$, donc

$$\frac{x}{2} = 0, \qquad y = 0, \qquad z = 0 ,$$

et par conséquent $x = 0$.

**Conclusion.** Le seul triplet d'entiers naturels solution de $x^3 + 4y^3 = 16z^3 + 4xyz$ est

$$(x, y, z) = (0, 0, 0) .$$

## Going further

La méthode employée s'appelle la **descente infinie**, et on la doit à Fermat. Son principe est toujours le même : on montre qu'à partir d'une solution non nulle on peut toujours en fabriquer une strictement plus petite ; comme les entiers naturels ne peuvent pas décroître indéfiniment, c'est qu'il n'y avait pas de solution non nulle du tout.

L'exemple le plus célèbre est la démonstration que $\sqrt2$ est irrationnel : si $\sqrt2 = \tfrac{p}{q}$, on montre que $p$ et $q$ sont tous deux pairs, donc que $\tfrac{p/2}{q/2}$ convient aussi, et ainsi de suite.

**Une remarque sur l'énoncé.** Le résultat vaut en fait pour tous les entiers relatifs, et pas seulement pour les entiers naturels : il suffit de reprendre la descente en remplaçant $u+v+w$ par $|u| + |v| + |w|$.

**Pour s'entraîner :** montrer de la même manière que la seule solution en entiers de $x^3 + 3y^3 + 9z^3 = 9xyz$ est $(0,0,0)$.
