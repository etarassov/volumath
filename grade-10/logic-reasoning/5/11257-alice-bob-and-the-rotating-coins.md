---
id: "11257"
title: "Alice, Bob et les pièces qui tournent"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [jeu, strategie gagnante, puissances de 2, terminaison]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices communs, exercice 5 ; corrigé 2019-02_envoi-4-corr-def.pdf (le corrigé dit qu'après le premier coup de Bob « les positions restent inchangées », alors que Bob peut encore retourner d'autres pièces ; cela ne gêne pas la preuve, car ces retournements ne font qu'augmenter la somme)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. Alice et Bob jouent avec $n$ pièces, qui ont chacune une face
blanche et une face noire. Les pièces sont posées en ligne. Au départ, la première et la dernière
pièce sont sur leur face blanche, et toutes les autres sur leur face noire.

À chaque tour, on prend la pièce la plus à gauche et on la déplace tout au bout, à droite de la
ligne. Puis :

- si elle était sur sa face blanche, c'est Alice qui décide sur quelle face on la repose ;
- si elle était sur sa face noire, c'est Bob qui décide sur quelle face on la repose.

Alice gagne si, à un moment, toutes les pièces sont sur leur face noire. Bob cherche à l'en
empêcher, et il joue au mieux.

Pour quelles valeurs de $n$ Alice a-t-elle une stratégie qui lui assure de gagner ?

## Hints

1. Essaie $n = 2$, puis $n = 3$. Si Alice repose toujours les pièces blanches sur leur face noire,
   que peut faire Bob quand $n = 3$ ?
2. Au bout de $n$ tours, chaque pièce a bougé une fois, et les pièces sont revenues dans leur ordre
   de départ. Appelle **tour complet** ces $n$ tours.
3. Alice peut garder la première pièce en blanc, comme un repère, et ne la retourner que lorsque
   toutes les autres sont noires.
4. Pendant un tour complet, Alice remet en noir les pièces blanches, mais seulement jusqu'au moment
   où Bob fait passer une pièce du noir au blanc. Ensuite, elle ne change plus rien jusqu'à la fin du
   tour complet.
5. Pour montrer que Bob ne peut pas résister indéfiniment, donne à la pièce numéro $i$ la valeur
   $2^{i-2}$ quand elle est blanche, et regarde la somme des valeurs au début de chaque tour
   complet.

## Solution

**Réponse : pour tout $n \geqslant 2$, Alice a une stratégie gagnante.**

### Les tours complets

Numérotons les pièces de $1$ à $n$ dans leur ordre de départ, de gauche à droite. À chaque tour, la
pièce de gauche passe tout au bout à droite. Au bout de $n$ tours, chaque pièce a donc bougé une fois,
dans l'ordre $1, 2, \ldots, n$, et les pièces sont revenues dans l'ordre $1, 2, \ldots, n$, la
pièce $1$ à gauche.

Appelons **tour complet** une suite de $n$ tours qui commence quand la pièce $1$ est à gauche. Pendant
un tour complet, les pièces sont prises dans l'ordre $1, 2, \ldots, n$.

### La stratégie d'Alice

- **La pièce $1$.** Quand elle est prise, si toutes les autres pièces sont noires, Alice la repose sur
  sa face noire : toutes les pièces sont noires, et elle a gagné. Sinon, Alice la repose sur sa face
  blanche. Ainsi la pièce $1$ reste blanche jusqu'à la fin, et c'est toujours Alice qui la déplace.
- **Les pièces $2$ à $n$.** Pendant un tour complet, tant que Bob n'a fait passer aucune pièce du noir
  au blanc **dans ce tour complet**, Alice repose chaque pièce blanche qu'elle prend sur sa face
  noire. Dès que Bob a fait passer une pièce du noir au blanc, Alice repose les pièces blanches sur
  leur face blanche, jusqu'à la fin de ce tour complet.

### Une somme qui augmente

Au début de chaque tour complet, calculons la somme $S$ suivante : la pièce numéro $i$, pour $i$
entre $2$ et $n$, vaut $2^{i-2}$ si elle est blanche, et $0$ si elle est noire. Ainsi la pièce $2$
vaut $1$, la pièce $3$ vaut $2$, la pièce $4$ vaut $4$, et ainsi de suite. On utilisera l'égalité
$$1 + 2 + 4 + \cdots + 2^{m-1} = 2^m - 1 ,$$
que l'on voit en ajoutant $1$ : $1 + 1 = 2$, puis $2 + 2 = 4$, puis $4 + 4 = 8$, et ainsi de suite
jusqu'à $2^{m-1} + 2^{m-1} = 2^m$. En particulier, $S$ est toujours un entier compris entre $0$ et
$2^{n-1} - 1$.

Regardons ce qui se passe pendant un tour complet.

**Premier cas : Bob ne fait passer aucune pièce du noir au blanc.** Alors Alice a remis en noir
toutes les pièces blanches parmi $2, \ldots, n$, et Bob a laissé les pièces noires en noir. Au début
du tour complet suivant, les pièces $2$ à $n$ sont toutes noires. Alice repose la pièce $1$ sur sa
face noire, et elle gagne.

**Second cas : Bob fait passer au moins une pièce du noir au blanc.** Notons $j$ la première pièce
qu'il fait passer au blanc dans ce tour complet. Comparons $S$ au début et à la fin de ce tour
complet.

- La pièce $j$ passe du noir au blanc : $S$ augmente de $2^{j-2}$.
- Après la pièce $j$, Alice ne change plus rien, et Bob ne peut que faire passer des pièces du noir
  au blanc : cela ne peut qu'augmenter $S$.
- Avant la pièce $j$, des pièces ont pu passer du blanc au noir. Elles valent ensemble au plus
  $1 + 2 + \cdots + 2^{j-3} = 2^{j-2} - 1$ (rien du tout si $j = 2$).

Au total, $S$ augmente d'au moins $2^{j-2} - (2^{j-2} - 1) = 1$.

### Bob ne peut pas tenir indéfiniment

Tant qu'Alice n'a pas gagné, chaque tour complet est du second cas, et $S$ augmente d'au moins $1$.
Comme $S$ reste un entier entre $0$ et $2^{n-1} - 1$, cela ne peut pas durer plus de $2^{n-1} - 1$
tours complets. Il arrive donc un tour complet du premier cas, et Alice gagne au tour suivant.

**Conclusion : quel que soit $n \geqslant 2$, Alice a une stratégie qui lui assure de gagner.**

## Going further

- Pour $n = 3$, montre que la stratégie la plus simple, reposer toujours les pièces blanches sur leur
  face noire, ne suffit pas : Bob peut alors empêcher Alice de gagner.
- Au début du premier tour complet, $S$ vaut $2^{n-2}$. Déduis-en qu'avec la stratégie de la
  solution, Alice gagne au plus tard au tour numéro $2^{n-2} \times n + 1$. (Un calcul sur ordinateur
  montre que Bob peut faire durer la partie exactement jusque-là, pour $n$ de $2$ à $10$.)
