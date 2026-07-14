---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Start-SnakeGame

## SYNOPSIS
Starts a simple Snake game in the console.

## SYNTAX

```
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-NoClear] [-WithMaze] [-ShowRoute]
 [-MazeWidth <Int32>] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
This function initializes and runs a basic Snake game within the PowerShell
console.
The player controls the snake using the arrow keys or WASD keys,
aiming to eat food and grow longer while avoiding collisions with the walls
or itself.
The game features dynamic speed adjustment based on available
space and snake length.
By default, the console is cleared before starting.

## EXAMPLES

### EXAMPLE 1
```
Start-SnakeGame
```

Starts the Snake game with default settings (5 segments, 300ms speed).

### EXAMPLE 2
```
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Starts the Snake game without clearing console, with shorter snake and faster
speed.

### EXAMPLE 3
```
snake -InitialLength 10
```

Starts the game using the alias with a longer initial snake.

### EXAMPLE 4
```
Start-SnakeGame -WithMaze
```

Starts the Snake game with a maze in the playfield.

### EXAMPLE 5
```
Start-SnakeGame -WithMaze -ShowRoute
```

Starts the Snake game with a maze and displays the shortest path from the
snake to the food with green dots.

### EXAMPLE 6
```
Start-SnakeGame -WithMaze -MazeWidth 5
```

Starts the Snake game with a maze that has wider pathways (minimum 5 spaces)
for easier navigation.

## PARAMETERS

### -InitialLength
Sets the initial length of the snake.
Valid range is 3-20 segments.
Default is 5 segments.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 5
Accept pipeline input: False
Accept wildcard characters: False
```

### -Speed
Sets the base game speed in milliseconds between moves.
Lower values create
a faster game.
Valid range is 50-2000ms.
Default is 300ms.
Actual speed
adjusts dynamically during gameplay.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 300
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoClear
Prevents clearing the console before starting the game.
By default, the
console is cleared to provide a clean playing field.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithMaze
Draws a maze within the playfield using ASCII drawing characters for walls
and lines, similar to the border.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowRoute
Displays the shortest path from the snake's head to the food using small
green centered dots (·).
The dots are visual overlays only and do not
affect collision detection.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MazeWidth
Sets the minimum pathway width for the maze.
Valid range is 1-10.
Default is 2.
Higher values create wider pathways making the maze easier
to navigate.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
