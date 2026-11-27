---
id: "40602"
title: "Un module entre 0 et 1 parmi les a²ⁿ + a⁴ⁿ"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [nombres-complexes, maths-expertes, module, argument, cercle-unite, cosinus, disjonction-de-cas, conjugue]
adapted_from: null
see_also: ["40601", "40603"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème I « Parties de C de type S », partie C, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Une partie $\mathcal{A}$ non vide de $\mathbb{C}$ est dite *de type S* si, pour tous nombres
complexes $z_1$ et $z_2$ de $\mathcal{A}$ (égaux ou non), le produit $z_1 z_2$ et la somme
$z_1^2 + z_2^2$ sont encore dans $\mathcal{A}$.

Pour une partie $\mathcal{A}$ de type S, on note $b(\mathcal{A})$ le nombre d'éléments $z$ de
$\mathcal{A}$ dont le module $|z|$ est inférieur ou égal à $1$. On écrit
$b(\mathcal{A}) = \infty$ s'il y en a une infinité.

1. Soit $\mathcal{A}$ une partie de type S. On suppose qu'il existe $a \in \mathcal{A}$ tel que
   $0 < |a| < 1$. Montrer que $b(\mathcal{A}) = \infty$.
2. Dans cette question, $a$ est un nombre complexe de module $1$. On note $\theta$ son unique
   argument dans l'intervalle $]-\pi, \pi]$. On suppose que $\theta$ n'est ni un multiple de
   $\frac{\pi}{6}$, ni un multiple de $\frac{\pi}{4}$.

   a) Montrer que si $\theta \in ]\frac{\pi}{6}, \frac{2\pi}{3}[$, alors l'un des deux
   nombres $a^2 + a^4$ ou $a^4 + a^8$ a un module non nul et strictement inférieur à $1$.

   b) Montrer que si $\theta \in ]0, \frac{\pi}{6}[$, il existe un entier $n \geq 1$
   tel que $0 < |a^{2n} + a^{4n}| < 1$.

   c) Montrer que si $\theta \in ]-\frac{2\pi}{3}, 0[$, il existe un entier $n \geq 1$
   tel que $0 < |a^{2n} + a^{4n}| < 1$.

   d) Conclure qu'il existe toujours un entier $n \geq 1$ tel que $0 < |a^{2n} + a^{4n}| < 1$.

## Hints

1. **Question 1.** Penser aux puissances de $a$. Sont-elles dans $\mathcal{A}$ ? Sont-elles
   toutes différentes ?
2. **Question 2.** Commencer par calculer $|a^{2n} + a^{4n}|$ en fonction de $\theta$ : mettre
   $a^{3n}$ en facteur.
3. **Question 2.** On trouve $|a^{2n} + a^{4n}| = 2\,|\cos(n\theta)|$. La condition cherchée
   devient $0 < |\cos(n\theta)| < \frac{1}{2}$. Où se trouvent, sur le cercle trigonométrique,
   les angles qui la vérifient ?
4. **Question 2.** Pour a), séparer les cas
   $\theta \in ]\frac{\pi}{3}, \frac{2\pi}{3}[$ et
   $\theta \in ]\frac{\pi}{6}, \frac{\pi}{3}[$.
5. **Question 2.** Pour b), les angles $\theta, 2\theta, 3\theta, \ldots$ avancent par pas plus
   petits que $\frac{\pi}{6}$. Peuvent-ils sauter par-dessus l'intervalle
   $]\frac{\pi}{3}, \frac{\pi}{2}[$ ?
6. **Question 2.** Pour c), utiliser le conjugué $\overline{a}$. Pour d), utiliser $-a$.

## Solution

**1.** Le produit de deux éléments de $\mathcal{A}$ est dans $\mathcal{A}$, donc par récurrence
toutes les puissances $a^n$ ($n \geq 1$) sont dans $\mathcal{A}$. Leurs modules
$|a^n| = |a|^n$ sont dans $]0, 1[$ et forment une suite strictement décroissante, puisque
$0 < |a| < 1$. Les nombres $a^n$ sont donc deux à deux distincts, et ils sont tous de module au
plus $1$. **Conclusion :** $b(\mathcal{A}) = \infty$.

**2.** *Un calcul préliminaire.* On a $a = e^{i\theta}$. Pour tout entier $n \geq 1$,
$$a^{2n} + a^{4n} = a^{3n}\left(a^{-n} + a^{n}\right) = a^{3n}\left(e^{-in\theta} + e^{in\theta}\right) = 2\cos(n\theta)\, a^{3n} .$$
Comme $|a^{3n}| = 1$, on obtient
$$|a^{2n} + a^{4n}| = 2\,|\cos(n\theta)| .$$
Donc $0 < |a^{2n} + a^{4n}| < 1$ équivaut à $0 < |\cos(n\theta)| < \frac{1}{2}$. Pour un angle
$x \in ]\frac{\pi}{3}, \frac{2\pi}{3}[$ différent de $\frac{\pi}{2}$, on a
$-\frac{1}{2} < \cos x < \frac{1}{2}$ et $\cos x \neq 0$, donc $x$ convient. Il suffit donc de
trouver $n$ tel que $n\theta$ soit dans cet intervalle, sans être égal à $\frac{\pi}{2}$.

a) *Si $\theta \in ]\frac{\pi}{3}, \frac{2\pi}{3}[$.* Comme $\theta \neq \frac{\pi}{2}$
(c'est un multiple de $\frac{\pi}{6}$), $n = 1$ convient : $0 < |a^2 + a^4| < 1$.

*Si $\theta \in ]\frac{\pi}{6}, \frac{\pi}{3}]$.* On a $\theta \neq \frac{\pi}{3}$ et
$\theta \neq \frac{\pi}{4}$ (multiples interdits), donc
$\theta \in ]\frac{\pi}{6}, \frac{\pi}{3}[$ et $\theta \neq \frac{\pi}{4}$. Alors
$2\theta \in ]\frac{\pi}{3}, \frac{2\pi}{3}[$ et $2\theta \neq \frac{\pi}{2}$, donc $n = 2$
convient : $0 < |a^4 + a^8| < 1$.

b) Soit $\theta \in ]0, \frac{\pi}{6}[$. La suite $n\theta$ tend vers $+\infty$, donc il
existe des entiers $n$ tels que $n\theta > \frac{\pi}{3}$ ; soit $n$ le plus petit. Comme
$\theta < \frac{\pi}{3}$, on a $n \geq 2$, et $(n - 1)\theta \leq \frac{\pi}{3}$ par minimalité.
Donc
$$\frac{\pi}{3} < n\theta = (n - 1)\theta + \theta < \frac{\pi}{3} + \frac{\pi}{6} = \frac{\pi}{2} .$$
Ainsi $\cos(n\theta) \in ]0, \frac{1}{2}[$ et $0 < |a^{2n} + a^{4n}| < 1$.

c) Soit $\theta \in ]-\frac{2\pi}{3}, 0[$. Le conjugué $\overline{a}$ est de module $1$
et a pour argument $-\theta \in ]0, \frac{2\pi}{3}[$, qui n'est toujours ni un multiple
de $\frac{\pi}{6}$ ni un multiple de $\frac{\pi}{4}$ ; en particulier $-\theta \neq \frac{\pi}{6}$.
D'après a) ou b) appliqués à $\overline{a}$, il existe $n \geq 1$ tel que
$0 < |\overline{a}^{2n} + \overline{a}^{4n}| < 1$. Or
$\overline{a}^{2n} + \overline{a}^{4n} = \overline{a^{2n} + a^{4n}}$ a le même module que
$a^{2n} + a^{4n}$. Donc $n$ convient pour $a$.

d) Les cas a), b), c) couvrent $]-\frac{2\pi}{3}, \frac{2\pi}{3}[$, sauf $0$ et
$\frac{\pi}{6}$ qui sont exclus. Les valeurs $\pm\frac{2\pi}{3}$ et $\pi$ sont aussi exclues. Il
reste $\theta \in ]\frac{2\pi}{3}, \pi[$ ou $\theta \in ]-\pi, -\frac{2\pi}{3}[$.

Considérons alors $-a$, de module $1$. Son argument est $\theta - \pi$ ou $\theta + \pi$, qui
n'est toujours ni un multiple de $\frac{\pi}{6}$ ni un multiple de $\frac{\pi}{4}$, car $\pi$ en
est un. De plus $(-a)^{2n} = a^{2n}$ et $(-a)^{4n} = a^{4n}$.

- Si $\theta \in ]\frac{2\pi}{3}, \pi[$, l'argument de $-a$ est
  $\theta - \pi \in ]-\frac{\pi}{3}, 0[$ : le cas c) s'applique à $-a$.
- Si $\theta \in ]-\pi, -\frac{2\pi}{3}[$, l'argument de $-a$ est
  $\theta + \pi \in ]0, \frac{\pi}{3}[$, différent de $\frac{\pi}{6}$ : le cas a) ou
  b) s'applique à $-a$.

Dans les deux cas on obtient $n \geq 1$ tel que $0 < |a^{2n} + a^{4n}| < 1$.

**Conclusion :** pour tout complexe $a$ de module $1$ dont l'argument n'est ni un multiple de
$\frac{\pi}{6}$ ni un multiple de $\frac{\pi}{4}$, il existe $n \geq 1$ tel que
$0 < |a^{2n} + a^{4n}| < 1$.

*Conséquence.* Si une partie $\mathcal{A}$ de type S contient un tel $a$, alors $a^n$ et $a^{2n}$
sont dans $\mathcal{A}$, donc aussi $(a^n)^2 + (a^{2n})^2 = a^{2n} + a^{4n}$, dont le module est
dans $]0, 1[$. D'après la question 1, $b(\mathcal{A}) = \infty$.

**Bilan.** Une partie de type S qui contient un élément de module strictement compris entre $0$
et $1$ a une infinité d'éléments dans le disque de rayon $1$. Il en est de même si elle contient
un nombre de module $1$ dont l'argument n'est multiple ni de $\frac{\pi}{6}$ ni de
$\frac{\pi}{4}$ : la somme de carrés $a^{2n} + a^{4n}$, bien choisie, tombe strictement entre
$0$ et $1$.

## Going further

- Pourquoi l'hypothèse sur $\theta$ est-elle nécessaire ? Pour $\theta = \frac{\pi}{4}$ ou
  $\theta = \frac{\pi}{6}$, quelles valeurs peut prendre $2\,|\cos(n\theta)|$ ?
- Dans la suite du sujet, on en déduisait que si $b(\mathcal{A})$ est fini et au moins égal à
  $2$, les éléments non nuls de $\mathcal{A}$ dans le disque sont des racines huitièmes ou
  douzièmes de l'unité, donc $b(\mathcal{A}) \leq 17$, puis on trouvait toutes les valeurs
  possibles de $b(\mathcal{A})$ : voir l'exercice 40603.
