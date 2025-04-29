Vim Configuration
=================

My current Vim configuration. How it has been created in case I need to do it agian.

## Create a main repo

```bash
git init
git remote add origin git@github.com:104ru/.vim.git
```

## Create plugin directories

```bash
mkdir -p pack/godlygeek/start pack/hashi/start pack/jlanzarotta/start pack/rodjek/start pack/vim-ruby/start pack/tpope/start
```

## Add submodules with each plugin

```bash
git submodule add https://github.com/godlygeek/tabular.git pack/godlygeek/start/tabular
git submodule add https://github.com/hashivim/vim-terraform.git pack/hashi/start/vim-terraform
git submodule add https://github.com/jlanzarotta/bufexplorer.git pack/jlanzarotta/start/bufexplorer
git submodule add https://github.com/rodjek/vim-puppet.git pack/rodjek/start/vim-puppet
git submodule add https://github.com/vim-ruby/vim-ruby.git pack/vim-ruby/start/vim-ruby
git submodule add https://github.com/tpope/vim-characterize.git pack/tpope/start/vim-characterize
git submodule add https://github.com/tpope/vim-commentary.git pack/tpope/start/vim-commentary
git submodule add https://github.com/tpope/vim-endwise.git pack/tpope/start/vim-endwise
git submodule add https://github.com/tpope/vim-fugitive.git pack/tpope/start/vim-fugitive
git submodule add https://github.com/tpope/vim-markdown.git pack/tpope/start/vim-markdown
git submodule add https://github.com/tpope/vim-sleurh.git pack/tpope/start/vim-sleuth
git submodule add https://github.com/tpope/vim-sleuth.git pack/tpope/start/vim-sleuth
git submodule add https://github.com/tpope/vim-unimpared.git pack/tpope/start/vim-unimpared
git submodule add https://github.com/tpope/vim-unimpaired.git pack/tpope/start/vim-unimpaired
```

## Push the repo

```bash
git add .
git commit -m "Initial commit"
git push -u origin main
```

## Removing plugin/submodule

```bash
git submodule deinit -f pack/godlygeek/start/tabular
git rm -f pack/godlygeek/start/tabular
rm -rf .git/modules/pack/godlygeek/start/tabular
git commit -m "removed tabular plugin"
rm -rf pack/godlygeek/start/tabular
```

## List submodules

```bash
git submodule status
```
