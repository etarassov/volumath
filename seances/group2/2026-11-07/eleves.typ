// Fiche eleves, groupe 2, seance du 2026-11-07.
// Construire depuis la racine du depot (apres extraits.py) :
//   typst compile --root . seances/group2/2026-11-07/eleves.typ
#import "commun.typ": *
#show: setup
#show: titres

// ---------------------------------------------------------------- Partie 1
// L'exercice 1 du TeSciA 2023, pages d'origine.
#page-tescia("tescia-mg2023-ex1.pdf", 1)
#page-tescia("tescia-mg2023-ex1.pdf", 2)
#page-tescia("tescia-mg2023-ex1.pdf", 3)

// ---------------------------------------------------------------- Exercice 5 du TeSciA
#page-tescia("tescia-mg2023-ex5.pdf", 1)
#page-tescia("tescia-mg2023-ex5.pdf", 2)

// ---------------------------------------------------------------- Pour finir : a toi
// Pas de numero : les pages du TeSciA gardent leurs propres numeros.
#set page(numbering: none)
#doc-title("Fonctions génératrices", "Exercices · Groupe 2 · 2026-11-07")

= À toi

+ Un dé porte les faces $1, 1, 2, 2, 2, 3$, et chaque face a la même chance de sortir. Écris
  la fonction génératrice de son résultat.
+ On lance deux fois ce dé. Quelle est la probabilité que la somme fasse $4$ ?
+ Calcule l'espérance du résultat de ce dé avec $G'(1)$, puis vérifie avec la définition.
+ On lance trois dés équilibrés. Quelle est la probabilité que la somme fasse $10$ ? Inutile de
  tout développer : utilise les coefficients de $(t + dots.c + t^6)^2$ vus au
  tableau.
+ On lance $5$ fois une pièce qui tombe sur Pile avec la probabilité $1/3$. Quelle est la
  probabilité d'obtenir un nombre pair de Pile ?
+ Explique en une ligne pourquoi la somme de dix dés équilibrés est paire avec une probabilité
  exactement égale à $1/2$.

#place(bottom, float: true, clearance: 0pt)[
  #line(length: 100%, stroke: 0.4pt + luma(180))
  #set text(size: 9pt, fill: luma(70))
  *Réponses.*
  1. $G(t) = 1/6 (2t + 3t^2 + t^3)$.
  2. Le coefficient de $t^4$ dans $G(t)^2$ : $1/36 (2 times 1 + 3 times 3 + 1 times 2) = 13/36$.
  3. $G'(t) = 1/6 (2 + 6t + 3t^2)$, donc $EE = 11/6$.
  4. Le coefficient de $t^10$ est $4 + 5 + 6 + 5 + 4 + 3 = 27$, donc $27/216 = 1/8$.
  5. $(1 + 3^(-5)) slash 2 = 122/243$.
  6. Pour un dé, $G(-1) = (-1 + 1 - 1 + 1 - 1 + 1) / 6 = 0$, donc le produit des dix vaut $0$.
]
