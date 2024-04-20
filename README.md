# Flutter Toolbox

Hoon's personal Flutter toolbox.

## Commands

### Running the app

Since I mostly program in terminal with Neovim and Tmux, I run the app either:
- By running `FlutterRun` command in Neovim, using `flutter_tools` plugin.
- By running the command `flw`, which runs flutter with pid file and runs nodemon to restart the app when the code changes.

You can set up the second method by adding the following to your `.zshrc` or `.bashrc` file:

```sh
alias flw='flutter-watch'

function flutter-watch
    command tmux send-keys "flutter run $1 $2 $3 $4 --pid-file=/tmp/tf1.pid" Enter \; \
        split-window -v \; \
        send-keys 'npx -y nodemon -e dart -x "cat /tmp/tf1.pid | xargs kill -s USR1"' Enter \; \
        resize-pane -y 5 -t 1 \; \
        select-pane -t 0 \;
end
```

### Running `build_runner`

I use the following command to run `build_runner`:

```sh
$ flb

# Add the following to your .zshrc or .bashrc file
alias flb='flutter pub run build_runner watch --delete-conflicting-outputs'
```
