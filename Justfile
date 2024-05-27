all:
	typst compile ./systemd-tshirtd-transparent.typ
	typst compile ./systemd-tshirtd-black.typ
	typst compile -f svg ./systemd-tshirtd-black.typ ./preview/systemd-tshirtd-black.svg
