# Color utils
This pre-packaged util package is made to output colors on target outputs.

## Colors & typos
Here is a list of pre-defined colors you can use:

| Color         | Description       |
|---------------|-------------------|
| RED           | Bright red        |
| GREEN         | Bright green      |
| YELLOW        | Bright yellow     |
| LIGHTPURPLE   | Dark blue         |
| PURPLE        | Bright pink       |
| BLUE          | Cyan/Light blue   |
| BLACK         | Black             |
| WHITE         | White             |

## How to use
To use these colors, do like this :
```bash
printf "${GREEN}Operation successfull !${RESET}"
```
> The `${RESET}` call will reset the console output to normal state.