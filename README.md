dotfiles
========

.files

## To Install

1. Clone this repository: `git clone http://github.com/arkokoley/dotfiles`
2. `cd dotfiles`
3. Run the bootstrap script: `./bootstrap.sh`
4. Set your terminal font to `Inconsolata for Powerline`
5. Profit!

## Vim Shortcuts

  * Toggle directory view: `,d`
  * Get rainbow parenthesis: `,r`
  * Multicursor editing:
    * To start multicursor (select a word): `F3`
    * Select next word: `Ctrl + n`
    * Deselect last word: `Ctrl + p`
    * Skip next word: `Ctrl + x`
    * quit Multicursor: `ESC`

  * Tabs and Splits:
    * New tab: `Ctrl + t`
    * Move between tabs: `Ctrl + l` or `Ctrl + h`
    * Vertical split: `Ctrl + s`
    * Move between splits: `,l` or `,h`
    * Close tab/split: `Ctrl + w`

  * Search for files and open them, like in Sublime text:
    `Ctrl + p` and type filename, select from given options

  * Commenting/Uncommenting lines with ease:
    * Comment n(eg 10) number of lines: `10,cc`
    * Uncomment n(eg 5) number of lines: `5,cu`

  * Change surrounding braces, parenthesis, html/xml tags:
    `,cs<current><new surround>`
    Eg, change " in "Hello" to ' : `,cs"'`
    Change {} in { World } to () : `,cs{)`

  * Read HackerNews within Vim: `,hn`
    * Open a link in vim: `o`, `O` to open in Browser
    * To go back: `u`
    * To close: `:bd`

  * Show/hide class outline viewer, similar to ones in IDEs     like Eclips, JetBrains: `,t`

  * Run shell/terminal commands in vim: `! <command>`
    Eg, compiling `x.c` file to n: `! gcc x.c -o n`

  * Specially mapped keys:
    * `;` mapped to `:`, removing the necessity of using shift and `;` key for Normal commands starting with `:`.
    * `w` mapped to `:w`: saves the file with just `w`.

  * Update plugins installed: `,update`
