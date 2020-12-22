## Plugins

- Lombok
- Eclipse Code Formatter
- Alibaba Java Code Guideline
- String Manipulation
- Grep Console

## Preferences

- Appearance & Behavior > Appearance

  ```
  Tool Windows
  [*] Show tool windows numbers
  ```

- Appearance & Behavior > Menus and Toolbars

  ```
  Touchbar
  - Default
    ...
  - Debugger
    ...
  ```

- Editor > Code Schema > General

  ```
  Code:
    Identifier under caret
       [*] Forcegroud: 49474F
       [*] Backgound: B78627
    Identifier under caret (write)
       [*] Forcegroud: C6BED1
       [*] Backgound: B75F1D
  ```

- Editor > Code Style > Java
  
  Imports:
  ```
  Generate:
    Class count to use import with '*': 99
    Names count to use static import with '*': 99
  
  Import Layout:
    import lombok.*
    <<new line>>
    import all other imports
    <<new line>>
    import java.*
    import javax.*
    <<new line>>
    import static all other imports
  ```

  Wrapping and Braces
  ```
  Binary Expressions
  - [*] Operation sign on next line
  ```

- Editor > Inspections

  ```
  Profile: Default IDE
  
  Ali-Check:
    [ ] Every class should include information of authors and date
    [ ] Magic values, except for predefined, are forbidden in coding.
  
  Spring > Spring Core > Code
    [ ] Field injection warning
  ```

- Build, Execution, Deployment > Compiler

  ```
  Shared build process heap size (Mbytes): 2048
  ```

- Other Settings > Eclipse Code Formatter

  ```
  [ ] Optimize Imports
  [*] Don't format other file types by Intellij formatter
  ```

- Other Settings > Grep Console

  ```
  Highlighting & Folding
  - FATAL: Background: C80000
  - ERROR: Background: C80000
  - WARN:  Background: B76D08
  ```
  
## VM Options

```
-Xms4096m
-Xmx4096m
-XX:ReservedCodeCacheSize=1024m
-XX:CICompilerCount=4
```
