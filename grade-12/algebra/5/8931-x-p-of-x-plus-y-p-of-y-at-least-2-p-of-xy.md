---
id: "8931"
title: "Les polynômes tels que xP(x) + yP(y) ≥ 2P(xy)"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [polynome, degre, inegalite, comportement-a-linfini]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », entraînement de mi-parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les polynômes $P$ à coefficients réels tels que, pour tous réels $x$ et $y$,

$$x\,P(x) + y\,P(y) \geq 2\,P(xy).$$

## Hints

1. Essayez d'abord des polynômes très simples : les constantes, puis $P(X) = X$, puis $P(X) = aX$.
2. Pour limiter le degré de $P$, il faut faire parler l'infini. Commencez par prendre $y = 0$ : vous obtenez une inégalité sur $xP(x)$ valable pour tout $x$. Que dit-elle du coefficient dominant quand $x \to +\infty$ ?
3. Prenez ensuite $y = x$. Vous comparez alors $x P(x)$, de degré $\deg P + 1$, à $P(x^2)$, de degré $2 \deg P$.
4. Si $2\deg P > \deg P + 1$, lequel des deux l'emporte quand $x \to +\infty$ ? Concluez sur le degré.
5. Il ne restera plus qu'à traiter $P(X) = aX + b$ à la main. La substitution $y = x$ est encore la bonne.

## Solution

La réponse : les solutions sont exactement les polynômes

$$P(X) = aX \qquad \text{avec } a \geq 0.$$

### Vérification que ces polynômes conviennent

Si $P(X) = aX$ avec $a \geq 0$, alors

$$xP(x) + yP(y) = a x^2 + a y^2 = a\left(x^2+y^2\right) \qquad \text{et} \qquad 2P(xy) = 2a\,xy.$$

Or $x^2 + y^2 - 2xy = (x-y)^2 \geq 0$, donc $x^2+y^2 \geq 2xy$, et en multipliant par $a \geq 0$ l'inégalité est conservée. Ces polynômes conviennent bien. (Le cas $a = 0$, c'est-à-dire $P = 0$, est inclus.)

### Étape 1 : le coefficient dominant est positif

Supposons $P$ non constant, et notons $d = \deg P \geq 1$ et $\alpha$ son coefficient dominant.

Prenons $y = 0$ dans l'inégalité :

$$x P(x) + 0 \geq 2P(0), \qquad \text{donc} \qquad x P(x) \geq 2P(0) \quad \text{pour tout réel } x.$$

Le membre de gauche est un polynôme en $x$ de degré $d+1$ et de coefficient dominant $\alpha$. Si $\alpha$ était strictement négatif, alors $xP(x)$ tendrait vers $-\infty$ quand $x \to +\infty$, et finirait donc par descendre sous la constante $2P(0)$. C'est impossible. Donc

$$\alpha > 0.$$

### Étape 2 : le degré est au plus 1

Prenons maintenant $y = x$ :

$$2x P(x) \geq 2 P(x^2), \qquad \text{donc} \qquad x P(x) \geq P\left(x^2\right) \quad \text{pour tout réel } x.$$

Regardons les degrés. Le polynôme $X\,P(X)$ est de degré $d+1$. Le polynôme $P(X^2)$ est de degré $2d$, et son coefficient dominant est $\alpha > 0$.

Supposons $2d > d+1$, c'est-à-dire $d \geq 2$. Alors le polynôme

$$Q(X) = P(X^2) - X\,P(X)$$

est de degré $2d$, avec le même coefficient dominant $\alpha > 0$ que $P(X^2)$, puisque le terme retranché est de degré strictement plus petit. Un polynôme de coefficient dominant strictement positif tend vers $+\infty$ en $+\infty$ : il est donc strictement positif pour $x$ assez grand, ce qui contredit $xP(x) \geq P(x^2)$.

Donc $d \leq 1$, et comme $P$ est supposé non constant, $d = 1$.

### Étape 3 : on termine le cas du degré 1

Écrivons $P(X) = aX + b$ avec $a = \alpha > 0$. Reprenons la substitution $y = x$ :

$$x(ax+b) \geq P(x^2) = a x^2 + b,$$

c'est-à-dire $a x^2 + bx \geq a x^2 + b$, donc

$$bx \geq b \qquad \text{pour tout réel } x.$$

Pour $x = 0$ cela donne $0 \geq b$, et pour $x = 2$ cela donne $2b \geq b$, c'est-à-dire $b \geq 0$. Donc $b = 0$, et $P(X) = aX$ avec $a > 0$.

### Étape 4 : le cas des polynômes constants

Si $P$ est le polynôme constant égal à $b$, l'inégalité devient $bx + by \geq 2b$ pour tous $x$, $y$.

- Avec $x = y = 0$ : $0 \geq 2b$, donc $b \leq 0$.
- Avec $x = y = 10$ : $20b \geq 2b$, donc $18b \geq 0$, donc $b \geq 0$.

Donc $b = 0$, et $P$ est le polynôme nul, qui est bien de la forme $aX$ avec $a = 0$.

### Conclusion

$$\boxed{\text{Les solutions sont exactement les polynômes } P(X) = aX \text{ avec } a \geq 0.}$$

*Le point de méthode.* Quand une inégalité doit valoir pour **tous** les réels, le comportement en $+\infty$ est l'outil le plus efficace : c'est le terme de plus haut degré qui décide, et cela fournit des contraintes sur le degré et sur le signe du coefficient dominant. Une fois le degré bloqué à $1$, il ne reste qu'un calcul à deux paramètres.

## Going further

1. Et si l'on remplace l'inégalité par une égalité : quels polynômes vérifient $xP(x) + yP(y) = 2P(xy)$ pour tous $x, y$ ?
2. Que se passe-t-il si l'on demande seulement l'inégalité pour tous les réels $x, y$ **positifs** ? Trouvez-vous d'autres solutions ?
