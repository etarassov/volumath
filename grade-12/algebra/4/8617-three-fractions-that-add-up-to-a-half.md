---
id: "8617"
title: "Trois fractions qui dépassent un demi"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, cauchy schwarz, lemme des mauvais eleves, somme de carres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de mi-parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $x$, $y$, $z$ des réels strictement positifs. Montrer que

$$\frac{x}{x + 2y + 3z} + \frac{y}{y + 2z + 3x} + \frac{z}{z + 2x + 3y} \geqslant \frac{1}{2} .$$

## Hints

1. Commence par le cas $x = y = z$ : que vaut alors chaque fraction ? Tu sais maintenant que l'inégalité est optimale et où se trouve le cas d'égalité.
2. Voici un outil très efficace sur les sommes de fractions. Pour $p, q > 0$ et $u, v$ réels : $\dfrac{u^2}{p} + \dfrac{v^2}{q} \geqslant \dfrac{(u+v)^2}{p+q}$. Démontre-le en multipliant tout par $pq(p+q)$.
3. Cet outil ne s'applique qu'à des fractions dont le **numérateur est un carré**. Or ici les numérateurs sont $x$, $y$, $z$. Comment les transformer en carrés sans changer la valeur de la fraction ?
4. Multiplie le numérateur et le dénominateur de la première fraction par $x$, de la deuxième par $y$, de la troisième par $z$.
5. Après regroupement tu devras démontrer que $x^2 + y^2 + z^2 \geqslant xy + yz + zx$. Pense à $(x-y)^2 + (y-z)^2 + (z-x)^2$.

## Solution

### Outil 1 : le lemme des deux fractions

**Lemme.** Pour tous réels $u, v$ et tous réels $p, q > 0$,

$$\frac{u^2}{p} + \frac{v^2}{q} \;\geqslant\; \frac{(u+v)^2}{p+q} .$$

*Démonstration.* Comme $p$, $q$ et $p+q$ sont strictement positifs, l'inégalité équivaut, après multiplication par $pq(p+q)$, à

$$u^2 q (p+q) + v^2 p (p+q) \geqslant (u+v)^2 pq .$$

En développant les deux membres :

$$u^2 pq + u^2 q^2 + v^2 p^2 + v^2 pq \;\geqslant\; u^2 pq + 2uv\,pq + v^2 pq ,$$

c'est-à-dire, après simplification,

$$u^2 q^2 - 2uv\,pq + v^2 p^2 \geqslant 0, \qquad \text{c'est-à-dire} \qquad (uq - vp)^2 \geqslant 0 ,$$

ce qui est toujours vrai. $\square$

En appliquant le lemme deux fois de suite, on obtient la version à trois fractions :

$$\frac{u^2}{p} + \frac{v^2}{q} + \frac{w^2}{r} \;\geqslant\; \frac{(u+v)^2}{p+q} + \frac{w^2}{r} \;\geqslant\; \frac{(u+v+w)^2}{p+q+r} .$$

### Outil 2 : le lemme du tourniquet

**Lemme.** Pour tous réels $x, y, z$, on a $x^2 + y^2 + z^2 \geqslant xy + yz + zx$.

*Démonstration.* Une somme de carrés est positive :

$$(x-y)^2 + (y-z)^2 + (z-x)^2 \geqslant 0 .$$

En développant, le membre de gauche vaut $2x^2 + 2y^2 + 2z^2 - 2xy - 2yz - 2zx$. En divisant par $2$ on obtient exactement l'inégalité voulue. $\square$

### La démonstration

**Étape 1 : fabriquer des carrés au numérateur.**

Le premier outil réclame des numérateurs qui soient des carrés. Multiplions donc haut et bas de chaque fraction par son numérateur, ce qui ne change pas sa valeur puisque $x, y, z > 0$ :

$$\frac{x}{x+2y+3z} = \frac{x^2}{x^2 + 2xy + 3xz}, \qquad \frac{y}{y+2z+3x} = \frac{y^2}{y^2 + 2yz + 3xy}, \qquad \frac{z}{z+2x+3y} = \frac{z^2}{z^2 + 2xz + 3yz} .$$

Les trois dénominateurs sont strictement positifs.

**Étape 2 : regrouper.**

D'après l'outil 1 à trois fractions, la somme cherchée est supérieure ou égale à

$$\frac{(x+y+z)^2}{\left(x^2 + 2xy + 3xz\right) + \left(y^2 + 2yz + 3xy\right) + \left(z^2 + 2xz + 3yz\right)} .$$

Additionnons les dénominateurs en regroupant les termes croisés :

- les termes en $xy$ : $2xy + 3xy = 5xy$ ;
- les termes en $yz$ : $2yz + 3yz = 5yz$ ;
- les termes en $xz$ : $3xz + 2xz = 5xz$.

Le dénominateur total vaut donc $x^2 + y^2 + z^2 + 5(xy + yz + zx)$, et il reste à démontrer

$$\frac{(x+y+z)^2}{x^2 + y^2 + z^2 + 5(xy+yz+zx)} \;\geqslant\; \frac{1}{2} .$$

**Étape 3 : conclure.**

Le dénominateur étant strictement positif, cette inégalité équivaut à

$$2(x+y+z)^2 \;\geqslant\; x^2 + y^2 + z^2 + 5(xy+yz+zx) .$$

Or $(x+y+z)^2 = x^2 + y^2 + z^2 + 2(xy+yz+zx)$, donc le membre de gauche vaut $2(x^2+y^2+z^2) + 4(xy+yz+zx)$. Après simplification des deux côtés, l'inégalité à démontrer devient

$$x^2 + y^2 + z^2 \;\geqslant\; xy + yz + zx ,$$

qui n'est autre que l'outil 2.

**Conclusion.** L'inégalité de l'énoncé est démontrée. Il y a égalité lorsque $x = y = z$ : chaque fraction vaut alors $\dfrac{x}{6x} = \dfrac16$, et leur somme vaut bien $\dfrac12$.

## Going further

Le lemme de l'outil 1 s'appelle parfois **lemme des mauvais élèves**, parce qu'il ressemble à la fausse règle d'addition des fractions que tout le monde a écrite une fois dans sa vie : additionner les numérateurs et additionner les dénominateurs. Cette « règle » est fausse comme égalité, mais elle devient vraie comme **inégalité** dès que les numérateurs sont des carrés et les dénominateurs positifs.

C'est aussi un cas particulier de l'inégalité de Cauchy-Schwarz. Le réflexe à retenir : devant une somme de fractions à minorer, on essaie de rendre les numérateurs carrés, puis on regroupe tout en une seule fraction.
