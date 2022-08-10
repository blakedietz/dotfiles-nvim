# dotfiles for neovim

## Layout

The project is split into two main directories.
- lua
  - Contains editor specific optionn configurations
- plugin
  - Contains plugin specific setup calls and configurations

### Philosophies

No ridiculously large files. Keep files small and specific to their single purpose. There's nothing worse than reading undocumented configuration code.

## Dependencies 

- elixir-ls
- fzf
- neovim >= 0.7.0
- packer

## References

I used the following references to learn about the lua and neovim ecosystem. As with most things vim, the ecosystem is difficult to enter due to lack of documentation, continuous churn and fragmentation. The ecosystem can feel beginner hostile due to this, so huge thanks to [the author of this video][vidhtcnwly] for getting me started.

[vidhtcnwly]: https://www.youtube.com/watch?v=-esgEOqwzVg
[cplld]: https://www.lunarvim.org/plugins/01-core-plugins-list.html
[ndo]: https
[ndl]: https://neovim.io/doc/user/lua.html
[gnagtulin]: https://github.com/nanotee/nvim-lua-guide
[geafisfeitspsapdsvtap]: https

- [Vimscript is dead - How to configure Nvim with Lua! - YouTube][vidhtcnwly]
- [Core Plugins List | LunarVim Docs][cplld]
- [Nvim documentation: options][ndo]
- [Nvim documentation: lua][ndl]
- [GitHub - nanotee/nvim-lua-guide: A guide to using Lua in Neovim][gnagtulin]
- [GitHub - elixir-lsp/elixir-ls: A frontend-independent IDE &quot;smartness&quot; server for Elixir. Implements the &quot;Language Server Protocol&quot; standard and provides debugger support via the &quot;Debug Adapter Protocol&quot;][geafisfeitspsapdsvtap]

## Thanks to

@mhanberg for offering support and feedback
