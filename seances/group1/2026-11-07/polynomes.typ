// Fiche eleves : « Diviser des nombres, diviser des polynômes ».
// Construire depuis la racine du depot :
//   typst compile --root . seances/group1/2026-11-07/polynomes.typ
#import "/tools/preamble.typ": *
#show: setup

// Titres de partie : un titre reste sur la meme page que ce qui le suit.
#show heading.where(level: 1): set text(size: 13.5pt)
#show heading.where(level: 1): set block(above: 16pt, below: 8pt, sticky: true)

// Une couleur par etape, la meme a gauche et a droite.
#let c1 = rgb("#1a4f8a")
#let c2 = rgb("#2e7d32")
#let c3 = rgb("#c25e00")
#let cr = rgb("#b03030")
#let s1(x) = text(fill: c1, x)
#let s2(x) = text(fill: c2, x)
#let s3(x) = text(fill: c3, x)
#let sr(x) = text(fill: cr, weight: "bold", x)

// Division posee « a la francaise » (la potence).
// rows : les lignes de gauche, toutes de la meme longueur.
// lines : les traits de soustraction, (ligne, premiere colonne, colonne apres la derniere).
#let potence(rows, divisor, quotient, lines) = {
  let n = rows.at(0).len()
  let cells = ()
  for (i, r) in rows.enumerate() {
    cells += r
    cells.push(if i == 0 { divisor } else if i == 1 { quotient } else { [] })
  }
  set text(size: 10.5pt)
  grid(
    columns: n + 1,
    align: (x, y) => if x == n { left + horizon } else { right + horizon },
    inset: (x, y) => if x == n { (left: 7pt, right: 3pt, y: 3pt) } else { (x: 2.5pt, y: 3pt) },
    ..cells,
    grid.vline(x: n, start: 0, end: 2, stroke: 0.8pt),
    grid.hline(y: 1, start: n, stroke: 0.8pt),
    ..lines.map(l => grid.hline(y: l.at(0), start: l.at(1), end: l.at(2), stroke: 0.5pt)),
  )
}

// Deux colonnes : nombres a gauche, polynomes a droite.
#let side(left-title, left-body, right-title, right-body) = grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  [#text(weight: "bold")[#left-title] #v(2pt) #left-body],
  [#text(weight: "bold")[#right-title] #v(2pt) #right-body],
)

#let propriete(title, left-body, right-body) = block(
  width: 100%, fill: luma(244), inset: 10pt, radius: 3pt, breakable: false,
)[
  #text(weight: "bold", fill: luma(40))[#title]
  #v(4pt)
  #side("Nombres", left-body, "Polynômes", right-body)
]

#let note(body) = block(
  width: 100%, stroke: (left: 2pt + luma(170)), inset: (left: 8pt, y: 3pt),
  text(size: 10pt, body),
)

#doc-title("Diviser des nombres, diviser des polynômes", "Groupe 1 : 4e et 3e · 2026-11-07")

Tu sais diviser $1576$ par $13$ : on trouve un quotient et un reste, $1576 = 13 times 121 + 3$.

On peut faire la même chose avec des *polynômes*, des expressions comme $x^3 + 5x^2 + 7x + 6$.
Le *degré* d'un polynôme est la plus grande puissance de $x$ qui y apparaît :
$x^3 + 5x^2 + 7x + 6$ est de degré $3$, $x + 3$ est de degré $1$, et un nombre seul, comme $3$,
est de degré $0$.

= 1. La même méthode, et un reste plus petit que le diviseur

#propriete(
  "Ce que veut dire « diviser »",
  [Diviser $a$ par $b$, c'est trouver un quotient $q$ et un reste $r$ tels que
   $ a = b times q + r quad "avec" quad 0 <= r < b. $],
  [Diviser $A$ par $B$, c'est trouver un quotient $Q$ et un reste $R$ tels que
   $ A = B times Q + R quad "avec" quad deg R < deg B. $],
)

Le reste est toujours « plus petit » que le diviseur. Pour les nombres, cela veut dire plus
petit en valeur. Pour les polynômes, cela veut dire de plus petit degré.

#v(4pt)
#side(
  [$1576 div 13$],
  align(center, potence(
    (
      ([], [1], [5], [7], [6]),
      (s1[$-$], s1[1], s1[3], [], []),
      ([], [], [2], [7], []),
      ([], s2[$-$], s2[2], s2[6], []),
      ([], [], [], [1], [6]),
      ([], [], s3[$-$], s3[1], s3[3]),
      ([], [], [], [], sr[3]),
    ),
    [13],
    [#s1[1]#s2[2]#s3[1]],
    ((2, 1, 3), (4, 2, 4), (6, 3, 5)),
  )),
  [$(x^3 + 5x^2 + 7x + 6) div (x + 3)$],
  align(center, potence(
    (
      ([], [$x^3$], [$+ 5x^2$], [$+ 7x$], [$+ 6$]),
      (s1[$-($], s1[$x^3$], s1[$+ 3x^2)$], [], []),
      ([], [], [$2x^2$], [$+ 7x$], []),
      ([], s2[$-($], s2[$2x^2$], s2[$+ 6x)$], []),
      ([], [], [], [$x$], [$+ 6$]),
      ([], [], s3[$-($], s3[$x$], s3[$+ 3)$]),
      ([], [], [], [], sr[$3$]),
    ),
    [$x + 3$],
    [#s1[$x^2$] #s2[$+ 2x$] #s3[$+ 1$]],
    ((2, 1, 3), (4, 2, 4), (6, 3, 5)),
  )),
)

#align(center)[
  $1576 = 13 times 121 + 3$
  #h(3em)
  $x^3 + 5x^2 + 7x + 6 = (x + 3)(x^2 + 2x + 1) + 3$
]

#v(2pt)
#{
  set text(size: 10pt)
  table(
    columns: (auto, 1fr, 1fr),
    stroke: 0.4pt + luma(200),
    inset: 5pt,
    table.header([], [*Nombres*], [*Polynômes*]),
    s1[*1*],
    [En $15$, combien de fois $13$ ? $1$ fois. On écrit #s1[$1$] au quotient et on retire
     $13 times 1 = 13$.],
    [$x^3$ divisé par $x$ donne $x^2$. On écrit #s1[$x^2$] au quotient et on retire
     $(x + 3) times x^2 = x^3 + 3x^2$.],
    s2[*2*],
    [On abaisse le $7$ : $27$. En $27$, combien de fois $13$ ? $2$ fois. On retire $26$.],
    [On abaisse $+ 7x$ : $2x^2 + 7x$. $2x^2$ divisé par $x$ donne $2x$. On retire
     $(x + 3) times 2x = 2x^2 + 6x$.],
    s3[*3*],
    [On abaisse le $6$ : $16$. En $16$, $13$ va $1$ fois. On retire $13$.],
    [On abaisse $+ 6$ : $x + 6$. $x$ divisé par $x$ donne $1$. On retire $x + 3$.],
    sr[*fin*],
    [Il reste $3$, plus petit que $13$ : on s'arrête.],
    [Il reste $3$, de degré $0$, plus petit que le degré $1$ de $x + 3$ : on s'arrête.],
  )
}

= 2. Trouver le reste sans faire la division

#propriete(
  "Le reste d'un seul coup",
  [Le reste de la division d'un nombre par $9$ est le reste de la somme de ses chiffres.

   Exemple : $1 + 5 + 7 + 6 = 19 = 9 times 2 + 1$, donc le reste de $1576 div 9$ est $1$.
   En effet, $1576 = 9 times 175 + 1$.],
  [Le reste de la division d'un polynôme $P(x)$ par $x - a$ est le nombre $P(a)$.

   Exemple : $x + 3 = x - (-3)$, donc le reste de la division ci-dessus est
   $P(-3) = -27 + 45 - 21 + 6 = 3$. C'est bien le reste trouvé.],
)

*Pourquoi ça marche, pour les polynômes.* La division donne $P(x) = (x - a) times Q(x) + R$, et
le reste $R$ est un nombre, puisque son degré est plus petit que $1$. Remplaçons $x$ par $a$ :
le premier terme devient $0 times Q(a) = 0$, et il reste $P(a) = R$.

*Une conséquence.* $x - a$ divise $P(x)$, sans reste, exactement quand $P(a) = 0$. Par exemple,
pour $x^3 + 5x^2 + 7x + 3$, on trouve $(-3)^3 + 5 times 9 + 7 times (-3) + 3 = 0$ : ce polynôme
est divisible par $x + 3$. De même, $13$ divise un nombre exactement quand le reste vaut $0$.

#note[
  *Et pour les nombres ?* La somme des chiffres de $1576$, c'est la valeur du polynôme
  $P(x) = x^3 + 5x^2 + 7x + 6$ pour $x = 1$, et $1576$ est sa valeur pour $x = 10$. La propriété
  de droite donne $P(x) = (x - 1) times Q(x) + 19$. Pour $x = 10$, cela s'écrit
  $1576 = 9 times Q(10) + 19$ : $1576$ et $19$ ont le même reste dans la division par $9$.
]

= 3. Là où les deux divisions ne se ressemblent plus

#propriete(
  "Comment on trouve chaque terme du quotient",
  [Il faut *essayer* : on cherche le plus grand chiffre qui marche, sans jamais retirer plus que
   ce qu'on a. Les chiffres du quotient vont de $0$ à $9$, et le reste n'est jamais négatif.],
  [Pas besoin d'essayer : on divise le *premier terme* de ce qui reste par le premier terme du
   diviseur, et c'est tout. Le quotient et le reste peuvent avoir des coefficients négatifs :
   seul le degré du reste compte.],
)

#v(4pt)
#side(
  [$1000 div 13$],
  align(center, potence(
    (
      ([], [1], [0], [0], [0]),
      ([], s1[$-$], s1[9], s1[1], []),
      ([], [], [], [9], [0]),
      ([], [], s2[$-$], s2[7], s2[8]),
      ([], [], [], sr[1], sr[2]),
    ),
    [13],
    [#s1[7]#s2[6]],
    ((2, 1, 4), (4, 3, 5)),
  )),
  [$x^3 div (x + 3)$],
  align(center, potence(
    (
      ([], [$x^3$], [$+ 0x^2$], [$+ 0x$], [$+ 0$]),
      (s1[$-($], s1[$x^3$], s1[$+ 3x^2)$], [], []),
      ([], [], [$-3x^2$], [$+ 0x$], []),
      ([], s2[$-($], s2[$-3x^2$], s2[$- 9x)$], []),
      ([], [], [], [$9x$], [$+ 0$]),
      ([], [], s3[$-($], s3[$9x$], s3[$+ 27)$]),
      ([], [], [], [], sr[$-27$]),
    ),
    [$x + 3$],
    [#s1[$x^2$] #s2[$- 3x$] #s3[$+ 9$]],
    ((2, 1, 3), (4, 2, 4), (6, 3, 5)),
  )),
)

#align(center)[
  $1000 = 13 times 76 + 12$
  #h(3em)
  $x^3 = (x + 3)(x^2 - 3x + 9) - 27$
]

- *Au départ.* À gauche, $1$ puis $10$ sont trop petits pour $13$ : il faut prendre trois
  chiffres d'un coup, $100$. À droite, on commence toujours par le premier terme.
- *Les signes.* À droite, $-3x$ au quotient et $-27$ au reste : c'est permis. À gauche, un
  chiffre $-3$ n'existe pas, et un reste ne peut pas être négatif.
- *Un point commun.* Un $0$ dans un nombre correspond à une puissance absente dans un polynôme.
  On l'écrit quand même, $+ 0x^2$, pour garder chaque puissance dans sa colonne.

#pagebreak(weak: true)

= 4. Le PGCD, par l'algorithme d'Euclide

Tout ce qui suit vient d'une seule chose : dans les deux mondes, on sait diviser avec un reste
plus petit que le diviseur.

#propriete(
  "L'algorithme d'Euclide",
  [On divise $a$ par $b$, puis $b$ par le reste, puis ce reste par le nouveau reste, et ainsi
   de suite. Le *dernier reste non nul* est le $"PGCD"$ de $a$ et $b$.

   On finit toujours par tomber sur $0$, car les restes sont des entiers de plus en plus
   petits.],
  [Même chose : on divise $A$ par $B$, puis $B$ par le reste, et ainsi de suite. Le *dernier
   reste non nul* est le $"PGCD"$ de $A$ et $B$.

   On finit toujours par tomber sur $0$, car les restes sont de degré de plus en plus petit.],
)

*Pourquoi ça marche.* Si $a = b times q + r$, un nombre qui divise $a$ et $b$ divise aussi
$r = a - b times q$. Et un nombre qui divise $b$ et $r$ divise aussi $a$. Donc $a$ et $b$ ont les
mêmes diviseurs communs que $b$ et $r$ : on peut remplacer le couple $(a, b)$ par le couple
$(b, r)$, plus petit. Le raisonnement est mot pour mot le même avec des polynômes.

#v(4pt)
#side(
  [$"PGCD"(35, 28)$],
  [
    #s1[$35 = 28 times 1 + 7$] \
    #s2[$28 = 7 times 4 + 0$] \
    #v(2pt)
    Le dernier reste non nul est #sr[$7$].
  ],
  [$"PGCD"(x^2 + 4x + 3, med x^2 + 3x + 2)$],
  [
    #s1[$x^2 + 4x + 3 = (x^2 + 3x + 2) times 1 + (x + 1)$] \
    #s2[$x^2 + 3x + 2 = (x + 1)(x + 2) + 0$] \
    #v(2pt)
    Le dernier reste non nul est #sr[$x + 1$].
  ],
)

#v(4pt)
*À quoi ça sert : simplifier une fraction.*
#side(
  [],
  [$ 28 / 35 = (7 times 4) / (7 times 5) = 4 / 5 $],
  [],
  [$ (x^2 + 3x + 2) / (x^2 + 4x + 3) = ((x + 1)(x + 2)) / ((x + 1)(x + 3)) = (x + 2) / (x + 3) $],
)
Pour trouver $x^2 + 4x + 3 = (x + 1)(x + 3)$, il suffit de diviser $x^2 + 4x + 3$ par le
$"PGCD"$ $x + 1$.

= 5. Nombres premiers et polynômes irréductibles

#propriete(
  "Les briques de base",
  [Un nombre *premier* ne peut pas s'écrire comme produit de deux nombres plus petits.

   Tout nombre se décompose en produit de nombres premiers, et d'*une seule façon*, à l'ordre
   près.],
  [Un polynôme *irréductible* ne peut pas s'écrire comme produit de deux polynômes de degré
   plus petit.

   Tout polynôme se décompose en produit de polynômes irréductibles, et d'*une seule façon*, à
   l'ordre près et aux constantes près.],
)

« Aux constantes près » : $2x + 2 = 2(x + 1)$ n'est pas une vraie factorisation, de même que
$7 = 1 times 7$ ne compte pas pour les nombres. Les constantes jouent le rôle de $1$ et $-1$.

#block(breakable: false, width: 100%)[
*Comment trouver un facteur.*
#side(
  [Nombres : on essaie de diviser par $2$, $3$, $5$, $7$, …],
  [
    #s1[$60 = 2 times 30$] \
    #s2[$30 = 2 times 15$] \
    #s3[$15 = 3 times 5$], et $5$ est premier. \
    #v(2pt)
    $60 = 2 times 2 times 3 times 5$
  ],
  [Polynômes : on cherche un nombre $a$ tel que $P(a) = 0$, puis on divise par $x - a$
   (partie 2).],
  [
    #s1[$P(1) = 0$, donc on divise par $x - 1$ :] \
    #s1[$x^3 - 7x + 6 = (x - 1)(x^2 + x - 6)$] \
    #s2[$2^2 + 2 - 6 = 0$, donc $x^2 + x - 6 = (x - 2)(x + 3)$] \
    #s3[$x + 3$ est de degré $1$ : on ne peut plus le couper.] \
    #v(2pt)
    $x^3 - 7x + 6 = (x - 1)(x - 2)(x + 3)$
  ],
)
]

#v(2pt)
- *Les plus petites briques.* Un polynôme de degré $1$, comme $x - 2$, est toujours
  irréductible : on ne peut pas le couper en deux morceaux de degré plus petit. Ce sont les
  « petits nombres premiers » des polynômes, et la partie 2 donne le moyen de les trouver.
- *Il y en a d'autres.* $x^2 + 1$ est irréductible. En effet, $x^2 + 1 >= 1$ pour tout $x$,
  donc $x^2 + 1$ ne s'annule jamais, et il n'a aucun facteur $x - a$. Or un polynôme de degré
  $2$ qui se factorise a forcément un facteur de degré $1$.
- *Une différence de taille.* Pour un polynôme, trouver un facteur $x - a$ revient à trouver un
  nombre $a$ tel que $P(a) = 0$. Pour un grand nombre, trouver ses facteurs premiers est
  extrêmement difficile, même pour un ordinateur : c'est ce qui protège les paiements par carte
  bancaire.

= À toi

Pose les divisions suivantes.

+ $(x^2 + 5x + 6) div (x + 2)$
+ $(x^3 + 4x^2 + 5x + 7) div (x + 1)$. Vérifie ensuite ton reste avec la propriété de la
  partie 2.
+ $(x^3 - 8) div (x - 2)$. Attention aux puissances absentes.
+ $(2x^3 + x^2 - 5x + 4) div (x^2 + x - 1)$. Ici le diviseur est de degré $2$ : quand
  peux-tu t'arrêter ?

Sans poser la division :

5. Trouve le reste de la division de $x^100 + x + 1$ par $x - 1$, puis par $x + 1$.
+ Le polynôme $x^3 - 2x^2 - 5x + 6$ est-il divisible par $x - 1$ ? Par $x - 2$ ?

Pour les parties 4 et 5 :

7. Trouve le $"PGCD"$ de $x^2 + 5x + 6$ et $x^2 + 4x + 3$ avec l'algorithme d'Euclide, puis
   simplifie la fraction $(x^2 + 5x + 6) slash (x^2 + 4x + 3)$.
+ Termine la factorisation de $x^3 - 2x^2 - 5x + 6$ commencée à la question 6.
+ Explique pourquoi $x^2 + 4$ est irréductible.

#place(bottom, float: true, clearance: 0pt)[
  #line(length: 100%, stroke: 0.4pt + luma(180))
  #set text(size: 9pt, fill: luma(70))
  *Réponses.*
  1. Quotient $x + 3$, reste $0$.
  2. Quotient $x^2 + 3x + 2$, reste $5$, et $P(-1) = -1 + 4 - 5 + 7 = 5$.
  3. Quotient $x^2 + 2x + 4$, reste $0$.
  4. Quotient $2x - 1$, reste $-2x + 3$ : on s'arrête quand le reste est de degré $1$, plus petit que $2$.
  5. Pour $x = 1$ : $1 + 1 + 1 = 3$. Pour $x = -1$ : $1 - 1 + 1 = 1$.
  6. Pour $x = 1$ : $1 - 2 - 5 + 6 = 0$, donc oui. Pour $x = 2$ : $8 - 8 - 10 + 6 = -4$, donc non.
  7. $x^2 + 5x + 6 = (x^2 + 4x + 3) times 1 + (x + 3)$, puis $x^2 + 4x + 3 = (x + 3)(x + 1) + 0$ : le $"PGCD"$ est $x + 3$, et la fraction vaut $(x + 2) slash (x + 1)$.
  8. $x^3 - 2x^2 - 5x + 6 = (x - 1)(x^2 - x - 6) = (x - 1)(x - 3)(x + 2)$.
  9. $x^2 + 4 >= 4$ ne s'annule jamais : aucun facteur $x - a$, donc pas de factorisation en degré $1 times 1$.
]
