---
id: "40885"
title: "Un Germain qui joue au hasard : Sophie ne peut pas dépasser (n − 1)/n"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 60
tags: [probabilite-conditionnelle, probabilite, probabilites-totales, strategie, jeu, telescopage]
adapted_from: null
see_also: ["40884", "40886"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 2 « Bonbons cachés », partie 3 « Une stratégie pour Germain », questions 5 à 8 ; on énonce explicitement que les choix de Sophie n'apportent aucune information sur le paquet, ce que le sujet laisse implicite"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Germain dispose de $n$ boîtes opaques numérotées de $1$ à $n$. Il cache un paquet de bonbons dans l'une d'elles, les autres restent vides, et Sophie essaie de trouver le paquet. Le jeu se déroule en $n - 1$ tours.

- Au tour $1$, Sophie désigne une boîte, sans l'ouvrir.
- À chaque tour $\ell$, pour $\ell = 2, 3, \ldots, n-1$, Germain élimine une boîte vide, non encore éliminée, différente de celle que Sophie vient de désigner. Puis Sophie désigne de nouveau une boîte non éliminée (la même ou une autre).

À la fin du tour $n - 1$, Sophie ouvre la boîte qu'elle désigne et gagne si le paquet s'y trouve. On sait qu'en jouant bien, Sophie peut gagner avec une probabilité au moins égale à $\frac{n-1}{n}$, quoi que fasse Germain. Le but est de montrer qu'elle ne peut pas faire mieux.

Germain adopte la stratégie suivante :

- il choisit **au hasard** (avec équiprobabilité) la boîte où il cache le paquet ;
- à chaque tour $\ell \geqslant 2$, il choisit **au hasard** la boîte qu'il élimine parmi toutes les boîtes permises : vides, non encore éliminées, et différentes de celle que Sophie vient de désigner.

**Notations.** Pour $1 \leqslant \ell \leqslant n - 1$, on note $s_\ell$ le numéro de la boîte que Sophie désigne à la fin du tour $\ell$. Pour $2 \leqslant \ell \leqslant n - 1$, on note $g_\ell$ le numéro de la boîte éliminée par Germain au tour $\ell$.

Plaçons-nous au tour $\ell$, juste après que Germain a éliminé la boîte $g_\ell$, avant que Sophie ne choisisse $s_\ell$. Pour toute boîte $b$ non encore éliminée, on note $p_\ell(b)$ la probabilité que le paquet soit dans la boîte $b$, sachant $s_1, s_2, \ldots, s_{\ell-1}$ et $g_2, g_3, \ldots, g_\ell$. Au tour $1$, on ne sait rien : $p_1(b)$ est simplement la probabilité que le paquet soit dans $b$.

Sophie ne sait jamais où est le paquet : chacun de ses choix ne dépend que de ce qu'elle a vu. On admet que, pour cette raison, apprendre le choix $s_{\ell-1}$ de Sophie ne change pas les probabilités des boîtes : sachant $s_1, \ldots, s_{\ell-1}$ et $g_2, \ldots, g_{\ell-1}$, la probabilité que le paquet soit dans $b$ est encore $p_{\ell-1}(b)$.

1. Donner $p_1(b)$ pour tout $b$ tel que $1 \leqslant b \leqslant n$.
2. Soit $\ell$ un entier tel que $2 \leqslant \ell \leqslant n-1$, et soit $b$ une boîte différente de $g_2, \ldots, g_\ell$ et de $s_{\ell-1}$. Démontrer que
$$\frac{p_\ell(s_{\ell-1})}{p_\ell(b)} = \frac{n - \ell}{n + 1 - \ell} \times \frac{p_{\ell-1}(s_{\ell-1})}{p_{\ell-1}(b)}.$$
3. Soit $\ell$ un entier tel que $2 \leqslant \ell \leqslant n-1$, et soit $b$ et $c$ deux boîtes non éliminées à la fin du tour $\ell$. Démontrer que
$$p_\ell(b) \geqslant \frac{n - \ell}{n - 1}\, p_\ell(c).$$
4. En déduire que, face à cette stratégie de Germain, Sophie ne peut jamais gagner avec une probabilité strictement supérieure à $\frac{n-1}{n}$, quelle que soit sa façon de jouer.

## Hints

1. **Question 2.** Utilisez la formule $P_{H \cap G}(A) = \frac{P_H(A) \times P_{H \cap A}(G)}{P_H(G)}$, où $H$ est l'événement « ce qui s'est passé avant l'élimination du tour $\ell$ », $G$ l'événement « Germain élimine $g_\ell$ » et $A$ l'événement « le paquet est dans telle boîte ».
2. **Question 2.** Avant l'élimination du tour $\ell$, combien de boîtes restent en jeu ? Si le paquet est dans $s_{\ell-1}$, parmi combien de boîtes Germain choisit-il ? Et si le paquet est dans $b$ ?
3. **Question 3.** Faites le même calcul pour deux boîtes $b$ et $c$ toutes deux différentes de $s_{\ell-1}$ : leur rapport change-t-il pendant le tour $\ell$ ?
4. **Question 3.** À chaque tour $j$, seule la probabilité de la boîte $s_{j-1}$ est multipliée, relativement aux autres, par $\frac{n-j}{n+1-j}$. Le produit de tous ces facteurs pour $j = 2, \ldots, \ell$ se simplifie beaucoup.
5. **Question 4.** À la fin du jeu, il reste deux boîtes, et la somme de leurs probabilités vaut $1$.

## Solution

Notons $A_x$ l'événement « le paquet est dans la boîte $x$ ».

**1.** Germain choisit la boîte du paquet au hasard parmi $n$ : pour tout $b$, $p_1(b) = \frac{1}{n}$.

**2.** Notons $H$ l'événement « les choix observés jusqu'ici sont $s_1, g_2, s_2, \ldots, g_{\ell-1}, s_{\ell-1}$ », et $G$ l'événement « au tour $\ell$, Germain élimine la boîte $g_\ell$ ». Par définition et d'après le résultat admis :

$$p_{\ell-1}(x) = P_H(A_x) \quad \text{et} \quad p_\ell(x) = P_{H \cap G}(A_x).$$

La formule des probabilités conditionnelles, appliquée à la probabilité $P_H$, donne

$$p_\ell(x) = \frac{P_H(A_x \cap G)}{P_H(G)} = \frac{p_{\ell-1}(x) \times P_{H \cap A_x}(G)}{P_H(G)}.$$

Calculons $P_{H \cap A_x}(G)$, la probabilité que Germain élimine $g_\ell$ quand on sait où est le paquet. Avant l'élimination du tour $\ell$, Germain a déjà éliminé $\ell - 2$ boîtes (aux tours $2$ à $\ell - 1$), donc il en reste $n - \ell + 2$ en jeu.

- Si le paquet est dans $s_{\ell-1}$, les boîtes permises sont toutes les boîtes en jeu sauf $s_{\ell-1}$ : il y en a $n + 1 - \ell$, et Germain en tire une au hasard. Donc $P_{H \cap A_{s_{\ell-1}}}(G) = \frac{1}{n+1-\ell}$.
- Si le paquet est dans une boîte $b$ différente de $s_{\ell-1}$ et de $g_\ell$, les boîtes permises sont les boîtes en jeu sauf $s_{\ell-1}$ et $b$ : il y en a $n - \ell$, qui vaut au moins $1$ puisque $\ell \leqslant n - 1$. Donc $P_{H \cap A_b}(G) = \frac{1}{n - \ell}$.

Ces probabilités sont toutes non nulles. Une boîte non éliminée a donc une probabilité non nulle de contenir le paquet à chaque tour (c'est vrai au tour $1$ et cela se transmet d'un tour au suivant), et l'on peut diviser. En faisant le quotient des deux expressions de $p_\ell$, le dénominateur $P_H(G)$ disparaît :

$$\frac{p_\ell(s_{\ell-1})}{p_\ell(b)} = \frac{p_{\ell-1}(s_{\ell-1}) \times \frac{1}{n+1-\ell}}{p_{\ell-1}(b) \times \frac{1}{n-\ell}} = \frac{n-\ell}{n+1-\ell} \times \frac{p_{\ell-1}(s_{\ell-1})}{p_{\ell-1}(b)}.$$

**3.** Le même calcul, fait pour deux boîtes $b$ et $c$ toutes deux différentes de $s_{\ell-1}$ et non éliminées, donne le même facteur $\frac{1}{n-\ell}$ pour chacune, donc

$$\frac{p_\ell(b)}{p_\ell(c)} = \frac{p_{\ell-1}(b)}{p_{\ell-1}(c)}.$$

Autrement dit, pendant le tour $\ell$, les rapports entre les probabilités des boîtes restantes ne changent pas, sauf pour la boîte $s_{\ell-1}$ dont la probabilité est multipliée, relativement aux autres, par $c_\ell = \frac{n-\ell}{n+1-\ell}$.

Pour une boîte $x$ et un tour $\ell$, notons $a_\ell(x)$ le produit des facteurs $c_j$ pour les tours $j \in \{2, \ldots, \ell\}$ tels que $x = s_{j-1}$, avec $a_\ell(x) = 1$ s'il n'y a aucun tel tour (en particulier $a_1(x) = 1$). D'un tour au suivant, $a_\ell(x) = c_\ell\, a_{\ell-1}(x)$ si $x = s_{\ell-1}$, et $a_\ell(x) = a_{\ell-1}(x)$ sinon.

Montrons par récurrence sur $\ell$ la propriété : « il existe un réel $K_\ell > 0$ tel que $p_\ell(x) = K_\ell\, a_\ell(x)$ pour toute boîte $x$ non éliminée à la fin du tour $\ell$ ».

*Initialisation.* Pour $\ell = 1$, $p_1(x) = \frac{1}{n}$ et $a_1(x) = 1$ : $K_1 = \frac{1}{n}$ convient.

*Hérédité.* Supposons la propriété vraie au tour $\ell - 1$, pour un $\ell$ tel que $2 \leqslant \ell \leqslant n - 1$. Soit $x$ une boîte non éliminée à la fin du tour $\ell$ ; elle ne l'était pas non plus à la fin du tour $\ell - 1$. Le calcul de la question 2 donne

$$p_\ell(x) = \frac{p_{\ell-1}(x) \times P_{H \cap A_x}(G)}{P_H(G)},$$

avec $P_{H \cap A_x}(G) = \frac{1}{n+1-\ell} = \frac{c_\ell}{n-\ell}$ si $x = s_{\ell-1}$, et $P_{H \cap A_x}(G) = \frac{1}{n-\ell}$ sinon. Dans les deux cas, $p_{\ell-1}(x) \times P_{H \cap A_x}(G) = \frac{K_{\ell-1}}{n-\ell}\, a_\ell(x)$. Donc $p_\ell(x) = K_\ell\, a_\ell(x)$ avec $K_\ell = \frac{K_{\ell-1}}{(n-\ell)\, P_H(G)} > 0$, un nombre qui ne dépend pas de $x$. La propriété est vraie au tour $\ell$.

Par conséquent, pour deux boîtes $b$ et $c$ non éliminées à la fin du tour $\ell$, le nombre $K_\ell$ se simplifie :

$$\frac{p_\ell(b)}{p_\ell(c)} = \frac{a_\ell(b)}{a_\ell(c)}.$$

Encadrons maintenant $a_\ell(x)$. Chaque facteur $c_j$ est compris entre $0$ et $1$. Le produit de **tous** les facteurs, de $j = 2$ à $j = \ell$, se simplifie en cascade :

$$c_2 \times c_3 \times \cdots \times c_\ell = \frac{n-2}{n-1} \times \frac{n-3}{n-2} \times \cdots \times \frac{n-\ell}{n+1-\ell} = \frac{n-\ell}{n-1}.$$

Le nombre $a_\ell(x)$ est le produit d'une partie seulement de ces facteurs. Comme les facteurs omis sont au plus $1$, on a

$$\frac{n-\ell}{n-1} \leqslant a_\ell(x) \leqslant 1.$$

Finalement,

$$\frac{p_\ell(b)}{p_\ell(c)} = \frac{a_\ell(b)}{a_\ell(c)} \geqslant \frac{(n-\ell)/(n-1)}{1} = \frac{n-\ell}{n-1}, \quad \text{c'est-à-dire} \quad p_\ell(b) \geqslant \frac{n-\ell}{n-1}\, p_\ell(c).$$

**4.** À la fin du tour $n - 1$, Germain a éliminé $n - 2$ boîtes : il en reste deux, notées $b$ et $c$. Le paquet n'est jamais éliminé, donc il est dans l'une des deux : $p_{n-1}(b) + p_{n-1}(c) = 1$.

La question 3 avec $\ell = n - 1$ donne $p_{n-1}(b) \geqslant \frac{1}{n-1}\, p_{n-1}(c)$. Donc

$$1 = p_{n-1}(b) + p_{n-1}(c) \geqslant \left(\frac{1}{n-1} + 1\right) p_{n-1}(c) = \frac{n}{n-1}\, p_{n-1}(c),$$

soit $p_{n-1}(c) \leqslant \frac{n-1}{n}$. Il en va de même pour $b$. Ainsi, quel que soit le déroulement du jeu, chacune des deux boîtes finales contient le paquet avec une probabilité au plus $\frac{n-1}{n}$, sachant tout ce que Sophie a vu.

Sophie choisit sa dernière boîte $s_{n-1}$ à partir de ce qu'elle a vu, sans rien savoir de plus. Pour chaque déroulement possible $D$ du jeu jusqu'à la dernière élimination, sa probabilité de gagner sachant $D$ est donc au plus $\frac{n-1}{n}$ : c'est $p_{n-1}$ de la boîte qu'elle choisit, ou, si elle tire sa décision au sort, une moyenne de $p_{n-1}(b)$ et $p_{n-1}(c)$. Ces déroulements sont en nombre fini et forment une partition, donc, par la formule des probabilités totales,

$$P(\text{Sophie gagne}) = \sum_D P(D) \times P_D(\text{Sophie gagne}) \leqslant \frac{n-1}{n} \sum_D P(D) = \frac{n-1}{n}.$$

Conclusion : face à ce Germain, aucune stratégie ne permet à Sophie de dépasser $\frac{n-1}{n}$.

**Bilan.** Quand Germain élimine au hasard, chaque tour n'apprend presque rien à Sophie : seule la boîte qu'elle vient de désigner voit sa probabilité baisser un peu, par le facteur $\frac{n-\ell}{n+1-\ell}$. Même cumulés, ces facteurs ne peuvent jamais rendre une boîte plus de $n - 1$ fois plus probable qu'une autre, et la meilleure chance finale reste $\frac{n-1}{n}$, ce que la stratégie « garder jusqu'au bout puis changer » atteint déjà.

## Going further

- Pour $n = 4$, faites l'arbre complet quand Sophie garde la boîte $1$ jusqu'au tour $3$, puis vérifiez la formule de la question 2 sur chaque branche.
- Dans la dernière partie du sujet, Germain et Sophie deviennent alliés : ils peuvent convenir d'un code à l'avance, Germain devant toujours cacher le paquet au hasard. Pour quelles valeurs de $n$ peuvent-ils garantir que Sophie trouve le paquet ?
- Pour le meneur de club : d'après le rapport du jury, cette partie n'a été traitée que dans de très rares copies.
