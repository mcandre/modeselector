# modeselector - extract mode line variables from source code files

# EXAMPLES

```
$ modeselector examples/hello.rb
examples/hello.rb:1 # vim: set filetype=ruby

$ modeselector examples/hello.py
examples/hello.py:1 # -*- mode: python -*-

$ modeselector examples/hello
examples/hello:1 // -*- mode: javascript -*-

$ modeselector examples/hello.pl
examples/hello.pl:3 # Local Variables:
examples/hello.pl:4 # eval (setq tab-width 2)
examples/hello.pl:5 # eval (setq sws-tab-width 2)
examples/hello.pl:6 # End:

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

This tool has no association with the electronic band [Modeselektor](https://www.youtube.com/watch?v=9QHL6GzfnMA).

# REQUIREMENTS

* [Ruby](https://www.ruby-lang.org/) 2.0+

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
