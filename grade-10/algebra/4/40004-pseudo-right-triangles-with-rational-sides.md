---
id: "40004"
title: "Les triangles pseudo-rectangles à côtés rationnels"
grade: 10
theme: algebra
difficulty: 4
duration_min: 50
tags: [rationnels, trigonometrie, factorisation, identites-remarquables, triangle, irrationnel]
adapted_from: null
see_also: ["40001", "40002", "40003", "40005", "40006", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), deuxième partie, questions 2 et 3. Les angles sont donnés ici en degrés."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Dans un triangle $ABC$, on note $a = BC$, $b = CA$, $c = AB$ et $\widehat{A}$, $\widehat{B}$,
$\widehat{C}$ les angles, en degrés. On dit que le triangle est **pseudo-rectangle en $A$ et obtus
en $B$** si $\widehat{B} - \widehat{C} = 90^\circ$.

On admet le résultat suivant. *Pour trois réels $a$, $b$, $c$ strictement positifs, il existe un
triangle pseudo-rectangle en $A$ et obtus en $B$ de côtés $BC = a$, $CA = b$, $AB = c$ si et
seulement si*
$$b^2 - c^2 = a\sqrt{b^2 + c^2},$$
*et cela se produit si et seulement s'il existe $\rho > 0$ et un angle $\theta$, avec
$0^\circ < \theta < 45^\circ$, tels que*
$$a = \rho\cos(2\theta), \qquad b = \rho\cos\theta, \qquad c = \rho\sin\theta .$$
*On a alors $\rho = \sqrt{b^2 + c^2}$.*

On pourra aussi utiliser sans justification les formules suivantes, valables pour tout angle
$\varphi$ compris entre $0^\circ$ et $45^\circ$ :
$$\cos(2\varphi) = \frac{1 - \tan^2\varphi}{1 + \tan^2\varphi}, \qquad \sin(2\varphi) = \frac{2\tan\varphi}{1 + \tan^2\varphi}, \qquad \cos(2\varphi) = \cos^2\varphi - \sin^2\varphi .$$

1. Soit $ABC$ un triangle pseudo-rectangle en $A$, obtus en $B$, dont les trois côtés sont des
   nombres rationnels, et soient $\rho$ et $\theta$ comme ci-dessus.
   a) Montrer que $\rho$ est rationnel, puis que $\tan\frac{\theta}{2}$ est rationnel. On note $p$
   et $q$ les entiers strictement positifs, premiers entre eux, tels que $\tan\frac{\theta}{2} = \frac{p}{q}$.
   b) Vérifier que $0 < p < q\,(\sqrt{2} - 1)$, et montrer qu'il existe un rationnel $r > 0$ tel que
   $$a = r\,(p^4 - 6p^2q^2 + q^4), \qquad b = r\,(q^4 - p^4), \qquad c = 2pqr\,(p^2 + q^2).$$
2. Réciproquement, soient $p$ et $q$ deux entiers strictement positifs tels que
   $p < q\,(\sqrt{2} - 1)$, et $r$ un rationnel strictement positif. Montrer que les formules du 1.b)
   définissent les longueurs des côtés d'un triangle pseudo-rectangle en $A$, obtus en $B$, dont les
   côtés sont rationnels.

## Hints

1. **Question 1.a.** Utiliser l'égalité $b^2 - c^2 = a\rho$ pour montrer que $\rho$ est rationnel.
   Qu'en déduit-on pour $\cos\theta$ et $\sin\theta$ ?
2. **Question 1.a.** Appliquer les formules avec $\varphi = \frac{\theta}{2}$ et $t = \tan\frac{\theta}{2}$.
   Calculer $1 + \cos\theta$, puis $\frac{\sin\theta}{1 + \cos\theta}$.
3. **Question 1.b.** Que vaut $\tan(\text{22,5}^\circ)$ ? Écrire $\cos(45^\circ) = \sin(45^\circ)$ avec les
   formules pour $\varphi = \text{22,5}^\circ$.
4. **Question 1.b.** Exprimer $\cos\theta$, $\sin\theta$, puis $\cos(2\theta)$ comme des fractions de
   dénominateur $p^2 + q^2$ ou $(p^2 + q^2)^2$. Le nombre $r$ cherché est $\frac{\rho}{(p^2 + q^2)^2}$.
5. **Question 2.** Pour le signe de $a$, factoriser $p^4 - 6p^2q^2 + q^4 = (q^2 - p^2)^2 - 4p^2q^2$.
6. **Question 2.** Calculer $b^2 + c^2$ : c'est un carré parfait.

## Solution

**1.a)** On a $b^2 - c^2 = a\sqrt{b^2 + c^2} = a\rho$, donc $\rho = \frac{b^2 - c^2}{a}$ est un
quotient de rationnels : il est rationnel. Alors $\cos\theta = \frac{b}{\rho}$ et
$\sin\theta = \frac{c}{\rho}$ sont rationnels.

Posons $t = \tan\frac{\theta}{2}$. L'angle $\frac{\theta}{2}$ est compris entre $0^\circ$ et
$\text{22,5}^\circ$, donc les formules s'appliquent avec $\varphi = \frac{\theta}{2}$ :
$$\cos\theta = \frac{1 - t^2}{1 + t^2}, \qquad \sin\theta = \frac{2t}{1 + t^2}.$$
Alors $1 + \cos\theta = \frac{2}{1 + t^2}$, et
$$\frac{\sin\theta}{1 + \cos\theta} = \frac{2t}{1 + t^2} \times \frac{1 + t^2}{2} = t .$$
Donc $t = \frac{\sin\theta}{1 + \cos\theta} = \frac{c}{\rho + b}$ est rationnel, et strictement positif.

**Conclusion :** $\rho$ et $\tan\frac{\theta}{2}$ sont rationnels.

**1.b)** *L'inégalité.* Calculons $\tan(\text{22,5}^\circ)$. Avec $\varphi = \text{22,5}^\circ$ et
$u = \tan\varphi > 0$, on a $\cos(45^\circ) = \sin(45^\circ)$, donc $1 - u^2 = 2u$, soit
$u^2 + 2u - 1 = 0$. La seule racine positive est $u = \sqrt{2} - 1$. La fonction tangente est
croissante sur les angles aigus, et $0^\circ < \frac{\theta}{2} < \text{22,5}^\circ$, donc
$$0 < \frac{p}{q} < \sqrt{2} - 1, \quad \text{c'est-à-dire} \quad 0 < p < q\,(\sqrt{2} - 1).$$

*Les formules.* Avec $t = \frac{p}{q}$, en multipliant numérateur et dénominateur par $q^2$ :
$$\cos\theta = \frac{q^2 - p^2}{q^2 + p^2}, \qquad \sin\theta = \frac{2pq}{p^2 + q^2},$$
puis
$$\cos(2\theta) = \cos^2\theta - \sin^2\theta = \frac{(q^2 - p^2)^2 - 4p^2q^2}{(p^2 + q^2)^2} = \frac{p^4 - 6p^2q^2 + q^4}{(p^2 + q^2)^2}.$$
Posons $r = \frac{\rho}{(p^2 + q^2)^2}$, qui est un rationnel strictement positif. Alors
$$a = \rho\cos(2\theta) = r\,(p^4 - 6p^2q^2 + q^4),$$
$$b = \rho\cos\theta = r\,(p^2 + q^2)(q^2 - p^2) = r\,(q^4 - p^4),$$
$$c = \rho\sin\theta = r\,(p^2 + q^2) \times 2pq = 2pqr\,(p^2 + q^2).$$

**2.** Les trois nombres $a$, $b$, $c$ sont rationnels, puisqu'ils sont obtenus à partir de $p$, $q$,
$r$ par sommes et produits. Vérifions qu'ils sont strictement positifs et qu'ils satisfont
$b^2 - c^2 = a\sqrt{b^2 + c^2}$ ; le résultat admis donnera alors le triangle.

*Signes.* Comme $\sqrt{2} - 1 < 1$, on a $p < q$, donc $b = r\,(q^4 - p^4) > 0$. Clairement $c > 0$.
Pour $a$ :
$$p^4 - 6p^2q^2 + q^4 = (q^2 - p^2)^2 - (2pq)^2 = (q^2 - 2pq - p^2)(q^2 + 2pq - p^2).$$
Le second facteur est positif car $q > p$. Le premier s'écrit
$(q - p)^2 - 2p^2 = \left(q - p - p\sqrt{2}\right)\left(q - p + p\sqrt{2}\right)$, et
$q - p(1 + \sqrt{2}) > 0$ équivaut à $p < \frac{q}{1 + \sqrt{2}} = q\,(\sqrt{2} - 1)$, ce qui est
l'hypothèse. Donc $a > 0$.

*La relation.* On calcule
$$b^2 + c^2 = r^2(p^2 + q^2)^2\left[(q^2 - p^2)^2 + 4p^2q^2\right] = r^2(p^2 + q^2)^4,$$
car $(q^2 - p^2)^2 + 4p^2q^2 = (q^2 + p^2)^2$. Donc $\sqrt{b^2 + c^2} = r\,(p^2 + q^2)^2$. Et
$$b^2 - c^2 = r^2(p^2 + q^2)^2\left[(q^2 - p^2)^2 - 4p^2q^2\right] = r\,(p^2 + q^2)^2 \times r\,(p^4 - 6p^2q^2 + q^4) = a\sqrt{b^2 + c^2}.$$

**Conclusion :** par le résultat admis, il existe un triangle pseudo-rectangle en $A$, obtus en
$B$, de côtés $a$, $b$, $c$, et ces côtés sont rationnels.

**Bilan.** Les triangles pseudo-rectangles en $A$, obtus en $B$, à côtés rationnels sont exactement
ceux que donnent les formules
$$a = r\,(p^4 - 6p^2q^2 + q^4), \qquad b = r\,(q^4 - p^4), \qquad c = 2pqr\,(p^2 + q^2),$$
avec $p$ et $q$ entiers, $0 < p < q\,(\sqrt{2} - 1)$, et $r$ rationnel positif. Le nombre
$\frac{p}{q}$ est la tangente de la moitié de l'angle $\widehat{C}$. Par exemple $p = 1$, $q = 3$,
$r = \frac{1}{4}$ donnent le triangle de côtés $7$, $20$, $15$.

## Going further

- La même idée donne tous les triangles rectangles à côtés rationnels : si $\tan\frac{\theta}{2} = \frac{p}{q}$,
  alors $\cos\theta$ et $\sin\theta$ sont proportionnels à $q^2 - p^2$ et $2pq$, et l'on retrouve
  les triplets pythagoriciens $(q^2 - p^2,\ 2pq,\ q^2 + p^2)$.
- Dans la suite du sujet, on cherchait le plus grand diviseur commun des trois entiers
  $p^4 - 6p^2q^2 + q^4$, $q^4 - p^4$ et $2pq\,(p^2 + q^2)$, pour décrire les triangles à côtés
  entiers : voir l'exercice 40005.
