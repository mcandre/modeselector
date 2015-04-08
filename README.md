# modeselector - extract mode line variables from source code files

# EXAMPLES

```
$ modeselector examples/hello.rb 
examples/hello.rb:1 # vim: set filetype=ruby

$ modeselector examples/hello.py
examples/hello.py:1 # -*- mode: python -*-

$ modeselector examples/hello
examples/hello:1 // -*- mode: javascript -*-

$ modeselector examples/hello.sh

$
```

# HOMEPAGE

https://github.com/mcandre/modeselector

# RUBYGEMS

https://rubygems.org/gems/modeselector

# ABOUT

modeselector is a small, cross-platform command line tool for reporting information about modeline variables for:

* [Vim](http://vim.wikia.com/wiki/Modeline_magic)
* [Emacs](http://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html)

# REQUIREMENTS

* [Ruby](https://www.ruby-lang.org/) 1.9+

# INSTALL

Install via [RubyGems](http://rubygems.org/):

```
$ gem install modeselector
```

# LICENSE

FreeBSD

# DEVELOPMENT

## Testing

Keep the code functioning:

```
$ rake test
```

## Linting

Keep the code tidy:

```
$ rake lint
```

## Git Hooks

See `hooks/`.
