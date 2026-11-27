---
id: "40364"
title: "f(f(z)) = z² sur les racines de l'unité : n doit être impair et non multiple de 3"
grade: 12
theme: algebra
difficulty: 3
duration_min: 40
tags: [nombres-complexes, racines-de-lunite, equation-fonctionnelle, maths-expertes, raisonnement-par-l-absurde, disjonction-de-cas]
adapted_from: null
see_also: ["40365"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2011, mathématiques, série S"
  reference: "cg-2011-s-sujet.pdf, exercice 3 « La racine du carré », questions 1° à 4°"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2011-s-sujet.pdf"
---

## Statement

Pour un entier $m \geq 1$, on note $U_m$ l'ensemble des racines $m$-ièmes de l'unité :

$$U_m = \{ \mathrm{e}^{2ik\pi/m} : k \text{ entier}, \ 0 \leq k \leq m - 1 \} .$$

C'est aussi l'ensemble des nombres complexes $z$ tels que $z^m = 1$.

On se donne un entier $n \geq 1$, et on cherche s'il existe une fonction $f$, définie sur
$U_{2n}$ et à valeurs dans $U_{2n}$, telle que

$$f(f(z)) = z^2 \qquad \text{pour tout } z \in U_{2n} .$$

Une telle fonction est appelée une *solution*.

1. Montrer que l'ensemble des carrés $\{ z^2 : z \in U_{2n} \}$ est égal à $U_n$, et que $U_n$
   est inclus dans $U_{2n}$.
2. On suppose qu'il existe une solution $f$.
   a) Vérifier que $f(z^2) = (f(z))^2$ pour tout $z \in U_{2n}$.
   b) Montrer que si $f(z) = f(z')$, alors $z = z'$ ou $z = -z'$. Montrer que
   $f(1) = f(-1) = 1$.
3. Selon la valeur de $n$, existe-t-il un élément $z$ de $U_{2n}$ tel que $z^2 = -1$ ? Si oui,
   montrer qu'alors il n'existe pas de solution.
4. Selon la valeur de $n$, existe-t-il un élément $z$ de $U_{2n}$ tel que $z^3 = 1$ et
   $z \neq 1$ ? Si oui, montrer qu'alors il n'existe pas de solution.

## Hints

1. **Question 1.** Pour l'égalité de deux ensembles, montrer les deux inclusions. Pour écrire
   $\mathrm{e}^{2ik\pi/n}$ comme un carré, prendre la moitié de l'argument.
2. **Question 2.** Pour a), appliquer la relation $f(f(w)) = w^2$ au nombre $w = f(z)$, et
   comparer avec $f$ appliquée aux deux membres de $f(f(z)) = z^2$.
3. **Question 2.** Pour $f(-1)$, on sait déjà que $(f(-1))^2 = f(1)$. Que donnerait
   $f(f(-1))$ si $f(-1)$ valait $-1$ ?
4. **Question 3.** Les seuls $z$ tels que $z^2 = -1$ sont $i$ et $-i$. Si $i \in U_{2n}$,
   calculer $(f(i))^2$ avec la question 2, puis $f(f(i))$.
5. **Question 4.** Si $j = \mathrm{e}^{2i\pi/3}$ est dans $U_{2n}$, posons $w = f(j)$. Calculer
   $f(j^2)$, puis $f(j^4)$ de deux façons, sachant que $j^4 = j$. On trouve $w^3 = 1$ : il
   reste trois cas.

## Solution

**1.** *Les carrés sont dans $U_n$.* Si $z \in U_{2n}$, alors $(z^2)^n = z^{2n} = 1$, donc
$z^2 \in U_n$.

*Tout élément de $U_n$ est un carré.* Soit $w = \mathrm{e}^{2ik\pi/n}$ avec $0 \leq k \leq n - 1$.
Posons $z = \mathrm{e}^{ik\pi/n} = \mathrm{e}^{2ik\pi/(2n)}$. Comme $0 \leq k \leq 2n - 1$, on a
$z \in U_{2n}$, et $z^2 = \mathrm{e}^{2ik\pi/n} = w$.

Donc $\{ z^2 : z \in U_{2n} \} = U_n$.

*Inclusion.* Si $w^n = 1$, alors $w^{2n} = (w^n)^2 = 1$, donc $U_n \subset U_{2n}$.

**2. a)** Soit $z \in U_{2n}$. En appliquant $f$ aux deux membres de $f(f(z)) = z^2$, on obtient
$f(f(f(z))) = f(z^2)$. En appliquant la relation de l'énoncé au nombre $w = f(z)$, qui est dans
$U_{2n}$, on obtient $f(f(w)) = w^2$, c'est-à-dire $f(f(f(z))) = (f(z))^2$. Donc

$$f(z^2) = (f(z))^2 .$$

**b)** Si $f(z) = f(z')$, alors $f(f(z)) = f(f(z'))$, donc $z^2 = z'^2$, soit
$(z - z')(z + z') = 0$, et $z = z'$ ou $z = -z'$.

Avec a) pour $z = 1$ : $f(1) = f(1^2) = (f(1))^2$, donc $f(1)\,(f(1) - 1) = 0$. Comme $f(1)$ est
de module $1$, il n'est pas nul, donc $f(1) = 1$.

Le nombre $-1 = \mathrm{e}^{2in\pi/(2n)}$ est dans $U_{2n}$. Avec a) pour $z = -1$ :
$(f(-1))^2 = f((-1)^2) = f(1) = 1$, donc $f(-1) = 1$ ou $f(-1) = -1$. Si on avait $f(-1) = -1$,
on aurait $f(f(-1)) = f(-1) = -1$, alors que $f(f(-1)) = (-1)^2 = 1$. Donc $f(-1) = 1$.

**3.** Les solutions de $z^2 = -1$ sont $i$ et $-i$. Or $i^{2n} = (i^2)^n = (-1)^n$, et de même
$(-i)^{2n} = (-1)^n$. Donc :

- si $n$ est impair, ni $i$ ni $-i$ n'est dans $U_{2n}$ ;
- si $n$ est pair, $i$ et $-i$ sont dans $U_{2n}$.

Supposons $n$ pair et qu'il existe une solution $f$. Par 2. a) et b),
$(f(i))^2 = f(i^2) = f(-1) = 1$, donc $f(i) = 1$ ou $f(i) = -1$. Dans les deux cas, par 2. b),
$f(f(i)) = 1$. Mais la relation de l'énoncé donne $f(f(i)) = i^2 = -1$. C'est contradictoire.

**Conclusion :** si $n$ est pair, il n'y a pas de solution.

**4.** Les solutions de $z^3 = 1$ autres que $1$ sont $j = \mathrm{e}^{2i\pi/3}$ et
$j^2 = \mathrm{e}^{4i\pi/3}$. Comme $j^3 = 1$, la puissance $j^m$ ne dépend que du reste de $m$
dans la division par $3$, et $j^1 \neq 1$, $j^2 \neq 1$ : donc $j^m = 1$ si et seulement si $3$
divise $m$. Il en va de même pour $j^2$, puisque $(j^2)^m = j^{2m}$ et que $3$ divise $2m$ si et
seulement si $3$ divise $m$. Ainsi $j$ et $j^2$ sont dans $U_{2n}$ si et seulement si $3$ divise
$2n$, c'est-à-dire si et seulement si $3$ divise $n$.

Supposons que $3$ divise $n$ et qu'il existe une solution $f$. Posons $w = f(j)$. Par 2. a),
$f(j^2) = w^2$. Comme $j^4 = j^3 \times j = j$, on a aussi, toujours par 2. a),

$$w = f(j) = f(j^4) = f((j^2)^2) = (f(j^2))^2 = w^4 .$$

Comme $w \neq 0$, on obtient $w^3 = 1$, donc $w$ vaut $1$, $j$ ou $j^2$. Calculons $f(f(j))$, qui
devrait valoir $j^2$ :

- si $w = 1$, $f(f(j)) = f(1) = 1$ ;
- si $w = j$, $f(f(j)) = f(j) = j$ ;
- si $w = j^2$, $f(f(j)) = f(j^2) = w^2 = j^4 = j$.

Dans aucun cas on ne trouve $j^2$. C'est contradictoire.

**Conclusion :** si $n$ est un multiple de $3$, il n'y a pas de solution.

**Bilan.** Une fonction $f$ telle que $f \circ f$ soit l'élévation au carré sur $U_{2n}$ ne peut
exister que si $n$ est impair et n'est pas un multiple de $3$. Les deux obstacles viennent de
petits groupes de racines que $f$ ne peut pas ranger correctement : $i$ et $-1$ dans le premier
cas, $j$ et $j^2$ dans le second.

## Going further

- Pour $n = 1$, vérifier que la fonction constante égale à $1$ sur $U_2 = \{1, -1\}$ est une
  solution.
- Ces deux conditions ne suffisent pas. La suite du sujet (exercice 40365) montre que, pour $n$
  impair, il y a une solution si et seulement si l'élévation au carré sur $U_n$ est elle-même
  de la forme $\varphi \circ \varphi$, puis que $n = 5$ ne marche pas alors que $n = 7$ marche.
- Pour $n = 7$, vérifier directement que $f(z) = z^4$ est une solution sur $U_{14}$.
