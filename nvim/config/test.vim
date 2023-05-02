" Config: test
let kitty = $KITTY_LISTEN_ON
if kitty != ""
	let test#strategy = "kitty"
else
	if has("nvim")
		let test#strategy = "neovim"
	else
		let test#strategy = "basic"
	endif
endif
let test#php#phpunit#executable = 'vendor/bin/phpunit'
