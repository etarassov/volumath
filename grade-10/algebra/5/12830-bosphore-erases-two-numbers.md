---
id: "12830"
title: "Bosphore efface deux nombres et écrit √((ab + 1)/2)"
grade: 10
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, invariant, processus, racine-carree, puissances-de-deux, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2023"
  reference: "2023-09_Enonce-Test-5.pdf, test junior, exercice 4 ; corrigé 2023-09_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-5.pdf"
---

## Statement

Soit $n \geq 1$ un entier. Bosphore écrit $n$ fois le nombre $2$ au tableau. Il effectue ensuite $n - 1$ fois de suite l'opération suivante : il choisit deux nombres écrits au tableau, qu'il appelle $a$ et $b$, les efface, et écrit à leur place le nombre

$$\sqrt{\frac{ab + 1}{2}}.$$

À la fin, il ne reste qu'un nombre au tableau, que l'on note $x$. On pose aussi

$$y = \sqrt{\frac{n + 3}{n}}.$$

a) Démontrer que $x \geq y$, quelle que soit la façon dont Bosphore a choisi ses nombres.

b) Démontrer qu'il existe une infinité d'entiers $n \geq 1$ pour lesquels on a forcément $x > y$.

c) Démontrer qu'il existe une infinité d'entiers $n \geq 1$ pour lesquels Bosphore peut s'arranger pour obtenir $x = y$.

## Hints

1. Faites les cas $n = 2$, $n = 3$ et $n = 4$. Pour $n = 4$, comparez deux façons de jouer.
2. Donnez à chaque nombre écrit au tableau un **poids** : le nombre de $2$ de départ qui ont servi à le fabriquer. Pour $k \geq 1$, notez $y_k = \sqrt{\frac{k+3}{k}}$. Que conjecturez-vous sur un nombre de poids $k$ ?
3. Il faut alors montrer que $y_k\, y_\ell \geq 2 y_{k+\ell}^2 - 1$. Élevez au carré, posez $s = k + \ell$ et réduisez au même dénominateur : le facteur $(k - \ell)^2$ doit apparaître.
4. Pour c), regroupez les $2$ deux par deux, puis les résultats deux par deux, et ainsi de suite.

## Solution

### Le poids d'un nombre

On donne à chaque nombre écrit au tableau un **poids** :

- chacun des $2$ du départ a le poids $1$ ;
- quand Bosphore remplace $a$ (de poids $k$) et $b$ (de poids $\ell$) par $\sqrt{\frac{ab+1}{2}}$, ce nouveau nombre reçoit le poids $k + \ell$.

La somme des poids des nombres au tableau ne change pas : elle vaut toujours $n$. À la fin, le nombre $x$ a donc le poids $n$.

Pour tout entier $k \geq 1$, on pose $y_k = \sqrt{(k+3)/k}$. On a $y_1 = \sqrt{4} = 2$, et $y = y_n$.

### Étape 1 : une inégalité entre les y

**Lemme.** Pour tous entiers $k, \ell \geq 1$, on a
$$y_k\, y_\ell \geq 2\, y_{k+\ell}^2 - 1,$$
avec égalité si et seulement si $k = \ell$.

*Preuve.* Posons $s = k + \ell$. D'un côté, $y_k^2\, y_\ell^2 = (k+3)(\ell+3)/(k\ell)$. De l'autre,
$$2\, y_s^2 - 1 = \frac{2(s+3)}{s} - 1 = \frac{s + 6}{s}.$$
Comparons les carrés en réduisant au même dénominateur $k\ell s^2$. Comme $(k+3)(\ell+3) = k\ell + 3s + 9$,
$$s^2 (k\ell + 3s + 9) - k\ell(s + 6)^2 = 3s^3 + 9s^2 - 12k\ell s - 36k\ell = 3s^2(s+3) - 12k\ell(s+3) = 3(s+3)(s^2 - 4k\ell).$$
Or $s^2 - 4k\ell = (k+\ell)^2 - 4k\ell = (k - \ell)^2$. Donc
$$y_k^2\, y_\ell^2 - \left(\frac{s+6}{s}\right)^2 = \frac{3(s+3)(k-\ell)^2}{k\ell s^2} \geq 0,$$
avec égalité si et seulement si $k = \ell$. Les nombres $y_k y_\ell$ et $\frac{s+6}{s}$ sont positifs, donc on peut prendre les racines carrées : $y_k y_\ell \geq \frac{s+6}{s} = 2y_s^2 - 1$, avec égalité si et seulement si $k = \ell$. $\square$

### Étape 2 : une propriété qui reste vraie tout au long du jeu

Considérons la propriété suivante.

> **(P)** Chaque nombre écrit au tableau, de poids $k$, est supérieur ou égal à $y_k$. De plus, s'il est égal à $y_k$, alors $k$ est une puissance de $2$.

**Au départ**, (P) est vraie : chaque nombre vaut $2 = y_1$, son poids est $1 = 2^0$.

**(P) reste vraie après chaque opération.** Supposons (P) vraie avant une opération où Bosphore efface $a$ (de poids $k$) et $b$ (de poids $\ell$) et écrit $c = \sqrt{\frac{ab+1}{2}}$, de poids $k + \ell$. Il suffit de vérifier (P) pour $c$. D'après (P), $a \geq y_k > 0$ et $b \geq y_\ell > 0$, donc, avec le lemme,
$$ab \geq y_k\, y_\ell \geq 2 y_{k+\ell}^2 - 1, \qquad \text{donc} \qquad \frac{ab + 1}{2} \geq y_{k+\ell}^2, \qquad \text{donc} \qquad c \geq y_{k+\ell}.$$
Si $c = y_{k+\ell}$, toutes ces inégalités sont des égalités : $a = y_k$, $b = y_\ell$, et $k = \ell$ d'après le lemme. Par (P) appliquée à $a$, l'entier $k$ est une puissance de $2$, donc $k + \ell = 2k$ aussi. La propriété (P) est donc vraie pour $c$.

Ainsi (P) est vraie jusqu'à la fin, et en particulier pour le dernier nombre $x$, de poids $n$.

### Les trois questions

**a)** D'après (P), $x \geq y_n = y$.

**b)** Si $n$ n'est pas une puissance de $2$, alors d'après (P), $x$ ne peut pas être égal à $y_n$ : on a forcément $x > y$. C'est le cas, par exemple, de tous les entiers impairs $n \geq 3$, qui sont en nombre infini.

**c)** Si deux nombres du tableau valent tous les deux $y_m$, Bosphore peut les remplacer par
$$\sqrt{\frac{y_m^2 + 1}{2}} = \sqrt{\frac{1}{2}\left(\frac{m+3}{m} + 1\right)} = \sqrt{\frac{2m+3}{2m}} = y_{2m}.$$
Supposons $n = 2^j$. Bosphore regroupe les $2^j$ nombres $y_1 = 2$ deux par deux, ce qui donne $2^{j-1}$ nombres égaux à $y_2$. Il les regroupe à nouveau deux par deux, et obtient $2^{j-2}$ nombres égaux à $y_4$, et ainsi de suite. Il fait en tout $2^{j-1} + 2^{j-2} + \cdots + 1 = 2^j - 1 = n - 1$ opérations, et le dernier nombre vaut $y_{2^j} = y_n = y$. Il y a une infinité de puissances de $2$, donc une infinité d'entiers $n$ pour lesquels Bosphore peut obtenir $x = y$.

### Conclusion

On a toujours $x \geq y$. L'égalité est possible exactement quand $n$ est une puissance de $2$ : elle est forcément stricte sinon, et Bosphore peut l'obtenir en regroupant les nombres deux par deux quand $n = 2^j$.

## Going further

1. Pour $n = 3$, Bosphore n'a pas vraiment le choix. Calculez $x$ et vérifiez que $x > \sqrt{2}$.
2. Pour $n = 6$, il y a plusieurs façons de jouer. Laquelle donne le plus petit $x$ ?
