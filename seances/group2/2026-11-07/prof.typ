// Notes pour l'animateur, groupe 2, seance du 2026-11-07.
// Construire depuis la racine du depot :
//   typst compile --root . seances/group2/2026-11-07/prof.typ
#import "commun.typ": *
#show: setup
#show: titres

#doc-title("Fonctions génératrices : notes pour l'animateur",
  "Groupe 2 · 2026-11-07 · Partie 1 : TeSciA 2023, exercice 1 · Partie 2 : fonctions génératrices")

= Déroulé

*Partie 1.* Les élèves traitent l'exercice 1 du TeSciA 2023 (pages TeSciA 1 à 3 de la fiche),
dans les conditions de l'épreuve : une seule bonne réponse par QCM, une réponse fausse retire des
points, donc on ne répond jamais au hasard. Puis correction avec le tableau de la partie 1
ci-dessous. Les questions qui méritent un temps au tableau : M3 (le piège E), M9 (la condition
avant d'élever au carré), L1 (on ne multiplie pas par $x + 1$ sans connaître son signe), M10 et
la rédaction de R1.

*Partie 2.* Le cours, paragraphes 1 à 5 de la partie 2 ci-dessous, est écrit au tableau et
recopié par les élèves : il n'est pas sur leur fiche. Ensuite :
- « À toi », dernière page de la fiche : pour tout le monde, les réponses sont en bas de la même page.
- Problèmes 1 et 2, à donner au tableau (énoncés plus bas) : pour tout le monde.
- Problèmes 3 et 4, à donner au tableau : bonus, pour ceux qui vont vite.
- Pour finir : l'exercice 5 du TeSciA 2023 (pages TeSciA 7 et 8 de la fiche). M39 à M44 se font avec
  un arbre, puis M45 et M46 avec la fonction génératrice. C'est la conclusion prévue de la
  séance : si le temps manque, sauter le problème 2 plutôt que l'exercice 5.

= Rappels : ce que les élèves sont censés savoir

#{
  set text(size: 10pt)
  table(
    columns: (auto, 1fr),
    stroke: 0.4pt + luma(200),
    inset: 5pt,
    [*Polynômes*],
    [Degré, coefficients. Quand on multiplie, les exposants s'ajoutent. Le coefficient de $t^s$
     dans $(a_0 + a_1 t + dots.c)(b_0 + b_1 t + dots.c)$ est $sum_(a + b = s) a_a b_b$.],
    [*Somme $sum$*],
    [$sum_(k = 0)^n u_k = u_0 + u_1 + dots.c + u_n$.],
    [*Binôme de Newton*],
    [$(a + b)^n = sum_(k = 0)^n binom(n, k) a^(n - k) b^k$, avec
     $binom(n, k) = n! / (k! (n - k)!)$.],
    [*Somme géométrique*],
    [$1 + q + q^2 + dots.c + q^n = (1 - q^(n + 1)) / (1 - q)$ pour $q != 1$.],
    [*Dérivées*],
    [$(t^k)' = k t^(k - 1)$ ; $(u^n)' = n u' u^(n - 1)$ ; $(u v)' = u' v + u v'$.],
    [*Valeurs intermédiaires*],
    [Une fonction continue qui change de signe sur un intervalle s'y annule. Conséquence : un
     polynôme de degré impair a au moins une racine réelle, car ses limites en $-oo$ et en
     $+oo$ sont infinies et de signes contraires.],
    [*Espérance*],
    [$EE(X) = sum_k k PP(X = k)$.],
    [*Indépendance*],
    [$X$ et $Y$ indépendantes : $PP(X = a "et" Y = b) = PP(X = a) PP(Y = b)$ pour tous $a$, $b$.],
    [*Probabilités totales*],
    [Si $A_1, dots, A_m$ forment une partition :
     $PP(B) = sum_i PP(A_i) PP_(A_i)(B)$.],
    [*Loi binomiale*],
    [$PP(X = k) = binom(n, k) p^k (1 - p)^(n - k)$ et $EE(X) = n p$.],
  )
}

La fonction génératrice elle-même n'est pas au programme du lycée : c'est le sujet du jour.

= Partie 1 : corrigé de l'exercice 1

#{
  set text(size: 10pt)
  table(
    columns: (auto, auto, 1fr),
    stroke: 0.4pt + luma(200),
    inset: 5pt,
    table.header([*Question*], [*Réponse*], [*Pourquoi*]),
    [M1], [E],
    [Même dénominateur : $(x^2 (x + 1) - (x^2 + 1)) / ((x^2 + 1)(x + 1)) = (x^3 - 1) / ((x^2 + 1)(x + 1))$.],
    [M2], [B],
    [$1/x + 1/x^2 = (x + 1) / x^2$, donc la quantité vaut $x times x^2 / (x + 1) = x^3 / (x + 1)$.],
    [M3], [A],
    [$1/(x + 1) + 1/(x - 1) = (2x) / (x^2 - 1)$, puis
     $(2x) / (x^2 - 1) - 2/x = (2x^2 - 2x^2 + 2) / (x (x^2 - 1)) = 2 / (x (x^2 - 1))$.
     Le piège E a la parenthèse mal placée : $x (x^2) - 1 = x^3 - 1$.],
    [M4], [C],
    [Pour $x != 0$, l'équation équivaut à $x^3 = 1/5$. La fonction cube est strictement
     croissante : une seule solution.],
    [M5], [B],
    [Pour $x != plus.minus 1$ : $x - 1 = 3 (x + 1)$, donc $x = -2$, qui est bien autorisé.],
    [M6], [B],
    [$Delta = 1 - 8/9 = 1/9$, donc $x = (1 plus.minus 1/3) / 4$ : $1/3$ et $1/6$.],
    [M7], [E],
    [La fonction cube est strictement croissante et $2^3 = 8$ : $x > 2$.],
    [M8], [E],
    [Le trinôme ($a = 1 > 0$) est strictement négatif entre ses racines $(1 plus.minus sqrt(5)) / 2$,
     bornes exclues.],
    [M9], [E],
    [Le membre de droite doit être positif, donc $x >= 0$. On élève au carré :
     $x^3 + x = 2x^2$, soit $x (x - 1)^2 = 0$. Solutions $0$ et $1$, toutes deux valables : la
     somme vaut $1$. Piège B : compter $1$ deux fois.],
    [L1], [$#int-oo($-oo$, $-2$) med union med #int-oo($-1$, $+oo$)$],
    [$1/(x + 1) + 1 = (x + 2) / (x + 1) > 0$ : tableau de signes avec $-2$ et $-1$.],
    [M10], [A],
    [$x + y < y$ donne $x < 0$. $x - y > y$ donne $y < x/2 < 0$. On ne peut pas comparer $x$
     et $y$ : $(x, y) = (-2, -3)$ et $(x, y) = (-2, -3/2)$ conviennent tous les deux.],
    [M11], [A (Vrai)],
    [Pour $x <= -2$ : $x^2023 + 5 <= -2^2023 + 5 < 0 < e^x$. L'inégalité est vraie sur
     tout $#int-of($-oo$, $-2$)$.],
    [M12], [D],
    [On développe : $(x + y + z)(x^2 + y^2 + z^2 - x y - y z - z x) = x^3 + y^3 + z^3 - 3 x y z$.],
    [M13], [E],
    [On multiplie par $x - 1$ puis on prend $x = 1$ : $a = (35 - 29) / (1 - 2) = -6$. De même
     $b = (70 - 29) / (2 - 1) = 41$. Donc $a + 2b = 76$.],
    [L2], [$(4, 2, 4)$],
    [$2^z = 2^x$ donne $z = x$. Puis $z^x = (y^2)^x$ avec $x >= 1$ donne $z = y^2$. Donc
     $x = z = y^2$ et $2y^2 + y = 10$, d'où $y = 2$. C'est le seul triplet.],
    [M14], [E (une solution)],
    [Voir R1.],
    [R1], [],
    [Soit $f(x) = e^x - x - 1$. Alors $f'(x) = e^x - 1$, négative sur $#int-of($-oo$, $0$)$ et positive sur
     $#int-fo($0$, $+oo$)$. Donc $f$ décroît puis croît, et son minimum est $f(0) = 0$. Ainsi $f(x) > 0$
     pour tout $x != 0$ : la seule solution est $x = 0$.],
  )
}

= Partie 2 : le cours, à écrire au tableau

#note[Le texte de cette partie est celui à écrire au tableau, et les élèves le recopient. Les conseils pour l'animateur sont dans les blocs comme celui-ci.]

On lance deux dés et on veut la loi de la somme. D'habitude, on dessine un tableau de
$6 times 6$ cases et on compte. Il existe une méthode plus rapide, qui marche aussi avec trois
dés, avec dix dés ou avec des pièces truquées : *multiplier des polynômes*.

== 1. Compter en multipliant
#propriete("L'idée")[
  Quand on multiplie deux puissances de $t$, les exposants s'ajoutent :
  $ t^a times t^b = t^(a + b). $
  Une somme de résultats devient donc un exposant.
]

Développons $(t + t^2 + dots.c + t^6)(t + t^2 + dots.c + t^6)$. Chaque terme du développement
vient d'un choix : un terme #s1[$t^a$] dans la première parenthèse et un terme #s2[$t^b$] dans
la seconde. Il donne #s3[$t^(a + b)$]. C'est exactement « le premier dé donne #s1[$a$], le second
donne #s2[$b$], la somme vaut #s3[$a + b$] ». Le coefficient de $t^s$ compte donc les façons
d'obtenir la somme $s$ :

$ (t + t^2 + dots.c + t^6)^2 = t^2 + 2t^3 + 3t^4 + 4t^5 + 5t^6 + 6t^7
  + 5t^8 + 4t^9 + 3t^10 + 2t^11 + t^12. $

Par exemple, il y a $6$ façons d'obtenir $7$, donc $PP("somme" = 7) = 6/36 = 1/6$.

#note[*Pour l'animateur.* Commencer par demander comment calculer $PP("somme" = 7)$ avec deux dés : tableau $6 times 6$,
$6$ cases sur $36$. Puis écrire le produit $(t + dots.c + t^6)(t + dots.c + t^6)$ et faire
développer quelques termes. Insister sur les deux rôles : *l'exposant est une valeur* (la somme),
*le coefficient est un nombre de façons*. La variable $t$ n'a aucun sens en elle-même : elle sert
de fil à linge où l'on accroche les nombres.]

== 2. La fonction génératrice d'une variable aléatoire
#propriete("Définition")[
  Soit $X$ une variable aléatoire qui prend ses valeurs dans ${0, 1, 2, dots, n}$.
  Sa *fonction génératrice* est le polynôme
  $ G_X (t) = PP(X = 0) + PP(X = 1) t + PP(X = 2) t^2 + dots.c + PP(X = n) t^n
    = sum_(k = 0)^n PP(X = k) t^k. $
  Le coefficient de $t^k$ est $PP(X = k)$ : le polynôme contient toute la loi de $X$.
]

#v(2pt)
#{
  set text(size: 10pt)
  table(
    columns: (1fr, 1.1fr),
    stroke: 0.4pt + luma(200),
    inset: 6pt,
    table.header([*Variable aléatoire*], [*Fonction génératrice*]),
    [$X$ vaut $1$ si une pièce tombe sur Pile (probabilité $p$), $0$ sinon],
    [$G_X (t) = (1 - p) + p t$],
    [$X$ est le résultat d'un dé équilibré à six faces],
    [$G_X (t) = 1/6 (t + t^2 + dots.c + t^6)$],
    [$X$ suit la loi binomiale de paramètres $n$ et $p$],
    [$G_X (t) = display(sum_(k = 0)^n binom(n, k) p^k (1 - p)^(n - k) t^k = (1 - p + p t)^n)$],
  )
}

La dernière ligne est la formule du binôme de Newton, appliquée à $a = 1 - p$ et $b = p t$.

#propriete("Deux valeurs faciles")[
  - $G_X (1) = PP(X = 0) + PP(X = 1) + dots.c + PP(X = n) = 1$.
  - $G_X (0) = PP(X = 0)$, car tous les autres termes contiennent $t$.
]

#note[*Pour l'animateur.* Rien à démontrer. Le tableau ci-dessus se vérifie en direct : pour le dé, chaque coefficient
vaut $1/6$ ; pour la loi binomiale, on reconnaît la formule du binôme. Pour les élèves les plus
avancés : $G_X (t) = EE(t^X)$, l'espérance de la variable $t^X$.]

== 3. Une somme de variables indépendantes : on multiplie
#propriete("Propriété")[
  Si $X$ et $Y$ sont indépendantes, alors
  $ G_(X + Y) (t) = G_X (t) times G_Y (t). $
]

*Pourquoi ?* Dans le produit, le coefficient de $t^s$ est la somme des
$PP(X = a) times PP(Y = b)$ pour tous les couples $(a, b)$ tels que $a + b = s$. Comme $X$ et $Y$
sont indépendantes, chacun de ces termes vaut $PP(X = a "et" Y = b)$. En les ajoutant, on obtient
$PP(X + Y = s)$. C'est le calcul du paragraphe 1, avec des probabilités à la place des
nombres de façons.

*Exemple.* On lance $n$ fois une pièce qui tombe sur Pile avec la probabilité $p$, et $X$ compte
les Pile. Alors $X = X_1 + X_2 + dots.c + X_n$, où $X_i$ vaut $1$ si le lancer numéro $i$ donne
Pile. Chaque $X_i$ a pour fonction génératrice $1 - p + p t$, donc
$ G_X (t) = (1 - p + p t)^n. $
On retrouve la loi binomiale sans dessiner d'arbre.

#note[*Pour l'animateur.* Faire la preuve sur l'exemple des deux dés, puis en général. Montrer pourquoi l'indépendance
est indispensable : si $Y = X$ (le même dé compté deux fois), alors $X + Y = 2X$ prend les
valeurs $2, 4, dots, 12$ avec la probabilité $1/6$ chacune, et
$G_(2X) (t) = 1/6 (t^2 + t^4 + dots.c + t^12)$, qui n'est pas $G_X (t)^2$.

L'exemple de la loi binomiale est le premier vrai gain : $(1 - p + p t)^n$ s'obtient sans
compter de chemins dans un arbre.]

== 4. L'espérance : on dérive
#propriete("Propriété")[
  $ EE(X) = G'_X (1). $
]

*Pourquoi ?* On dérive terme à terme :
$G'_X (t) = PP(X = 1) + 2 PP(X = 2) t + dots.c + n PP(X = n) t^(n - 1)$.
En $t = 1$, il reste $1 times PP(X = 1) + 2 times PP(X = 2) + dots.c + n times PP(X = n)$, qui
est la définition de $EE(X)$.

*Exemples.* Pour un dé : $G'(1) = 1/6 (1 + 2 + dots.c + 6) = 7/2$.
Pour la loi binomiale : $G'(t) = n p (1 - p + p t)^(n - 1)$, donc $G'(1) = n p$.

#note[*Pour l'animateur.* Preuve en une ligne. Prolongement possible : pour $X$ et $Y$ indépendantes, la dérivée d'un
produit donne
$ EE(X + Y) = (G_X G_Y)'(1) = G'_X (1) G_Y (1) + G_X (1) G'_Y (1) = EE(X) + EE(Y). $]

== 5. Pair ou impair : on remplace $t$ par $-1$
#propriete("Propriété")[
  $(-1)^k$ vaut $1$ quand $k$ est pair et $-1$ quand $k$ est impair. Donc
  $ G_X (-1) = PP(X "pair") - PP(X "impair"). $
  Comme $PP(X "pair") + PP(X "impair") = G_X (1) = 1$, on en tire
  $ PP(X "pair") = (1 + G_X (-1)) / 2. $
]

*Exemple.* On lance $n$ fois une pièce qui tombe sur Pile avec la probabilité $p$.
$ PP("nombre pair de Pile") = (1 + (1 - 2p)^n) / 2. $
Avec une pièce équilibrée, $p = 1/2$, on trouve exactement $1/2$, quel que soit $n$.

#note[*Pour l'animateur.* Faire calculer $G(-1)$ pour un dé : $0$. Conséquence surprenante : dès qu'*un seul* des dés est
équilibré, la somme de n'importe quels dés indépendants est paire avec la probabilité $1/2$,
puisque le produit contient le facteur $0$.]

== « À toi » : corrigé détaillé

+ $G(t) = 1/6 (2t + 3t^2 + t^3)$.
+ $(2t + 3t^2 + t^3)^2 = 4t^2 + 12t^3 + 13t^4 + 6t^5 + t^6$ (la somme des coefficients fait bien
  $36$). Donc $PP("somme" = 4) = 13/36$.
+ $G'(t) = 1/6 (2 + 6t + 3t^2)$, donc $EE = G'(1) = 11/6$. Avec la définition :
  $1/6 (1 times 2 + 2 times 3 + 3 times 1) = 11/6$.
+ $t^10 = t^s times t^c$ où $t^c$ vient du troisième dé, $c$ de $1$ à $6$. On ajoute les
  coefficients de $t^9, t^8, dots, t^4$ dans $(t + dots.c + t^6)^2$ :
  $4 + 5 + 6 + 5 + 4 + 3 = 27$. Donc $PP("somme" = 10) = 27/216 = 1/8$.
+ $(1 + (1 - 2/3)^5) / 2 = (1 + 1/243) / 2 = 122/243$.
+ Pour un dé, $G(-1) = 1/6 (-1 + 1 - 1 + 1 - 1 + 1) = 0$. La fonction génératrice de la somme
  est le produit des dix, donc elle vaut $0$ en $-1$, et $PP("pair") = (1 + 0) / 2 = 1/2$.

= Problèmes : énoncés et solutions

Les énoncés ne sont pas sur la fiche des élèves : ils sont à donner au tableau. Les problèmes 1,
2 et 4 viennent de la base (fichiers 1008, 7531 et 11407), dont les solutions utilisent une autre
méthode. Le problème 3 est nouveau. Les solutions ci-dessous passent toutes par les fonctions
génératrices.

== Problème 1. Battre un treize avec trois dés (base : 1008, Terminale, difficulté 3)

#enonce[
Ton adversaire lance trois dés équilibrés à six faces et obtient une somme de $13$. C'est
maintenant ton tour : tu lances trois dés à ton tour. Quelle est la probabilité que ta somme
soit *strictement supérieure* à la sienne ?
]

*Solution.* Soit $S$ la somme de trois dés : $G_S (t) = 1/216 (t + dots.c + t^6)^3$. Il faut
$PP(S >= 14)$.

*Symétrie.* Remplacer chaque résultat $a$ par $7 - a$ ne change pas la loi d'un dé, et
transforme $S$ en $21 - S$. Donc $PP(S = s) = PP(S = 21 - s)$, et
$PP(S >= 14) = PP(S <= 7)$. (Côté polynôme : $t^21 G_S (1/t) = G_S (t)$, les coefficients se
lisent pareil dans les deux sens.)

*Les petits coefficients.* Les coefficients de $t^3, t^4, t^5, t^6, t^7$ dans
$(t + dots.c + t^6)^3$ sont $1, 3, 6, 10, 15$. Pour les obtenir, on peut ajouter des
coefficients du carré, comme dans « À toi » 4. Par exemple, pour $t^7$ :
$5 + 4 + 3 + 2 + 1 = 15$ (coefficients de $t^6, dots, t^2$).

$ PP(S >= 14) = (1 + 3 + 6 + 10 + 15) / 216 = 35/216. $

== Problème 2. Deux dés truqués (base : 7531, 1re, difficulté 4)

#enonce[
On dispose de deux dés à six faces, que l'on a le droit de truquer comme on veut. Sur le
premier dé, les faces $1, 2, dots, 6$ sortent avec les probabilités $p_1, p_2, dots, p_6$ ; sur
le second, avec les probabilités $q_1, q_2, dots, q_6$. Les deux lancers sont indépendants.

Peut-on truquer les deux dés de sorte que la somme des deux résultats prenne chacune des valeurs
$2, 3, 4, dots, 12$ avec *la même probabilité*, c'est-à-dire $1/11$ à chaque fois ?
]

*Solution.* *Réponse : non.* Supposons que ce soit possible. Posons
$A(t) = p_1 + p_2 t + dots.c + p_6 t^5$ et $B(t) = q_1 + q_2 t + dots.c + q_6 t^5$.
Les fonctions génératrices des deux dés sont $t A(t)$ et $t B(t)$, donc
$ t A(t) times t B(t) = 1/11 (t^2 + t^3 + dots.c + t^12), quad "soit" quad
  A(t) B(t) = 1/11 (1 + t + dots.c + t^10). $

+ Le coefficient de $t^12$ donne $p_6 q_6 = 1/11$, donc $p_6 != 0$ : $A$ est de degré $5$,
  impair. D'après le théorème des valeurs intermédiaires, $A$ a une racine réelle $r$.
+ En $t = r$ : $0 = A(r) B(r) = 1/11 (1 + r + dots.c + r^10)$.
+ Or $1 + r + dots.c + r^10 > 0$ pour tout réel $r$. Si $r >= 0$, la somme vaut au moins $1$.
  Si $r < 0$, alors $r != 1$ et la somme vaut $(1 - r^11) / (1 - r)$, où le numérateur et le
  dénominateur sont strictement positifs.

Contradiction. La fiche de la base donne une preuve sans polynômes ($p_1^2 + p_6^2 <= p_1 p_6$,
impossible) : la montrer ensuite permet de comparer les deux idées.

== Problème 3. Les dés de Sicherman (nouveau, bonus)

#enonce[
On veut deux dés à six faces, non truqués (chaque face a la même chance), mais sur lesquels on
écrit d'autres nombres que $1$ à $6$ : des entiers supérieurs ou égaux à $1$, avec des répétitions
permises. On veut que la somme des deux dés suive *exactement la même loi* qu'avec deux dés
ordinaires.

+ Vérifie que $t + t^2 + dots.c + t^6 = t (1 + t)(1 + t + t^2)(1 - t + t^2)$.
+ Un dé dont les faces portent $a_1, dots, a_6$ a pour fonction génératrice
  $1/6 (t^(a_1) + dots.c + t^(a_6))$. Que vaut le polynôme $t^(a_1) + dots.c + t^(a_6)$ en
  $t = 1$ ? Et en $t = 0$ ?
+ On admet qu'un polynôme se décompose de façon unique en facteurs qu'on ne peut plus couper,
  comme un entier en nombres premiers. Trouve deux dés, autres que les dés ordinaires, qui
  conviennent.
]

*Solution.*

+ $(1 + t)(1 - t + t^2) = 1 + t^3$, puis $(1 + t^3)(1 + t + t^2) = 1 + t + t^2 + t^3 + t^4 + t^5$,
  et on multiplie par $t$.
+ $P(1) = 6$ (six faces) et $P(0) = 0$ (aucune face ne porte $0$), donc $t$ divise $P$.
+ On cherche $P_A P_B = (t + dots.c + t^6)^2 = t^2 (1 + t)^2 (1 + t + t^2)^2 (1 - t + t^2)^2$.
  En $t = 1$, ces facteurs valent $1$, $2$, $3$ et $1$. Comme $P_A (1) = P_B (1) = 6 = 2 times 3$,
  chaque dé reçoit exactement un $t$, un $(1 + t)$ et un $(1 + t + t^2)$. Il reste à répartir
  les deux $(1 - t + t^2)$ :
  - un pour chaque dé : on retrouve les dés ordinaires ;
  - les deux sur le même dé :
    $P_A = t (1 + t)(1 + t + t^2) = t + 2t^2 + 2t^3 + t^4$, faces $1, 2, 2, 3, 3, 4$ ;
    $P_B = t (1 + t)(1 + t + t^2)(1 - t + t^2)^2 = t + t^3 + t^4 + t^5 + t^6 + t^8$, faces
    $1, 3, 4, 5, 6, 8$.

  Tous les coefficients sont positifs, donc ce sont de vrais dés. Ce sont les dés de Sicherman,
  la seule autre solution.

== Problème 4. Des comités avec un nombre impair de garçons (base : 11407, 1re, difficulté 4)

#enonce[
Un lycée compte un nombre *impair* de classes, et chaque classe compte un nombre *impair*
d'élèves. On forme un comité en choisissant un élève dans chaque classe.

On suppose que le nombre de classes qui ont plus de garçons que de filles est impair.

Montrer qu'il y a plus de façons de former un comité qui contient un nombre impair de garçons
que de façons de former un comité qui contient un nombre impair de filles.
]

*Solution.* Il y a $m$ classes ($m$ impair) ; la classe $i$ a $g_i$ garçons et $f_i$ filles, et
$g_i + f_i$ est impair, donc $g_i != f_i$. Dans le produit
$ (f_1 + g_1 t)(f_2 + g_2 t) dots.c (f_m + g_m t), $
choisir $g_i t$ dans la parenthèse $i$, c'est choisir un garçon dans la classe $i$. Le
coefficient de $t^k$ compte donc les comités qui ont exactement $k$ garçons. En $t = -1$ :
$ (f_1 - g_1)(f_2 - g_2) dots.c (f_m - g_m) = N_"pair" - N_"impair", $
où $N_"pair"$ et $N_"impair"$ comptent les comités avec un nombre pair, ou impair, de garçons.

Comme $m$ est impair, un comité a un nombre impair de filles exactement quand il a un nombre
pair de garçons. Il faut donc montrer $N_"impair" > N_"pair"$, c'est-à-dire que le produit est
négatif. Or le facteur $f_i - g_i$ est négatif exactement quand la classe $i$ a plus de garçons
que de filles, et il y a un nombre impair de telles classes. Le produit est donc négatif.

= Pour finir : corrigé de l'exercice 5 du TeSciA 2023

*Cas $n = 2$, avec un arbre.* $X = 1$ ou $X = 2$, chacun avec la probabilité $1/2$.

#{
  set text(size: 10pt)
  table(
    columns: (auto, auto, 1fr),
    stroke: 0.4pt + luma(200),
    inset: 5pt,
    table.header([*Question*], [*Réponse*], [*Pourquoi*]),
    [M39], [A], [$Y$ peut valoir $0$, $1$ ou $2$.],
    [M40], [D], [Deux Pile en deux lancers : $1/2 times 1/2 = 1/4$.],
    [M41], [B], [Il faut $X = 2$ puis deux Pile : $1/2 times 1/4 = 1/8$.],
    [M42], [D], [$1/2 times 1/2 + 1/2 times 1/4 = 3/8$.],
    [M43], [A], [$1/2 times 1/2 + 1/2 times 2/4 = 1/2$ (ou $1 - 3/8 - 1/8$).],
    [M44], [B], [$0 times 3/8 + 1 times 1/2 + 2 times 1/8 = 3/4$.],
    [M45], [D], [Voir ci-dessous.],
    [M46], [E], [Voir ci-dessous.],
  )
}

*Cas général, avec la fonction génératrice.* Sachant $X = j$, le nombre de Pile suit la loi
binomiale de paramètres $j$ et $1/2$, de fonction génératrice $((1 + t) / 2)^j$. La formule des
probabilités totales, appliquée à chaque $PP(Y = k)$, donne
$ G_Y (t) = 1/n sum_(j = 1)^n ((1 + t) / 2)^j. $
On remarque que c'est $G_X ((1 + t) / 2)$ : on remplace $t$ par la fonction génératrice d'un
seul lancer de pièce.

- *M45.* $PP(Y = 0) = G_Y (0) = 1/n (1/2 + 1/4 + dots.c + 1/2^n) = 1/n (1 - 1/2^n)$, par la
  somme géométrique. Réponse D.
- *M46.* Le coefficient de $t^k$ dans $((1 + t) / 2)^j$ est $binom(j, k) / 2^j$, et il est nul
  quand $j < k$. Donc, réponse E :
  $ PP(Y = k) = 1/n (1/2^k binom(k, k) + 1/2^(k + 1) binom(k + 1, k) + dots.c + 1/2^n binom(n, k)). $
- *Bonus : l'espérance.* La dérivée de $((1 + t) / 2)^j$ est $j/2 ((1 + t) / 2)^(j - 1)$, qui
  vaut $j / 2$ en $t = 1$. Ainsi
  $ EE(Y) = G'_Y (1) = 1/n sum_(j = 1)^n j/2 = 1/n times (n (n + 1)) / 4 = (n + 1) / 4. $
  Pour $n = 2$, on retrouve $3/4$ (M44). C'est aussi $EE(X) / 2$ : en moyenne, la moitié des
  lancers donnent Pile.

#note[Sources : TeSciA 2023, épreuve 1, exercices 1 et 5 (aores-sci.fr). Problèmes 1, 2 et 4 :
fichiers 1008, 7531 et 11407 de la base. Tous les nombres ont été vérifiés par un calcul.]
