# Simplification rules

## Arithmetics

| **Before**  | **After** | **When** |
|-------------|-----------|----------|
| `n = n + x` | `n += x`  | Always   | 
| `n = n - x` | `n -= x`  | Always   | 
| `n = n * x` | `n *= x`  | Always   | 
| `n = n / x` | `n /= x`  | Always   | 
| `n = n % x` | `n %= x`  | Always   |

## Ranges

> `a...b`

| **Before**       | **After**     | **When** |
|------------------|---------------|----------|
| `start...end - 1` | `start...<end` | Always   | 

Examples:

- `for i in 0...str.count - 1 { ... }`
- `for i in 0..<str.count { ... }`

a...b       // включительно
a..<b       // не включая b


## Shortening

1. Last return

   Before
   ```Swift
   let result = <expr>
   return result   ```
   After
   ```Swift
   return <expr>
   ```

2. Indexation

   Before
   ```Swift
   var i = <start>
   while i < <end> {
    ...
    i += 1
   }
   ```
   After
   ```Swift
   for i in <start>..<end> { ... }
   ```

3. Float return
   Before
   ```Swift
   if x > y { return y } else { return x }
   ```
   After
   ```Swift
   return x > y ? y : x
   ```
   
4. Simplify Boolean if
   Before
   ```Swift
   if something { true } else { false }
   ```
   After
   ```Swift
   something
   ```
5. Single-expression functions
   Before
   ```Swift
   func myFunction(...) -> SomeType {
    return something
   }
   ```
   After
   ```Swift
   func myFunction(...) -> SomeType { something }
   ```
