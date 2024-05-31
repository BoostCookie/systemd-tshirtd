all:
	typst compile -f svg ./systemd-tshirtd-transparent.typ
	typst compile -f svg ./systemd-tshirtd-black.typ
	typst compile -f svg ./systemd-tshirtd-black.typ ./preview/systemd-tshirtd-black.svg
	typst compile -f svg ./boring.typ ./boring.svg
