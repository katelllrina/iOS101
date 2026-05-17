# Number theory

## Division

### Swift

67 / 8 = 8 - integral division ("div")
67 % 8 = 3 - remainder operator 

### Math

**a | b** (a divisible by b) - `a = b * n`, n >= 1

Example:

- 28 | 7, because 28 = 7 * 4 (a = 28, b = 7, n = 4)

If not (a | b), then a = b * n + k, n >= 0, 0 < k < b

k is called **remainder**

Example:

- **Correct:** 30 = 7 * 4 + 2
- _Incorrect:_ 30 = 7 * 3 + 9
