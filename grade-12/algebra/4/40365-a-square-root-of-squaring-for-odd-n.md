---
id: "40365"
title: "f(f(z)) = z² sur les racines de l'unité : le cas n impair, et les exemples n = 5, 7, 9"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [nombres-complexes, racines-de-lunite, equation-fonctionnelle, maths-expertes, bijection, construction, cycle, composee]
adapted_from: null
see_also: ["40364"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2011, mathématiques, série S"
  reference: "cg-2011-s-sujet.pdf, exercice 3 « La racine du carré », question 5° (a à e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2011-s-sujet.pdf"
---

## Statement

Pour un entier $m \geq 1$, on note $U_m$ l'ensemble des racines $m$-ièmes de l'unité :

$$U_m = \{ \mathrm{e}^{2ik\pi/m} : k \text{ entier}, \ 0 \leq k \leq m - 1 \} ,$$

c'est-à-dire l'ensemble des nombres complexes $z$ tels que $z^m = 1$.

On se donne un entier $n \geq 1$ **impair**. On appelle *solution* une fonction $f$, définie sur
$U_{2n}$ et à valeurs dans $U_{2n}$, telle que $f(f(z)) = z^2$ pour tout $z \in U_{2n}$.

On a montré dans une partie précédente les résultats suivants, que l'on admet :

- l'ensemble des carrés $\{ z^2 : z \in U_{2n} \}$ est égal à $U_n$, et $U_n \subset U_{2n}$ ;
- si $f$ est une solution, alors $f(z^2) = (f(z))^2$ pour tout $z \in U_{2n}$ ;
- si $n$ est un multiple de $3$, il n'existe pas de solution.

On note $g$ la fonction définie sur $U_n$ par $g(z) = z^2$.

1. Vérifier que $g$ est une bijection de $U_n$ sur $U_n$.
2. On suppose qu'il existe une solution $f$. Montrer qu'il existe une fonction
   $\varphi : U_n \to U_n$ telle que $\varphi \circ \varphi = g$.
3. Réciproquement, on suppose qu'il existe une fonction $\varphi : U_n \to U_n$ telle que
   $\varphi \circ \varphi = g$. Construire alors une solution $f$.
4. Exemple : on prend $n = 5$. Existe-t-il une solution ? Si oui, en construire une.
5. Même question avec $n = 7$, puis avec $n = 9$.

## Hints

1. **Question 1.** Comme $n$ est impair, $\frac{n+1}{2}$ est un entier. Que vaut le carré de
   $z^{(n+1)/2}$ quand $z \in U_n$ ?
2. **Question 2.** Prendre pour $\varphi$ la fonction $f$, mais seulement sur $U_n$. Il faut
   vérifier que $f$ envoie $U_n$ dans $U_n$ : tout $w \in U_n$ est un carré $u^2$ avec
   $u \in U_n$.
3. **Question 3.** Montrer que pour tout $z \in U_{2n}$, on a $z^n = 1$ ou $z^n = -1$, et en
   déduire que $z$ ou $-z$ est dans $U_n$. Comment définir $f(-z)$ quand on connaît $\varphi(z)$ ?
4. **Question 4.** Avec $\omega = \mathrm{e}^{2i\pi/5}$, suivre les images successives de
   $\omega$ par $g$ : on fait un cycle de longueur $4$.
5. **Question 4.** Si $\varphi \circ \varphi = g$, montrer que $\varphi$ commute avec $g$
   ($\varphi \circ g = g \circ \varphi$), que $\varphi(1) = 1$ et que $\varphi$ est injective.
   Où $\varphi$ peut-elle envoyer $\omega$ ?
6. **Question 5.** Pour $n = 7$, calculer $g \circ g \circ g$. Que vaut alors le carré de
   $g \circ g$ ?

## Solution

**1.** Pour $z \in U_n$, $(z^2)^n = (z^n)^2 = 1$, donc $g$ envoie bien $U_n$ dans $U_n$. Comme $n$
est impair, $q = \frac{n+1}{2}$ est un entier. Notons $h(z) = z^q$ pour $z \in U_n$ ; on a
$h(z) \in U_n$ car $(z^q)^n = (z^n)^q = 1$. Alors

$$g(h(z)) = z^{2q} = z^{n+1} = z^n \times z = z \qquad \text{et} \qquad h(g(z)) = z^{2q} = z .$$

Donc $g$ est une bijection de $U_n$ sur $U_n$, et sa réciproque est $h$.

**2.** Soit $f$ une solution. Montrons d'abord que $f$ envoie $U_n$ dans $U_n$. Soit $w \in U_n$.
Comme $g$ est bijective, il existe $u \in U_n$ tel que $w = u^2$. Comme $U_n \subset U_{2n}$, le
résultat admis donne $f(w) = f(u^2) = (f(u))^2$. Or $f(u) \in U_{2n}$, et le carré d'un élément
de $U_{2n}$ est dans $U_n$. Donc $f(w) \in U_n$.

Notons $\varphi$ la fonction $f$ restreinte à $U_n$ : c'est une fonction de $U_n$ dans $U_n$, et
pour $w \in U_n$, $\varphi(\varphi(w)) = f(f(w)) = w^2 = g(w)$. Donc $\varphi \circ \varphi = g$.

**3.** *Un élément de $U_{2n}$ est dans $U_n$ au signe près.* Soit $z \in U_{2n}$. Alors
$(z^n)^2 = z^{2n} = 1$, donc $z^n = 1$ ou $z^n = -1$. Dans le premier cas, $z \in U_n$. Dans le
second, comme $n$ est impair, $(-z)^n = -z^n = 1$, donc $-z \in U_n$.

*La construction.* Posons, pour $z \in U_{2n}$ :

$$f(z) = \varphi(z) \ \text{ si } z \in U_n , \qquad f(z) = \varphi(-z) \ \text{ sinon.}$$

C'est bien défini par ce qui précède, et $f$ prend ses valeurs dans $U_n \subset U_{2n}$.

- Si $z \in U_n$ : $f(z) = \varphi(z)$ est dans $U_n$, donc $f(f(z)) = \varphi(\varphi(z)) = g(z) = z^2$.
- Sinon : $-z \in U_n$ et $f(z) = \varphi(-z)$ est dans $U_n$, donc
  $f(f(z)) = \varphi(\varphi(-z)) = g(-z) = (-z)^2 = z^2$.

Donc $f$ est une solution.

**Conclusion des questions 2 et 3 :** pour $n$ impair, il existe une solution si et seulement si
il existe $\varphi : U_n \to U_n$ telle que $\varphi \circ \varphi = g$.

**4.** Soit $\omega = \mathrm{e}^{2i\pi/5}$, de sorte que $U_5 = \{1, \omega, \omega^2, \omega^3, \omega^4\}$.
Comme $\omega^5 = 1$, on a $g(1) = 1$ et

$$\omega \xrightarrow{g} \omega^2 \xrightarrow{g} \omega^4 \xrightarrow{g} \omega^8 = \omega^3 \xrightarrow{g} \omega^6 = \omega .$$

Notons $c_0 = \omega$, $c_1 = \omega^2$, $c_2 = \omega^4$, $c_3 = \omega^3$ : $g$ envoie chaque
$c_k$ sur le suivant, et $c_3$ sur $c_0$.

Supposons qu'il existe $\varphi$ avec $\varphi \circ \varphi = g$.

- *$\varphi$ commute avec $g$* : $\varphi \circ g = \varphi \circ \varphi \circ \varphi = g \circ \varphi$.
- *$\varphi$ est injective* : si $\varphi(x) = \varphi(y)$, alors $g(x) = g(y)$, donc $x = y$
  car $g$ est bijective.
- *$\varphi(1) = 1$* : posons $b = \varphi(1)$. Alors $\varphi(b) = g(1) = 1$, puis
  $b = \varphi(1) = \varphi(\varphi(b)) = g(b) = b^2$, donc $b = 1$ (car $b \neq 0$).

Par injectivité, aucun $c_k$ n'est envoyé sur $1$ : $\varphi(c_0)$ est l'un des $c_m$, avec
$m \in \{0, 1, 2, 3\}$. Comme $\varphi$ commute avec $g$, on a
$\varphi(c_1) = \varphi(g(c_0)) = g(\varphi(c_0)) = g(c_m)$ : en avançant de un dans le cycle
au départ, on avance de un à l'arrivée. Ainsi $\varphi$ fait avancer chaque élément du cycle de
$m$ crans, et $\varphi \circ \varphi$ le fait avancer de $2m$ crans. Or $2m$ vaut $0$, $2$, $4$
ou $6$ : avancer de $0$ ou de $4$ crans ramène au point de départ, avancer de $2$ ou de $6$
crans revient à avancer de $2$. Mais $g$ fait avancer de **un** cran. Donc
$\varphi \circ \varphi \neq g$ : contradiction.

**Conclusion :** pour $n = 5$, il n'y a pas de solution, bien que $5$ soit impair et ne soit pas
un multiple de $3$.

**5.** *Pour $n = 7$.* Pour $z \in U_7$, on a $g(g(g(z))) = z^8 = z^7 \times z = z$. Posons
$\varphi = g \circ g$, c'est-à-dire $\varphi(z) = z^4$, qui envoie $U_7$ dans $U_7$. Alors

$$\varphi(\varphi(z)) = (z^4)^4 = z^{16} = z^{14} \times z^2 = z^2 = g(z) .$$

La construction de la question 3 donne $f(z) = z^4$ si $z \in U_7$ et $f(z) = (-z)^4 = z^4$
sinon. La fonction $f(z) = z^4$ est donc une solution sur $U_{14}$, ce qu'on vérifie aussi
directement : $f(f(z)) = z^{16} = z^{14} \times z^2 = z^2$ pour $z \in U_{14}$.

*Pour $n = 9$.* Comme $9$ est un multiple de $3$, il n'y a pas de solution d'après le résultat
admis.

**Conclusion :** il n'y a pas de solution pour $n = 5$ ni pour $n = 9$ ; pour $n = 7$, la
fonction $f(z) = z^4$ est une solution.

**Bilan.** Pour $n$ impair, chercher $f$ sur $U_{2n}$ revient à chercher une « racine carrée »
$\varphi$ de l'élévation au carré $g$ sur $U_n$, et on passe de $\varphi$ à $f$ en donnant la
même image à $z$ et à $-z$. Tout dépend alors de la façon dont $g$ fait tourner les racines :
pour $n = 7$ les cycles sont de longueur $3$ et $g \circ g$ convient, pour $n = 5$ un seul cycle
de longueur $4$ n'a pas de racine carrée.

## Going further

- Pour $n = 7$, trouver toutes les fonctions $\varphi : U_7 \to U_7$ telles que
  $\varphi \circ \varphi = g$. (Il y en a $4$.)
- Pour $n = 17$, montrer que $g$ partage les $16$ racines différentes de $1$ en deux cycles de
  longueur $8$, et construire une solution en faisant passer $\varphi$ d'un cycle à l'autre.
- Parmi les entiers $n$ de $1$ à $25$, les seuls pour lesquels il existe une solution sont
  $1$, $7$, $17$ et $23$. Pouvez-vous le démontrer pour $n = 23$ ?
