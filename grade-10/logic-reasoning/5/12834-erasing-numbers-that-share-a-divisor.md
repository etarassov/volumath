---
id: "12834"
title: "Effacer des nombres qui partagent un diviseur"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeu, strategie-gagnante, pgcd, nombres-premiers, invariant, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 novembre 2023"
  reference: "2025-01_Enonce-Test-1.pdf, test senior, exercice 1 ; corrigé 2025-01_Corrige-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-1.pdf"
---

## Statement

Clara a écrit au tableau les entiers $2, 3, 4, \ldots, 30$. Alice et Bob jouent ensuite à tour de rôle, Alice en premier. À chaque tour, le joueur efface certains des nombres encore présents au tableau. On note $S_k$ l'ensemble des nombres effacés au $k$-ième tour.

- Au premier tour, Alice n'a pas le choix : elle efface les nombres d'un ensemble $S_1$, non vide, choisi à l'avance par Clara.
- À partir du deuxième tour, le joueur qui choisit $S_k$ doit respecter la règle suivante : pour chaque nombre $x$ de $S_k$, il existe au moins un nombre $y$ de $S_{k-1}$ tel que $\mathrm{PGCD}(x, y) \neq 1$.

Par exemple, si Clara choisit $S_1 = \{2, 5\}$, Bob peut effacer au deuxième tour $S_2 = \{14, 25, 26\}$. Au troisième tour, Alice peut alors effacer $15$ et $22$, mais pas $27$.

Le premier joueur qui choisit un ensemble vide a perdu.

Pour combien d'ensembles $S_1$ non vides Alice est-elle sûre de gagner, quoi que fasse Bob ?

## Hints

1. Remplacez $30$ par $6$ et étudiez quelques parties à la main. Pourquoi Alice gagne-t-elle avec $S_1 = \{2, 4\}$, et perd-elle avec $S_1 = \{2\}$ ?
2. Pour un ensemble $E$ de nombres premiers, notez $\langle E \rangle$ l'ensemble des entiers de $2$ à $30$ dont **tous** les facteurs premiers sont dans $E$. Par exemple, $\langle \{2, 3\} \rangle = \{2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27\}$.
3. Supposez que les nombres déjà effacés forment exactement un ensemble $\langle E \rangle$, et que c'est à l'adversaire de jouer. Il efface quelques nombres. Effacez à votre tour tout ce qu'il faut pour que les nombres effacés forment de nouveau un ensemble du même type. Pourquoi est-ce permis, et pourquoi efface-t-on au moins un nombre ?
4. Si $S_1$ n'est pas de la forme $\langle E \rangle$, que peut faire Bob ?

## Solution

La réponse : **$1023$ ensembles**, soit $2^{10} - 1$.

### Les ensembles complets

Les nombres premiers entre $2$ et $30$ sont $2, 3, 5, 7, 11, 13, 17, 19, 23, 29$. Il y en a dix.

Pour un ensemble $E$ de nombres premiers inférieurs à $30$, on note $\langle E \rangle$ l'ensemble des entiers de $2$ à $30$ dont tous les facteurs premiers appartiennent à $E$. On dit qu'un ensemble de nombres est **complet** s'il est de la forme $\langle E \rangle$.

Deux remarques :

- Un nombre premier $p$ appartient à $\langle E \rangle$ si et seulement si $p \in E$. Les nombres premiers de $\langle E \rangle$ sont donc exactement ceux de $E$, et deux ensembles $E$ différents donnent deux ensembles complets différents.
- $\langle E \rangle$ est vide si et seulement si $E$ est vide.

Il y a donc exactement $2^{10} - 1 = 1023$ ensembles complets non vides, un pour chaque choix d'une partie non vide des dix nombres premiers.

Notons enfin $T_k = S_1 \cup S_2 \cup \cdots \cup S_k$ l'ensemble des nombres effacés pendant les $k$ premiers tours.

### Le lemme clé : répondre pour retrouver un ensemble complet

**Lemme.** Soit $k \geq 1$. On suppose que l'ensemble $T_k$ des nombres effacés est complet, $T_k = \langle E \rangle$, et que le joueur du tour $k + 1$ efface un ensemble $S_{k+1}$ non vide. Notons $E'$ l'ensemble des nombres premiers qui divisent au moins un élément de $T_{k+1}$. Alors le joueur suivant peut effacer

$$S_{k+2} = \langle E' \rangle \setminus T_{k+1}$$

(les nombres de $\langle E' \rangle$ qui sont encore au tableau). Ce coup respecte la règle, il efface au moins un nombre, et après lui l'ensemble des nombres effacés, $T_{k+2} = \langle E' \rangle$, est de nouveau complet.

*Démonstration.*

- **Après ce coup, les nombres effacés forment $\langle E' \rangle$.** Tous les facteurs premiers d'un élément de $T_{k+1}$ sont dans $E'$, par définition de $E'$. Donc $T_{k+1}$ est contenu dans $\langle E' \rangle$, et $T_{k+2} = T_{k+1} \cup S_{k+2} = \langle E' \rangle$.
- **Le coup respecte la règle.** Soit $x \in S_{k+2}$. Il est dans $\langle E' \rangle$ mais n'est pas dans $T_k = \langle E \rangle$. Il a donc un facteur premier $p$ qui n'est pas dans $E$. Comme $p \in E'$, il divise un élément $z$ de $T_{k+1}$. Ce $z$ n'est pas dans $T_k = \langle E \rangle$, puisque $p \notin E$. Donc $z \in S_{k+1}$, et $\mathrm{PGCD}(x, z) \neq 1$ car $p$ divise les deux.
- **Le coup efface au moins un nombre.** Prenons un élément $y$ de $S_{k+1}$. Il n'est pas dans $T_k = \langle E \rangle$ (il était encore au tableau), donc il a un facteur premier $p$ qui n'est pas dans $E$. Montrons que $p \in S_{k+2}$.
  - $p$ est dans $\langle E' \rangle$, car $p$ divise $y \in T_{k+1}$.
  - $p$ n'est pas dans $T_k = \langle E \rangle$, car $p \notin E$.
  - $p$ n'est pas dans $S_{k+1}$. Sinon, d'après la règle (on est au tour $k + 1 \geq 2$), $p$ aurait un diviseur commun différent de $1$ avec un élément $w$ de $S_k$. Comme $p$ est premier, $p$ diviserait $w$, et $w \in T_k = \langle E \rangle$ donnerait $p \in E$. C'est impossible.

  Donc $p$ est encore au tableau et $p \in S_{k+2}$. $\square$

### La conséquence : une stratégie qui ne perd jamais

Supposons qu'après un tour $k \geq 1$, l'ensemble des nombres effacés soit complet, et appelons $Z$ le joueur qui vient de jouer et $Y$ son adversaire. Le joueur $Z$ adopte la stratégie suivante : chaque fois que $Y$ efface un ensemble non vide, $Z$ répond comme dans le lemme.

Après chaque réponse de $Z$, les nombres effacés forment de nouveau un ensemble complet, donc le lemme s'applique encore au coup suivant. Ainsi $Z$ n'est jamais obligé de choisir un ensemble vide.

La partie ne peut pas durer indéfiniment : chaque tour où l'on n'a pas perdu efface au moins un nombre, et il n'y en a que $29$. Quelqu'un finit donc par choisir un ensemble vide, et ce n'est jamais $Z$. **C'est $Y$ qui perd.**

### Si S₁ est complet, Alice gagne

Après le premier tour, les nombres effacés forment $T_1 = S_1$, qui est complet, et c'est à Bob de jouer. D'après la conséquence ci-dessus (avec $k = 1$, $Z$ = Alice et $Y$ = Bob), Alice gagne quoi que fasse Bob.

### Si S₁ n'est pas complet, Bob gagne

Notons $E_1$ l'ensemble des nombres premiers qui divisent au moins un élément de $S_1$. Bob efface au deuxième tour

$$S_2 = \langle E_1 \rangle \setminus S_1.$$

- Ce coup respecte la règle : un élément $x$ de $S_2$ a un facteur premier $p \in E_1$, qui divise un élément de $S_1$.
- Il efface au moins un nombre : $S_1$ est contenu dans $\langle E_1 \rangle$, et il n'est pas égal à $\langle E_1 \rangle$ puisqu'il n'est pas complet.

Après ce coup, les nombres effacés forment $T_2 = \langle E_1 \rangle$, qui est complet, et c'est à Alice de jouer. D'après la conséquence (avec $k = 2$, $Z$ = Bob et $Y$ = Alice), Bob gagne quoi que fasse Alice.

### Conclusion

Alice est sûre de gagner exactement quand $S_1$ est un ensemble complet non vide. **Il y a $2^{10} - 1 = 1023$ tels ensembles.**

## Going further

1. Pourquoi la stratégie « effacer tout ce que la règle permet d'effacer » ne marche-t-elle pas ? Avec le tableau $2, 3, 4, 5, 6$ et $S_1 = \{2\}$, trouvez un coup de Bob qui gagne, et vérifiez que si Bob efface tout ce qu'il peut, il perd.
2. Dans le lemme, on complète l'ensemble de **tous** les nombres effacés depuis le début, et pas seulement le dernier ensemble $S_{k+1}$. Prenez $S_1 = \{3, 5\}$. Bob complète en effaçant $9, 15, 25, 27$, puis Alice efface $10$. Quel coup le lemme donne-t-il à Bob ? Et quel coup obtiendrait-il en complétant seulement $S_3 = \{10\}$, c'est-à-dire en effaçant les nombres encore au tableau dont les facteurs premiers sont $2$ ou $5$ ? Montrez qu'après ce second coup, Alice peut effacer $6, 12, 18, 24, 30$, puis gagner.
3. Combien y a-t-il de réponses si Clara écrit les entiers de $2$ à $100$ ?
