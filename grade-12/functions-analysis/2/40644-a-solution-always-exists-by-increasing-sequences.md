---
id: "40644"
title: "Chaque point bleu est la moyenne de ses voisins : une solution existe toujours"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 40
tags: [moyenne, graphe, voisins, recurrence, suite-croissante, limite, passage-a-la-limite, existence]
adapted_from: null
see_also: ["40643", "40645", "8836"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème II « Un si discret Monsieur Dirichlet », partie B « Étude du cas général », sous-partie « Existence d'une solution », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

Soit $\mathcal{S}$ un ensemble fini de points du plan. Certaines paires de points de
$\mathcal{S}$ sont reliées par des traits, de sorte qu'en suivant les traits on peut aller de
n'importe quel point à n'importe quel autre (un point n'est jamais relié à lui-même). Deux points
reliés par un trait sont dits *voisins*. Le *degré* $d(M)$ d'un point $M$ est son nombre de
voisins.

Chaque point est colorié en jaune ou en bleu, et il y a au moins un point jaune. On note
$\mathcal{J}$ l'ensemble des points jaunes et $\mathcal{B}$ celui des points bleus. On se donne
une fonction $k$ de $\mathcal{J}$ dans $\mathbb{R}$ (un nombre par point jaune), que l'on appelle
une *attribution*, et l'on note $K$ le plus grand des nombres $k(M)$ pour $M \in \mathcal{J}$.

Une *solution pour l'attribution $k$* est une fonction $f : \mathcal{S} \to \mathbb{R}$ telle que

- **(1)** $f(M) = k(M)$ si $M$ est jaune ;
- **(2)** si $M$ est bleu, de degré $d = d(M)$ et de voisins $P_1, \ldots, P_d$ :
  $$f(M) = \frac{f(P_1) + \cdots + f(P_d)}{d}.$$

Autrement dit, la valeur en chaque point bleu est la moyenne des valeurs en ses voisins.

1. Dans cette question, on suppose que $k(M) \geqslant 0$ pour tout $M \in \mathcal{J}$. On
   définit une suite de fonctions $(f_n)$ sur $\mathcal{S}$ :
   - $f_0(M) = k(M)$ si $M$ est jaune, et $f_0(M) = 0$ si $M$ est bleu ;
   - pour tout $n \geqslant 0$, $f_{n+1}(M) = k(M)$ si $M$ est jaune, et, si $M$ est bleu (avec
     les mêmes notations que dans (2)),
     $$f_{n+1}(M) = \frac{f_n(P_1) + \cdots + f_n(P_d)}{d}.$$

   a) Démontrer que, pour tout $n \geqslant 0$ et tout point $M \in \mathcal{S}$,
   $$0 \leqslant f_n(M) \leqslant f_{n+1}(M) \leqslant K.$$

   b) En déduire qu'il existe une solution pour l'attribution $k$.

2. Démontrer que si $f$ est une solution pour l'attribution $k$ et si $\alpha$ est un nombre
   réel, alors la fonction $f + \alpha$ est une solution pour l'attribution $k + \alpha$.

3. En déduire qu'il existe une solution pour toute attribution $k$, sans supposer que ses
   valeurs sont positives.

## Hints

1. **Question 1 a.** Raisonner par récurrence sur $n$, en traitant séparément les points jaunes et
   les points bleus.
2. **Question 1 a.** Deux remarques sur la moyenne de $d$ nombres : si les nombres sont tous entre
   $0$ et $K$, leur moyenne aussi ; et si chaque nombre augmente (ou reste égal), la moyenne
   augmente (ou reste égale).
3. **Question 1 b.** Pour un point $M$ fixé, que sait-on de la suite de nombres
   $(f_n(M))_{n \geqslant 0}$ ?
4. **Question 3.** Ajouter à $k$ une constante bien choisie pour rendre toutes ses valeurs
   positives.

## Solution

On utilisera deux propriétés évidentes de la moyenne $(y_1 + \cdots + y_d)/d$ de $d$
nombres :

- si $0 \leqslant y_j \leqslant K$ pour tout $j$, alors la moyenne est aussi entre $0$ et $K$ ;
- si $y_j \leqslant z_j$ pour tout $j$, alors la moyenne des $y_j$ est inférieure ou égale à
  celle des $z_j$.

**1.** a) Notons $H(n)$ la propriété : « pour tout $M \in \mathcal{S}$,
$0 \leqslant f_n(M) \leqslant f_{n+1}(M) \leqslant K$ ». Remarquons que $K \geqslant 0$, car les
valeurs de $k$ sont positives.

*Initialisation.* Si $M$ est jaune, $f_0(M) = f_1(M) = k(M)$, qui est entre $0$ et $K$. Si $M$
est bleu, $f_0(M) = 0$, et $f_1(M)$ est la moyenne des $f_0(P_j)$, qui sont tous entre $0$ et
$K$ ; donc $0 \leqslant f_1(M) \leqslant K$, et en particulier $f_0(M) = 0 \leqslant f_1(M)$.
Ainsi $H(0)$ est vraie.

*Hérédité.* Supposons $H(n)$ vraie pour un entier $n \geqslant 0$. Si $M$ est jaune,
$f_{n+1}(M) = f_{n+2}(M) = k(M) \in [0, K]$. Si $M$ est bleu, de voisins $P_1, \ldots, P_d$ :
$$f_{n+1}(M) = \frac{f_n(P_1) + \cdots + f_n(P_d)}{d}, \qquad f_{n+2}(M) = \frac{f_{n+1}(P_1) + \cdots + f_{n+1}(P_d)}{d}.$$
D'après $H(n)$, pour chaque $j$, $0 \leqslant f_n(P_j) \leqslant f_{n+1}(P_j) \leqslant K$. Par
les deux propriétés de la moyenne, $0 \leqslant f_{n+1}(M) \leqslant f_{n+2}(M) \leqslant K$.
Donc $H(n+1)$ est vraie.

**Conclusion :** pour tout $n$ et tout $M$, $0 \leqslant f_n(M) \leqslant f_{n+1}(M) \leqslant K$.

b) Fixons un point $M$. La suite $(f_n(M))_{n \geqslant 0}$ est croissante et majorée par $K$,
donc elle converge (théorème de la limite monotone). Notons $f(M)$ sa limite. On définit ainsi
une fonction $f$ sur $\mathcal{S}$, à valeurs dans $[0, K]$.

- Si $M$ est jaune, la suite $(f_n(M))$ est constante égale à $k(M)$, donc $f(M) = k(M)$ : la
  condition (1) est vérifiée.
- Si $M$ est bleu, de voisins $P_1, \ldots, P_d$, on a pour tout $n$
  $$f_{n+1}(M) = \frac{f_n(P_1) + \cdots + f_n(P_d)}{d}.$$
  Le membre de gauche tend vers $f(M)$. Le membre de droite est une somme d'un nombre fini $d$ de
  suites convergentes, divisée par $d$ : il tend vers $(f(P_1) + \cdots + f(P_d))/d$. Par
  unicité de la limite, la condition (2) est vérifiée.

**Conclusion :** $f$ est une solution pour l'attribution $k$.

**2.** Si $M$ est jaune, $(f + \alpha)(M) = k(M) + \alpha = (k + \alpha)(M)$. Si $M$ est bleu,
de voisins $P_1, \ldots, P_d$,
$$\frac{(f(P_1) + \alpha) + \cdots + (f(P_d) + \alpha)}{d} = \frac{f(P_1) + \cdots + f(P_d)}{d} + \frac{d\alpha}{d} = f(M) + \alpha.$$
Donc $f + \alpha$ vérifie (1) et (2) pour l'attribution $k + \alpha$.

**3.** Soit $k$ une attribution quelconque, et $m$ la plus petite des valeurs $k(M)$ (il y a un
nombre fini de points jaunes). L'attribution $k - m$ n'a que des valeurs positives ou nulles :
d'après la question 1, elle admet une solution $g$. D'après la question 2 avec $\alpha = m$, la
fonction $g + m$ est une solution pour l'attribution $(k - m) + m = k$.

**Conclusion :** pour toute attribution $k$, il existe une solution.

**Bilan.** Quels que soient les traits, les couleurs et les nombres de Gustav, Maryam peut
toujours satisfaire la propriété « chaque point bleu porte la moyenne de ses voisins ». Quand
les nombres de Gustav sont positifs, une solution s'obtient comme limite des fonctions $f_n$, et
ses valeurs sont entre $0$ et $K$.

## Going further

- Où a-t-on utilisé qu'on peut aller de n'importe quel point à n'importe quel autre ? Seulement
  pour être sûr que chaque point bleu a au moins un voisin, sans quoi la moyenne n'a pas de
  sens : tant que c'est le cas, l'existence reste vraie sans cette hypothèse. En revanche,
  trouver un schéma *non relié* pour lequel Maryam a plusieurs solutions.
- Dans la suite du sujet, on montrait que la solution est unique quand le schéma est relié
  (exercice 40645). Les premiers exemples se trouvent dans l'exercice 40643.
- Le nom du problème vient du *problème de Dirichlet* : trouver une fonction dont la valeur en
  chaque point intérieur est la moyenne des valeurs voisines, connaissant ses valeurs au bord.
  C'est ainsi qu'on calcule, par exemple, la température d'équilibre d'une plaque dont on
  chauffe les bords.
