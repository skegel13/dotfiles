# dotfiles

To use the dotfiles:

1. Generate a new SSH key:

   ```sh
   curl https://raw.githubusercontent.com/skegel13/dotfiles/HEAD/git/git-ssh | sh -s "<your-email-address>"
   ```

2. Clone the repo to the ~/dotfiles directory:

   ```sh
   git clone git@github.com/skegel13/dotfiles ~/dotfiles
   ```

3. Run the setup script.

   ```sh
   ./dotfiles/setup
   ```

4. Run `mackup restore`.
