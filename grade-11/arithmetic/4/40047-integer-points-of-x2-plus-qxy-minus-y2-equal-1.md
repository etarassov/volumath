---
id: "40047"
title: "Les points entiers de x² + qxy − y² = 1 forment un ensemble orthocentrique infini"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [orthocentre, hyperbole, irrationnel, equation-de-pell, equation-diophantienne, produit-scalaire, ensemble-infini, coordonnees]
adapted_from: null
see_also: ["40041", "40042", "40043", "40044", "40045", "40046", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », quatrième partie, questions 2 à 4. La similitude z ↦ (1 − ri)z du sujet est écrite ici en coordonnées, et une question est ajoutée pour montrer qu'elle conserve les orthocentres."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé. On appelle **triangle** tout ensemble de trois points non
alignés. Une partie $X$ du plan est dite **orthocentrique** si elle n'est pas incluse dans une
droite et si l'orthocentre de tout triangle dont les sommets sont dans $X$ appartient encore à $X$.

On admet le résultat suivant : si $k \neq 0$ et si $A$, $B$, $C$ sont trois points distincts de
l'hyperbole d'équation $xy = k$, d'abscisses $a$, $b$, $c$, alors ces trois points ne sont pas
alignés, et l'orthocentre du triangle $ABC$ est le point de cette hyperbole d'abscisse
$-\frac{k^2}{abc}$.

Soit $q$ un entier relatif non nul, et $X$ l'ensemble des points du plan dont les coordonnées
vérifient $x^2 + qxy - y^2 = 1$.

1. Montrer que l'équation $t^2 - qt - 1 = 0$ a deux solutions réelles distinctes, et que ces
   solutions sont irrationnelles. On les note $r$ et $r'$.

2. On note $s$ l'application qui, au point $M(x\,;\,y)$, associe le point
   $s(M)\,(x + ry\,;\,y - rx)$. (C'est la composée d'une rotation de centre $O$ et d'une
   homothétie de centre $O$.)
   a) Montrer que pour tous points $M$, $N$, $M'$, $N'$,
   $$\overrightarrow{s(M)s(N)} \cdot \overrightarrow{s(M')s(N')} = (1 + r^2)\,\overrightarrow{MN} \cdot \overrightarrow{M'N'}.$$
   Montrer aussi que tout point du plan a un unique antécédent par $s$. On admet qu'alors $s$
   transforme trois points non alignés en trois points non alignés ; en déduire que $s$ transforme
   l'orthocentre d'un triangle en l'orthocentre du triangle image.
   b) Montrer que $s(X)$ est une hyperbole d'équation $xy = k$, où $k$ est un réel à déterminer.
   En déduire que $X$ est orthocentrique.

3. Soit $G$ l'ensemble des points de $X$ à coordonnées entières, et $\Gamma$ l'ensemble des
   abscisses des points $s(M)$ pour $M \in G$.
   a) Vérifier que $\Gamma$ est l'ensemble des réels de la forme $x + ry$, où $x$ et $y$ sont deux
   entiers tels que $(x + ry)(x + r'y) = 1$.
   b) Montrer que $-1 \in \Gamma$ et que $r^2 \in \Gamma$.
   c) Montrer que le produit de deux éléments de $\Gamma$ est un élément de $\Gamma$, et que
   l'inverse d'un élément de $\Gamma$ est un élément de $\Gamma$. Montrer que $\Gamma$ est infini.

4. En déduire que $G$, l'ensemble des points à coordonnées entières de $X$, est une partie
   orthocentrique infinie.

## Hints

1. **Question 1.** Pour l'irrationalité : si $\frac{u}{v}$ est une solution écrite sous forme
   irréductible, multiplier l'équation par $v^2$ et regarder qui divise qui.
2. **Question 2 a).** Le vecteur $\overrightarrow{s(M)s(N)}$ s'obtient à partir de
   $\overrightarrow{MN} = (\alpha\,;\,\beta)$ comme $(\alpha + r\beta\,;\,\beta - r\alpha)$.
   Développer le produit scalaire.
3. **Question 2 b).** Calculer $(x + ry)(y - rx)$ et utiliser $r^2 = qr + 1$.
4. **Question 3 a).** Que valent $r + r'$ et $rr'$ ? Développer $(x + ry)(x + r'y)$.
5. **Question 3 b).** Écrire $r^2 = 1 + qr$.
6. **Question 3 c).** Développer $(x + ry)(x' + ry')$ en remplaçant $r^2$ par $qr + 1$ : on obtient
   $X + rY$ avec $X$, $Y$ entiers. Le même calcul avec $r'$ donne $X + r'Y$. Pour l'inverse,
   $\frac{1}{x + ry} = x + r'y$ et $r' = q - r$.
7. **Question 4.** Pour trois points $A$, $B$, $C$ de $G$, les abscisses $a$, $b$, $c$ de leurs
   images sont dans $\Gamma$. L'orthocentre de l'image a pour abscisse $-\frac{k^2}{abc}$ :
   pourquoi ce nombre est-il dans $\Gamma$ ?

## Solution

**1.** Le discriminant de $t^2 - qt - 1$ est $q^2 + 4 > 0$ : il y a deux solutions réelles
distinctes. Supposons qu'une solution soit un rationnel $\frac{u}{v}$, avec $u$, $v$ entiers,
$v > 0$, fraction irréductible. Alors $u^2 - quv - v^2 = 0$, donc $u^2 = v(qu + v)$ et
$v^2 = u(u - qv)$. La première égalité montre que tout diviseur premier de $v$ divise $u^2$, donc
$u$ ; comme $u$ et $v$ n'ont pas de diviseur premier commun, $v$ n'en a aucun : $v = 1$. De même la
seconde donne $u = \pm 1$. La solution serait donc $1$ ou $-1$. Or $1 - q - 1 = -q \neq 0$ et
$1 + q - 1 = q \neq 0$. Les deux solutions sont donc irrationnelles.

On retiendra que $r + r' = q$, $rr' = -1$ (somme et produit des racines), et
$r^2 = qr + 1$, $r'^2 = qr' + 1$.

**2. a)** Si $M(x\,;\,y)$ et $N(x_1\,;\,y_1)$, et si $\overrightarrow{MN} = (\alpha\,;\,\beta)$,
alors $\overrightarrow{s(M)s(N)} = (\alpha + r\beta\,;\,\beta - r\alpha)$. Pour un second vecteur
$\overrightarrow{M'N'} = (\alpha'\,;\,\beta')$ :
$$(\alpha + r\beta)(\alpha' + r\beta') + (\beta - r\alpha)(\beta' - r\alpha') = (1 + r^2)(\alpha\alpha' + \beta\beta'),$$
car les termes $r(\alpha\beta' + \beta\alpha')$ et $-r(\beta\alpha' + \alpha\beta')$ s'annulent.

*Antécédent.* Résoudre $x + ry = u$, $y - rx = v$ : en ajoutant à la seconde égalité $r$ fois la
première, $(1 + r^2)\,y = v + ru$ ; en retranchant de la première $r$ fois la seconde,
$(1 + r^2)\,x = u - rv$. Le point $(u\,;\,v)$ a donc un unique antécédent,
$\left(\frac{u - rv}{1 + r^2}\,;\,\frac{v + ru}{1 + r^2}\right)$.

*Orthocentre.* Soit $ABC$ un triangle et $H$ son orthocentre : $\overrightarrow{AH} \cdot \overrightarrow{BC} = 0$
et $\overrightarrow{BH} \cdot \overrightarrow{CA} = 0$. D'après l'égalité ci-dessus, les mêmes
produits scalaires pour les images sont nuls aussi. Comme $s(A)s(B)s(C)$ est un triangle, $s(H)$
est sur deux de ses hauteurs : c'est son orthocentre.

**b)** Pour un point $(x\,;\,y)$ quelconque, en utilisant $1 - r^2 = -qr$,
$$(x + ry)(y - rx) = xy - rx^2 + ry^2 - r^2xy = -r(x^2 - y^2) + (1 - r^2)\,xy = -r\left(x^2 + qxy - y^2\right).$$
Si $(x\,;\,y) \in X$, son image vérifie donc $uv = -r$. Réciproquement, si $(u\,;\,v)$ vérifie
$uv = -r$, son antécédent $(x\,;\,y)$ vérifie $-r(x^2 + qxy - y^2) = -r$, donc
$x^2 + qxy - y^2 = 1$ puisque $r \neq 0$.

**Conclusion :** $s(X)$ est l'hyperbole $Y$ d'équation $xy = k$ avec $k = -r$.

*$X$ est orthocentrique.* Trois points distincts de $X$ ont des images distinctes sur $Y$, qui ne
sont pas alignées, donc eux non plus (si trois points étaient alignés, leurs images le seraient
aussi, $s$ envoyant vecteurs colinéaires sur vecteurs colinéaires). En particulier $X$ n'est pas
incluse dans une droite. Si $H$ est l'orthocentre d'un triangle $ABC$ de points de $X$, alors
$s(H)$ est l'orthocentre de $s(A)s(B)s(C)$, qui est sur $Y$ d'après le résultat admis. Donc
$s(H) \in Y = s(X)$, et comme $s$ ne prend chaque valeur qu'une fois, $H \in X$.

**3. a)** Si $M(x\,;\,y)$, l'abscisse de $s(M)$ est $x + ry$. Et
$$(x + ry)(x + r'y) = x^2 + (r + r')\,xy + rr'\,y^2 = x^2 + qxy - y^2.$$
Donc $M(x\,;\,y)$, à coordonnées entières, est dans $X$ si et seulement si
$(x + ry)(x + r'y) = 1$ : $\Gamma$ est l'ensemble des $x + ry$ avec $x$, $y$ entiers et
$(x + ry)(x + r'y) = 1$.

**b)** $-1 = (-1) + r \times 0$ et $(-1)(-1) = 1$, donc $-1 \in \Gamma$. Ensuite
$r^2 = 1 + r\,q$, avec $x = 1$, $y = q$ entiers, et
$$(1 + rq)(1 + r'q) = 1 + (r + r')\,q + rr'\,q^2 = 1 + q^2 - q^2 = 1,$$
donc $r^2 \in \Gamma$.

**c)** *Produit.* Soit $x + ry$ et $x' + ry'$ dans $\Gamma$. Avec $r^2 = qr + 1$,
$$(x + ry)(x' + ry') = xx' + r(xy' + x'y) + r^2yy' = (xx' + yy') + r\,(xy' + x'y + qyy').$$
Notons $x'' = xx' + yy'$ et $y'' = xy' + x'y + qyy'$, deux entiers. Comme $r'$ vérifie aussi
$r'^2 = qr' + 1$, le même calcul donne $(x + r'y)(x' + r'y') = x'' + r'y''$. Alors
$$(x'' + ry'')(x'' + r'y'') = [(x + ry)(x + r'y)] \times [(x' + ry')(x' + r'y')] = 1 \times 1 = 1,$$
donc le produit $x'' + ry''$ est dans $\Gamma$.

*Inverse.* Si $x + ry \in \Gamma$, alors $\frac{1}{x + ry} = x + r'y$, et comme $r' = q - r$,
$$x + r'y = (x + qy) + r\,(-y).$$
Les entiers $x_1 = x + qy$ et $y_1 = -y$ vérifient $x_1 + ry_1 = x + r'y$ et
$x_1 + r'y_1 = x + qy - r'y = x + ry$, donc $(x_1 + ry_1)(x_1 + r'y_1) = 1$ : l'inverse est dans
$\Gamma$.

*$\Gamma$ est infini.* Comme $r^2 \in \Gamma$, tous les nombres $r^2$, $r^4$, $r^6$, … sont dans
$\Gamma$ (produits d'éléments de $\Gamma$). Or $r^2 > 0$ et $r^2 \neq 1$ (sinon $r = \pm 1$ serait
rationnel), donc ces puissances sont toutes distinctes.

**4.** *$G$ est infini.* Chaque élément de $\Gamma$ est l'abscisse de $s(M)$ pour au moins un point
$M$ de $G$ ; comme $\Gamma$ est infini, $G$ l'est aussi. En particulier, comme en 2 b), $G$ n'est
pas inclus dans une droite.

*$G$ est orthocentrique.* Soit $A$, $B$, $C$ trois points distincts de $G$ et $H$ l'orthocentre de
$ABC$. Les images $s(A)$, $s(B)$, $s(C)$ sont trois points distincts de $Y$, d'abscisses $a$, $b$,
$c$ dans $\Gamma$. D'après la question 2 a) et le résultat admis, $s(H)$ est le point de $Y$
d'abscisse
$$h = -\frac{k^2}{abc} = (-1) \times r^2 \times \frac{1}{a} \times \frac{1}{b} \times \frac{1}{c},$$
puisque $k^2 = r^2$. C'est un produit d'éléments de $\Gamma$ (question 3), donc $h \in \Gamma$ : il
existe $P \in G$ tel que $s(P)$ ait pour abscisse $h$. Les points $s(P)$ et $s(H)$ sont sur $Y$ et
ont la même abscisse, donc $s(P) = s(H)$, et $H = P \in G$.

**Conclusion :** $G$ est une partie orthocentrique infinie.

**Bilan.** L'application $s$ transforme la courbe $x^2 + qxy - y^2 = 1$ en l'hyperbole
$xy = -r$, sur laquelle l'orthocentre se calcule par une formule produit. Les abscisses des images
des points entiers sont les nombres $x + ry$ « de norme 1 », qui sont stables par produit et par
inverse. C'est cette stabilité qui fait que l'orthocentre de trois points entiers de la courbe est
encore un point entier.

## Going further

- Pour $q = 1$, la courbe est $x^2 + xy - y^2 = 1$. Partir de $(1\,;\,0)$ et $(1\,;\,1)$ et
  calculer d'autres points entiers avec la règle de produit de la question 3 c). Quels nombres
  célèbres apparaissent ?
- L'équation $x^2 + qxy - y^2 = 1$ ressemble à l'équation de Pell $x^2 - dy^2 = 1$, dont les
  solutions entières se multiplient de la même façon. Pour $x^2 - 2y^2 = 1$, à partir de
  $(3\,;\,2)$, trouver d'autres solutions.
