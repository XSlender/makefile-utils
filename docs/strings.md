# Strings utils
This pre-packaged util package is made to have pre-defined strings.

## Separator
You can use a separator (a.k.a. a dotted line) to underline your titles or separate your text blocks.
```bash
printf ${DOTTED_LINE}
```
This will produce
```text
--------------------------------------------
```
> You can combine it with [colors](./colors.md).

## line breaks
There are pre-defined line breaks that will help you separate your text.

### Line break
This will produce a line break (return to next line).
```bash
printf ${LINE_BREAK}
```

### Line skip/return
This will produce a line skip (create an empty line).
```bash
printf ${LINE_RETURN}
```

## Symbols
Here is a list of symbols to use in your outputs:

| Call              | Symbol |
|-------------------|--------|
| RIGHT_ARROW       | 🡆     |
| LEFT_ARROW        | 🡄     |
| UP_ARROW          | 🡅     |
| DOWN_ARROW        | 🡇     |
| CHECK_MARK        | ✔     |
| CROSS             | ❌    |
| HEART             | ❤     |
| WARNING_SIGN      | ⚠     |
| FORBIDDEN_SIGN    | ⛔     |
| ROCKET_SIGN       | 🚀     |
| STAR_SIGN         | ★     |

You can use them like this:
```bash
printf ${ROCKET_SIGN}
```