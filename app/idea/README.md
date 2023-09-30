# IDEA 2023.1

## Plugins

- Adapter for Eclipse Code Formatter
- Alibaba Java Code Guidelines
- String Manipulation
- Grep Console
- GenerateAllSetter

## Preferences

- Appearance & Behavior > Appearance

  ```
  [*] Use custom font, size: 16

  UI Options
  [*] Use smaller indents in trees

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

- Editor > General > Auto Import

  ```
  Java
  Insert imports on paste: Always
  [*] Add unambiguous imports on the fly
  [*] Optimize imports on the fly
  ```

- Editor > General > Editor Tabs

  ```
  Appearance
  [ ] Show tabs in one row
  ```

- Editor > Font

  ```
  Size: 18
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

  Editor:
    Selection forground
      [*] forground: A9B7C6

  Search Results:
    Search result (write access)
      [*] forground: A9B7C6
  ```

- Editor > Code Schema > General

  ```
  Size: 18
  ```

- Editor > Code Style

  ```
  General:
  Visual guides: 80 120 140
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

- Editor > File Types

  Ignored Files and Folders
  ```
  *.idea
  .gradle
  gradle*
  ```

- Editor > Inspections

  ```
  Profile: Default IDE
  
  Ali-Check:
    [ ] Every class should include information of authors and date
    [ ] Magic values, except for predefined, are forbidden in coding.
  
  Spring > Spring Core > Code
    [ ] Non recommended 'field' injections
  ```

- Version Control > Commit

  ```
  [*] Use non-model commit interface
  ```

- Build, Execution, Deployment > Compiler

  ```
  Shared build process heap size (Mbytes): 2048
  ```

- Build , Execution , Deployment > Debugger

  ```
  Java:
  Reload classes after compilation: Always
  ```

- Other Settings > Eclipse Code Formatter

  ```
  [*] Optimize Imports
  (o) Manual Import Order: lombok;;java;javax;\#
  ```

- Other Settings > Grep Console

  ```
  Highlighting & Folding
  - FATAL: Background: C80000
  - ERROR: Background: C80000
  - WARN:  Background: B76D08
  ```

- Advanced Settings

  ```
  Tool Windows:
  [*] Always show tool window header icons in the new UI
  ```

## VM Options

```
-Xms4096m
-Xmx4096m
-XX:ReservedCodeCacheSize=1024m
-XX:CICompilerCount=4
-Xverify:none
```
