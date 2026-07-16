# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Longueur initiale du serpent (par défaut : 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Vitesse du jeu en millisecondes entre les coups (par défaut : 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Empêche d'effacer la console avant de lancer le jeu |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Dessine un labyrinthe à l'intérieur du terrain de jeu en utilisant des caractères de dessin ASCII pour les murs et les lignes, similaire à la bordure |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Affiche le chemin le plus court de la tête du serpent vers la nourriture à l'aide de petits points verts centrés |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Largeur minimale des chemins pour le labyrinthe (1-10, par défaut : 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
